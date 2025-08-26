package com.google.zxing;

/* loaded from: classes.dex */
public enum ResultMetadataType {
    OTHER,
    ORIENTATION,
    BYTE_SEGMENTS,
    ERROR_CORRECTION_LEVEL,
    ISSUE_NUMBER,
    SUGGESTED_PRICE,
    POSSIBLE_COUNTRY,
    UPC_EAN_EXTENSION,
    PDF417_EXTRA_METADATA,
    STRUCTURED_APPEND_SEQUENCE,
    STRUCTURED_APPEND_PARITY;

    /* renamed from: values, reason: to resolve conflict with enum method */
    public static ResultMetadataType[] valuesCustom() {
        ResultMetadataType[] resultMetadataTypeArrValuesCustom = values();
        int length = resultMetadataTypeArrValuesCustom.length;
        ResultMetadataType[] resultMetadataTypeArr = new ResultMetadataType[length];
        System.arraycopy(resultMetadataTypeArrValuesCustom, 0, resultMetadataTypeArr, 0, length);
        return resultMetadataTypeArr;
    }
}
