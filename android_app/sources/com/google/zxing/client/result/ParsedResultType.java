package com.google.zxing.client.result;

/* loaded from: classes.dex */
public enum ParsedResultType {
    ADDRESSBOOK,
    EMAIL_ADDRESS,
    PRODUCT,
    URI,
    TEXT,
    GEO,
    TEL,
    SMS,
    CALENDAR,
    WIFI,
    ISBN,
    VIN;

    /* renamed from: values, reason: to resolve conflict with enum method */
    public static ParsedResultType[] valuesCustom() {
        ParsedResultType[] parsedResultTypeArrValuesCustom = values();
        int length = parsedResultTypeArrValuesCustom.length;
        ParsedResultType[] parsedResultTypeArr = new ParsedResultType[length];
        System.arraycopy(parsedResultTypeArrValuesCustom, 0, parsedResultTypeArr, 0, length);
        return parsedResultTypeArr;
    }
}
