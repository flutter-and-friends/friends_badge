package com.p013gg.reader.api.utils;

/* loaded from: classes.dex */
public class StringUtils {
    public static boolean isNullOfEmpty(String str) {
        if (str == null) {
            return true;
        }
        return str.isEmpty();
    }

    public static String genPad(char c, int i) {
        StringBuffer stringBuffer = new StringBuffer();
        for (int i2 = 0; i2 < i; i2++) {
            stringBuffer.append(c);
        }
        return stringBuffer.toString();
    }

    public static String padRight(String str, char c, int i) {
        int length = str.length();
        if (length >= i) {
            return str;
        }
        return str + genPad(c, i - length);
    }

    public static String padLeft(String str, char c, int i) {
        int length = str.length();
        if (length >= i) {
            return str;
        }
        return genPad(c, i - length) + str;
    }

    public static String trimStart(String str, String str2) {
        return str.startsWith(str2) ? str.substring(str2.length()) : str;
    }

    public static String trimEnd(String str, String str2) {
        return str.endsWith(str2) ? str.substring(0, str.length() - str2.length()) : str;
    }
}
