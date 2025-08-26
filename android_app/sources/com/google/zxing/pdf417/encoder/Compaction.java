package com.google.zxing.pdf417.encoder;

/* loaded from: classes.dex */
public enum Compaction {
    AUTO,
    TEXT,
    BYTE,
    NUMERIC;

    /* renamed from: values, reason: to resolve conflict with enum method */
    public static Compaction[] valuesCustom() {
        Compaction[] compactionArrValuesCustom = values();
        int length = compactionArrValuesCustom.length;
        Compaction[] compactionArr = new Compaction[length];
        System.arraycopy(compactionArrValuesCustom, 0, compactionArr, 0, length);
        return compactionArr;
    }
}
