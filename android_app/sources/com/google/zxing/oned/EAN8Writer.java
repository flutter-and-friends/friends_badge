package com.google.zxing.oned;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.EncodeHintType;
import com.google.zxing.WriterException;
import com.google.zxing.common.BitMatrix;
import java.util.Map;

/* loaded from: classes.dex */
public final class EAN8Writer extends UPCEANWriter {
    private static final int CODE_WIDTH = 67;

    @Override // com.google.zxing.oned.OneDimensionalCodeWriter, com.google.zxing.Writer
    public BitMatrix encode(String str, BarcodeFormat barcodeFormat, int i, int i2, Map<EncodeHintType, ?> map) throws WriterException {
        if (barcodeFormat != BarcodeFormat.EAN_8) {
            throw new IllegalArgumentException("Can only encode EAN_8, but got " + barcodeFormat);
        }
        return super.encode(str, barcodeFormat, i, i2, map);
    }

    @Override // com.google.zxing.oned.OneDimensionalCodeWriter
    public boolean[] encode(String str) throws NumberFormatException {
        if (str.length() != 8) {
            throw new IllegalArgumentException("Requested contents should be 8 digits long, but got " + str.length());
        }
        boolean[] zArr = new boolean[67];
        int iAppendPattern = appendPattern(zArr, 0, UPCEANReader.START_END_PATTERN, true) + 0;
        int i = 0;
        while (i <= 3) {
            int i2 = i + 1;
            iAppendPattern += appendPattern(zArr, iAppendPattern, UPCEANReader.L_PATTERNS[Integer.parseInt(str.substring(i, i2))], false);
            i = i2;
        }
        int iAppendPattern2 = iAppendPattern + appendPattern(zArr, iAppendPattern, UPCEANReader.MIDDLE_PATTERN, false);
        int i3 = 4;
        while (i3 <= 7) {
            int i4 = i3 + 1;
            iAppendPattern2 += appendPattern(zArr, iAppendPattern2, UPCEANReader.L_PATTERNS[Integer.parseInt(str.substring(i3, i4))], true);
            i3 = i4;
        }
        appendPattern(zArr, iAppendPattern2, UPCEANReader.START_END_PATTERN, true);
        return zArr;
    }
}
