package com.google.zxing.pdf417.decoder;

import com.google.zxing.pdf417.PDF417Common;
import java.lang.reflect.Array;

/* loaded from: classes.dex */
final class PDF417CodewordDecoder {
    private static final float[][] RATIOS_TABLE = (float[][]) Array.newInstance((Class<?>) float.class, PDF417Common.SYMBOL_TABLE.length, 8);

    static {
        int i;
        for (int i2 = 0; i2 < PDF417Common.SYMBOL_TABLE.length; i2++) {
            int i3 = PDF417Common.SYMBOL_TABLE[i2];
            int i4 = i3 & 1;
            int i5 = i3;
            int i6 = 0;
            while (i6 < 8) {
                float f = 0.0f;
                while (true) {
                    i = i5 & 1;
                    if (i != i4) {
                        break;
                    }
                    f += 1.0f;
                    i5 >>= 1;
                }
                RATIOS_TABLE[i2][(8 - i6) - 1] = f / 17.0f;
                i6++;
                i4 = i;
            }
        }
    }

    private PDF417CodewordDecoder() {
    }

    static int getDecodedValue(int[] iArr) {
        int decodedCodewordValue = getDecodedCodewordValue(sampleBitCounts(iArr));
        return decodedCodewordValue != -1 ? decodedCodewordValue : getClosestDecodedValue(iArr);
    }

    private static int[] sampleBitCounts(int[] iArr) {
        float bitCountSum = PDF417Common.getBitCountSum(iArr);
        int[] iArr2 = new int[8];
        int i = 0;
        int i2 = 0;
        for (int i3 = 0; i3 < 17; i3++) {
            if (iArr[i2] + i <= (bitCountSum / 34.0f) + ((i3 * bitCountSum) / 17.0f)) {
                i += iArr[i2];
                i2++;
            }
            iArr2[i2] = iArr2[i2] + 1;
        }
        return iArr2;
    }

    private static int getDecodedCodewordValue(int[] iArr) {
        int bitValue = getBitValue(iArr);
        if (PDF417Common.getCodeword(bitValue) == -1) {
            return -1;
        }
        return bitValue;
    }

    private static int getBitValue(int[] iArr) {
        long j = 0;
        int i = 0;
        while (i < iArr.length) {
            long j2 = j;
            for (int i2 = 0; i2 < iArr[i]; i2++) {
                int i3 = 1;
                long j3 = j2 << 1;
                if (i % 2 != 0) {
                    i3 = 0;
                }
                j2 = j3 | i3;
            }
            i++;
            j = j2;
        }
        return (int) j;
    }

    private static int getClosestDecodedValue(int[] iArr) {
        int bitCountSum = PDF417Common.getBitCountSum(iArr);
        float[] fArr = new float[8];
        for (int i = 0; i < fArr.length; i++) {
            fArr[i] = iArr[i] / bitCountSum;
        }
        int i2 = 0;
        int i3 = -1;
        float f = Float.MAX_VALUE;
        while (true) {
            float[][] fArr2 = RATIOS_TABLE;
            if (i2 >= fArr2.length) {
                return i3;
            }
            float f2 = 0.0f;
            float[] fArr3 = fArr2[i2];
            for (int i4 = 0; i4 < 8; i4++) {
                float f3 = fArr3[i4] - fArr[i4];
                f2 += f3 * f3;
                if (f2 >= f) {
                    break;
                }
            }
            if (f2 < f) {
                i3 = PDF417Common.SYMBOL_TABLE[i2];
                f = f2;
            }
            i2++;
        }
    }
}
