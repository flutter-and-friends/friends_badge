package com.apkfuns.logutils;

import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* loaded from: classes.dex */
public class LogLevel {
    public static final int TYPE_DEBUG = 2;
    public static final int TYPE_ERROR = 5;
    public static final int TYPE_INFO = 3;
    public static final int TYPE_VERBOSE = 1;
    public static final int TYPE_WARM = 4;
    public static final int TYPE_WTF = 6;

    @Retention(RetentionPolicy.SOURCE)
    public @interface LogLevelType {
    }
}
