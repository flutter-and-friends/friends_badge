package com.google.zxing.oned;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.EncodeHintType;
import com.google.zxing.WriterException;
import com.google.zxing.common.BitMatrix;
import java.util.Map;

/* loaded from: classes.dex */
public final class Code39Writer extends OneDimensionalCodeWriter {
    @Override // com.google.zxing.oned.OneDimensionalCodeWriter, com.google.zxing.Writer
    public BitMatrix encode(String str, BarcodeFormat barcodeFormat, int i, int i2, Map<EncodeHintType, ?> map) throws WriterException {
        if (barcodeFormat != BarcodeFormat.CODE_39) {
            throw new IllegalArgumentException("Can only encode CODE_39, but got " + barcodeFormat);
        }
        return super.encode(str, barcodeFormat, i, i2, map);
    }

    @Override // com.google.zxing.oned.OneDimensionalCodeWriter
    public boolean[] encode(String str) {
        int length = str.length();
        if (length > 80) {
            throw new IllegalArgumentException("Requested contents should be less than 80 digits long, but got " + length);
        }
        int[] iArr = new int[9];
        int i = length + 25;
        int i2 = 0;
        while (i2 < length) {
            int iIndexOf = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. *$/+%".indexOf(str.charAt(i2));
            if (iIndexOf < 0) {
                throw new IllegalArgumentException("Bad contents: " + str);
            }
            toIntArray(Code39Reader.CHARACTER_ENCODINGS[iIndexOf], iArr);
            int i3 = i;
            for (int i4 : iArr) {
                i3 += i4;
            }
            i2++;
            i = i3;
        }
        boolean[] zArr = new boolean[i];
        toIntArray(Code39Reader.CHARACTER_ENCODINGS[39], iArr);
        int iAppendPattern = appendPattern(zArr, 0, iArr, true);
        int[] iArr2 = {1};
        int iAppendPattern2 = iAppendPattern + appendPattern(zArr, iAppendPattern, iArr2, false);
        for (int i5 = 0; i5 < length; i5++) {
            toIntArray(Code39Reader.CHARACTER_ENCODINGS["0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. *$/+%".indexOf(str.charAt(i5))], iArr);
            int iAppendPattern3 = iAppendPattern2 + appendPattern(zArr, iAppendPattern2, iArr, true);
            iAppendPattern2 = iAppendPattern3 + appendPattern(zArr, iAppendPattern3, iArr2, false);
        }
        toIntArray(Code39Reader.CHARACTER_ENCODINGS[39], iArr);
        appendPattern(zArr, iAppendPattern2, iArr, true);
        return zArr;
    }

    private static void toIntArray(int i, int[] iArr) {
        for (int i2 = 0; i2 < 9; i2++) {
            int i3 = 1;
            if (((1 << (8 - i2)) & i) != 0) {
                i3 = 2;
            }
            iArr[i2] = i3;
        }
    }
}
