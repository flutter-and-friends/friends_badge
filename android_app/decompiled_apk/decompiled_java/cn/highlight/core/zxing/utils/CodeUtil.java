package cn.highlight.core.zxing.utils;

import android.graphics.Bitmap;
import com.gg.reader.api.protocol.gx.EnumG;
import com.google.zxing.BarcodeFormat;
import com.google.zxing.MultiFormatWriter;
import com.google.zxing.WriterException;
import com.google.zxing.common.BitMatrix;

/* loaded from: classes.dex */
public class CodeUtil {
    public static Bitmap Create2DCode(String str) {
        try {
            BitMatrix bitMatrixEncode = new MultiFormatWriter().encode(str, BarcodeFormat.QR_CODE, EnumG.BaseMid_SafeCertification, EnumG.BaseMid_SafeCertification);
            int width = bitMatrixEncode.getWidth();
            int height = bitMatrixEncode.getHeight();
            int[] iArr = new int[width * height];
            for (int i = 0; i < height; i++) {
                for (int i2 = 0; i2 < width; i2++) {
                    if (bitMatrixEncode.get(i2, i)) {
                        iArr[(i * width) + i2] = -16777216;
                    }
                }
            }
            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(width, height, Bitmap.Config.ARGB_8888);
            bitmapCreateBitmap.setPixels(iArr, 0, width, 0, 0, width, height);
            return bitmapCreateBitmap;
        } catch (WriterException e) {
            e.printStackTrace();
            return null;
        }
    }
}
