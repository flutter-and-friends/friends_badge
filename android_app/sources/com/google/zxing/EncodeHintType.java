package com.google.zxing;

/* loaded from: classes.dex */
public enum EncodeHintType {
    ERROR_CORRECTION,
    CHARACTER_SET,
    DATA_MATRIX_SHAPE,
    MIN_SIZE,
    MAX_SIZE,
    MARGIN,
    PDF417_COMPACT,
    PDF417_COMPACTION,
    PDF417_DIMENSIONS,
    AZTEC_LAYERS;

    /* renamed from: values, reason: to resolve conflict with enum method */
    public static EncodeHintType[] valuesCustom() {
        EncodeHintType[] encodeHintTypeArrValuesCustom = values();
        int length = encodeHintTypeArrValuesCustom.length;
        EncodeHintType[] encodeHintTypeArr = new EncodeHintType[length];
        System.arraycopy(encodeHintTypeArrValuesCustom, 0, encodeHintTypeArr, 0, length);
        return encodeHintTypeArr;
    }
}
