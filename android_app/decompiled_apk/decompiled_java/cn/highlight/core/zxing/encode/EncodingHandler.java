package cn.highlight.core.zxing.encode;

import android.graphics.Bitmap;
import com.google.zxing.BarcodeFormat;
import com.google.zxing.EncodeHintType;
import com.google.zxing.MultiFormatWriter;
import com.google.zxing.WriterException;
import com.google.zxing.common.BitMatrix;
import com.google.zxing.qrcode.decoder.ErrorCorrectionLevel;
import java.io.UnsupportedEncodingException;
import java.util.Hashtable;

/* loaded from: classes.dex */
public final class EncodingHandler {
    static final int BLACK = -16777216;
    static final int WHITE = -1;

    public static Bitmap create2Code(String str, int i) throws WriterException, UnsupportedEncodingException {
        return BitMatrixToBitmap(new MultiFormatWriter().encode(str, BarcodeFormat.QR_CODE, i, i, getEncodeHintMap()));
    }

    public static Bitmap createBarCode(String str, Integer num, Integer num2) throws Exception {
        return BitMatrixToBitmap(new MultiFormatWriter().encode(str, BarcodeFormat.CODE_128, num.intValue(), num2.intValue(), getEncodeHintMap()));
    }

    private static Hashtable<EncodeHintType, Object> getEncodeHintMap() {
        Hashtable<EncodeHintType, Object> hashtable = new Hashtable<>();
        hashtable.put(EncodeHintType.CHARACTER_SET, "utf-8");
        hashtable.put(EncodeHintType.ERROR_CORRECTION, ErrorCorrectionLevel.H);
        return hashtable;
    }

    private static Bitmap BitMatrixToBitmap(BitMatrix bitMatrix) {
        int width = bitMatrix.getWidth();
        int height = bitMatrix.getHeight();
        int[] iArr = new int[width * height];
        for (int i = 0; i < height; i++) {
            int i2 = i * width;
            for (int i3 = 0; i3 < width; i3++) {
                if (bitMatrix.get(i3, i)) {
                    iArr[i2 + i3] = -16777216;
                } else {
                    iArr[i2 + i3] = -1;
                }
            }
        }
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(width, height, Bitmap.Config.ARGB_8888);
        bitmapCreateBitmap.setPixels(iArr, 0, width, 0, 0, width, height);
        return bitmapCreateBitmap;
    }
}
