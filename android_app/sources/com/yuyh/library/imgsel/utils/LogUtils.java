package com.yuyh.library.imgsel.utils;

import android.content.Context;
import android.util.Log;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

/* loaded from: classes2.dex */
public class LogUtils {
    private static String LOG_FILE_NAME;
    private static String LOG_FILE_PATH;
    private static Boolean LOG_SWITCH = true;
    private static Boolean LOG_TO_FILE = false;
    private static String LOG_TAG = "TAG";
    private static char LOG_TYPE = 'v';
    private static int LOG_SAVE_DAYS = 7;
    private static final SimpleDateFormat LOG_FORMAT = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
    private static final SimpleDateFormat FILE_SUFFIX = new SimpleDateFormat("yyyy-MM-dd");

    public static void init(Context context) {
        LOG_FILE_PATH = FileUtils.createRootPath(context);
        LOG_FILE_NAME = "Log";
    }

    /* renamed from: w */
    public static void m842w(Object obj) {
        m843w(LOG_TAG, obj);
    }

    /* renamed from: w */
    public static void m843w(String str, Object obj) {
        m844w(str, obj, null);
    }

    /* renamed from: w */
    public static void m844w(String str, Object obj, Throwable th) {
        log(str, obj.toString(), th, 'w');
    }

    /* renamed from: e */
    public static void m833e(Object obj) {
        m834e(LOG_TAG, obj);
    }

    /* renamed from: e */
    public static void m834e(String str, Object obj) {
        m835e(str, obj, null);
    }

    /* renamed from: e */
    public static void m835e(String str, Object obj, Throwable th) {
        log(str, obj.toString(), th, 'e');
    }

    /* renamed from: d */
    public static void m830d(Object obj) {
        m831d(LOG_TAG, obj);
    }

    /* renamed from: d */
    public static void m831d(String str, Object obj) {
        m832d(str, obj, null);
    }

    /* renamed from: d */
    public static void m832d(String str, Object obj, Throwable th) {
        log(str, obj.toString(), th, 'd');
    }

    /* renamed from: i */
    public static void m836i(Object obj) {
        m837i(LOG_TAG, obj);
    }

    /* renamed from: i */
    public static void m837i(String str, Object obj) {
        m838i(str, obj, null);
    }

    /* renamed from: i */
    public static void m838i(String str, Object obj, Throwable th) {
        log(str, obj.toString(), th, 'i');
    }

    /* renamed from: v */
    public static void m839v(Object obj) {
        m840v(LOG_TAG, obj);
    }

    /* renamed from: v */
    public static void m840v(String str, Object obj) {
        m841v(str, obj, null);
    }

    /* renamed from: v */
    public static void m841v(String str, Object obj, Throwable th) {
        log(str, obj.toString(), th, 'v');
    }

    private static void log(String str, String str2, Throwable th, char c) {
        char c2;
        char c3;
        char c4;
        String str3;
        char c5;
        if (LOG_SWITCH.booleanValue()) {
            if ('e' == c && ('e' == (c5 = LOG_TYPE) || 'v' == c5)) {
                Log.e(str, str2, th);
            } else if ('w' == c && ('w' == (c4 = LOG_TYPE) || 'v' == c4)) {
                Log.w(str, str2, th);
            } else if ('d' == c && ('d' == (c3 = LOG_TYPE) || 'v' == c3)) {
                Log.d(str, str2, th);
            } else if ('i' == c && ('d' == (c2 = LOG_TYPE) || 'v' == c2)) {
                Log.i(str, str2, th);
            } else {
                Log.v(str, str2, th);
            }
            if (LOG_TO_FILE.booleanValue()) {
                String strValueOf = String.valueOf(c);
                if ((str2 + th) == null) {
                    str3 = "";
                } else {
                    str3 = "\n" + Log.getStackTraceString(th);
                }
                log2File(strValueOf, str, str3);
            }
        }
    }

    private static synchronized void log2File(String str, String str2, String str3) {
        Date date = new Date();
        String str4 = FILE_SUFFIX.format(date);
        String str5 = LOG_FORMAT.format(date) + ":" + str + ":" + str2 + ":" + str3;
        File file = new File(LOG_FILE_PATH);
        if (!file.exists()) {
            file.mkdirs();
        }
        try {
            FileWriter fileWriter = new FileWriter(new File(LOG_FILE_PATH, LOG_FILE_NAME + str4), true);
            BufferedWriter bufferedWriter = new BufferedWriter(fileWriter);
            bufferedWriter.write(str5);
            bufferedWriter.newLine();
            bufferedWriter.close();
            fileWriter.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public static void delFile() {
        String str = FILE_SUFFIX.format(getDateBefore());
        File file = new File(LOG_FILE_PATH, str + LOG_FILE_NAME);
        if (file.exists()) {
            file.delete();
        }
    }

    private static Date getDateBefore() {
        Date date = new Date();
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(date);
        calendar.set(5, calendar.get(5) - LOG_SAVE_DAYS);
        return calendar.getTime();
    }
}
