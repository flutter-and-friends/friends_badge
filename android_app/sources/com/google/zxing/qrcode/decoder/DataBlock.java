package com.google.zxing.qrcode.decoder;

import com.google.zxing.qrcode.decoder.Version;

/* loaded from: classes.dex */
final class DataBlock {
    private final byte[] codewords;
    private final int numDataCodewords;

    private DataBlock(int i, byte[] bArr) {
        this.numDataCodewords = i;
        this.codewords = bArr;
    }

    static DataBlock[] getDataBlocks(byte[] bArr, Version version, ErrorCorrectionLevel errorCorrectionLevel) {
        if (bArr.length != version.getTotalCodewords()) {
            throw new IllegalArgumentException();
        }
        Version.ECBlocks eCBlocksForLevel = version.getECBlocksForLevel(errorCorrectionLevel);
        Version.ECB[] eCBlocks = eCBlocksForLevel.getECBlocks();
        int count = 0;
        for (Version.ECB ecb : eCBlocks) {
            count += ecb.getCount();
        }
        DataBlock[] dataBlockArr = new DataBlock[count];
        int length = eCBlocks.length;
        int i = 0;
        int i2 = 0;
        while (i2 < length) {
            Version.ECB ecb2 = eCBlocks[i2];
            int i3 = i;
            int i4 = 0;
            while (i4 < ecb2.getCount()) {
                int dataCodewords = ecb2.getDataCodewords();
                dataBlockArr[i3] = new DataBlock(dataCodewords, new byte[eCBlocksForLevel.getECCodewordsPerBlock() + dataCodewords]);
                i4++;
                i3++;
            }
            i2++;
            i = i3;
        }
        int length2 = dataBlockArr[0].codewords.length;
        int length3 = dataBlockArr.length - 1;
        while (length3 >= 0 && dataBlockArr[length3].codewords.length != length2) {
            length3--;
        }
        int i5 = length3 + 1;
        int eCCodewordsPerBlock = length2 - eCBlocksForLevel.getECCodewordsPerBlock();
        int i6 = 0;
        int i7 = 0;
        while (i7 < eCCodewordsPerBlock) {
            int i8 = i6;
            int i9 = 0;
            while (i9 < i) {
                dataBlockArr[i9].codewords[i7] = bArr[i8];
                i9++;
                i8++;
            }
            i7++;
            i6 = i8;
        }
        int i10 = i6;
        int i11 = i5;
        while (i11 < i) {
            dataBlockArr[i11].codewords[eCCodewordsPerBlock] = bArr[i10];
            i11++;
            i10++;
        }
        int length4 = dataBlockArr[0].codewords.length;
        for (int i12 = eCCodewordsPerBlock; i12 < length4; i12++) {
            int i13 = 0;
            while (i13 < i) {
                dataBlockArr[i13].codewords[i13 < i5 ? i12 : i12 + 1] = bArr[i10];
                i13++;
                i10++;
            }
        }
        return dataBlockArr;
    }

    int getNumDataCodewords() {
        return this.numDataCodewords;
    }

    byte[] getCodewords() {
        return this.codewords;
    }
}
