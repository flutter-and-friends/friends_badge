package cn.highlight.core.zxing;

import android.app.Activity;
import android.graphics.Rect;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.view.View;
import android.view.animation.TranslateAnimation;
import android.widget.ImageView;
import cn.highlight.core.R;
import cn.highlight.core.utils.LogManage;
import cn.highlight.core.zxing.camera.CameraManager;
import cn.highlight.core.zxing.decode.DecodeThread;
import cn.highlight.core.zxing.decode.PhotoScanHandler;
import cn.highlight.core.zxing.decode.RGBLuminanceSource;
import cn.highlight.core.zxing.utils.BeepManager;
import cn.highlight.core.zxing.utils.BitmapUtil;
import cn.highlight.core.zxing.utils.CaptureActivityHandler;
import cn.highlight.core.zxing.utils.InactivityTimer;
import com.google.zxing.BinaryBitmap;
import com.google.zxing.DecodeHintType;
import com.google.zxing.MultiFormatReader;
import com.google.zxing.common.HybridBinarizer;
import com.google.zxing.qrcode.QRCodeReader;
import com.yuyh.library.imgsel.ui.ISListActivity;
import java.io.IOException;
import java.util.Map;

/* loaded from: classes.dex */
public class ScanManager implements SurfaceHolder.Callback {
    final String TAG;
    Activity activity;
    public BeepManager beepManager;
    CameraManager cameraManager;
    CaptureActivityHandler handler;
    InactivityTimer inactivityTimer;
    boolean isHasSurface;
    boolean isOpenLight;
    ScanListener listener;
    Rect mCropRect;
    PhotoScanHandler photoScanHandler;
    View scanContainer;
    View scanCropView;
    ImageView scanLine;
    private int scanMode;
    SurfaceView scanPreview;

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceChanged(SurfaceHolder surfaceHolder, int i, int i2, int i3) {
    }

    public ScanManager(Activity activity, SurfaceView surfaceView, View view, View view2, ImageView imageView, int i, ScanListener scanListener) {
        this.isHasSurface = false;
        this.mCropRect = null;
        this.scanPreview = null;
        this.TAG = ScanManager.class.getSimpleName();
        this.isOpenLight = false;
        this.activity = activity;
        this.scanPreview = surfaceView;
        this.scanContainer = view;
        this.scanCropView = view2;
        this.scanLine = imageView;
        this.listener = scanListener;
        this.scanMode = i;
        TranslateAnimation translateAnimation = new TranslateAnimation(2, 0.0f, 2, 0.0f, 2, 0.0f, 2, 0.9f);
        translateAnimation.setDuration(4500L);
        translateAnimation.setRepeatCount(-1);
        translateAnimation.setRepeatMode(1);
        imageView.startAnimation(translateAnimation);
    }

    public ScanManager(ScanListener scanListener) {
        this.isHasSurface = false;
        this.mCropRect = null;
        this.scanPreview = null;
        this.TAG = ScanManager.class.getSimpleName();
        this.isOpenLight = false;
        this.listener = scanListener;
    }

    public void onResume() {
        this.inactivityTimer = new InactivityTimer(this.activity);
        this.beepManager = new BeepManager(this.activity);
        this.cameraManager = new CameraManager(this.activity.getApplicationContext());
        this.handler = null;
        if (this.isHasSurface) {
            initCamera(this.scanPreview.getHolder());
        } else {
            this.scanPreview.getHolder().addCallback(this);
        }
        this.inactivityTimer.onResume();
    }

    public void onPause() {
        CaptureActivityHandler captureActivityHandler = this.handler;
        if (captureActivityHandler != null) {
            captureActivityHandler.quitSynchronously();
            this.handler = null;
        }
        this.inactivityTimer.onPause();
        this.beepManager.close();
        this.cameraManager.closeDriver();
        if (this.isHasSurface) {
            return;
        }
        this.scanPreview.getHolder().removeCallback(this);
    }

    public void onDestroy() {
        this.inactivityTimer.shutdown();
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceCreated(SurfaceHolder surfaceHolder) {
        if (surfaceHolder == null) {
            LogManage.e(this.TAG, "*** WARNING *** surfaceCreated() gave us a null surface!");
        }
        if (this.isHasSurface) {
            return;
        }
        this.isHasSurface = true;
        initCamera(surfaceHolder);
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceDestroyed(SurfaceHolder surfaceHolder) {
        this.isHasSurface = false;
    }

    void initCamera(SurfaceHolder surfaceHolder) {
        if (surfaceHolder == null) {
            throw new IllegalStateException("No SurfaceHolder provided");
        }
        if (this.cameraManager.isOpen()) {
            LogManage.w(this.TAG, "initCamera() while already open -- late SurfaceView callback?");
            return;
        }
        try {
            this.cameraManager.openDriver(surfaceHolder);
            if (this.handler == null) {
                this.handler = new CaptureActivityHandler(this, this.cameraManager, this.scanMode);
                LogManage.e("hongliang1", "handler new成功！:" + this.handler);
            }
            initCrop();
        } catch (IOException e) {
            e.printStackTrace();
            this.listener.scanError(new Exception("相机打开出错，请检查是否被禁止了该权限！"));
        } catch (RuntimeException e2) {
            e2.printStackTrace();
            this.listener.scanError(new Exception("相机打开出错，请检查是否被禁止了该权限！"));
        }
    }

    public void switchLight() {
        if (this.isOpenLight) {
            this.cameraManager.offLight();
        } else {
            this.cameraManager.openLight();
        }
        this.isOpenLight = !this.isOpenLight;
    }

    public Handler getHandler() {
        return this.handler;
    }

    public CameraManager getCameraManager() {
        return this.cameraManager;
    }

    public Rect getCropRect() {
        return this.mCropRect;
    }

    public void handleDecode(Result result, Bundle bundle) {
        this.inactivityTimer.onActivity();
        this.beepManager.playBeepSoundAndVibrate();
        bundle.putInt("width", this.mCropRect.width());
        bundle.putInt("height", this.mCropRect.height());
        bundle.putString(ISListActivity.INTENT_RESULT, result.getText());
        this.listener.scanResult(result, bundle);
    }

    public void handleDecodeError(Exception exc) {
        this.listener.scanError(exc);
    }

    void initCrop() {
        int i = this.cameraManager.getCameraResolution().y;
        int i2 = this.cameraManager.getCameraResolution().x;
        int[] iArr = new int[2];
        this.scanCropView.getLocationInWindow(iArr);
        int i3 = iArr[0];
        int statusBarHeight = iArr[1] - getStatusBarHeight();
        int width = this.scanCropView.getWidth();
        int height = this.scanCropView.getHeight();
        int width2 = this.scanContainer.getWidth();
        int height2 = this.scanContainer.getHeight();
        int i4 = (i3 * i) / width2;
        int i5 = (statusBarHeight * i2) / height2;
        this.mCropRect = new Rect(i4, i5, ((width * i) / width2) + i4, ((height * i2) / height2) + i5);
    }

    int getStatusBarHeight() throws IllegalAccessException, InstantiationException, ClassNotFoundException, NumberFormatException {
        try {
            Class<?> cls = Class.forName("com.android.internal.R$dimen");
            return this.activity.getResources().getDimensionPixelSize(Integer.parseInt(cls.getField("status_bar_height").get(cls.newInstance()).toString()));
        } catch (Exception e) {
            e.printStackTrace();
            return 0;
        }
    }

    public void scanningImage(final String str) {
        if (TextUtils.isEmpty(str)) {
            this.listener.scanError(new Exception("photo url is null!"));
        }
        this.photoScanHandler = new PhotoScanHandler(this);
        new Thread(new Runnable() { // from class: cn.highlight.core.zxing.ScanManager.1
            @Override // java.lang.Runnable
            public void run() {
                Map<DecodeHintType, ?> hints = DecodeThread.getHints();
                hints.put(DecodeHintType.CHARACTER_SET, "utf-8");
                BinaryBitmap binaryBitmap = new BinaryBitmap(new HybridBinarizer(new RGBLuminanceSource(BitmapUtil.decodeBitmapFromPath(str, 600, 600))));
                new QRCodeReader();
                MultiFormatReader multiFormatReader = new MultiFormatReader();
                try {
                    Message messageObtain = Message.obtain();
                    messageObtain.what = 1;
                    messageObtain.obj = multiFormatReader.decode(binaryBitmap, hints);
                    ScanManager.this.photoScanHandler.sendMessage(messageObtain);
                } catch (Exception unused) {
                    Message messageObtain2 = Message.obtain();
                    messageObtain2.what = 0;
                    messageObtain2.obj = new Exception("图片有误，或者图片模糊！");
                    ScanManager.this.photoScanHandler.sendMessage(messageObtain2);
                }
            }
        }).start();
    }

    public void reScan() {
        CaptureActivityHandler captureActivityHandler = this.handler;
        if (captureActivityHandler != null) {
            captureActivityHandler.sendEmptyMessage(R.id.restart_preview);
        }
    }

    public boolean isScanning() {
        CaptureActivityHandler captureActivityHandler = this.handler;
        if (captureActivityHandler != null) {
            return captureActivityHandler.isScanning();
        }
        return false;
    }
}
