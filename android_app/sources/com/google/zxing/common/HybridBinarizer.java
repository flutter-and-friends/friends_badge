package com.google.zxing.common;

import com.google.zxing.Binarizer;
import com.google.zxing.LuminanceSource;
import com.google.zxing.NotFoundException;
import java.lang.reflect.Array;

/* loaded from: classes.dex */
public final class HybridBinarizer extends GlobalHistogramBinarizer {
    private static final int BLOCK_SIZE = 8;
    private static final int BLOCK_SIZE_MASK = 7;
    private static final int BLOCK_SIZE_POWER = 3;
    private static final int MINIMUM_DIMENSION = 40;
    private static final int MIN_DYNAMIC_RANGE = 24;
    private BitMatrix matrix;

    private static int cap(int i, int i2, int i3) {
        return i < i2 ? i2 : i > i3 ? i3 : i;
    }

    public HybridBinarizer(LuminanceSource luminanceSource) {
        super(luminanceSource);
    }

    @Override // com.google.zxing.common.GlobalHistogramBinarizer, com.google.zxing.Binarizer
    public BitMatrix getBlackMatrix() throws NotFoundException {
        BitMatrix bitMatrix = this.matrix;
        if (bitMatrix != null) {
            return bitMatrix;
        }
        LuminanceSource luminanceSource = getLuminanceSource();
        int width = luminanceSource.getWidth();
        int height = luminanceSource.getHeight();
        if (width >= 40 && height >= 40) {
            byte[] matrix = luminanceSource.getMatrix();
            int i = width >> 3;
            if ((width & 7) != 0) {
                i++;
            }
            int i2 = i;
            int i3 = height >> 3;
            if ((height & 7) != 0) {
                i3++;
            }
            int i4 = i3;
            int[][] iArrCalculateBlackPoints = calculateBlackPoints(matrix, i2, i4, width, height);
            BitMatrix bitMatrix2 = new BitMatrix(width, height);
            calculateThresholdForBlock(matrix, i2, i4, width, height, iArrCalculateBlackPoints, bitMatrix2);
            this.matrix = bitMatrix2;
        } else {
            this.matrix = super.getBlackMatrix();
        }
        return this.matrix;
    }

    @Override // com.google.zxing.common.GlobalHistogramBinarizer, com.google.zxing.Binarizer
    public Binarizer createBinarizer(LuminanceSource luminanceSource) {
        return new HybridBinarizer(luminanceSource);
    }

    private static void calculateThresholdForBlock(byte[] bArr, int i, int i2, int i3, int i4, int[][] iArr, BitMatrix bitMatrix) {
        for (int i5 = 0; i5 < i2; i5++) {
            int i6 = i5 << 3;
            int i7 = i4 - 8;
            if (i6 > i7) {
                i6 = i7;
            }
            for (int i8 = 0; i8 < i; i8++) {
                int i9 = i8 << 3;
                int i10 = i3 - 8;
                if (i9 <= i10) {
                    i10 = i9;
                }
                int iCap = cap(i8, 2, i - 3);
                int iCap2 = cap(i5, 2, i2 - 3);
                int i11 = 0;
                for (int i12 = -2; i12 <= 2; i12++) {
                    int[] iArr2 = iArr[iCap2 + i12];
                    i11 += iArr2[iCap - 2] + iArr2[iCap - 1] + iArr2[iCap] + iArr2[iCap + 1] + iArr2[iCap + 2];
                }
                thresholdBlock(bArr, i10, i6, i11 / 25, i3, bitMatrix);
            }
        }
    }

    private static void thresholdBlock(byte[] bArr, int i, int i2, int i3, int i4, BitMatrix bitMatrix) {
        int i5 = (i2 * i4) + i;
        int i6 = 0;
        while (i6 < 8) {
            for (int i7 = 0; i7 < 8; i7++) {
                if ((bArr[i5 + i7] & 255) <= i3) {
                    bitMatrix.set(i + i7, i2 + i6);
                }
            }
            i6++;
            i5 += i4;
        }
    }

    private static int[][] calculateBlackPoints(byte[] bArr, int i, int i2, int i3, int i4) {
        int[][] iArr = (int[][]) Array.newInstance((Class<?>) int.class, i2, i);
        for (int i5 = 0; i5 < i2; i5++) {
            int i6 = i5 << 3;
            int i7 = i4 - 8;
            if (i6 > i7) {
                i6 = i7;
            }
            for (int i8 = 0; i8 < i; i8++) {
                int i9 = i8 << 3;
                int i10 = i3 - 8;
                if (i9 > i10) {
                    i9 = i10;
                }
                int i11 = (i6 * i3) + i9;
                int i12 = 0;
                int i13 = 0;
                int i14 = 0;
                int i15 = 255;
                while (i12 < 8) {
                    int i16 = i14;
                    int i17 = i13;
                    for (int i18 = 0; i18 < 8; i18++) {
                        int i19 = bArr[i11 + i18] & 255;
                        i17 += i19;
                        if (i19 < i15) {
                            i15 = i19;
                        }
                        if (i19 > i16) {
                            i16 = i19;
                        }
                    }
                    if (i16 - i15 > 24) {
                        int i20 = i12 + 1;
                        int i21 = i11 + i3;
                        while (i20 < 8) {
                            for (int i22 = 0; i22 < 8; i22++) {
                                i17 += bArr[i21 + i22] & 255;
                            }
                            i20++;
                            i21 += i3;
                        }
                        i12 = i20;
                        i13 = i17;
                        i11 = i21;
                    } else {
                        i13 = i17;
                    }
                    i12++;
                    i11 += i3;
                    i14 = i16;
                }
                int i23 = i13 >> 6;
                if (i14 - i15 <= 24) {
                    i23 = i15 / 2;
                    if (i5 > 0 && i8 > 0) {
                        int i24 = i5 - 1;
                        int i25 = i8 - 1;
                        int i26 = ((iArr[i24][i8] + (iArr[i5][i25] * 2)) + iArr[i24][i25]) / 4;
                        if (i15 < i26) {
                            i23 = i26;
                        }
                    }
                }
                iArr[i5][i8] = i23;
            }
        }
        return iArr;
    }
}
