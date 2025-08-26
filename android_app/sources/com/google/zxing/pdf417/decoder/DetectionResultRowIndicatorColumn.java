package com.google.zxing.pdf417.decoder;

import com.google.zxing.FormatException;
import com.google.zxing.ResultPoint;

/* loaded from: classes.dex */
final class DetectionResultRowIndicatorColumn extends DetectionResultColumn {
    private final boolean isLeft;

    DetectionResultRowIndicatorColumn(BoundingBox boundingBox, boolean z) {
        super(boundingBox);
        this.isLeft = z;
    }

    void setRowNumbers() {
        for (Codeword codeword : getCodewords()) {
            if (codeword != null) {
                codeword.setRowNumberAsRowIndicatorColumn();
            }
        }
    }

    int adjustCompleteIndicatorColumnRowNumbers(BarcodeMetadata barcodeMetadata) {
        Codeword[] codewords = getCodewords();
        setRowNumbers();
        removeIncorrectCodewords(codewords, barcodeMetadata);
        BoundingBox boundingBox = getBoundingBox();
        ResultPoint topLeft = this.isLeft ? boundingBox.getTopLeft() : boundingBox.getTopRight();
        ResultPoint bottomLeft = this.isLeft ? boundingBox.getBottomLeft() : boundingBox.getBottomRight();
        int iImageRowToCodewordIndex = imageRowToCodewordIndex((int) topLeft.getY());
        int iImageRowToCodewordIndex2 = imageRowToCodewordIndex((int) bottomLeft.getY());
        float rowCount = (iImageRowToCodewordIndex2 - iImageRowToCodewordIndex) / barcodeMetadata.getRowCount();
        int rowNumber = -1;
        int i = 0;
        int iMax = 1;
        while (iImageRowToCodewordIndex < iImageRowToCodewordIndex2) {
            if (codewords[iImageRowToCodewordIndex] != null) {
                Codeword codeword = codewords[iImageRowToCodewordIndex];
                int rowNumber2 = codeword.getRowNumber() - rowNumber;
                if (rowNumber2 == 0) {
                    i++;
                } else {
                    if (rowNumber2 == 1) {
                        iMax = Math.max(iMax, i);
                        rowNumber = codeword.getRowNumber();
                    } else if (rowNumber2 < 0 || codeword.getRowNumber() >= barcodeMetadata.getRowCount() || rowNumber2 > iImageRowToCodewordIndex) {
                        codewords[iImageRowToCodewordIndex] = null;
                    } else {
                        if (iMax > 2) {
                            rowNumber2 *= iMax - 2;
                        }
                        boolean z = rowNumber2 >= iImageRowToCodewordIndex;
                        for (int i2 = 1; i2 <= rowNumber2 && !z; i2++) {
                            z = codewords[iImageRowToCodewordIndex - i2] != null;
                        }
                        if (z) {
                            codewords[iImageRowToCodewordIndex] = null;
                        } else {
                            rowNumber = codeword.getRowNumber();
                        }
                    }
                    i = 1;
                }
            }
            iImageRowToCodewordIndex++;
        }
        return (int) (rowCount + 0.5d);
    }

    int[] getRowHeights() throws FormatException {
        BarcodeMetadata barcodeMetadata = getBarcodeMetadata();
        if (barcodeMetadata == null) {
            return null;
        }
        adjustIncompleteIndicatorColumnRowNumbers(barcodeMetadata);
        int[] iArr = new int[barcodeMetadata.getRowCount()];
        for (Codeword codeword : getCodewords()) {
            if (codeword != null) {
                int rowNumber = codeword.getRowNumber();
                if (rowNumber >= iArr.length) {
                    throw FormatException.getFormatInstance();
                }
                iArr[rowNumber] = iArr[rowNumber] + 1;
            }
        }
        return iArr;
    }

    int adjustIncompleteIndicatorColumnRowNumbers(BarcodeMetadata barcodeMetadata) {
        BoundingBox boundingBox = getBoundingBox();
        ResultPoint topLeft = this.isLeft ? boundingBox.getTopLeft() : boundingBox.getTopRight();
        ResultPoint bottomLeft = this.isLeft ? boundingBox.getBottomLeft() : boundingBox.getBottomRight();
        int iImageRowToCodewordIndex = imageRowToCodewordIndex((int) topLeft.getY());
        int iImageRowToCodewordIndex2 = imageRowToCodewordIndex((int) bottomLeft.getY());
        float rowCount = (iImageRowToCodewordIndex2 - iImageRowToCodewordIndex) / barcodeMetadata.getRowCount();
        Codeword[] codewords = getCodewords();
        int rowNumber = -1;
        int i = 0;
        int iMax = 1;
        while (iImageRowToCodewordIndex < iImageRowToCodewordIndex2) {
            if (codewords[iImageRowToCodewordIndex] != null) {
                Codeword codeword = codewords[iImageRowToCodewordIndex];
                codeword.setRowNumberAsRowIndicatorColumn();
                int rowNumber2 = codeword.getRowNumber() - rowNumber;
                if (rowNumber2 == 0) {
                    i++;
                } else {
                    if (rowNumber2 == 1) {
                        iMax = Math.max(iMax, i);
                        rowNumber = codeword.getRowNumber();
                    } else if (codeword.getRowNumber() >= barcodeMetadata.getRowCount()) {
                        codewords[iImageRowToCodewordIndex] = null;
                    } else {
                        rowNumber = codeword.getRowNumber();
                    }
                    i = 1;
                }
            }
            iImageRowToCodewordIndex++;
        }
        return (int) (rowCount + 0.5d);
    }

    BarcodeMetadata getBarcodeMetadata() {
        Codeword[] codewords = getCodewords();
        BarcodeValue barcodeValue = new BarcodeValue();
        BarcodeValue barcodeValue2 = new BarcodeValue();
        BarcodeValue barcodeValue3 = new BarcodeValue();
        BarcodeValue barcodeValue4 = new BarcodeValue();
        for (Codeword codeword : codewords) {
            if (codeword != null) {
                codeword.setRowNumberAsRowIndicatorColumn();
                int value = codeword.getValue() % 30;
                int rowNumber = codeword.getRowNumber();
                if (!this.isLeft) {
                    rowNumber += 2;
                }
                int i = rowNumber % 3;
                if (i == 0) {
                    barcodeValue2.setValue((value * 3) + 1);
                } else if (i == 1) {
                    barcodeValue4.setValue(value / 3);
                    barcodeValue3.setValue(value % 3);
                } else if (i == 2) {
                    barcodeValue.setValue(value + 1);
                }
            }
        }
        if (barcodeValue.getValue().length == 0 || barcodeValue2.getValue().length == 0 || barcodeValue3.getValue().length == 0 || barcodeValue4.getValue().length == 0 || barcodeValue.getValue()[0] < 1 || barcodeValue2.getValue()[0] + barcodeValue3.getValue()[0] < 3 || barcodeValue2.getValue()[0] + barcodeValue3.getValue()[0] > 90) {
            return null;
        }
        BarcodeMetadata barcodeMetadata = new BarcodeMetadata(barcodeValue.getValue()[0], barcodeValue2.getValue()[0], barcodeValue3.getValue()[0], barcodeValue4.getValue()[0]);
        removeIncorrectCodewords(codewords, barcodeMetadata);
        return barcodeMetadata;
    }

    private void removeIncorrectCodewords(Codeword[] codewordArr, BarcodeMetadata barcodeMetadata) {
        for (int i = 0; i < codewordArr.length; i++) {
            Codeword codeword = codewordArr[i];
            if (codewordArr[i] != null) {
                int value = codeword.getValue() % 30;
                int rowNumber = codeword.getRowNumber();
                if (rowNumber > barcodeMetadata.getRowCount()) {
                    codewordArr[i] = null;
                } else {
                    if (!this.isLeft) {
                        rowNumber += 2;
                    }
                    int i2 = rowNumber % 3;
                    if (i2 != 0) {
                        if (i2 == 1) {
                            if (value / 3 != barcodeMetadata.getErrorCorrectionLevel() || value % 3 != barcodeMetadata.getRowCountLowerPart()) {
                                codewordArr[i] = null;
                            }
                        } else if (i2 == 2 && value + 1 != barcodeMetadata.getColumnCount()) {
                            codewordArr[i] = null;
                        }
                    } else if ((value * 3) + 1 != barcodeMetadata.getRowCountUpperPart()) {
                        codewordArr[i] = null;
                    }
                }
            }
        }
    }

    boolean isLeft() {
        return this.isLeft;
    }

    @Override // com.google.zxing.pdf417.decoder.DetectionResultColumn
    public String toString() {
        return "IsLeft: " + this.isLeft + '\n' + super.toString();
    }
}
