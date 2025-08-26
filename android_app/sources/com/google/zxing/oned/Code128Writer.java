package com.google.zxing.oned;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.EncodeHintType;
import com.google.zxing.WriterException;
import com.google.zxing.common.BitMatrix;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;

/* loaded from: classes.dex */
public final class Code128Writer extends OneDimensionalCodeWriter {
    private static final int CODE_CODE_B = 100;
    private static final int CODE_CODE_C = 99;
    private static final int CODE_FNC_1 = 102;
    private static final int CODE_FNC_2 = 97;
    private static final int CODE_FNC_3 = 96;
    private static final int CODE_FNC_4_B = 100;
    private static final int CODE_START_B = 104;
    private static final int CODE_START_C = 105;
    private static final int CODE_STOP = 106;
    private static final char ESCAPE_FNC_1 = 241;
    private static final char ESCAPE_FNC_2 = 242;
    private static final char ESCAPE_FNC_3 = 243;
    private static final char ESCAPE_FNC_4 = 244;

    @Override // com.google.zxing.oned.OneDimensionalCodeWriter, com.google.zxing.Writer
    public BitMatrix encode(String str, BarcodeFormat barcodeFormat, int i, int i2, Map<EncodeHintType, ?> map) throws WriterException {
        if (barcodeFormat != BarcodeFormat.CODE_128) {
            throw new IllegalArgumentException("Can only encode CODE_128, but got " + barcodeFormat);
        }
        return super.encode(str, barcodeFormat, i, i2, map);
    }

    @Override // com.google.zxing.oned.OneDimensionalCodeWriter
    public boolean[] encode(String str) throws NumberFormatException {
        int length = str.length();
        if (length < 1 || length > 80) {
            throw new IllegalArgumentException("Contents length should be between 1 and 80 characters, but got " + length);
        }
        int iAppendPattern = 0;
        for (int i = 0; i < length; i++) {
            char cCharAt = str.charAt(i);
            if (cCharAt < ' ' || cCharAt > '~') {
                switch (cCharAt) {
                    case 241:
                    case 242:
                    case 243:
                    case 244:
                        break;
                    default:
                        throw new IllegalArgumentException("Bad character in input: " + cCharAt);
                }
            }
        }
        ArrayList<int[]> arrayList = new ArrayList();
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        int i5 = 1;
        while (i2 < length) {
            int iCharAt = 100;
            int i6 = isDigits(str, i2, i3 == 99 ? 2 : 4) ? 99 : 100;
            if (i6 == i3) {
                switch (str.charAt(i2)) {
                    case 241:
                        iCharAt = 102;
                        break;
                    case 242:
                        iCharAt = 97;
                        break;
                    case 243:
                        iCharAt = 96;
                        break;
                    case 244:
                        break;
                    default:
                        if (i3 != 100) {
                            iCharAt = Integer.parseInt(str.substring(i2, i2 + 2));
                            i2++;
                            break;
                        } else {
                            iCharAt = str.charAt(i2) - ' ';
                            break;
                        }
                }
                i2++;
            } else {
                iCharAt = i3 == 0 ? i6 == 100 ? 104 : 105 : i6;
                i3 = i6;
            }
            arrayList.add(Code128Reader.CODE_PATTERNS[iCharAt]);
            i4 += iCharAt * i5;
            if (i2 != 0) {
                i5++;
            }
        }
        arrayList.add(Code128Reader.CODE_PATTERNS[i4 % 103]);
        arrayList.add(Code128Reader.CODE_PATTERNS[106]);
        int i7 = 0;
        for (int[] iArr : arrayList) {
            int i8 = i7;
            for (int i9 : iArr) {
                i8 += i9;
            }
            i7 = i8;
        }
        boolean[] zArr = new boolean[i7];
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            iAppendPattern += appendPattern(zArr, iAppendPattern, (int[]) it.next(), true);
        }
        return zArr;
    }

    private static boolean isDigits(CharSequence charSequence, int i, int i2) {
        int i3 = i2 + i;
        int length = charSequence.length();
        while (i < i3 && i < length) {
            char cCharAt = charSequence.charAt(i);
            if (cCharAt < '0' || cCharAt > '9') {
                if (cCharAt != 241) {
                    return false;
                }
                i3++;
            }
            i++;
        }
        return i3 <= length;
    }
}
