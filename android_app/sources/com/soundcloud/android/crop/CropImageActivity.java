package com.soundcloud.android.crop;

import android.content.ContentResolver;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.BitmapRegionDecoder;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.RectF;
import android.net.Uri;
import android.opengl.GLES10;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.view.View;
import com.soundcloud.android.crop.Crop;
import com.soundcloud.android.crop.ImageViewTouchBase;
import com.soundcloud.android.crop.MonitoredActivity;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.concurrent.CountDownLatch;

/* loaded from: classes.dex */
public class CropImageActivity extends MonitoredActivity {
    private static final int SIZE_DEFAULT = 2048;
    private static final int SIZE_LIMIT = 4096;
    private int aspectX;
    private int aspectY;
    private HighlightView cropView;
    private int exifRotation;
    private final Handler handler = new Handler();
    private CropImageView imageView;
    private boolean isSaving;
    private int maxX;
    private int maxY;
    private RotateBitmap rotateBitmap;
    private int sampleSize;
    private boolean saveAsPng;
    private Uri saveUri;
    private Uri sourceUri;

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean onSearchRequested() {
        return false;
    }

    @Override // com.soundcloud.android.crop.MonitoredActivity
    public /* bridge */ /* synthetic */ void addLifeCycleListener(MonitoredActivity.LifeCycleListener lifeCycleListener) {
        super.addLifeCycleListener(lifeCycleListener);
    }

    @Override // com.soundcloud.android.crop.MonitoredActivity
    public /* bridge */ /* synthetic */ void removeLifeCycleListener(MonitoredActivity.LifeCycleListener lifeCycleListener) {
        super.removeLifeCycleListener(lifeCycleListener);
    }

    @Override // com.soundcloud.android.crop.MonitoredActivity, android.app.Activity
    public void onCreate(Bundle bundle) throws Throwable {
        super.onCreate(bundle);
        setupWindowFlags();
        setupViews();
        loadInput();
        if (this.rotateBitmap == null) {
            finish();
        } else {
            startCrop();
        }
    }

    private void setupWindowFlags() {
        requestWindowFeature(1);
        if (Build.VERSION.SDK_INT >= 19) {
            getWindow().clearFlags(67108864);
        }
    }

    private void setupViews() {
        setContentView(C1312R.layout.crop__activity_crop);
        this.imageView = (CropImageView) findViewById(C1312R.id.crop_image);
        CropImageView cropImageView = this.imageView;
        cropImageView.context = this;
        cropImageView.setRecycler(new ImageViewTouchBase.Recycler() { // from class: com.soundcloud.android.crop.CropImageActivity.1
            @Override // com.soundcloud.android.crop.ImageViewTouchBase.Recycler
            public void recycle(Bitmap bitmap) {
                bitmap.recycle();
                System.gc();
            }
        });
        findViewById(C1312R.id.btn_cancel).setOnClickListener(new View.OnClickListener() { // from class: com.soundcloud.android.crop.CropImageActivity.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                CropImageActivity.this.setResult(0);
                CropImageActivity.this.finish();
            }
        });
        findViewById(C1312R.id.btn_done).setOnClickListener(new View.OnClickListener() { // from class: com.soundcloud.android.crop.CropImageActivity.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) throws Throwable {
                CropImageActivity.this.onSaveClicked();
            }
        });
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v1, types: [android.net.Uri] */
    /* JADX WARN: Type inference failed for: r1v12, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r1v19 */
    /* JADX WARN: Type inference failed for: r1v20 */
    /* JADX WARN: Type inference failed for: r1v21 */
    /* JADX WARN: Type inference failed for: r1v3 */
    /* JADX WARN: Type inference failed for: r1v8, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r1v9 */
    /* JADX WARN: Type inference failed for: r5v0, types: [android.content.Context, com.soundcloud.android.crop.CropImageActivity] */
    private void loadInput() throws Throwable {
        Throwable th;
        InputStream inputStreamOpenInputStream;
        OutOfMemoryError e;
        IOException e2;
        Intent intent = getIntent();
        Bundle extras = intent.getExtras();
        if (extras != null) {
            this.aspectX = extras.getInt(Crop.Extra.ASPECT_X);
            this.aspectY = extras.getInt(Crop.Extra.ASPECT_Y);
            this.maxX = extras.getInt(Crop.Extra.MAX_X);
            this.maxY = extras.getInt(Crop.Extra.MAX_Y);
            this.saveAsPng = extras.getBoolean(Crop.Extra.AS_PNG, false);
            this.saveUri = (Uri) extras.getParcelable("output");
        }
        this.sourceUri = intent.getData();
        if (this.sourceUri != null) {
            ContentResolver contentResolver = getContentResolver();
            ?? r1 = this.sourceUri;
            this.exifRotation = CropUtil.getExifRotation(CropUtil.getFromMediaUri(this, contentResolver, r1));
            try {
                try {
                    this.sampleSize = calculateBitmapSampleSize(this.sourceUri);
                    inputStreamOpenInputStream = getContentResolver().openInputStream(this.sourceUri);
                } catch (IOException e3) {
                    inputStreamOpenInputStream = null;
                    e2 = e3;
                } catch (OutOfMemoryError e4) {
                    inputStreamOpenInputStream = null;
                    e = e4;
                } catch (Throwable th2) {
                    r1 = 0;
                    th = th2;
                    CropUtil.closeSilently(r1);
                    throw th;
                }
                try {
                    BitmapFactory.Options options = new BitmapFactory.Options();
                    options.inSampleSize = this.sampleSize;
                    this.rotateBitmap = new RotateBitmap(BitmapFactory.decodeStream(inputStreamOpenInputStream, null, options), this.exifRotation);
                    r1 = inputStreamOpenInputStream;
                } catch (IOException e5) {
                    e2 = e5;
                    Log.m316e("Error reading image: " + e2.getMessage(), e2);
                    setResultException(e2);
                    r1 = inputStreamOpenInputStream;
                    CropUtil.closeSilently(r1);
                } catch (OutOfMemoryError e6) {
                    e = e6;
                    Log.m316e("OOM reading image: " + e.getMessage(), e);
                    setResultException(e);
                    r1 = inputStreamOpenInputStream;
                    CropUtil.closeSilently(r1);
                }
                CropUtil.closeSilently(r1);
            } catch (Throwable th3) {
                th = th3;
                CropUtil.closeSilently(r1);
                throw th;
            }
        }
    }

    private int calculateBitmapSampleSize(Uri uri) throws Throwable {
        InputStream inputStreamOpenInputStream;
        BitmapFactory.Options options = new BitmapFactory.Options();
        int i = 1;
        options.inJustDecodeBounds = true;
        InputStream inputStream = null;
        try {
            inputStreamOpenInputStream = getContentResolver().openInputStream(uri);
        } catch (Throwable th) {
            th = th;
        }
        try {
            BitmapFactory.decodeStream(inputStreamOpenInputStream, null, options);
            CropUtil.closeSilently(inputStreamOpenInputStream);
            int maxImageSize = getMaxImageSize();
            while (true) {
                if (options.outHeight / i <= maxImageSize && options.outWidth / i <= maxImageSize) {
                    return i;
                }
                i <<= 1;
            }
        } catch (Throwable th2) {
            th = th2;
            inputStream = inputStreamOpenInputStream;
            CropUtil.closeSilently(inputStream);
            throw th;
        }
    }

    private int getMaxImageSize() {
        int maxTextureSize = getMaxTextureSize();
        if (maxTextureSize == 0) {
            return 2048;
        }
        return Math.min(maxTextureSize, 4096);
    }

    private int getMaxTextureSize() {
        int[] iArr = new int[1];
        GLES10.glGetIntegerv(3379, iArr, 0);
        return iArr[0];
    }

    private void startCrop() {
        if (isFinishing()) {
            return;
        }
        this.imageView.setImageRotateBitmapResetBase(this.rotateBitmap, true);
        CropUtil.startBackgroundJob(this, null, getResources().getString(C1312R.string.crop__wait), new Runnable() { // from class: com.soundcloud.android.crop.CropImageActivity.4
            @Override // java.lang.Runnable
            public void run() throws InterruptedException {
                final CountDownLatch countDownLatch = new CountDownLatch(1);
                CropImageActivity.this.handler.post(new Runnable() { // from class: com.soundcloud.android.crop.CropImageActivity.4.1
                    @Override // java.lang.Runnable
                    public void run() {
                        if (CropImageActivity.this.imageView.getScale() == 1.0f) {
                            CropImageActivity.this.imageView.center();
                        }
                        countDownLatch.countDown();
                    }
                });
                try {
                    countDownLatch.await();
                    new Cropper().crop();
                } catch (InterruptedException e) {
                    throw new RuntimeException(e);
                }
            }
        }, this.handler);
    }

    private class Cropper {
        private Cropper() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void makeDefault() {
            int i;
            if (CropImageActivity.this.rotateBitmap == null) {
                return;
            }
            HighlightView highlightView = new HighlightView(CropImageActivity.this.imageView);
            int width = CropImageActivity.this.rotateBitmap.getWidth();
            int height = CropImageActivity.this.rotateBitmap.getHeight();
            boolean z = false;
            Rect rect = new Rect(0, 0, width, height);
            int iMin = (Math.min(width, height) * 4) / 5;
            if (CropImageActivity.this.aspectX == 0 || CropImageActivity.this.aspectY == 0) {
                i = iMin;
            } else if (CropImageActivity.this.aspectX > CropImageActivity.this.aspectY) {
                i = (CropImageActivity.this.aspectY * iMin) / CropImageActivity.this.aspectX;
            } else {
                i = iMin;
                iMin = (CropImageActivity.this.aspectX * iMin) / CropImageActivity.this.aspectY;
            }
            RectF rectF = new RectF((width - iMin) / 2, (height - i) / 2, r1 + iMin, r2 + i);
            Matrix unrotatedMatrix = CropImageActivity.this.imageView.getUnrotatedMatrix();
            if (CropImageActivity.this.aspectX != 0 && CropImageActivity.this.aspectY != 0) {
                z = true;
            }
            highlightView.setup(unrotatedMatrix, rect, rectF, z);
            CropImageActivity.this.imageView.add(highlightView);
        }

        public void crop() {
            CropImageActivity.this.handler.post(new Runnable() { // from class: com.soundcloud.android.crop.CropImageActivity.Cropper.1
                @Override // java.lang.Runnable
                public void run() {
                    Cropper.this.makeDefault();
                    CropImageActivity.this.imageView.invalidate();
                    if (CropImageActivity.this.imageView.highlightViews.size() == 1) {
                        CropImageActivity.this.cropView = CropImageActivity.this.imageView.highlightViews.get(0);
                        CropImageActivity.this.cropView.setFocus(true);
                    }
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onSaveClicked() throws Throwable {
        int i;
        HighlightView highlightView = this.cropView;
        if (highlightView == null || this.isSaving) {
            return;
        }
        this.isSaving = true;
        Rect scaledCropRect = highlightView.getScaledCropRect(this.sampleSize);
        int iWidth = scaledCropRect.width();
        int iHeight = scaledCropRect.height();
        int i2 = this.maxX;
        if (i2 > 0 && (i = this.maxY) > 0 && (iWidth > i2 || iHeight > i)) {
            float f = iWidth / iHeight;
            int i3 = this.maxX;
            int i4 = this.maxY;
            if (i3 / i4 > f) {
                iWidth = (int) ((i4 * f) + 0.5f);
                iHeight = i4;
            } else {
                iHeight = (int) ((i3 / f) + 0.5f);
                iWidth = i3;
            }
        }
        try {
            Bitmap bitmapDecodeRegionCrop = decodeRegionCrop(scaledCropRect, iWidth, iHeight);
            if (bitmapDecodeRegionCrop != null) {
                this.imageView.setImageRotateBitmapResetBase(new RotateBitmap(bitmapDecodeRegionCrop, this.exifRotation), true);
                this.imageView.center();
                this.imageView.highlightViews.clear();
            }
            saveImage(bitmapDecodeRegionCrop);
        } catch (IllegalArgumentException e) {
            setResultException(e);
            finish();
        }
    }

    private void saveImage(final Bitmap bitmap) {
        if (bitmap != null) {
            CropUtil.startBackgroundJob(this, null, getResources().getString(C1312R.string.crop__saving), new Runnable() { // from class: com.soundcloud.android.crop.CropImageActivity.5
                @Override // java.lang.Runnable
                public void run() throws IOException {
                    CropImageActivity.this.saveOutput(bitmap);
                }
            }, this.handler);
        } else {
            finish();
        }
    }

    private Bitmap decodeRegionCrop(Rect rect, int i, int i2) throws Throwable {
        Bitmap bitmap;
        InputStream inputStreamOpenInputStream;
        Rect rect2;
        clearImageView();
        InputStream inputStream = null;
        try {
            try {
                inputStreamOpenInputStream = getContentResolver().openInputStream(this.sourceUri);
            } catch (IOException e) {
                e = e;
                bitmap = null;
            } catch (OutOfMemoryError e2) {
                e = e2;
                bitmap = null;
            }
            try {
                BitmapRegionDecoder bitmapRegionDecoderNewInstance = BitmapRegionDecoder.newInstance(inputStreamOpenInputStream, false);
                int width = bitmapRegionDecoderNewInstance.getWidth();
                int height = bitmapRegionDecoderNewInstance.getHeight();
                if (this.exifRotation != 0) {
                    Matrix matrix = new Matrix();
                    matrix.setRotate(-this.exifRotation);
                    RectF rectF = new RectF();
                    matrix.mapRect(rectF, new RectF(rect));
                    rectF.offset(rectF.left < 0.0f ? width : 0.0f, rectF.top < 0.0f ? height : 0.0f);
                    rect2 = new Rect((int) rectF.left, (int) rectF.top, (int) rectF.right, (int) rectF.bottom);
                } else {
                    rect2 = rect;
                }
                try {
                    Bitmap bitmapDecodeRegion = bitmapRegionDecoderNewInstance.decodeRegion(rect2, new BitmapFactory.Options());
                    if (bitmapDecodeRegion != null && (rect2.width() > i || rect2.height() > i2)) {
                        Matrix matrix2 = new Matrix();
                        matrix2.postScale(i / rect2.width(), i2 / rect2.height());
                        bitmapDecodeRegion = Bitmap.createBitmap(bitmapDecodeRegion, 0, 0, bitmapDecodeRegion.getWidth(), bitmapDecodeRegion.getHeight(), matrix2, true);
                    }
                    CropUtil.closeSilently(inputStreamOpenInputStream);
                    return bitmapDecodeRegion;
                } catch (IllegalArgumentException e3) {
                    throw new IllegalArgumentException("Rectangle " + rect2 + " is outside of the image (" + width + "," + height + "," + this.exifRotation + ")", e3);
                }
            } catch (IOException e4) {
                e = e4;
                bitmap = null;
                inputStream = inputStreamOpenInputStream;
                Log.m316e("Error cropping image: " + e.getMessage(), e);
                setResultException(e);
                CropUtil.closeSilently(inputStream);
                return bitmap;
            } catch (OutOfMemoryError e5) {
                e = e5;
                bitmap = null;
                inputStream = inputStreamOpenInputStream;
                Log.m316e("OOM cropping image: " + e.getMessage(), e);
                setResultException(e);
                CropUtil.closeSilently(inputStream);
                return bitmap;
            } catch (Throwable th) {
                th = th;
                CropUtil.closeSilently(inputStreamOpenInputStream);
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            inputStreamOpenInputStream = null;
        }
    }

    private void clearImageView() {
        this.imageView.clear();
        RotateBitmap rotateBitmap = this.rotateBitmap;
        if (rotateBitmap != null) {
            rotateBitmap.recycle();
        }
        System.gc();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void saveOutput(final Bitmap bitmap) throws IOException {
        if (this.saveUri != null) {
            OutputStream outputStreamOpenOutputStream = null;
            try {
                try {
                    outputStreamOpenOutputStream = getContentResolver().openOutputStream(this.saveUri);
                    if (outputStreamOpenOutputStream != null) {
                        bitmap.compress(this.saveAsPng ? Bitmap.CompressFormat.PNG : Bitmap.CompressFormat.JPEG, 90, outputStreamOpenOutputStream);
                    }
                } catch (IOException e) {
                    setResultException(e);
                    Log.m316e("Cannot open file: " + this.saveUri, e);
                }
                CropUtil.copyExifRotation(CropUtil.getFromMediaUri(this, getContentResolver(), this.sourceUri), CropUtil.getFromMediaUri(this, getContentResolver(), this.saveUri));
                setResultUri(this.saveUri);
            } finally {
                CropUtil.closeSilently(outputStreamOpenOutputStream);
            }
        }
        this.handler.post(new Runnable() { // from class: com.soundcloud.android.crop.CropImageActivity.6
            @Override // java.lang.Runnable
            public void run() {
                CropImageActivity.this.imageView.clear();
                bitmap.recycle();
            }
        });
        finish();
    }

    @Override // com.soundcloud.android.crop.MonitoredActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        RotateBitmap rotateBitmap = this.rotateBitmap;
        if (rotateBitmap != null) {
            rotateBitmap.recycle();
        }
    }

    public boolean isSaving() {
        return this.isSaving;
    }

    private void setResultUri(Uri uri) {
        setResult(-1, new Intent().putExtra("output", uri));
    }

    private void setResultException(Throwable th) {
        setResult(Crop.RESULT_ERROR, new Intent().putExtra(Crop.Extra.ERROR, th));
    }
}
