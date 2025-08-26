package com.apkfuns.logutils;

/* loaded from: classes.dex */
public final class LogUtils {
    private static Logger printer = new Logger();
    private static LogConfigImpl logConfig = LogConfigImpl.getInstance();
    private static Log2FileConfigImpl log2FileConfig = Log2FileConfigImpl.getInstance();

    public static LogConfig getLogConfig() {
        return logConfig;
    }

    public static Log2FileConfig getLog2FileConfig() {
        return log2FileConfig;
    }

    public static Printer tag(String str) {
        return printer.setTag(str);
    }

    /* renamed from: v */
    public static void m282v(String str, Object... objArr) {
        printer.mo292v(str, objArr);
    }

    /* renamed from: v */
    public static void m281v(Object obj) {
        printer.mo291v(obj);
    }

    /* renamed from: d */
    public static void m276d(String str, Object... objArr) {
        printer.mo286d(str, objArr);
    }

    /* renamed from: d */
    public static void m275d(Object obj) {
        printer.mo285d(obj);
    }

    /* renamed from: i */
    public static void m280i(String str, Object... objArr) {
        printer.mo290i(str, objArr);
    }

    /* renamed from: i */
    public static void m279i(Object obj) {
        printer.mo289i(obj);
    }

    /* renamed from: w */
    public static void m284w(String str, Object... objArr) {
        printer.mo294w(str, objArr);
    }

    /* renamed from: w */
    public static void m283w(Object obj) {
        printer.mo293w(obj);
    }

    /* renamed from: e */
    public static void m278e(String str, Object... objArr) {
        printer.mo288e(str, objArr);
    }

    /* renamed from: e */
    public static void m277e(Object obj) {
        printer.mo287e(obj);
    }

    public static void wtf(String str, Object... objArr) {
        printer.wtf(str, objArr);
    }

    public static void wtf(Object obj) {
        printer.wtf(obj);
    }

    public static void json(String str) {
        printer.json(str);
    }

    public static void xml(String str) {
        printer.xml(str);
    }
}
