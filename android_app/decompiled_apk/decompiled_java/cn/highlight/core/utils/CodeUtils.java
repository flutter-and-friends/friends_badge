package cn.highlight.core.utils;

import android.graphics.Bitmap;
import androidx.core.view.ViewCompat;
import com.google.zxing.BarcodeFormat;
import com.google.zxing.EncodeHintType;
import com.google.zxing.WriterException;
import com.google.zxing.common.BitMatrix;
import com.google.zxing.oned.Code128Writer;
import com.google.zxing.qrcode.QRCodeWriter;
import java.util.HashMap;

/* loaded from: classes.dex */
public class CodeUtils {
    public static Bitmap generateBitmap(String str, int i, int i2) {
        QRCodeWriter qRCodeWriter = new QRCodeWriter();
        HashMap map = new HashMap();
        map.put(EncodeHintType.CHARACTER_SET, "utf-8");
        try {
            BitMatrix bitMatrixEncode = qRCodeWriter.encode(str, BarcodeFormat.QR_CODE, i, i2, map);
            int[] iArr = new int[i * i2];
            for (int i3 = 0; i3 < i2; i3++) {
                for (int i4 = 0; i4 < i; i4++) {
                    if (bitMatrixEncode.get(i4, i3)) {
                        iArr[(i3 * i) + i4] = 0;
                    } else {
                        iArr[(i3 * i) + i4] = -1;
                    }
                }
            }
            return Bitmap.createBitmap(iArr, 0, i, i, i2, Bitmap.Config.RGB_565);
        } catch (WriterException e) {
            e.printStackTrace();
            return null;
        }
    }

    public static Bitmap generateQRCodeWithoutMargin(String str, int i, int i2, int i3) {
        QRCodeWriter qRCodeWriter = new QRCodeWriter();
        HashMap map = new HashMap();
        map.put(EncodeHintType.CHARACTER_SET, "utf-8");
        try {
            BitMatrix bitMatrixEncode = qRCodeWriter.encode(str, BarcodeFormat.QR_CODE, i, i, map);
            int width = bitMatrixEncode.getWidth();
            int height = bitMatrixEncode.getHeight();
            int i4 = 0;
            int i5 = 0;
            int i6 = 0;
            while (i4 < bitMatrixEncode.getWidth()) {
                int i7 = i6;
                int i8 = i5;
                for (int i9 = 0; i9 < bitMatrixEncode.getHeight(); i9++) {
                    if (bitMatrixEncode.get(i4, i9)) {
                        if (i4 < width) {
                            width = i4;
                        }
                        if (i9 < height) {
                            height = i9;
                        }
                        if (i4 > i8) {
                            i8 = i4;
                        }
                        if (i9 > i7) {
                            i7 = i9;
                        }
                    }
                }
                i4++;
                i5 = i8;
                i6 = i7;
            }
            int i10 = (i5 - width) + 1;
            int i11 = (i6 - height) + 1;
            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(i10, i11, Bitmap.Config.ARGB_8888);
            for (int i12 = 0; i12 < i10; i12++) {
                for (int i13 = 0; i13 < i11; i13++) {
                    if (bitMatrixEncode.get(width + i12, height + i13)) {
                        bitmapCreateBitmap.setPixel(i12, i13, i3);
                    } else {
                        bitmapCreateBitmap.setPixel(i12, i13, i2);
                    }
                }
            }
            return bitmapCreateBitmap;
        } catch (WriterException e) {
            e.printStackTrace();
            return null;
        }
    }

    public static Bitmap generateBarcode(String str, int i, int i2) {
        try {
            BitMatrix bitMatrixEncode = new Code128Writer().encode(str, BarcodeFormat.CODE_128, i, i2);
            int width = bitMatrixEncode.getWidth();
            int height = bitMatrixEncode.getHeight();
            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(width, height, Bitmap.Config.ARGB_8888);
            for (int i3 = 0; i3 < width; i3++) {
                for (int i4 = 0; i4 < height; i4++) {
                    bitmapCreateBitmap.setPixel(i3, i4, bitMatrixEncode.get(i3, i4) ? ViewCompat.MEASURED_STATE_MASK : -1);
                }
            }
            return bitmapCreateBitmap;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public static Bitmap generateBarcodeWithoutMargin(String str, int i, int i2, int i3, int i4) {
        try {
            BitMatrix bitMatrixEncode = new Code128Writer().encode(str, BarcodeFormat.CODE_128, i, i2);
            int width = bitMatrixEncode.getWidth();
            int height = bitMatrixEncode.getHeight();
            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(width, height, Bitmap.Config.ARGB_8888);
            for (int i5 = 0; i5 < width; i5++) {
                for (int i6 = 0; i6 < height; i6++) {
                    bitmapCreateBitmap.setPixel(i5, i6, bitMatrixEncode.get(i5, i6) ? i4 : i3);
                }
            }
            int iMin = width;
            int i7 = 0;
            int iMax = 0;
            while (true) {
                boolean z = true;
                if (i7 >= width) {
                    return Bitmap.createBitmap(bitmapCreateBitmap, iMin, 0, (iMax - iMin) + 1, height);
                }
                int i8 = 0;
                while (true) {
                    if (i8 >= height) {
                        z = false;
                        break;
                    }
                    if (bitMatrixEncode.get(i7, i8)) {
                        break;
                    }
                    i8++;
                }
                if (z) {
                    iMin = Math.min(iMin, i7);
                    iMax = Math.max(iMax, i7);
                }
                i7++;
            }
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }
}
