package com.apkfuns.logutils;

/* loaded from: classes.dex */
public interface Parser<T> {
    public static final String LINE_SEPARATOR = Constant.f303BR;

    Class<T> parseClassType();

    String parseString(T t);
}
