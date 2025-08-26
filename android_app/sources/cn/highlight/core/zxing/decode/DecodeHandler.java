package cn.highlight.core.zxing.decode;

import android.graphics.Bitmap;
import android.graphics.Rect;
import android.hardware.Camera;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import cn.highlight.core.C0450R;
import cn.highlight.core.zxing.ScanManager;
import com.google.zxing.BinaryBitmap;
import com.google.zxing.DecodeHintType;
import com.google.zxing.MultiFormatReader;
import com.google.zxing.PlanarYUVLuminanceSource;
import com.google.zxing.ReaderException;
import com.google.zxing.Result;
import com.google.zxing.common.HybridBinarizer;
import java.io.ByteArrayOutputStream;
import java.util.Map;

/* loaded from: classes.dex */
public class DecodeHandler extends Handler {
    final ScanManager scanManager;
    boolean running = true;
    final MultiFormatReader multiFormatReader = new MultiFormatReader();

    public DecodeHandler(ScanManager scanManager, Map<DecodeHintType, Object> map) {
        this.multiFormatReader.setHints(map);
        this.scanManager = scanManager;
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        if (this.running) {
            if (message.what == C0450R.id.decode) {
                decode((byte[]) message.obj, message.arg1, message.arg2);
            } else if (message.what == C0450R.id.quit) {
                this.running = false;
                Looper.myLooper().quit();
            }
        }
    }

    void decode(byte[] bArr, int i, int i2) {
        Camera.Size previewSize = this.scanManager.getCameraManager().getPreviewSize();
        byte[] bArr2 = new byte[bArr.length];
        for (int i3 = 0; i3 < previewSize.height; i3++) {
            for (int i4 = 0; i4 < previewSize.width; i4++) {
                bArr2[(((previewSize.height * i4) + previewSize.height) - i3) - 1] = bArr[(previewSize.width * i3) + i4];
            }
        }
        int i5 = previewSize.width;
        previewSize.width = previewSize.height;
        previewSize.height = i5;
        Result resultDecodeWithState = null;
        PlanarYUVLuminanceSource planarYUVLuminanceSourceBuildLuminanceSource = buildLuminanceSource(bArr2, previewSize.width, previewSize.height);
        if (planarYUVLuminanceSourceBuildLuminanceSource != null) {
            try {
                resultDecodeWithState = this.multiFormatReader.decodeWithState(new BinaryBitmap(new HybridBinarizer(planarYUVLuminanceSourceBuildLuminanceSource)));
            } catch (ReaderException unused) {
            } catch (Throwable th) {
                this.multiFormatReader.reset();
                throw th;
            }
            this.multiFormatReader.reset();
        }
        Handler handler = this.scanManager.getHandler();
        if (resultDecodeWithState == null) {
            if (handler != null) {
                Message.obtain(handler, C0450R.id.decode_failed).sendToTarget();
            }
        } else if (handler != null) {
            Message messageObtain = Message.obtain(handler, C0450R.id.decode_succeeded, resultDecodeWithState);
            Bundle bundle = new Bundle();
            bundleThumbnail(planarYUVLuminanceSourceBuildLuminanceSource, bundle);
            messageObtain.setData(bundle);
            messageObtain.sendToTarget();
        }
    }

    static void bundleThumbnail(PlanarYUVLuminanceSource planarYUVLuminanceSource, Bundle bundle) {
        int[] iArrRenderThumbnail = planarYUVLuminanceSource.renderThumbnail();
        int thumbnailWidth = planarYUVLuminanceSource.getThumbnailWidth();
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(iArrRenderThumbnail, 0, thumbnailWidth, thumbnailWidth, planarYUVLuminanceSource.getThumbnailHeight(), Bitmap.Config.ARGB_8888);
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        bitmapCreateBitmap.compress(Bitmap.CompressFormat.JPEG, 50, byteArrayOutputStream);
        bundle.putByteArray(DecodeThread.BARCODE_BITMAP, byteArrayOutputStream.toByteArray());
    }

    public PlanarYUVLuminanceSource buildLuminanceSource(byte[] bArr, int i, int i2) {
        Rect cropRect = this.scanManager.getCropRect();
        if (cropRect == null) {
            return null;
        }
        return new PlanarYUVLuminanceSource(bArr, i, i2, cropRect.left, cropRect.top, cropRect.width(), cropRect.height(), false);
    }
}
