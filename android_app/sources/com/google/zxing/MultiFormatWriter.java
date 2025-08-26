package com.google.zxing;

import com.google.zxing.aztec.AztecWriter;
import com.google.zxing.common.BitMatrix;
import com.google.zxing.datamatrix.DataMatrixWriter;
import com.google.zxing.oned.CodaBarWriter;
import com.google.zxing.oned.Code128Writer;
import com.google.zxing.oned.Code39Writer;
import com.google.zxing.oned.EAN13Writer;
import com.google.zxing.oned.EAN8Writer;
import com.google.zxing.oned.ITFWriter;
import com.google.zxing.oned.UPCAWriter;
import com.google.zxing.pdf417.PDF417Writer;
import com.google.zxing.qrcode.QRCodeWriter;
import java.util.Map;

/* loaded from: classes.dex */
public final class MultiFormatWriter implements Writer {
    private static /* synthetic */ int[] $SWITCH_TABLE$com$google$zxing$BarcodeFormat;

    static /* synthetic */ int[] $SWITCH_TABLE$com$google$zxing$BarcodeFormat() {
        int[] iArr = $SWITCH_TABLE$com$google$zxing$BarcodeFormat;
        if (iArr != null) {
            return iArr;
        }
        int[] iArr2 = new int[BarcodeFormat.valuesCustom().length];
        try {
            iArr2[BarcodeFormat.AZTEC.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            iArr2[BarcodeFormat.CODABAR.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
        try {
            iArr2[BarcodeFormat.CODE_128.ordinal()] = 5;
        } catch (NoSuchFieldError unused3) {
        }
        try {
            iArr2[BarcodeFormat.CODE_39.ordinal()] = 3;
        } catch (NoSuchFieldError unused4) {
        }
        try {
            iArr2[BarcodeFormat.CODE_93.ordinal()] = 4;
        } catch (NoSuchFieldError unused5) {
        }
        try {
            iArr2[BarcodeFormat.DATA_MATRIX.ordinal()] = 6;
        } catch (NoSuchFieldError unused6) {
        }
        try {
            iArr2[BarcodeFormat.EAN_13.ordinal()] = 8;
        } catch (NoSuchFieldError unused7) {
        }
        try {
            iArr2[BarcodeFormat.EAN_8.ordinal()] = 7;
        } catch (NoSuchFieldError unused8) {
        }
        try {
            iArr2[BarcodeFormat.ITF.ordinal()] = 9;
        } catch (NoSuchFieldError unused9) {
        }
        try {
            iArr2[BarcodeFormat.MAXICODE.ordinal()] = 10;
        } catch (NoSuchFieldError unused10) {
        }
        try {
            iArr2[BarcodeFormat.PDF_417.ordinal()] = 11;
        } catch (NoSuchFieldError unused11) {
        }
        try {
            iArr2[BarcodeFormat.QR_CODE.ordinal()] = 12;
        } catch (NoSuchFieldError unused12) {
        }
        try {
            iArr2[BarcodeFormat.RSS_14.ordinal()] = 13;
        } catch (NoSuchFieldError unused13) {
        }
        try {
            iArr2[BarcodeFormat.RSS_EXPANDED.ordinal()] = 14;
        } catch (NoSuchFieldError unused14) {
        }
        try {
            iArr2[BarcodeFormat.UPC_A.ordinal()] = 15;
        } catch (NoSuchFieldError unused15) {
        }
        try {
            iArr2[BarcodeFormat.UPC_E.ordinal()] = 16;
        } catch (NoSuchFieldError unused16) {
        }
        try {
            iArr2[BarcodeFormat.UPC_EAN_EXTENSION.ordinal()] = 17;
        } catch (NoSuchFieldError unused17) {
        }
        $SWITCH_TABLE$com$google$zxing$BarcodeFormat = iArr2;
        return iArr2;
    }

    @Override // com.google.zxing.Writer
    public BitMatrix encode(String str, BarcodeFormat barcodeFormat, int i, int i2) throws WriterException {
        return encode(str, barcodeFormat, i, i2, null);
    }

    @Override // com.google.zxing.Writer
    public BitMatrix encode(String str, BarcodeFormat barcodeFormat, int i, int i2, Map<EncodeHintType, ?> map) throws WriterException {
        Writer aztecWriter;
        switch ($SWITCH_TABLE$com$google$zxing$BarcodeFormat()[barcodeFormat.ordinal()]) {
            case 1:
                aztecWriter = new AztecWriter();
                break;
            case 2:
                aztecWriter = new CodaBarWriter();
                break;
            case 3:
                aztecWriter = new Code39Writer();
                break;
            case 4:
            case 10:
            case 13:
            case 14:
            default:
                throw new IllegalArgumentException("No encoder available for format " + barcodeFormat);
            case 5:
                aztecWriter = new Code128Writer();
                break;
            case 6:
                aztecWriter = new DataMatrixWriter();
                break;
            case 7:
                aztecWriter = new EAN8Writer();
                break;
            case 8:
                aztecWriter = new EAN13Writer();
                break;
            case 9:
                aztecWriter = new ITFWriter();
                break;
            case 11:
                aztecWriter = new PDF417Writer();
                break;
            case 12:
                aztecWriter = new QRCodeWriter();
                break;
            case 15:
                aztecWriter = new UPCAWriter();
                break;
        }
        return aztecWriter.encode(str, barcodeFormat, i, i2, map);
    }
}
