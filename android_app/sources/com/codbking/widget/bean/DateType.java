package com.codbking.widget.bean;

/* loaded from: classes.dex */
public enum DateType {
    TYPE_ALL("yyyy-MM-dd E hh:mm"),
    TYPE_YMDHM("yyyy-MM-dd hh:mm"),
    TYPE_YMDH("yyyy-MM-dd hh"),
    TYPE_YMD("yyyy-MM-dd"),
    TYPE_HM("hh:mm");

    private String format;

    DateType(String str) {
        this.format = str;
    }

    public String getFormat() {
        return this.format;
    }
}
