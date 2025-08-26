package com.google.zxing.common;

import java.util.Arrays;

/* loaded from: classes.dex */
public final class BitMatrix implements Cloneable {
    private final int[] bits;
    private final int height;
    private final int rowSize;
    private final int width;

    public BitMatrix(int i) {
        this(i, i);
    }

    public BitMatrix(int i, int i2) {
        if (i < 1 || i2 < 1) {
            throw new IllegalArgumentException("Both dimensions must be greater than 0");
        }
        this.width = i;
        this.height = i2;
        this.rowSize = (i + 31) / 32;
        this.bits = new int[this.rowSize * i2];
    }

    private BitMatrix(int i, int i2, int i3, int[] iArr) {
        this.width = i;
        this.height = i2;
        this.rowSize = i3;
        this.bits = iArr;
    }

    public boolean get(int i, int i2) {
        return ((this.bits[(i2 * this.rowSize) + (i / 32)] >>> (i & 31)) & 1) != 0;
    }

    public void set(int i, int i2) {
        int i3 = (i2 * this.rowSize) + (i / 32);
        int[] iArr = this.bits;
        iArr[i3] = (1 << (i & 31)) | iArr[i3];
    }

    public void flip(int i, int i2) {
        int i3 = (i2 * this.rowSize) + (i / 32);
        int[] iArr = this.bits;
        iArr[i3] = (1 << (i & 31)) ^ iArr[i3];
    }

    public void clear() {
        int length = this.bits.length;
        for (int i = 0; i < length; i++) {
            this.bits[i] = 0;
        }
    }

    public void setRegion(int i, int i2, int i3, int i4) {
        if (i2 < 0 || i < 0) {
            throw new IllegalArgumentException("Left and top must be nonnegative");
        }
        if (i4 < 1 || i3 < 1) {
            throw new IllegalArgumentException("Height and width must be at least 1");
        }
        int i5 = i3 + i;
        int i6 = i4 + i2;
        if (i6 > this.height || i5 > this.width) {
            throw new IllegalArgumentException("The region must fit inside the matrix");
        }
        while (i2 < i6) {
            int i7 = this.rowSize * i2;
            for (int i8 = i; i8 < i5; i8++) {
                int[] iArr = this.bits;
                int i9 = (i8 / 32) + i7;
                iArr[i9] = iArr[i9] | (1 << (i8 & 31));
            }
            i2++;
        }
    }

    public BitArray getRow(int i, BitArray bitArray) {
        if (bitArray == null || bitArray.getSize() < this.width) {
            bitArray = new BitArray(this.width);
        } else {
            bitArray.clear();
        }
        int i2 = i * this.rowSize;
        for (int i3 = 0; i3 < this.rowSize; i3++) {
            bitArray.setBulk(i3 * 32, this.bits[i2 + i3]);
        }
        return bitArray;
    }

    public void setRow(int i, BitArray bitArray) {
        int[] bitArray2 = bitArray.getBitArray();
        int[] iArr = this.bits;
        int i2 = this.rowSize;
        System.arraycopy(bitArray2, 0, iArr, i * i2, i2);
    }

    public void rotate180() {
        int width = getWidth();
        int height = getHeight();
        BitArray bitArray = new BitArray(width);
        BitArray bitArray2 = new BitArray(width);
        for (int i = 0; i < (height + 1) / 2; i++) {
            bitArray = getRow(i, bitArray);
            int i2 = (height - 1) - i;
            bitArray2 = getRow(i2, bitArray2);
            bitArray.reverse();
            bitArray2.reverse();
            setRow(i, bitArray2);
            setRow(i2, bitArray);
        }
    }

    public int[] getEnclosingRectangle() {
        int i = this.width;
        int i2 = -1;
        int i3 = this.height;
        int i4 = -1;
        int i5 = i;
        int i6 = 0;
        while (i6 < this.height) {
            int i7 = i4;
            int i8 = i2;
            int i9 = i5;
            int i10 = 0;
            while (true) {
                int i11 = this.rowSize;
                if (i10 >= i11) {
                    break;
                }
                int i12 = this.bits[(i11 * i6) + i10];
                if (i12 != 0) {
                    if (i6 < i3) {
                        i3 = i6;
                    }
                    if (i6 > i7) {
                        i7 = i6;
                    }
                    int i13 = i10 * 32;
                    int i14 = 31;
                    if (i13 < i9) {
                        int i15 = 0;
                        while ((i12 << (31 - i15)) == 0) {
                            i15++;
                        }
                        int i16 = i15 + i13;
                        if (i16 < i9) {
                            i9 = i16;
                        }
                    }
                    if (i13 + 31 > i8) {
                        while ((i12 >>> i14) == 0) {
                            i14--;
                        }
                        int i17 = i13 + i14;
                        if (i17 > i8) {
                            i8 = i17;
                        }
                    }
                }
                i10++;
            }
            i6++;
            i5 = i9;
            i2 = i8;
            i4 = i7;
        }
        int i18 = i2 - i5;
        int i19 = i4 - i3;
        if (i18 < 0 || i19 < 0) {
            return null;
        }
        return new int[]{i5, i3, i18, i19};
    }

    public int[] getTopLeftOnBit() {
        int i = 0;
        while (true) {
            int[] iArr = this.bits;
            if (i >= iArr.length || iArr[i] != 0) {
                break;
            }
            i++;
        }
        int[] iArr2 = this.bits;
        if (i == iArr2.length) {
            return null;
        }
        int i2 = this.rowSize;
        int i3 = i / i2;
        int i4 = (i % i2) * 32;
        int i5 = iArr2[i];
        int i6 = 0;
        while ((i5 << (31 - i6)) == 0) {
            i6++;
        }
        return new int[]{i4 + i6, i3};
    }

    public int[] getBottomRightOnBit() {
        int length = this.bits.length - 1;
        while (length >= 0 && this.bits[length] == 0) {
            length--;
        }
        if (length < 0) {
            return null;
        }
        int i = this.rowSize;
        int i2 = length / i;
        int i3 = (length % i) * 32;
        int i4 = 31;
        while ((this.bits[length] >>> i4) == 0) {
            i4--;
        }
        return new int[]{i3 + i4, i2};
    }

    public int getWidth() {
        return this.width;
    }

    public int getHeight() {
        return this.height;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof BitMatrix)) {
            return false;
        }
        BitMatrix bitMatrix = (BitMatrix) obj;
        return this.width == bitMatrix.width && this.height == bitMatrix.height && this.rowSize == bitMatrix.rowSize && Arrays.equals(this.bits, bitMatrix.bits);
    }

    public int hashCode() {
        int i = this.width;
        return (((((((i * 31) + i) * 31) + this.height) * 31) + this.rowSize) * 31) + Arrays.hashCode(this.bits);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(this.height * (this.width + 1));
        for (int i = 0; i < this.height; i++) {
            for (int i2 = 0; i2 < this.width; i2++) {
                sb.append(get(i2, i) ? "X " : "  ");
            }
            sb.append('\n');
        }
        return sb.toString();
    }

    /* renamed from: clone, reason: merged with bridge method [inline-methods] */
    public BitMatrix m928clone() {
        return new BitMatrix(this.width, this.height, this.rowSize, (int[]) this.bits.clone());
    }
}
