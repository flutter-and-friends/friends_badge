package cn.highlight.core.zxing.decode;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import com.google.zxing.LuminanceSource;
import java.io.FileNotFoundException;

/* loaded from: classes.dex */
public final class RGBLuminanceSource extends LuminanceSource {
    final byte[] luminances;

    public RGBLuminanceSource(String str) throws FileNotFoundException {
        this(loadBitmap(str));
    }

    public RGBLuminanceSource(Bitmap bitmap) {
        super(bitmap.getWidth(), bitmap.getHeight());
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        int i = width * height;
        int[] iArr = new int[i];
        bitmap.getPixels(iArr, 0, width, 0, 0, width, height);
        this.luminances = new byte[i];
        for (int i2 = 0; i2 < height; i2++) {
            int i3 = i2 * width;
            for (int i4 = 0; i4 < width; i4++) {
                int i5 = i3 + i4;
                int i6 = iArr[i5];
                int i7 = (i6 >> 16) & 255;
                int i8 = (i6 >> 8) & 255;
                int i9 = i6 & 255;
                if (i7 == i8 && i8 == i9) {
                    this.luminances[i5] = (byte) i7;
                } else {
                    this.luminances[i5] = (byte) ((((i7 + i8) + i8) + i9) >> 2);
                }
            }
        }
    }

    @Override // com.google.zxing.LuminanceSource
    public byte[] getRow(int i, byte[] bArr) {
        if (i < 0 || i >= getHeight()) {
            throw new IllegalArgumentException("Requested row is outside the image: " + i);
        }
        int width = getWidth();
        if (bArr == null || bArr.length < width) {
            bArr = new byte[width];
        }
        System.arraycopy(this.luminances, i * width, bArr, 0, width);
        return bArr;
    }

    @Override // com.google.zxing.LuminanceSource
    public byte[] getMatrix() {
        return this.luminances;
    }

    static Bitmap loadBitmap(String str) throws FileNotFoundException {
        Bitmap bitmapDecodeFile = BitmapFactory.decodeFile(str);
        if (bitmapDecodeFile != null) {
            return bitmapDecodeFile;
        }
        throw new FileNotFoundException("Couldn't open " + str);
    }
}
