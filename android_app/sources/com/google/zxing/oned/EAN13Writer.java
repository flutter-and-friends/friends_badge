package com.google.zxing.oned;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.EncodeHintType;
import com.google.zxing.FormatException;
import com.google.zxing.WriterException;
import com.google.zxing.common.BitMatrix;
import java.util.Map;

/* loaded from: classes.dex */
public final class EAN13Writer extends UPCEANWriter {
    private static final int CODE_WIDTH = 95;

    @Override // com.google.zxing.oned.OneDimensionalCodeWriter, com.google.zxing.Writer
    public BitMatrix encode(String str, BarcodeFormat barcodeFormat, int i, int i2, Map<EncodeHintType, ?> map) throws WriterException {
        if (barcodeFormat != BarcodeFormat.EAN_13) {
            throw new IllegalArgumentException("Can only encode EAN_13, but got " + barcodeFormat);
        }
        return super.encode(str, barcodeFormat, i, i2, map);
    }

    @Override // com.google.zxing.oned.OneDimensionalCodeWriter
    public boolean[] encode(String str) throws NumberFormatException {
        if (str.length() != 13) {
            throw new IllegalArgumentException("Requested contents should be 13 digits long, but got " + str.length());
        }
        try {
            if (!UPCEANReader.checkStandardUPCEANChecksum(str)) {
                throw new IllegalArgumentException("Contents do not pass checksum");
            }
            int i = EAN13Reader.FIRST_DIGIT_ENCODINGS[Integer.parseInt(str.substring(0, 1))];
            boolean[] zArr = new boolean[95];
            int iAppendPattern = appendPattern(zArr, 0, UPCEANReader.START_END_PATTERN, true) + 0;
            int i2 = 1;
            while (i2 <= 6) {
                int i3 = i2 + 1;
                int i4 = Integer.parseInt(str.substring(i2, i3));
                if (((i >> (6 - i2)) & 1) == 1) {
                    i4 += 10;
                }
                iAppendPattern += appendPattern(zArr, iAppendPattern, UPCEANReader.L_AND_G_PATTERNS[i4], false);
                i2 = i3;
            }
            int iAppendPattern2 = iAppendPattern + appendPattern(zArr, iAppendPattern, UPCEANReader.MIDDLE_PATTERN, false);
            int i5 = 7;
            while (i5 <= 12) {
                int i6 = i5 + 1;
                iAppendPattern2 += appendPattern(zArr, iAppendPattern2, UPCEANReader.L_PATTERNS[Integer.parseInt(str.substring(i5, i6))], true);
                i5 = i6;
            }
            appendPattern(zArr, iAppendPattern2, UPCEANReader.START_END_PATTERN, true);
            return zArr;
        } catch (FormatException unused) {
            throw new IllegalArgumentException("Illegal contents");
        }
    }
}
