package com.blankj.utilcode.util;

import android.app.ActivityManager;
import android.content.ClipData;
import android.content.ComponentName;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.graphics.Rect;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Environment;
import android.os.Process;
import android.util.Log;
import androidx.collection.SimpleArrayMap;
import androidx.exifinterface.media.ExifInterface;
import cn.forward.androids.utils.LogUtil;
import com.apkfuns.logutils.Constant;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.p013gg.reader.api.protocol.p014gx.EnumG;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.FilenameFilter;
import java.io.IOException;
import java.io.StringReader;
import java.io.StringWriter;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Date;
import java.util.Formatter;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Set;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerException;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.stream.StreamResult;
import javax.xml.transform.stream.StreamSource;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class LogUtils {

    /* renamed from: A */
    public static final int f308A = 7;
    private static final String ARGS = "args";
    private static final String BOTTOM_BORDER = "└────────────────────────────────────────────────────────────────────────────────────────────────────────────────";
    private static final String BOTTOM_CORNER = "└";

    /* renamed from: D */
    public static final int f309D = 3;

    /* renamed from: E */
    public static final int f310E = 6;
    private static final int FILE = 16;

    /* renamed from: I */
    public static final int f311I = 4;
    private static final int JSON = 32;
    private static final String LEFT_BORDER = "│ ";
    private static final int MAX_LEN = 3000;
    private static final String MIDDLE_BORDER = "├┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄";
    private static final String MIDDLE_CORNER = "├";
    private static final String MIDDLE_DIVIDER = "┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄";
    private static final String NOTHING = "log nothing";
    private static final String NULL = "null";
    private static final String PLACEHOLDER = " ";
    private static final String SIDE_DIVIDER = "────────────────────────────────────────────────────────";
    private static final String TOP_BORDER = "┌────────────────────────────────────────────────────────────────────────────────────────────────────────────────";
    private static final String TOP_CORNER = "┌";

    /* renamed from: V */
    public static final int f313V = 2;

    /* renamed from: W */
    public static final int f314W = 5;
    private static final int XML = 48;

    /* renamed from: T */
    private static final char[] f312T = {'V', 'D', 'I', 'W', 'E', 'A'};
    private static final String FILE_SEP = System.getProperty("file.separator");
    private static final String LINE_SEP = System.getProperty("line.separator");
    private static final Config CONFIG = new Config();
    private static final Gson GSON = new GsonBuilder().setPrettyPrinting().serializeNulls().create();
    private static final ThreadLocal<SimpleDateFormat> SDF_THREAD_LOCAL = new ThreadLocal<>();
    private static final ExecutorService EXECUTOR = Executors.newSingleThreadExecutor();
    private static final SimpleArrayMap<Class, IFormatter> I_FORMATTER_MAP = new SimpleArrayMap<>();

    public static abstract class IFormatter<T> {
        public abstract String format(T t);
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface TYPE {
    }

    private LogUtils() {
        throw new UnsupportedOperationException("u can't instantiate me...");
    }

    public static Config getConfig() {
        return CONFIG;
    }

    /* renamed from: v */
    public static void m299v(Object... objArr) {
        log(2, CONFIG.getGlobalTag(), objArr);
    }

    public static void vTag(String str, Object... objArr) {
        log(2, str, objArr);
    }

    /* renamed from: d */
    public static void m296d(Object... objArr) {
        log(3, CONFIG.getGlobalTag(), objArr);
    }

    public static void dTag(String str, Object... objArr) {
        log(3, str, objArr);
    }

    /* renamed from: i */
    public static void m298i(Object... objArr) {
        log(4, CONFIG.getGlobalTag(), objArr);
    }

    public static void iTag(String str, Object... objArr) {
        log(4, str, objArr);
    }

    /* renamed from: w */
    public static void m300w(Object... objArr) {
        log(5, CONFIG.getGlobalTag(), objArr);
    }

    public static void wTag(String str, Object... objArr) {
        log(5, str, objArr);
    }

    /* renamed from: e */
    public static void m297e(Object... objArr) {
        log(6, CONFIG.getGlobalTag(), objArr);
    }

    public static void eTag(String str, Object... objArr) {
        log(6, str, objArr);
    }

    /* renamed from: a */
    public static void m295a(Object... objArr) {
        log(7, CONFIG.getGlobalTag(), objArr);
    }

    public static void aTag(String str, Object... objArr) {
        log(7, str, objArr);
    }

    public static void file(Object obj) {
        log(19, CONFIG.getGlobalTag(), obj);
    }

    public static void file(int i, Object obj) {
        log(i | 16, CONFIG.getGlobalTag(), obj);
    }

    public static void file(String str, Object obj) {
        log(19, str, obj);
    }

    public static void file(int i, String str, Object obj) {
        log(i | 16, str, obj);
    }

    public static void json(Object obj) {
        log(35, CONFIG.getGlobalTag(), obj);
    }

    public static void json(int i, Object obj) {
        log(i | 32, CONFIG.getGlobalTag(), obj);
    }

    public static void json(String str, Object obj) {
        log(35, str, obj);
    }

    public static void json(int i, String str, Object obj) {
        log(i | 32, str, obj);
    }

    public static void xml(String str) {
        log(51, CONFIG.getGlobalTag(), str);
    }

    public static void xml(int i, String str) {
        log(i | 48, CONFIG.getGlobalTag(), str);
    }

    public static void xml(String str, String str2) {
        log(51, str, str2);
    }

    public static void xml(int i, String str, String str2) {
        log(i | 48, str, str2);
    }

    public static void log(int i, String str, Object... objArr) {
        if (CONFIG.isLogSwitch()) {
            int i2 = i & 15;
            int i3 = i & EnumG.BaseMid_SafeCertification;
            if (CONFIG.isLog2ConsoleSwitch() || CONFIG.isLog2FileSwitch() || i3 == 16) {
                if (i2 >= CONFIG.mConsoleFilter || i2 >= CONFIG.mFileFilter) {
                    TagHead tagHeadProcessTagAndHead = processTagAndHead(str);
                    String strProcessBody = processBody(i3, objArr);
                    if (CONFIG.isLog2ConsoleSwitch() && i3 != 16 && i2 >= CONFIG.mConsoleFilter) {
                        print2Console(i2, tagHeadProcessTagAndHead.tag, tagHeadProcessTagAndHead.consoleHead, strProcessBody);
                    }
                    if ((CONFIG.isLog2FileSwitch() || i3 == 16) && i2 >= CONFIG.mFileFilter) {
                        print2File(i2, tagHeadProcessTagAndHead.tag, tagHeadProcessTagAndHead.fileHead + strProcessBody);
                    }
                }
            }
        }
    }

    private static TagHead processTagAndHead(String str) {
        String strSubstring;
        String globalTag;
        if (!CONFIG.mTagIsSpace && !CONFIG.isLogHeadSwitch()) {
            globalTag = CONFIG.getGlobalTag();
        } else {
            StackTraceElement[] stackTrace = new Throwable().getStackTrace();
            int stackOffset = CONFIG.getStackOffset() + 3;
            if (stackOffset >= stackTrace.length) {
                String fileName = getFileName(stackTrace[3]);
                if (CONFIG.mTagIsSpace && isSpace(str)) {
                    int iIndexOf = fileName.indexOf(46);
                    if (iIndexOf != -1) {
                        fileName = fileName.substring(0, iIndexOf);
                    }
                } else {
                    fileName = str;
                }
                return new TagHead(fileName, null, ": ");
            }
            StackTraceElement stackTraceElement = stackTrace[stackOffset];
            String fileName2 = getFileName(stackTraceElement);
            if (CONFIG.mTagIsSpace && isSpace(str)) {
                int iIndexOf2 = fileName2.indexOf(46);
                strSubstring = iIndexOf2 == -1 ? fileName2 : fileName2.substring(0, iIndexOf2);
            } else {
                strSubstring = str;
            }
            if (CONFIG.isLogHeadSwitch()) {
                String name = Thread.currentThread().getName();
                String string = new Formatter().format("%s, %s.%s(%s:%d)", name, stackTraceElement.getClassName(), stackTraceElement.getMethodName(), fileName2, Integer.valueOf(stackTraceElement.getLineNumber())).toString();
                String str2 = " [" + string + "]: ";
                if (CONFIG.getStackDeep() <= 1) {
                    return new TagHead(strSubstring, new String[]{string}, str2);
                }
                String[] strArr = new String[Math.min(CONFIG.getStackDeep(), stackTrace.length - stackOffset)];
                strArr[0] = string;
                int length = name.length() + 2;
                String string2 = new Formatter().format("%" + length + "s", "").toString();
                int length2 = strArr.length;
                for (int i = 1; i < length2; i++) {
                    StackTraceElement stackTraceElement2 = stackTrace[i + stackOffset];
                    strArr[i] = new Formatter().format("%s%s.%s(%s:%d)", string2, stackTraceElement2.getClassName(), stackTraceElement2.getMethodName(), getFileName(stackTraceElement2), Integer.valueOf(stackTraceElement2.getLineNumber())).toString();
                }
                return new TagHead(strSubstring, strArr, str2);
            }
            globalTag = strSubstring;
        }
        return new TagHead(globalTag, null, ": ");
    }

    private static String getFileName(StackTraceElement stackTraceElement) {
        String fileName = stackTraceElement.getFileName();
        if (fileName != null) {
            return fileName;
        }
        String className = stackTraceElement.getClassName();
        String[] strArrSplit = className.split("\\.");
        if (strArrSplit.length > 0) {
            className = strArrSplit[strArrSplit.length - 1];
        }
        int iIndexOf = className.indexOf(36);
        if (iIndexOf != -1) {
            className = className.substring(0, iIndexOf);
        }
        return className + ".java";
    }

    private static String processBody(int i, Object... objArr) {
        String string;
        if (objArr != null) {
            if (objArr.length == 1) {
                string = formatObject(i, objArr[0]);
            } else {
                StringBuilder sb = new StringBuilder();
                int length = objArr.length;
                for (int i2 = 0; i2 < length; i2++) {
                    Object obj = objArr[i2];
                    sb.append(ARGS);
                    sb.append("[");
                    sb.append(i2);
                    sb.append("]");
                    sb.append(" = ");
                    sb.append(formatObject(obj));
                    sb.append(LINE_SEP);
                }
                string = sb.toString();
            }
        } else {
            string = NULL;
        }
        return string.length() == 0 ? NOTHING : string;
    }

    private static String formatObject(int i, Object obj) {
        if (obj == null) {
            return NULL;
        }
        if (i == 32) {
            return LogFormatter.object2Json(obj);
        }
        if (i == 48) {
            return LogFormatter.formatXml(obj.toString());
        }
        return formatObject(obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String formatObject(Object obj) {
        IFormatter iFormatter;
        if (obj == null) {
            return NULL;
        }
        if (!I_FORMATTER_MAP.isEmpty() && (iFormatter = I_FORMATTER_MAP.get(getClassFromObject(obj))) != null) {
            return iFormatter.format(obj);
        }
        return LogFormatter.object2String(obj);
    }

    private static void print2Console(int i, String str, String[] strArr, String str2) {
        if (CONFIG.isSingleTagSwitch()) {
            printSingleTagMsg(i, str, processSingleTagMsg(i, str, strArr, str2));
            return;
        }
        printBorder(i, str, true);
        printHead(i, str, strArr);
        printMsg(i, str, str2);
        printBorder(i, str, false);
    }

    private static void printBorder(int i, String str, boolean z) {
        if (CONFIG.isLogBorderSwitch()) {
            Log.println(i, str, z ? TOP_BORDER : BOTTOM_BORDER);
        }
    }

    private static void printHead(int i, String str, String[] strArr) {
        if (strArr != null) {
            for (String str2 : strArr) {
                if (CONFIG.isLogBorderSwitch()) {
                    str2 = LEFT_BORDER + str2;
                }
                Log.println(i, str, str2);
            }
            if (CONFIG.isLogBorderSwitch()) {
                Log.println(i, str, MIDDLE_BORDER);
            }
        }
    }

    private static void printMsg(int i, String str, String str2) {
        int length = str2.length();
        int i2 = length / 3000;
        if (i2 <= 0) {
            printSubMsg(i, str, str2);
            return;
        }
        int i3 = 0;
        int i4 = 0;
        while (i3 < i2) {
            int i5 = i4 + 3000;
            printSubMsg(i, str, str2.substring(i4, i5));
            i3++;
            i4 = i5;
        }
        if (i4 != length) {
            printSubMsg(i, str, str2.substring(i4, length));
        }
    }

    private static void printSubMsg(int i, String str, String str2) {
        if (!CONFIG.isLogBorderSwitch()) {
            Log.println(i, str, str2);
            return;
        }
        new StringBuilder();
        for (String str3 : str2.split(LINE_SEP)) {
            Log.println(i, str, LEFT_BORDER + str3);
        }
    }

    private static String processSingleTagMsg(int i, String str, String[] strArr, String str2) {
        StringBuilder sb = new StringBuilder();
        sb.append(PLACEHOLDER);
        sb.append(LINE_SEP);
        int i2 = 0;
        if (CONFIG.isLogBorderSwitch()) {
            sb.append(TOP_BORDER);
            sb.append(LINE_SEP);
            if (strArr != null) {
                for (String str3 : strArr) {
                    sb.append(LEFT_BORDER);
                    sb.append(str3);
                    sb.append(LINE_SEP);
                }
                sb.append(MIDDLE_BORDER);
                sb.append(LINE_SEP);
            }
            String[] strArrSplit = str2.split(LINE_SEP);
            int length = strArrSplit.length;
            while (i2 < length) {
                String str4 = strArrSplit[i2];
                sb.append(LEFT_BORDER);
                sb.append(str4);
                sb.append(LINE_SEP);
                i2++;
            }
            sb.append(BOTTOM_BORDER);
        } else {
            if (strArr != null) {
                int length2 = strArr.length;
                while (i2 < length2) {
                    sb.append(strArr[i2]);
                    sb.append(LINE_SEP);
                    i2++;
                }
            }
            sb.append(str2);
        }
        return sb.toString();
    }

    private static void printSingleTagMsg(int i, String str, String str2) {
        int length = str2.length();
        int i2 = length / 3000;
        if (i2 > 0) {
            int i3 = 1;
            int i4 = 3000;
            if (CONFIG.isLogBorderSwitch()) {
                Log.println(i, str, str2.substring(0, 3000) + LINE_SEP + BOTTOM_BORDER);
                while (i3 < i2) {
                    StringBuilder sb = new StringBuilder();
                    sb.append(PLACEHOLDER);
                    sb.append(LINE_SEP);
                    sb.append(TOP_BORDER);
                    sb.append(LINE_SEP);
                    sb.append(LEFT_BORDER);
                    int i5 = i4 + 3000;
                    sb.append(str2.substring(i4, i5));
                    sb.append(LINE_SEP);
                    sb.append(BOTTOM_BORDER);
                    Log.println(i, str, sb.toString());
                    i3++;
                    i4 = i5;
                }
                if (i4 != length) {
                    Log.println(i, str, PLACEHOLDER + LINE_SEP + TOP_BORDER + LINE_SEP + LEFT_BORDER + str2.substring(i4, length));
                    return;
                }
                return;
            }
            Log.println(i, str, str2.substring(0, 3000));
            while (i3 < i2) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append(PLACEHOLDER);
                sb2.append(LINE_SEP);
                int i6 = i4 + 3000;
                sb2.append(str2.substring(i4, i6));
                Log.println(i, str, sb2.toString());
                i3++;
                i4 = i6;
            }
            if (i4 != length) {
                Log.println(i, str, PLACEHOLDER + LINE_SEP + str2.substring(i4, length));
                return;
            }
            return;
        }
        Log.println(i, str, str2);
    }

    private static void print2File(int i, String str, String str2) {
        String str3 = getSdf().format(new Date(System.currentTimeMillis()));
        String strSubstring = str3.substring(0, 10);
        String strSubstring2 = str3.substring(11);
        String str4 = CONFIG.getDir() + CONFIG.getFilePrefix() + "-" + strSubstring + "-" + CONFIG.getProcessName() + ".txt";
        if (!createOrExistsFile(str4)) {
            Log.e(Constant.TAG, "create " + str4 + " failed!");
            return;
        }
        input2File(strSubstring2 + f312T[i - 2] + "/" + str + str2 + LINE_SEP, str4);
    }

    private static SimpleDateFormat getSdf() {
        SimpleDateFormat simpleDateFormat = SDF_THREAD_LOCAL.get();
        if (simpleDateFormat != null) {
            return simpleDateFormat;
        }
        SimpleDateFormat simpleDateFormat2 = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss", Locale.getDefault());
        SDF_THREAD_LOCAL.set(simpleDateFormat2);
        return simpleDateFormat2;
    }

    private static boolean createOrExistsFile(String str) throws PackageManager.NameNotFoundException, IOException {
        File file = new File(str);
        if (file.exists()) {
            return file.isFile();
        }
        if (!createOrExistsDir(file.getParentFile())) {
            return false;
        }
        try {
            deleteDueLogs(str);
            boolean zCreateNewFile = file.createNewFile();
            if (zCreateNewFile) {
                printDeviceInfo(str);
            }
            return zCreateNewFile;
        } catch (IOException e) {
            e.printStackTrace();
            return false;
        }
    }

    private static void deleteDueLogs(String str) {
        File[] fileArrListFiles;
        if (CONFIG.getSaveDays() > 0 && (fileArrListFiles = new File(str).getParentFile().listFiles(new FilenameFilter() { // from class: com.blankj.utilcode.util.LogUtils.1
            @Override // java.io.FilenameFilter
            public boolean accept(File file, String str2) {
                return str2.matches("^" + LogUtils.CONFIG.getFilePrefix() + "-[0-9]{4}-[0-9]{2}-[0-9]{2}-" + LogUtils.CONFIG.getProcessName() + ".txt$");
            }
        })) != null && fileArrListFiles.length > 0) {
            int length = str.length();
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd", Locale.getDefault());
            try {
                long time = simpleDateFormat.parse(str.substring(length - 14, length - 4)).getTime() - (CONFIG.getSaveDays() * 86400000);
                for (final File file : fileArrListFiles) {
                    String name = file.getName();
                    int length2 = name.length();
                    if (simpleDateFormat.parse(name.substring(length2 - 14, length2 - 4)).getTime() <= time) {
                        EXECUTOR.execute(new Runnable() { // from class: com.blankj.utilcode.util.LogUtils.2
                            @Override // java.lang.Runnable
                            public void run() {
                                if (file.delete()) {
                                    return;
                                }
                                Log.e(Constant.TAG, "delete " + file + " failed!");
                            }
                        });
                    }
                }
            } catch (ParseException e) {
                e.printStackTrace();
            }
        }
    }

    private static void printDeviceInfo(String str) throws PackageManager.NameNotFoundException {
        String str2 = "";
        int i = 0;
        try {
            PackageInfo packageInfo = Utils.getApp().getPackageManager().getPackageInfo(Utils.getApp().getPackageName(), 0);
            if (packageInfo != null) {
                str2 = packageInfo.versionName;
                i = packageInfo.versionCode;
            }
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
        }
        input2File("************* Log Head ****************\nDate of Log        : " + str.substring(str.length() - 14, str.length() - 4) + "\nDevice Manufacturer: " + Build.MANUFACTURER + "\nDevice Model       : " + Build.MODEL + "\nAndroid Version    : " + Build.VERSION.RELEASE + "\nAndroid SDK        : " + Build.VERSION.SDK_INT + "\nApp VersionName    : " + str2 + "\nApp VersionCode    : " + i + "\n************* Log Head ****************\n\n", str);
    }

    private static boolean createOrExistsDir(File file) {
        return file != null && (!file.exists() ? !file.mkdirs() : !file.isDirectory());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean isSpace(String str) {
        if (str == null) {
            return true;
        }
        int length = str.length();
        for (int i = 0; i < length; i++) {
            if (!Character.isWhitespace(str.charAt(i))) {
                return false;
            }
        }
        return true;
    }

    private static void input2File(final String str, final String str2) {
        EXECUTOR.execute(new Runnable() { // from class: com.blankj.utilcode.util.LogUtils.3
            @Override // java.lang.Runnable
            public void run() throws Throwable {
                BufferedWriter bufferedWriter = null;
                try {
                    try {
                        try {
                            BufferedWriter bufferedWriter2 = new BufferedWriter(new FileWriter(str2, true));
                            try {
                                bufferedWriter2.write(str);
                                bufferedWriter2.close();
                            } catch (IOException e) {
                                e = e;
                                bufferedWriter = bufferedWriter2;
                                e.printStackTrace();
                                Log.e(Constant.TAG, "log to " + str2 + " failed!");
                                if (bufferedWriter != null) {
                                    bufferedWriter.close();
                                }
                            } catch (Throwable th) {
                                th = th;
                                bufferedWriter = bufferedWriter2;
                                if (bufferedWriter != null) {
                                    try {
                                        bufferedWriter.close();
                                    } catch (IOException e2) {
                                        e2.printStackTrace();
                                    }
                                }
                                throw th;
                            }
                        } catch (Throwable th2) {
                            th = th2;
                        }
                    } catch (IOException e3) {
                        e = e3;
                    }
                } catch (IOException e4) {
                    e4.printStackTrace();
                }
            }
        });
    }

    public static class Config {
        private int mConsoleFilter;
        private String mDefaultDir;
        private String mDir;
        private int mFileFilter;
        private String mFilePrefix;
        private String mGlobalTag;
        private boolean mLog2ConsoleSwitch;
        private boolean mLog2FileSwitch;
        private boolean mLogBorderSwitch;
        private boolean mLogHeadSwitch;
        private boolean mLogSwitch;
        private String mProcessName;
        private int mSaveDays;
        private boolean mSingleTagSwitch;
        private int mStackDeep;
        private int mStackOffset;
        private boolean mTagIsSpace;

        private Config() {
            this.mFilePrefix = "util";
            this.mLogSwitch = true;
            this.mLog2ConsoleSwitch = true;
            this.mGlobalTag = "";
            this.mTagIsSpace = true;
            this.mLogHeadSwitch = true;
            this.mLog2FileSwitch = false;
            this.mLogBorderSwitch = true;
            this.mSingleTagSwitch = true;
            this.mConsoleFilter = 2;
            this.mFileFilter = 2;
            this.mStackDeep = 1;
            this.mStackOffset = 0;
            this.mSaveDays = -1;
            this.mProcessName = getCurrentProcessName();
            if (this.mDefaultDir != null) {
                return;
            }
            if ("mounted".equals(Environment.getExternalStorageState()) && Utils.getApp().getExternalCacheDir() != null) {
                this.mDefaultDir = Utils.getApp().getExternalCacheDir() + LogUtils.FILE_SEP + LogUtil.LOG_TAG + LogUtils.FILE_SEP;
                return;
            }
            this.mDefaultDir = Utils.getApp().getCacheDir() + LogUtils.FILE_SEP + LogUtil.LOG_TAG + LogUtils.FILE_SEP;
        }

        public Config setLogSwitch(boolean z) {
            this.mLogSwitch = z;
            return this;
        }

        public Config setConsoleSwitch(boolean z) {
            this.mLog2ConsoleSwitch = z;
            return this;
        }

        public Config setGlobalTag(String str) {
            if (LogUtils.isSpace(str)) {
                this.mGlobalTag = "";
                this.mTagIsSpace = true;
            } else {
                this.mGlobalTag = str;
                this.mTagIsSpace = false;
            }
            return this;
        }

        public Config setLogHeadSwitch(boolean z) {
            this.mLogHeadSwitch = z;
            return this;
        }

        public Config setLog2FileSwitch(boolean z) {
            this.mLog2FileSwitch = z;
            return this;
        }

        public Config setDir(String str) {
            if (!LogUtils.isSpace(str)) {
                if (!str.endsWith(LogUtils.FILE_SEP)) {
                    str = str + LogUtils.FILE_SEP;
                }
                this.mDir = str;
            } else {
                this.mDir = null;
            }
            return this;
        }

        public Config setDir(File file) {
            String str;
            if (file == null) {
                str = null;
            } else {
                str = file.getAbsolutePath() + LogUtils.FILE_SEP;
            }
            this.mDir = str;
            return this;
        }

        public Config setFilePrefix(String str) {
            if (LogUtils.isSpace(str)) {
                this.mFilePrefix = "util";
            } else {
                this.mFilePrefix = str;
            }
            return this;
        }

        public Config setBorderSwitch(boolean z) {
            this.mLogBorderSwitch = z;
            return this;
        }

        public Config setSingleTagSwitch(boolean z) {
            this.mSingleTagSwitch = z;
            return this;
        }

        public Config setConsoleFilter(int i) {
            this.mConsoleFilter = i;
            return this;
        }

        public Config setFileFilter(int i) {
            this.mFileFilter = i;
            return this;
        }

        public Config setStackDeep(int i) {
            this.mStackDeep = i;
            return this;
        }

        public Config setStackOffset(int i) {
            this.mStackOffset = i;
            return this;
        }

        public Config setSaveDays(int i) {
            this.mSaveDays = i;
            return this;
        }

        public final <T> Config addFormatter(IFormatter<T> iFormatter) {
            if (iFormatter != null) {
                LogUtils.I_FORMATTER_MAP.put(LogUtils.getTypeClassFromParadigm(iFormatter), iFormatter);
            }
            return this;
        }

        public String getProcessName() {
            return this.mProcessName;
        }

        public String getDefaultDir() {
            return this.mDefaultDir;
        }

        public String getDir() {
            String str = this.mDir;
            return str == null ? this.mDefaultDir : str;
        }

        public String getFilePrefix() {
            return this.mFilePrefix;
        }

        public boolean isLogSwitch() {
            return this.mLogSwitch;
        }

        public boolean isLog2ConsoleSwitch() {
            return this.mLog2ConsoleSwitch;
        }

        public String getGlobalTag() {
            return LogUtils.isSpace(this.mGlobalTag) ? "" : this.mGlobalTag;
        }

        public boolean isLogHeadSwitch() {
            return this.mLogHeadSwitch;
        }

        public boolean isLog2FileSwitch() {
            return this.mLog2FileSwitch;
        }

        public boolean isLogBorderSwitch() {
            return this.mLogBorderSwitch;
        }

        public boolean isSingleTagSwitch() {
            return this.mSingleTagSwitch;
        }

        public char getConsoleFilter() {
            return LogUtils.f312T[this.mConsoleFilter - 2];
        }

        public char getFileFilter() {
            return LogUtils.f312T[this.mFileFilter - 2];
        }

        public int getStackDeep() {
            return this.mStackDeep;
        }

        public int getStackOffset() {
            return this.mStackOffset;
        }

        public int getSaveDays() {
            return this.mSaveDays;
        }

        private static String getCurrentProcessName() {
            List<ActivityManager.RunningAppProcessInfo> runningAppProcesses;
            ActivityManager activityManager = (ActivityManager) Utils.getApp().getSystemService("activity");
            if (activityManager != null && (runningAppProcesses = activityManager.getRunningAppProcesses()) != null && runningAppProcesses.size() != 0) {
                int iMyPid = Process.myPid();
                for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : runningAppProcesses) {
                    if (runningAppProcessInfo.pid == iMyPid && runningAppProcessInfo.processName != null) {
                        return runningAppProcessInfo.processName;
                    }
                }
            }
            return "";
        }

        public String toString() {
            return "process: " + getProcessName() + LogUtils.LINE_SEP + "switch: " + isLogSwitch() + LogUtils.LINE_SEP + "console: " + isLog2ConsoleSwitch() + LogUtils.LINE_SEP + "tag: " + getGlobalTag() + LogUtils.LINE_SEP + "head: " + isLogHeadSwitch() + LogUtils.LINE_SEP + "file: " + isLog2FileSwitch() + LogUtils.LINE_SEP + "dir: " + getDir() + LogUtils.LINE_SEP + "filePrefix: " + getFilePrefix() + LogUtils.LINE_SEP + "border: " + isLogBorderSwitch() + LogUtils.LINE_SEP + "singleTag: " + isSingleTagSwitch() + LogUtils.LINE_SEP + "consoleFilter: " + getConsoleFilter() + LogUtils.LINE_SEP + "fileFilter: " + getFileFilter() + LogUtils.LINE_SEP + "stackDeep: " + getStackDeep() + LogUtils.LINE_SEP + "stackOffset: " + getStackOffset() + LogUtils.LINE_SEP + "saveDays: " + getSaveDays() + LogUtils.LINE_SEP + "formatter: " + LogUtils.I_FORMATTER_MAP;
        }
    }

    private static class TagHead {
        String[] consoleHead;
        String fileHead;
        String tag;

        TagHead(String str, String[] strArr, String str2) {
            this.tag = str;
            this.consoleHead = strArr;
            this.fileHead = str2;
        }
    }

    private static class LogFormatter {
        private LogFormatter() {
        }

        static String object2String(Object obj) {
            return obj.getClass().isArray() ? array2String(obj) : obj instanceof Throwable ? throwable2String((Throwable) obj) : obj instanceof Bundle ? bundle2String((Bundle) obj) : obj instanceof Intent ? intent2String((Intent) obj) : obj.toString();
        }

        static String object2Json(Object obj) {
            if (!(obj instanceof CharSequence)) {
                try {
                    return LogUtils.GSON.toJson(obj);
                } catch (Throwable unused) {
                    return obj.toString();
                }
            }
            return formatJson(obj.toString());
        }

        static String formatXml(String str) throws TransformerException, IllegalArgumentException {
            try {
                StreamSource streamSource = new StreamSource(new StringReader(str));
                StreamResult streamResult = new StreamResult(new StringWriter());
                Transformer transformerNewTransformer = TransformerFactory.newInstance().newTransformer();
                transformerNewTransformer.setOutputProperty("indent", "yes");
                transformerNewTransformer.setOutputProperty("{http://xml.apache.org/xslt}indent-amount", ExifInterface.GPS_MEASUREMENT_2D);
                transformerNewTransformer.transform(streamSource, streamResult);
                return streamResult.getWriter().toString().replaceFirst(">", ">" + LogUtils.LINE_SEP);
            } catch (Exception e) {
                e.printStackTrace();
                return str;
            }
        }

        private static String throwable2String(Throwable th) {
            return ThrowableUtils.getFullStackTrace(th);
        }

        private static String bundle2String(Bundle bundle) {
            Iterator<String> it = bundle.keySet().iterator();
            if (!it.hasNext()) {
                return "Bundle {}";
            }
            StringBuilder sb = new StringBuilder(128);
            sb.append("Bundle { ");
            while (true) {
                String next = it.next();
                Object obj = bundle.get(next);
                sb.append(next);
                sb.append('=');
                if (!(obj instanceof Bundle)) {
                    sb.append(LogUtils.formatObject(obj));
                } else {
                    sb.append(obj == bundle ? "(this Bundle)" : bundle2String((Bundle) obj));
                }
                if (!it.hasNext()) {
                    sb.append(" }");
                    return sb.toString();
                }
                sb.append(',');
                sb.append(' ');
            }
        }

        private static String intent2String(Intent intent) {
            boolean z;
            Intent selector;
            ClipData clipData;
            StringBuilder sb = new StringBuilder(128);
            sb.append("Intent { ");
            String action = intent.getAction();
            boolean z2 = true;
            if (action != null) {
                sb.append("act=");
                sb.append(action);
                z = false;
            } else {
                z = true;
            }
            Set<String> categories = intent.getCategories();
            if (categories != null) {
                if (!z) {
                    sb.append(' ');
                }
                sb.append("cat=[");
                for (String str : categories) {
                    if (!z2) {
                        sb.append(',');
                    }
                    sb.append(str);
                    z2 = false;
                }
                sb.append("]");
                z = false;
            }
            Uri data = intent.getData();
            if (data != null) {
                if (!z) {
                    sb.append(' ');
                }
                sb.append("dat=");
                sb.append(data);
                z = false;
            }
            String type = intent.getType();
            if (type != null) {
                if (!z) {
                    sb.append(' ');
                }
                sb.append("typ=");
                sb.append(type);
                z = false;
            }
            int flags = intent.getFlags();
            if (flags != 0) {
                if (!z) {
                    sb.append(' ');
                }
                sb.append("flg=0x");
                sb.append(Integer.toHexString(flags));
                z = false;
            }
            String str2 = intent.getPackage();
            if (str2 != null) {
                if (!z) {
                    sb.append(' ');
                }
                sb.append("pkg=");
                sb.append(str2);
                z = false;
            }
            ComponentName component = intent.getComponent();
            if (component != null) {
                if (!z) {
                    sb.append(' ');
                }
                sb.append("cmp=");
                sb.append(component.flattenToShortString());
                z = false;
            }
            Rect sourceBounds = intent.getSourceBounds();
            if (sourceBounds != null) {
                if (!z) {
                    sb.append(' ');
                }
                sb.append("bnds=");
                sb.append(sourceBounds.toShortString());
                z = false;
            }
            if (Build.VERSION.SDK_INT >= 16 && (clipData = intent.getClipData()) != null) {
                if (!z) {
                    sb.append(' ');
                }
                clipData2String(clipData, sb);
                z = false;
            }
            Bundle extras = intent.getExtras();
            if (extras != null) {
                if (!z) {
                    sb.append(' ');
                }
                sb.append("extras={");
                sb.append(bundle2String(extras));
                sb.append('}');
                z = false;
            }
            if (Build.VERSION.SDK_INT >= 15 && (selector = intent.getSelector()) != null) {
                if (!z) {
                    sb.append(' ');
                }
                sb.append("sel={");
                sb.append(selector == intent ? "(this Intent)" : intent2String(selector));
                sb.append("}");
            }
            sb.append(" }");
            return sb.toString();
        }

        private static String formatJson(String str) {
            try {
                int length = str.length();
                for (int i = 0; i < length; i++) {
                    char cCharAt = str.charAt(i);
                    if (cCharAt == '{') {
                        return new JSONObject(str).toString(2);
                    }
                    if (cCharAt == '[') {
                        return new JSONArray(str).toString(2);
                    }
                    if (!Character.isWhitespace(cCharAt)) {
                        return str;
                    }
                }
            } catch (JSONException e) {
                e.printStackTrace();
            }
            return str;
        }

        private static void clipData2String(ClipData clipData, StringBuilder sb) {
            ClipData.Item itemAt = clipData.getItemAt(0);
            if (itemAt == null) {
                sb.append("ClipData.Item {}");
                return;
            }
            sb.append("ClipData.Item { ");
            String htmlText = itemAt.getHtmlText();
            if (htmlText != null) {
                sb.append("H:");
                sb.append(htmlText);
                sb.append("}");
                return;
            }
            CharSequence text = itemAt.getText();
            if (text != null) {
                sb.append("T:");
                sb.append(text);
                sb.append("}");
                return;
            }
            Uri uri = itemAt.getUri();
            if (uri != null) {
                sb.append("U:");
                sb.append(uri);
                sb.append("}");
                return;
            }
            Intent intent = itemAt.getIntent();
            if (intent != null) {
                sb.append("I:");
                sb.append(intent2String(intent));
                sb.append("}");
            } else {
                sb.append("NULL");
                sb.append("}");
            }
        }

        private static String array2String(Object obj) {
            if (obj instanceof Object[]) {
                return Arrays.deepToString((Object[]) obj);
            }
            if (obj instanceof boolean[]) {
                return Arrays.toString((boolean[]) obj);
            }
            if (obj instanceof byte[]) {
                return Arrays.toString((byte[]) obj);
            }
            if (obj instanceof char[]) {
                return Arrays.toString((char[]) obj);
            }
            if (obj instanceof double[]) {
                return Arrays.toString((double[]) obj);
            }
            if (obj instanceof float[]) {
                return Arrays.toString((float[]) obj);
            }
            if (obj instanceof int[]) {
                return Arrays.toString((int[]) obj);
            }
            if (obj instanceof long[]) {
                return Arrays.toString((long[]) obj);
            }
            if (obj instanceof short[]) {
                return Arrays.toString((short[]) obj);
            }
            throw new IllegalArgumentException("Array has incompatible type: " + obj.getClass());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static <T> Class getTypeClassFromParadigm(IFormatter<T> iFormatter) {
        Type genericSuperclass;
        Type[] genericInterfaces = iFormatter.getClass().getGenericInterfaces();
        if (genericInterfaces.length == 1) {
            genericSuperclass = genericInterfaces[0];
        } else {
            genericSuperclass = iFormatter.getClass().getGenericSuperclass();
        }
        Type rawType = ((ParameterizedType) genericSuperclass).getActualTypeArguments()[0];
        while (rawType instanceof ParameterizedType) {
            rawType = ((ParameterizedType) rawType).getRawType();
        }
        String string = rawType.toString();
        if (string.startsWith("class ")) {
            string = string.substring(6);
        } else if (string.startsWith("interface ")) {
            string = string.substring(10);
        }
        try {
            return Class.forName(string);
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
            return null;
        }
    }

    private static Class getClassFromObject(Object obj) {
        String string;
        Class<?> cls = obj.getClass();
        if (cls.isAnonymousClass() || cls.isSynthetic()) {
            Type[] genericInterfaces = cls.getGenericInterfaces();
            if (genericInterfaces.length == 1) {
                Type rawType = genericInterfaces[0];
                while (rawType instanceof ParameterizedType) {
                    rawType = ((ParameterizedType) rawType).getRawType();
                }
                string = rawType.toString();
            } else {
                Type genericSuperclass = cls.getGenericSuperclass();
                while (genericSuperclass instanceof ParameterizedType) {
                    genericSuperclass = ((ParameterizedType) genericSuperclass).getRawType();
                }
                string = genericSuperclass.toString();
            }
            if (string.startsWith("class ")) {
                string = string.substring(6);
            } else if (string.startsWith("interface ")) {
                string = string.substring(10);
            }
            try {
                return Class.forName(string);
            } catch (ClassNotFoundException e) {
                e.printStackTrace();
            }
        }
        return cls;
    }
}
