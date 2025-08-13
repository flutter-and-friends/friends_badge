package com.android.usbserial.util;

import android.util.Log;

/* loaded from: classes.dex */
public class LogUtils {
    static String className;
    static int lineNumber;
    static String methodName;

    public static boolean isDebuggable() {
        return true;
    }

    private static String createLog(String str) {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("================");
        stringBuffer.append(methodName);
        stringBuffer.append("(");
        stringBuffer.append(className);
        stringBuffer.append(":");
        stringBuffer.append(lineNumber);
        stringBuffer.append(")================:");
        stringBuffer.append(str);
        return stringBuffer.toString();
    }

    private static void getMethodNames(StackTraceElement[] stackTraceElementArr) {
        className = stackTraceElementArr[1].getFileName();
        methodName = stackTraceElementArr[1].getMethodName();
        lineNumber = stackTraceElementArr[1].getLineNumber();
    }

    /* renamed from: e */
    public static void m271e(String str) {
        if (isDebuggable()) {
            getMethodNames(new Throwable().getStackTrace());
            Log.e(className, createLog(str));
        }
    }

    /* renamed from: i */
    public static void m272i(String str) {
        if (isDebuggable()) {
            getMethodNames(new Throwable().getStackTrace());
            Log.i(className, createLog(str));
        }
    }

    /* renamed from: d */
    public static void m270d(String str) {
        if (isDebuggable()) {
            getMethodNames(new Throwable().getStackTrace());
            Log.d(className, createLog(str));
        }
    }

    /* renamed from: v */
    public static void m273v(String str) {
        if (isDebuggable()) {
            getMethodNames(new Throwable().getStackTrace());
            Log.v(className, createLog(str));
        }
    }

    /* renamed from: w */
    public static void m274w(String str) {
        if (isDebuggable()) {
            getMethodNames(new Throwable().getStackTrace());
            Log.w(className, createLog(str));
        }
    }
}
