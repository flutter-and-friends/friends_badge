package com.tencent.bugly.crashreport.crash.jni;

import android.content.Context;
import android.text.TextUtils;
import androidx.core.os.EnvironmentCompat;
import com.tencent.bugly.crashreport.common.info.C1323a;
import com.tencent.bugly.crashreport.crash.CrashDetailBean;
import com.tencent.bugly.proguard.C1386x;
import com.tencent.bugly.proguard.C1388z;
import java.io.BufferedInputStream;
import java.io.BufferedReader;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Pattern;

/* compiled from: BUGLY */
/* renamed from: com.tencent.bugly.crashreport.crash.jni.b */
/* loaded from: classes.dex */
public final class C1344b {

    /* renamed from: a */
    private static List<File> f824a = new ArrayList();

    /* renamed from: d */
    private static Map<String, Integer> m581d(String str) {
        if (str == null) {
            return null;
        }
        try {
            HashMap map = new HashMap();
            for (String str2 : str.split(",")) {
                String[] strArrSplit = str2.split(":");
                if (strArrSplit.length != 2) {
                    C1386x.m773e("error format at %s", str2);
                    return null;
                }
                map.put(strArrSplit[0], Integer.valueOf(Integer.parseInt(strArrSplit[1])));
            }
            return map;
        } catch (Exception e) {
            C1386x.m773e("error format intStateStr %s", str);
            e.printStackTrace();
            return null;
        }
    }

    /* renamed from: a */
    protected static String m573a(String str) {
        if (str == null) {
            return "";
        }
        String[] strArrSplit = str.split("\n");
        if (strArrSplit == null || strArrSplit.length == 0) {
            return str;
        }
        StringBuilder sb = new StringBuilder();
        for (String str2 : strArrSplit) {
            if (!str2.contains("java.lang.Thread.getStackTrace(")) {
                sb.append(str2);
                sb.append("\n");
            }
        }
        return sb.toString();
    }

    /* renamed from: a */
    private static CrashDetailBean m571a(Context context, Map<String, String> map, NativeExceptionHandler nativeExceptionHandler) {
        String str;
        String str2;
        HashMap map2;
        if (map == null) {
            return null;
        }
        if (C1323a.m371a(context) == null) {
            C1386x.m773e("abnormal com info not created", new Object[0]);
            return null;
        }
        String str3 = map.get("intStateStr");
        if (str3 == null || str3.trim().length() <= 0) {
            C1386x.m773e("no intStateStr", new Object[0]);
            return null;
        }
        Map<String, Integer> mapM581d = m581d(str3);
        if (mapM581d == null) {
            C1386x.m773e("parse intSateMap fail", Integer.valueOf(map.size()));
            return null;
        }
        try {
            mapM581d.get("sino").intValue();
            mapM581d.get("sud").intValue();
            String str4 = map.get("soVersion");
            if (TextUtils.isEmpty(str4)) {
                C1386x.m773e("error format at version", new Object[0]);
                return null;
            }
            String str5 = map.get("errorAddr");
            String str6 = EnvironmentCompat.MEDIA_UNKNOWN;
            String str7 = str5 == null ? EnvironmentCompat.MEDIA_UNKNOWN : str5;
            String str8 = map.get("codeMsg");
            if (str8 == null) {
                str8 = EnvironmentCompat.MEDIA_UNKNOWN;
            }
            String str9 = map.get("tombPath");
            String str10 = str9 == null ? EnvironmentCompat.MEDIA_UNKNOWN : str9;
            String str11 = map.get("signalName");
            if (str11 == null) {
                str11 = EnvironmentCompat.MEDIA_UNKNOWN;
            }
            map.get("errnoMsg");
            String str12 = map.get("stack");
            if (str12 == null) {
                str12 = EnvironmentCompat.MEDIA_UNKNOWN;
            }
            String str13 = map.get("jstack");
            if (str13 != null) {
                str12 = str12 + "java:\n" + str13;
            }
            Integer num = mapM581d.get("sico");
            if (num == null || num.intValue() <= 0) {
                str = str8;
                str2 = str11;
            } else {
                str2 = str11 + "(" + str8 + ")";
                str = "KERNEL";
            }
            String str14 = map.get("nativeLog");
            byte[] bArrM816a = (str14 == null || str14.isEmpty()) ? null : C1388z.m816a((File) null, str14, "BuglyNativeLog.txt");
            String str15 = map.get("sendingProcess");
            if (str15 == null) {
                str15 = EnvironmentCompat.MEDIA_UNKNOWN;
            }
            Integer num2 = mapM581d.get("spd");
            if (num2 != null) {
                str15 = str15 + "(" + num2 + ")";
            }
            String str16 = str15;
            String str17 = map.get("threadName");
            if (str17 == null) {
                str17 = EnvironmentCompat.MEDIA_UNKNOWN;
            }
            Integer num3 = mapM581d.get("et");
            if (num3 != null) {
                str17 = str17 + "(" + num3 + ")";
            }
            String str18 = str17;
            String str19 = map.get("processName");
            if (str19 != null) {
                str6 = str19;
            }
            Integer num4 = mapM581d.get("ep");
            if (num4 != null) {
                str6 = str6 + "(" + num4 + ")";
            }
            String str20 = str6;
            String str21 = map.get("key-value");
            if (str21 != null) {
                HashMap map3 = new HashMap();
                String[] strArrSplit = str21.split("\n");
                int length = strArrSplit.length;
                int i = 0;
                while (i < length) {
                    String[] strArrSplit2 = strArrSplit[i].split("=");
                    String[] strArr = strArrSplit;
                    if (strArrSplit2.length == 2) {
                        map3.put(strArrSplit2[0], strArrSplit2[1]);
                    }
                    i++;
                    strArrSplit = strArr;
                }
                map2 = map3;
            } else {
                map2 = null;
            }
            CrashDetailBean crashDetailBeanPackageCrashDatas = nativeExceptionHandler.packageCrashDatas(str20, str18, (mapM581d.get("etms").intValue() / 1000) + (mapM581d.get("ets").intValue() * 1000), str2, str7, m573a(str12), str, str16, str10, map.get("sysLogPath"), map.get("jniLogPath"), str4, bArrM816a, map2, false, false);
            if (crashDetailBeanPackageCrashDatas != null) {
                String str22 = map.get("userId");
                if (str22 != null) {
                    C1386x.m771c("[Native record info] userId: %s", str22);
                    crashDetailBeanPackageCrashDatas.f664m = str22;
                }
                String str23 = map.get("sysLog");
                if (str23 != null) {
                    crashDetailBeanPackageCrashDatas.f674w = str23;
                }
                String str24 = map.get("appVersion");
                if (str24 != null) {
                    C1386x.m771c("[Native record info] appVersion: %s", str24);
                    crashDetailBeanPackageCrashDatas.f657f = str24;
                }
                String str25 = map.get("isAppForeground");
                if (str25 != null) {
                    C1386x.m771c("[Native record info] isAppForeground: %s", str25);
                    crashDetailBeanPackageCrashDatas.f641N = str25.equalsIgnoreCase("true");
                }
                String str26 = map.get("launchTime");
                if (str26 != null) {
                    C1386x.m771c("[Native record info] launchTime: %s", str26);
                    try {
                        crashDetailBeanPackageCrashDatas.f640M = Long.parseLong(str26);
                    } catch (NumberFormatException e) {
                        if (!C1386x.m767a(e)) {
                            e.printStackTrace();
                        }
                    }
                }
                crashDetailBeanPackageCrashDatas.f677z = null;
                crashDetailBeanPackageCrashDatas.f662k = true;
            }
            return crashDetailBeanPackageCrashDatas;
        } catch (Throwable th) {
            C1386x.m773e("error format", new Object[0]);
            th.printStackTrace();
            return null;
        }
    }

    /* renamed from: a */
    private static String m572a(BufferedInputStream bufferedInputStream) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream;
        if (bufferedInputStream == null) {
            return null;
        }
        try {
            byteArrayOutputStream = new ByteArrayOutputStream(1024);
            while (true) {
                try {
                    int i = bufferedInputStream.read();
                    if (i == -1) {
                        byteArrayOutputStream.close();
                        break;
                    }
                    if (i == 0) {
                        String str = new String(byteArrayOutputStream.toByteArray(), "UTf-8");
                        byteArrayOutputStream.close();
                        return str;
                    }
                    byteArrayOutputStream.write(i);
                } catch (Throwable th) {
                    th = th;
                    try {
                        C1386x.m767a(th);
                        return null;
                    } finally {
                        if (byteArrayOutputStream != null) {
                            byteArrayOutputStream.close();
                        }
                    }
                }
            }
        } catch (Throwable th2) {
            th = th2;
            byteArrayOutputStream = null;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r7v3, types: [boolean] */
    /* JADX WARN: Type inference failed for: r7v6 */
    /* renamed from: a */
    public static CrashDetailBean m570a(Context context, String str, NativeExceptionHandler nativeExceptionHandler) throws Throwable {
        BufferedInputStream bufferedInputStream;
        String str2;
        String strM572a;
        if (context == null || str == null || nativeExceptionHandler == null) {
            C1386x.m773e("get eup record file args error", new Object[0]);
            return null;
        }
        File file = new File(str, "rqd_record.eup");
        if (file.exists()) {
            BufferedInputStream bufferedInputStreamCanRead = file.canRead();
            try {
                if (bufferedInputStreamCanRead != 0) {
                    try {
                        bufferedInputStream = new BufferedInputStream(new FileInputStream(file));
                    } catch (IOException e) {
                        e = e;
                        bufferedInputStream = null;
                    } catch (Throwable th) {
                        th = th;
                        bufferedInputStreamCanRead = 0;
                        if (bufferedInputStreamCanRead != 0) {
                            try {
                                bufferedInputStreamCanRead.close();
                            } catch (IOException e2) {
                                e2.printStackTrace();
                            }
                        }
                        throw th;
                    }
                    try {
                        String strM572a2 = m572a(bufferedInputStream);
                        if (strM572a2 != null && strM572a2.equals("NATIVE_RQD_REPORT")) {
                            HashMap map = new HashMap();
                            loop0: while (true) {
                                str2 = null;
                                while (true) {
                                    strM572a = m572a(bufferedInputStream);
                                    if (strM572a == null) {
                                        break loop0;
                                    }
                                    if (str2 == null) {
                                        str2 = strM572a;
                                    }
                                }
                                map.put(str2, strM572a);
                            }
                            if (str2 != null) {
                                C1386x.m773e("record not pair! drop! %s", str2);
                                try {
                                    bufferedInputStream.close();
                                } catch (IOException e3) {
                                    e3.printStackTrace();
                                }
                                return null;
                            }
                            CrashDetailBean crashDetailBeanM571a = m571a(context, map, nativeExceptionHandler);
                            try {
                                bufferedInputStream.close();
                            } catch (IOException e4) {
                                e4.printStackTrace();
                            }
                            return crashDetailBeanM571a;
                        }
                        C1386x.m773e("record read fail! %s", strM572a2);
                        try {
                            bufferedInputStream.close();
                        } catch (IOException e5) {
                            e5.printStackTrace();
                        }
                        return null;
                    } catch (IOException e6) {
                        e = e6;
                        e.printStackTrace();
                        if (bufferedInputStream != null) {
                            try {
                                bufferedInputStream.close();
                            } catch (IOException e7) {
                                e7.printStackTrace();
                            }
                        }
                        return null;
                    }
                }
            } catch (Throwable th2) {
                th = th2;
            }
        }
        return null;
    }

    /* renamed from: b */
    private static String m578b(String str, String str2) throws IOException {
        BufferedReader bufferedReaderM794a = C1388z.m794a(str, "reg_record.txt");
        if (bufferedReaderM794a == null) {
            return null;
        }
        try {
            StringBuilder sb = new StringBuilder();
            String line = bufferedReaderM794a.readLine();
            if (line != null && line.startsWith(str2)) {
                int i = 0;
                int i2 = 18;
                int length = 0;
                while (true) {
                    String line2 = bufferedReaderM794a.readLine();
                    if (line2 == null) {
                        break;
                    }
                    if (i % 4 == 0) {
                        if (i > 0) {
                            sb.append("\n");
                        }
                        sb.append("  ");
                    } else {
                        if (line2.length() > 16) {
                            i2 = 28;
                        }
                        sb.append("                ".substring(0, i2 - length));
                    }
                    length = line2.length();
                    sb.append(line2);
                    i++;
                }
                sb.append("\n");
                return sb.toString();
            }
            if (bufferedReaderM794a != null) {
                try {
                    bufferedReaderM794a.close();
                } catch (Exception e) {
                    C1386x.m767a(e);
                }
            }
            return null;
        } catch (Throwable th) {
            try {
                C1386x.m767a(th);
                if (bufferedReaderM794a != null) {
                    try {
                        bufferedReaderM794a.close();
                    } catch (Exception e2) {
                        C1386x.m767a(e2);
                    }
                }
                return null;
            } finally {
                if (bufferedReaderM794a != null) {
                    try {
                        bufferedReaderM794a.close();
                    } catch (Exception e3) {
                        C1386x.m767a(e3);
                    }
                }
            }
        }
    }

    /* renamed from: c */
    private static String m579c(String str, String str2) throws IOException {
        BufferedReader bufferedReaderM794a = C1388z.m794a(str, "map_record.txt");
        if (bufferedReaderM794a == null) {
            return null;
        }
        try {
            StringBuilder sb = new StringBuilder();
            String line = bufferedReaderM794a.readLine();
            if (line != null && line.startsWith(str2)) {
                while (true) {
                    String line2 = bufferedReaderM794a.readLine();
                    if (line2 == null) {
                        break;
                    }
                    sb.append("  ");
                    sb.append(line2);
                    sb.append("\n");
                }
                return sb.toString();
            }
            if (bufferedReaderM794a != null) {
                try {
                    bufferedReaderM794a.close();
                } catch (Exception e) {
                    C1386x.m767a(e);
                }
            }
            return null;
        } catch (Throwable th) {
            try {
                C1386x.m767a(th);
                if (bufferedReaderM794a != null) {
                    try {
                        bufferedReaderM794a.close();
                    } catch (Exception e2) {
                        C1386x.m767a(e2);
                    }
                }
                return null;
            } finally {
                if (bufferedReaderM794a != null) {
                    try {
                        bufferedReaderM794a.close();
                    } catch (Exception e3) {
                        C1386x.m767a(e3);
                    }
                }
            }
        }
    }

    /* renamed from: a */
    public static String m575a(String str, String str2) {
        if (str == null || str2 == null) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        String strM578b = m578b(str, str2);
        if (strM578b != null && !strM578b.isEmpty()) {
            sb.append("Register infos:\n");
            sb.append(strM578b);
        }
        String strM579c = m579c(str, str2);
        if (strM579c != null && !strM579c.isEmpty()) {
            if (sb.length() > 0) {
                sb.append("\n");
            }
            sb.append("System SO infos:\n");
            sb.append(strM579c);
        }
        return sb.toString();
    }

    /* renamed from: b */
    public static String m577b(String str) {
        if (str == null) {
            return null;
        }
        File file = new File(str, "backup_record.txt");
        if (file.exists()) {
            return file.getAbsolutePath();
        }
        return null;
    }

    /* renamed from: c */
    public static void m580c(String str) {
        File[] fileArrListFiles;
        if (str == null) {
            return;
        }
        try {
            File file = new File(str);
            if (file.canRead() && file.isDirectory() && (fileArrListFiles = file.listFiles()) != null) {
                for (File file2 : fileArrListFiles) {
                    if (file2.canRead() && file2.canWrite() && file2.length() == 0) {
                        file2.delete();
                        C1386x.m771c("Delete empty record file %s", file2.getAbsoluteFile());
                    }
                }
            }
        } catch (Throwable th) {
            C1386x.m767a(th);
        }
    }

    /* renamed from: a */
    public static void m576a(boolean z, String str) {
        if (str != null) {
            f824a.add(new File(str, "rqd_record.eup"));
            f824a.add(new File(str, "reg_record.txt"));
            f824a.add(new File(str, "map_record.txt"));
            f824a.add(new File(str, "backup_record.txt"));
            if (z) {
                m580c(str);
            }
        }
        List<File> list = f824a;
        if (list == null || list.size() <= 0) {
            return;
        }
        for (File file : f824a) {
            if (file.exists() && file.canWrite()) {
                file.delete();
                C1386x.m771c("Delete record file %s", file.getAbsoluteFile());
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v1, types: [java.lang.StringBuilder] */
    /* JADX WARN: Type inference failed for: r6v10 */
    /* JADX WARN: Type inference failed for: r6v11 */
    /* JADX WARN: Type inference failed for: r6v6, types: [java.lang.String] */
    /* renamed from: a */
    public static String m574a(String str, int i, String str2, boolean z) throws IOException {
        BufferedReader bufferedReader;
        if (str != null && i > 0) {
            File file = new File(str);
            if (file.exists() && file.canRead()) {
                C1386x.m766a("Read system log from native record file(length: %s bytes): %s", Long.valueOf(file.length()), file.getAbsolutePath());
                f824a.add(file);
                C1386x.m771c("Add this record file to list for cleaning lastly.", new Object[0]);
                if (str2 == null) {
                    return C1388z.m801a(new File(str), i, z);
                }
                String sb = new StringBuilder();
                try {
                    try {
                        bufferedReader = new BufferedReader(new InputStreamReader(new FileInputStream(file), "utf-8"));
                        while (true) {
                            try {
                                String line = bufferedReader.readLine();
                                if (line == null) {
                                    break;
                                }
                                if (Pattern.compile(str2 + "[ ]*:").matcher(line).find()) {
                                    sb.append(line);
                                    sb.append("\n");
                                }
                                if (i > 0 && sb.length() > i) {
                                    if (z) {
                                        sb.delete(i, sb.length());
                                        break;
                                    }
                                    sb.delete(0, sb.length() - i);
                                }
                            } catch (Throwable th) {
                                th = th;
                                try {
                                    C1386x.m767a(th);
                                    sb.append("\n[error:" + th.toString() + "]");
                                    String string = sb.toString();
                                    if (bufferedReader == null) {
                                        return string;
                                    }
                                    bufferedReader.close();
                                    sb = string;
                                    return sb;
                                } catch (Throwable th2) {
                                    if (bufferedReader != null) {
                                        try {
                                            bufferedReader.close();
                                        } catch (Exception e) {
                                            C1386x.m767a(e);
                                        }
                                    }
                                    throw th2;
                                }
                            }
                        }
                        String string2 = sb.toString();
                        bufferedReader.close();
                        sb = string2;
                    } catch (Throwable th3) {
                        th = th3;
                        bufferedReader = null;
                    }
                    return sb;
                } catch (Exception e2) {
                    C1386x.m767a(e2);
                    return sb;
                }
            }
        }
        return null;
    }
}
