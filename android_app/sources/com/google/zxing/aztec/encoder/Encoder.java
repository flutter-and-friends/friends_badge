package com.google.zxing.aztec.encoder;

import com.google.zxing.common.BitArray;
import com.google.zxing.common.BitMatrix;
import com.google.zxing.common.reedsolomon.GenericGF;
import com.google.zxing.common.reedsolomon.ReedSolomonEncoder;

/* loaded from: classes.dex */
public final class Encoder {
    public static final int DEFAULT_AZTEC_LAYERS = 0;
    public static final int DEFAULT_EC_PERCENT = 33;
    private static final int MAX_NB_BITS = 32;
    private static final int MAX_NB_BITS_COMPACT = 4;
    private static final int[] WORD_SIZE = {4, 6, 6, 8, 8, 8, 8, 8, 8, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12};

    private static int totalBitsInLayer(int i, boolean z) {
        return ((z ? 88 : 112) + (i * 16)) * i;
    }

    private Encoder() {
    }

    public static AztecCode encode(byte[] bArr) {
        return encode(bArr, 33, 0);
    }

    public static AztecCode encode(byte[] bArr, int i, int i2) {
        int i3;
        boolean z;
        int i4;
        BitArray bitArrayStuffBits;
        int i5;
        int i6;
        BitArray bitArrayEncode = new HighLevelEncoder(bArr).encode();
        int size = ((bitArrayEncode.getSize() * i) / 100) + 11;
        int size2 = bitArrayEncode.getSize() + size;
        if (i2 != 0) {
            boolean z2 = i2 < 0;
            int iAbs = Math.abs(i2);
            if (iAbs > (z2 ? 4 : 32)) {
                throw new IllegalArgumentException(String.format("Illegal value %s for layers", Integer.valueOf(i2)));
            }
            i5 = totalBitsInLayer(iAbs, z2);
            i3 = WORD_SIZE[iAbs];
            int i7 = i5 - (i5 % i3);
            bitArrayStuffBits = stuffBits(bitArrayEncode, i3);
            if (bitArrayStuffBits.getSize() + size > i7) {
                throw new IllegalArgumentException("Data to large for user specified layer");
            }
            if (z2 && bitArrayStuffBits.getSize() > i3 * 64) {
                throw new IllegalArgumentException("Data to large for user specified layer");
            }
            z = z2;
            i4 = iAbs;
        } else {
            BitArray bitArrayStuffBits2 = null;
            int i8 = 0;
            i3 = 0;
            while (i8 <= 32) {
                z = i8 <= 3;
                i4 = z ? i8 + 1 : i8;
                int i9 = totalBitsInLayer(i4, z);
                if (size2 <= i9) {
                    int[] iArr = WORD_SIZE;
                    if (i3 != iArr[i4]) {
                        i3 = iArr[i4];
                        bitArrayStuffBits2 = stuffBits(bitArrayEncode, i3);
                    }
                    int i10 = i9 - (i9 % i3);
                    if ((!z || bitArrayStuffBits2.getSize() <= i3 * 64) && bitArrayStuffBits2.getSize() + size <= i10) {
                        bitArrayStuffBits = bitArrayStuffBits2;
                        i5 = i9;
                    }
                }
                i8++;
            }
            throw new IllegalArgumentException("Data too large for an Aztec code");
        }
        BitArray bitArrayGenerateCheckWords = generateCheckWords(bitArrayStuffBits, i5, i3);
        int size3 = bitArrayStuffBits.getSize() / i3;
        BitArray bitArrayGenerateModeMessage = generateModeMessage(z, i4, size3);
        int i11 = z ? (i4 * 4) + 11 : (i4 * 4) + 14;
        int[] iArr2 = new int[i11];
        int i12 = 2;
        if (z) {
            for (int i13 = 0; i13 < iArr2.length; i13++) {
                iArr2[i13] = i13;
            }
            i6 = i11;
        } else {
            int i14 = i11 / 2;
            int i15 = i11 + 1 + (((i14 - 1) / 15) * 2);
            int i16 = i15 / 2;
            int i17 = 0;
            while (i17 < i14) {
                int i18 = (i17 / 15) + i17;
                iArr2[(i14 - i17) - 1] = (i16 - i18) - 1;
                iArr2[i14 + i17] = i16 + i18 + 1;
                i17++;
                i12 = 2;
            }
            i6 = i15;
        }
        BitMatrix bitMatrix = new BitMatrix(i6);
        int i19 = 0;
        for (int i20 = 0; i20 < i4; i20++) {
            int i21 = (i4 - i20) * 4;
            int i22 = z ? i21 + 9 : i21 + 12;
            for (int i23 = 0; i23 < i22; i23++) {
                int i24 = i23 * 2;
                int i25 = 0;
                while (i25 < i12) {
                    if (bitArrayGenerateCheckWords.get(i19 + i24 + i25)) {
                        int i26 = i20 * 2;
                        bitMatrix.set(iArr2[i26 + i25], iArr2[i26 + i23]);
                    }
                    if (bitArrayGenerateCheckWords.get(i19 + (i22 * 2) + i24 + i25)) {
                        int i27 = i20 * 2;
                        bitMatrix.set(iArr2[i27 + i23], iArr2[((i11 - 1) - i27) - i25]);
                    }
                    if (bitArrayGenerateCheckWords.get(i19 + (i22 * 4) + i24 + i25)) {
                        int i28 = (i11 - 1) - (i20 * 2);
                        bitMatrix.set(iArr2[i28 - i25], iArr2[i28 - i23]);
                    }
                    if (bitArrayGenerateCheckWords.get(i19 + (i22 * 6) + i24 + i25)) {
                        int i29 = i20 * 2;
                        bitMatrix.set(iArr2[((i11 - 1) - i29) - i23], iArr2[i29 + i25]);
                    }
                    i25++;
                    i12 = 2;
                }
            }
            i19 += i22 * 8;
        }
        drawModeMessage(bitMatrix, z, i6, bitArrayGenerateModeMessage);
        if (z) {
            drawBullsEye(bitMatrix, i6 / 2, 5);
        } else {
            int i30 = i6 / 2;
            drawBullsEye(bitMatrix, i30, 7);
            int i31 = 0;
            int i32 = 0;
            while (i31 < (i11 / 2) - 1) {
                for (int i33 = i30 & 1; i33 < i6; i33 += 2) {
                    int i34 = i30 - i32;
                    bitMatrix.set(i34, i33);
                    int i35 = i30 + i32;
                    bitMatrix.set(i35, i33);
                    bitMatrix.set(i33, i34);
                    bitMatrix.set(i33, i35);
                }
                i31 += 15;
                i32 += 16;
            }
        }
        AztecCode aztecCode = new AztecCode();
        aztecCode.setCompact(z);
        aztecCode.setSize(i6);
        aztecCode.setLayers(i4);
        aztecCode.setCodeWords(size3);
        aztecCode.setMatrix(bitMatrix);
        return aztecCode;
    }

    private static void drawBullsEye(BitMatrix bitMatrix, int i, int i2) {
        for (int i3 = 0; i3 < i2; i3 += 2) {
            int i4 = i - i3;
            int i5 = i4;
            while (true) {
                int i6 = i + i3;
                if (i5 > i6) {
                    break;
                }
                bitMatrix.set(i5, i4);
                bitMatrix.set(i5, i6);
                bitMatrix.set(i4, i5);
                bitMatrix.set(i6, i5);
                i5++;
            }
        }
        int i7 = i - i2;
        bitMatrix.set(i7, i7);
        int i8 = i7 + 1;
        bitMatrix.set(i8, i7);
        bitMatrix.set(i7, i8);
        int i9 = i + i2;
        bitMatrix.set(i9, i7);
        bitMatrix.set(i9, i8);
        bitMatrix.set(i9, i9 - 1);
    }

    static BitArray generateModeMessage(boolean z, int i, int i2) {
        BitArray bitArray = new BitArray();
        if (z) {
            bitArray.appendBits(i - 1, 2);
            bitArray.appendBits(i2 - 1, 6);
            return generateCheckWords(bitArray, 28, 4);
        }
        bitArray.appendBits(i - 1, 5);
        bitArray.appendBits(i2 - 1, 11);
        return generateCheckWords(bitArray, 40, 4);
    }

    private static void drawModeMessage(BitMatrix bitMatrix, boolean z, int i, BitArray bitArray) {
        int i2 = i / 2;
        int i3 = 0;
        if (z) {
            while (i3 < 7) {
                int i4 = (i2 - 3) + i3;
                if (bitArray.get(i3)) {
                    bitMatrix.set(i4, i2 - 5);
                }
                if (bitArray.get(i3 + 7)) {
                    bitMatrix.set(i2 + 5, i4);
                }
                if (bitArray.get(20 - i3)) {
                    bitMatrix.set(i4, i2 + 5);
                }
                if (bitArray.get(27 - i3)) {
                    bitMatrix.set(i2 - 5, i4);
                }
                i3++;
            }
            return;
        }
        while (i3 < 10) {
            int i5 = (i2 - 5) + i3 + (i3 / 5);
            if (bitArray.get(i3)) {
                bitMatrix.set(i5, i2 - 7);
            }
            if (bitArray.get(i3 + 10)) {
                bitMatrix.set(i2 + 7, i5);
            }
            if (bitArray.get(29 - i3)) {
                bitMatrix.set(i5, i2 + 7);
            }
            if (bitArray.get(39 - i3)) {
                bitMatrix.set(i2 - 7, i5);
            }
            i3++;
        }
    }

    private static BitArray generateCheckWords(BitArray bitArray, int i, int i2) {
        int size = bitArray.getSize() / i2;
        ReedSolomonEncoder reedSolomonEncoder = new ReedSolomonEncoder(getGF(i2));
        int i3 = i / i2;
        int[] iArrBitsToWords = bitsToWords(bitArray, i2, i3);
        reedSolomonEncoder.encode(iArrBitsToWords, i3 - size);
        BitArray bitArray2 = new BitArray();
        bitArray2.appendBits(0, i % i2);
        for (int i4 : iArrBitsToWords) {
            bitArray2.appendBits(i4, i2);
        }
        return bitArray2;
    }

    private static int[] bitsToWords(BitArray bitArray, int i, int i2) {
        int[] iArr = new int[i2];
        int size = bitArray.getSize() / i;
        for (int i3 = 0; i3 < size; i3++) {
            int i4 = 0;
            for (int i5 = 0; i5 < i; i5++) {
                i4 |= bitArray.get((i3 * i) + i5) ? 1 << ((i - i5) - 1) : 0;
            }
            iArr[i3] = i4;
        }
        return iArr;
    }

    private static GenericGF getGF(int i) {
        if (i == 4) {
            return GenericGF.AZTEC_PARAM;
        }
        if (i == 6) {
            return GenericGF.AZTEC_DATA_6;
        }
        if (i == 8) {
            return GenericGF.AZTEC_DATA_8;
        }
        if (i == 10) {
            return GenericGF.AZTEC_DATA_10;
        }
        if (i != 12) {
            return null;
        }
        return GenericGF.AZTEC_DATA_12;
    }

    static BitArray stuffBits(BitArray bitArray, int i) {
        BitArray bitArray2 = new BitArray();
        int size = bitArray.getSize();
        int i2 = (1 << i) - 2;
        int i3 = 0;
        while (i3 < size) {
            int i4 = 0;
            for (int i5 = 0; i5 < i; i5++) {
                int i6 = i3 + i5;
                if (i6 >= size || bitArray.get(i6)) {
                    i4 |= 1 << ((i - 1) - i5);
                }
            }
            int i7 = i4 & i2;
            if (i7 == i2) {
                bitArray2.appendBits(i7, i);
            } else if (i7 == 0) {
                bitArray2.appendBits(i4 | 1, i);
            } else {
                bitArray2.appendBits(i4, i);
                i3 += i;
            }
            i3--;
            i3 += i;
        }
        return bitArray2;
    }
}
