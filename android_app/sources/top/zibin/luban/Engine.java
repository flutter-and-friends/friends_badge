package top.zibin.luban;

import android.device.scanner.configuration.PropertyID;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Matrix;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;

/* loaded from: classes2.dex */
class Engine {
    private boolean focusAlpha;
    private int srcHeight;
    private InputStreamProvider srcImg;
    private int srcWidth;
    private File tagImg;

    Engine(InputStreamProvider inputStreamProvider, File file, boolean z) throws IOException {
        this.tagImg = file;
        this.srcImg = inputStreamProvider;
        this.focusAlpha = z;
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        options.inSampleSize = 1;
        BitmapFactory.decodeStream(inputStreamProvider.open(), null, options);
        this.srcWidth = options.outWidth;
        this.srcHeight = options.outHeight;
    }

    private int computeSize() {
        int i = this.srcWidth;
        if (i % 2 == 1) {
            i++;
        }
        this.srcWidth = i;
        int i2 = this.srcHeight;
        if (i2 % 2 == 1) {
            i2++;
        }
        this.srcHeight = i2;
        int iMax = Math.max(this.srcWidth, this.srcHeight);
        float fMin = Math.min(this.srcWidth, this.srcHeight) / iMax;
        if (fMin > 1.0f || fMin <= 0.5625d) {
            double d = fMin;
            if (d <= 0.5625d && d > 0.5d) {
                int i3 = iMax / PropertyID.UPCA_ENABLE;
                if (i3 == 0) {
                    return 1;
                }
                return i3;
            }
            return (int) Math.ceil(iMax / (1280.0d / d));
        }
        if (iMax < 1664) {
            return 1;
        }
        if (iMax < 4990) {
            return 2;
        }
        if (iMax > 4990 && iMax < 10240) {
            return 4;
        }
        int i4 = iMax / PropertyID.UPCA_ENABLE;
        if (i4 == 0) {
            return 1;
        }
        return i4;
    }

    private Bitmap rotatingImage(Bitmap bitmap, int i) {
        Matrix matrix = new Matrix();
        matrix.postRotate(i);
        return Bitmap.createBitmap(bitmap, 0, 0, bitmap.getWidth(), bitmap.getHeight(), matrix, true);
    }

    File compress() throws IOException {
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inSampleSize = computeSize();
        Bitmap bitmapDecodeStream = BitmapFactory.decodeStream(this.srcImg.open(), null, options);
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        if (Checker.SINGLE.isJPG(this.srcImg.open())) {
            bitmapDecodeStream = rotatingImage(bitmapDecodeStream, Checker.SINGLE.getOrientation(this.srcImg.open()));
        }
        bitmapDecodeStream.compress(this.focusAlpha ? Bitmap.CompressFormat.PNG : Bitmap.CompressFormat.JPEG, 60, byteArrayOutputStream);
        bitmapDecodeStream.recycle();
        FileOutputStream fileOutputStream = new FileOutputStream(this.tagImg);
        fileOutputStream.write(byteArrayOutputStream.toByteArray());
        fileOutputStream.flush();
        fileOutputStream.close();
        byteArrayOutputStream.close();
        return this.tagImg;
    }
}
