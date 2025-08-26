package com.google.zxing.oned;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.EncodeHintType;
import com.google.zxing.Writer;
import com.google.zxing.WriterException;
import com.google.zxing.common.BitMatrix;
import java.util.Map;

/* loaded from: classes.dex */
public final class UPCAWriter implements Writer {
    private final EAN13Writer subWriter = new EAN13Writer();

    @Override // com.google.zxing.Writer
    public BitMatrix encode(String str, BarcodeFormat barcodeFormat, int i, int i2) throws WriterException {
        return encode(str, barcodeFormat, i, i2, null);
    }

    @Override // com.google.zxing.Writer
    public BitMatrix encode(String str, BarcodeFormat barcodeFormat, int i, int i2, Map<EncodeHintType, ?> map) throws WriterException {
        if (barcodeFormat != BarcodeFormat.UPC_A) {
            throw new IllegalArgumentException("Can only encode UPC-A, but got " + barcodeFormat);
        }
        return this.subWriter.encode(preencode(str), BarcodeFormat.EAN_13, i, i2, map);
    }

    private static String preencode(String str) {
        int length = str.length();
        if (length == 11) {
            int iCharAt = 0;
            for (int i = 0; i < 11; i++) {
                iCharAt += (str.charAt(i) - '0') * (i % 2 == 0 ? 3 : 1);
            }
            str = String.valueOf(str) + ((1000 - iCharAt) % 10);
        } else if (length != 12) {
            throw new IllegalArgumentException("Requested contents should be 11 or 12 digits long, but got " + str.length());
        }
        return String.valueOf('0') + str;
    }
}
