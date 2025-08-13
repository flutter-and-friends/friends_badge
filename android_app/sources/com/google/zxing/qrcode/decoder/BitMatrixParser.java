package com.google.zxing.qrcode.decoder;

import com.google.zxing.FormatException;
import com.google.zxing.common.BitMatrix;

/* loaded from: classes.dex */
final class BitMatrixParser {
    private final BitMatrix bitMatrix;
    private boolean mirror;
    private FormatInformation parsedFormatInfo;
    private Version parsedVersion;

    BitMatrixParser(BitMatrix bitMatrix) throws FormatException {
        int height = bitMatrix.getHeight();
        if (height < 21 || (height & 3) != 1) {
            throw FormatException.getFormatInstance();
        }
        this.bitMatrix = bitMatrix;
    }

    FormatInformation readFormatInformation() throws FormatException {
        FormatInformation formatInformation = this.parsedFormatInfo;
        if (formatInformation != null) {
            return formatInformation;
        }
        int iCopyBit = 0;
        int iCopyBit2 = 0;
        for (int i = 0; i < 6; i++) {
            iCopyBit2 = copyBit(i, 8, iCopyBit2);
        }
        int iCopyBit3 = copyBit(8, 7, copyBit(8, 8, copyBit(7, 8, iCopyBit2)));
        for (int i2 = 5; i2 >= 0; i2--) {
            iCopyBit3 = copyBit(8, i2, iCopyBit3);
        }
        int height = this.bitMatrix.getHeight();
        int i3 = height - 7;
        for (int i4 = height - 1; i4 >= i3; i4--) {
            iCopyBit = copyBit(8, i4, iCopyBit);
        }
        for (int i5 = height - 8; i5 < height; i5++) {
            iCopyBit = copyBit(i5, 8, iCopyBit);
        }
        this.parsedFormatInfo = FormatInformation.decodeFormatInformation(iCopyBit3, iCopyBit);
        FormatInformation formatInformation2 = this.parsedFormatInfo;
        if (formatInformation2 != null) {
            return formatInformation2;
        }
        throw FormatException.getFormatInstance();
    }

    Version readVersion() throws FormatException {
        Version version = this.parsedVersion;
        if (version != null) {
            return version;
        }
        int height = this.bitMatrix.getHeight();
        int i = (height - 17) / 4;
        if (i <= 6) {
            return Version.getVersionForNumber(i);
        }
        int i2 = height - 11;
        int iCopyBit = 0;
        int iCopyBit2 = 0;
        for (int i3 = 5; i3 >= 0; i3--) {
            for (int i4 = height - 9; i4 >= i2; i4--) {
                iCopyBit2 = copyBit(i4, i3, iCopyBit2);
            }
        }
        Version versionDecodeVersionInformation = Version.decodeVersionInformation(iCopyBit2);
        if (versionDecodeVersionInformation != null && versionDecodeVersionInformation.getDimensionForVersion() == height) {
            this.parsedVersion = versionDecodeVersionInformation;
            return versionDecodeVersionInformation;
        }
        for (int i5 = 5; i5 >= 0; i5--) {
            for (int i6 = height - 9; i6 >= i2; i6--) {
                iCopyBit = copyBit(i5, i6, iCopyBit);
            }
        }
        Version versionDecodeVersionInformation2 = Version.decodeVersionInformation(iCopyBit);
        if (versionDecodeVersionInformation2 != null && versionDecodeVersionInformation2.getDimensionForVersion() == height) {
            this.parsedVersion = versionDecodeVersionInformation2;
            return versionDecodeVersionInformation2;
        }
        throw FormatException.getFormatInstance();
    }

    private int copyBit(int i, int i2, int i3) {
        return this.mirror ? this.bitMatrix.get(i2, i) : this.bitMatrix.get(i, i2) ? (i3 << 1) | 1 : i3 << 1;
    }

    byte[] readCodewords() throws FormatException {
        FormatInformation formatInformation = readFormatInformation();
        Version version = readVersion();
        DataMask dataMaskForReference = DataMask.forReference(formatInformation.getDataMask());
        int height = this.bitMatrix.getHeight();
        dataMaskForReference.unmaskBitMatrix(this.bitMatrix, height);
        BitMatrix bitMatrixBuildFunctionPattern = version.buildFunctionPattern();
        byte[] bArr = new byte[version.getTotalCodewords()];
        int i = height - 1;
        int i2 = i;
        int i3 = 0;
        boolean z = true;
        int i4 = 0;
        int i5 = 0;
        while (i2 > 0) {
            if (i2 == 6) {
                i2--;
            }
            int i6 = i5;
            int i7 = i4;
            int i8 = i3;
            int i9 = 0;
            while (i9 < height) {
                int i10 = z ? i - i9 : i9;
                int i11 = i6;
                int i12 = i7;
                int i13 = i8;
                for (int i14 = 0; i14 < 2; i14++) {
                    int i15 = i2 - i14;
                    if (!bitMatrixBuildFunctionPattern.get(i15, i10)) {
                        i12++;
                        int i16 = i11 << 1;
                        int i17 = this.bitMatrix.get(i15, i10) ? i16 | 1 : i16;
                        if (i12 == 8) {
                            bArr[i13] = (byte) i17;
                            i13++;
                            i12 = 0;
                            i11 = 0;
                        } else {
                            i11 = i17;
                        }
                    }
                }
                i9++;
                i8 = i13;
                i7 = i12;
                i6 = i11;
            }
            z = !z;
            i2 -= 2;
            i3 = i8;
            i4 = i7;
            i5 = i6;
        }
        if (i3 == version.getTotalCodewords()) {
            return bArr;
        }
        throw FormatException.getFormatInstance();
    }

    void remask() {
        FormatInformation formatInformation = this.parsedFormatInfo;
        if (formatInformation == null) {
            return;
        }
        DataMask.forReference(formatInformation.getDataMask()).unmaskBitMatrix(this.bitMatrix, this.bitMatrix.getHeight());
    }

    void setMirror(boolean z) {
        this.parsedVersion = null;
        this.parsedFormatInfo = null;
        this.mirror = z;
    }

    void mirror() {
        int i = 0;
        while (i < this.bitMatrix.getWidth()) {
            int i2 = i + 1;
            for (int i3 = i2; i3 < this.bitMatrix.getHeight(); i3++) {
                if (this.bitMatrix.get(i, i3) != this.bitMatrix.get(i3, i)) {
                    this.bitMatrix.flip(i3, i);
                    this.bitMatrix.flip(i, i3);
                }
            }
            i = i2;
        }
    }
}
