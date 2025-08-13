package com.google.zxing.datamatrix.decoder;

import com.google.zxing.datamatrix.decoder.Version;

/* loaded from: classes.dex */
final class DataBlock {
    private final byte[] codewords;
    private final int numDataCodewords;

    private DataBlock(int i, byte[] bArr) {
        this.numDataCodewords = i;
        this.codewords = bArr;
    }

    static DataBlock[] getDataBlocks(byte[] bArr, Version version) {
        Version.ECBlocks eCBlocks = version.getECBlocks();
        Version.ECB[] eCBlocks2 = eCBlocks.getECBlocks();
        int count = 0;
        for (Version.ECB ecb : eCBlocks2) {
            count += ecb.getCount();
        }
        DataBlock[] dataBlockArr = new DataBlock[count];
        int length = eCBlocks2.length;
        int i = 0;
        int i2 = 0;
        while (i2 < length) {
            Version.ECB ecb2 = eCBlocks2[i2];
            int i3 = i;
            int i4 = 0;
            while (i4 < ecb2.getCount()) {
                int dataCodewords = ecb2.getDataCodewords();
                dataBlockArr[i3] = new DataBlock(dataCodewords, new byte[eCBlocks.getECCodewords() + dataCodewords]);
                i4++;
                i3++;
            }
            i2++;
            i = i3;
        }
        int length2 = dataBlockArr[0].codewords.length - eCBlocks.getECCodewords();
        int i5 = length2 - 1;
        int i6 = 0;
        int i7 = 0;
        while (i7 < i5) {
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
        boolean z = version.getVersionNumber() == 24;
        int i10 = z ? 8 : i;
        int i11 = 0;
        while (i11 < i10) {
            dataBlockArr[i11].codewords[i5] = bArr[i6];
            i11++;
            i6++;
        }
        int length3 = dataBlockArr[0].codewords.length;
        for (int i12 = length2; i12 < length3; i12++) {
            int i13 = 0;
            while (i13 < i) {
                dataBlockArr[i13].codewords[(!z || i13 <= 7) ? i12 : i12 - 1] = bArr[i6];
                i13++;
                i6++;
            }
        }
        if (i6 == bArr.length) {
            return dataBlockArr;
        }
        throw new IllegalArgumentException();
    }

    int getNumDataCodewords() {
        return this.numDataCodewords;
    }

    byte[] getCodewords() {
        return this.codewords;
    }
}
