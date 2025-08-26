package com.google.zxing.pdf417.decoder;

/* loaded from: classes.dex */
final class Codeword {
    private static final int BARCODE_ROW_UNKNOWN = -1;
    private final int bucket;
    private final int endX;
    private int rowNumber = -1;
    private final int startX;
    private final int value;

    Codeword(int i, int i2, int i3, int i4) {
        this.startX = i;
        this.endX = i2;
        this.bucket = i3;
        this.value = i4;
    }

    boolean hasValidRowNumber() {
        return isValidRowNumber(this.rowNumber);
    }

    boolean isValidRowNumber(int i) {
        return i != -1 && this.bucket == (i % 3) * 3;
    }

    void setRowNumberAsRowIndicatorColumn() {
        this.rowNumber = ((this.value / 30) * 3) + (this.bucket / 3);
    }

    int getWidth() {
        return this.endX - this.startX;
    }

    int getStartX() {
        return this.startX;
    }

    int getEndX() {
        return this.endX;
    }

    int getBucket() {
        return this.bucket;
    }

    int getValue() {
        return this.value;
    }

    int getRowNumber() {
        return this.rowNumber;
    }

    void setRowNumber(int i) {
        this.rowNumber = i;
    }

    public String toString() {
        return String.valueOf(this.rowNumber) + "|" + this.value;
    }
}
