package com.apkfuns.logutils;

/* loaded from: classes.dex */
public interface LogConfig {
    LogConfig addParserClass(Class<? extends Parser>... clsArr);

    LogConfig configAllowLog(boolean z);

    LogConfig configFormatTag(String str);

    LogConfig configLevel(int i);

    LogConfig configMethodOffset(int i);

    LogConfig configShowBorders(boolean z);

    LogConfig configTagPrefix(String str);
}
