package com.tencent.bugly.crashreport.crash.anr;

import com.tencent.bugly.proguard.C1386x;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* compiled from: BUGLY */
/* loaded from: classes.dex */
public class TraceFileHelper {

    /* compiled from: BUGLY */
    /* renamed from: com.tencent.bugly.crashreport.crash.anr.TraceFileHelper$a */
    public static class C1332a {

        /* renamed from: a */
        public long f689a;

        /* renamed from: b */
        public String f690b;

        /* renamed from: c */
        public long f691c;

        /* renamed from: d */
        public Map<String, String[]> f692d;
    }

    /* compiled from: BUGLY */
    /* renamed from: com.tencent.bugly.crashreport.crash.anr.TraceFileHelper$b */
    public interface InterfaceC1333b {
        /* renamed from: a */
        boolean mo462a(long j);

        /* renamed from: a */
        boolean mo463a(long j, long j2, String str);

        /* renamed from: a */
        boolean mo464a(String str, int i, String str2, String str3);
    }

    public static C1332a readTargetDumpInfo(final String str, String str2, final boolean z) throws Throwable {
        if (str != null && str2 != null) {
            final C1332a c1332a = new C1332a();
            readTraceFile(str2, new InterfaceC1333b() { // from class: com.tencent.bugly.crashreport.crash.anr.TraceFileHelper.1
                @Override // com.tencent.bugly.crashreport.crash.anr.TraceFileHelper.InterfaceC1333b
                /* renamed from: a */
                public final boolean mo464a(String str3, int i, String str4, String str5) {
                    C1386x.m771c("new thread %s", str3);
                    if (c1332a.f689a > 0 && c1332a.f691c > 0 && c1332a.f690b != null) {
                        if (c1332a.f692d == null) {
                            c1332a.f692d = new HashMap();
                        }
                        Map<String, String[]> map = c1332a.f692d;
                        StringBuilder sb = new StringBuilder();
                        sb.append(i);
                        map.put(str3, new String[]{str4, str5, sb.toString()});
                    }
                    return true;
                }

                @Override // com.tencent.bugly.crashreport.crash.anr.TraceFileHelper.InterfaceC1333b
                /* renamed from: a */
                public final boolean mo463a(long j, long j2, String str3) {
                    C1386x.m771c("new process %s", str3);
                    if (!str3.equals(str)) {
                        return true;
                    }
                    C1332a c1332a2 = c1332a;
                    c1332a2.f689a = j;
                    c1332a2.f690b = str3;
                    c1332a2.f691c = j2;
                    return z;
                }

                @Override // com.tencent.bugly.crashreport.crash.anr.TraceFileHelper.InterfaceC1333b
                /* renamed from: a */
                public final boolean mo462a(long j) {
                    C1386x.m771c("process end %d", Long.valueOf(j));
                    return c1332a.f689a <= 0 || c1332a.f691c <= 0 || c1332a.f690b == null;
                }
            });
            if (c1332a.f689a > 0 && c1332a.f691c > 0 && c1332a.f690b != null) {
                return c1332a;
            }
        }
        return null;
    }

    public static C1332a readFirstDumpInfo(String str, final boolean z) throws Throwable {
        if (str == null) {
            C1386x.m773e("path:%s", str);
            return null;
        }
        final C1332a c1332a = new C1332a();
        readTraceFile(str, new InterfaceC1333b() { // from class: com.tencent.bugly.crashreport.crash.anr.TraceFileHelper.2
            @Override // com.tencent.bugly.crashreport.crash.anr.TraceFileHelper.InterfaceC1333b
            /* renamed from: a */
            public final boolean mo464a(String str2, int i, String str3, String str4) {
                C1386x.m771c("new thread %s", str2);
                if (c1332a.f692d == null) {
                    c1332a.f692d = new HashMap();
                }
                Map<String, String[]> map = c1332a.f692d;
                StringBuilder sb = new StringBuilder();
                sb.append(i);
                map.put(str2, new String[]{str3, str4, sb.toString()});
                return true;
            }

            @Override // com.tencent.bugly.crashreport.crash.anr.TraceFileHelper.InterfaceC1333b
            /* renamed from: a */
            public final boolean mo463a(long j, long j2, String str2) {
                C1386x.m771c("new process %s", str2);
                C1332a c1332a2 = c1332a;
                c1332a2.f689a = j;
                c1332a2.f690b = str2;
                c1332a2.f691c = j2;
                return z;
            }

            @Override // com.tencent.bugly.crashreport.crash.anr.TraceFileHelper.InterfaceC1333b
            /* renamed from: a */
            public final boolean mo462a(long j) {
                C1386x.m771c("process end %d", Long.valueOf(j));
                return false;
            }
        });
        if (c1332a.f689a > 0 && c1332a.f691c > 0 && c1332a.f690b != null) {
            return c1332a;
        }
        C1386x.m773e("first dump error %s", c1332a.f689a + " " + c1332a.f691c + " " + c1332a.f690b);
        return null;
    }

    public static void readTraceFile(String str, InterfaceC1333b interfaceC1333b) throws Throwable {
        Throwable th;
        BufferedReader bufferedReader;
        if (str == null || interfaceC1333b == null) {
            return;
        }
        File file = new File(str);
        if (!file.exists()) {
            return;
        }
        file.lastModified();
        file.length();
        BufferedReader bufferedReader2 = null;
        try {
            try {
                bufferedReader = new BufferedReader(new FileReader(file));
                try {
                    Pattern patternCompile = Pattern.compile("-{5}\\spid\\s\\d+\\sat\\s\\d+-\\d+-\\d+\\s\\d{2}:\\d{2}:\\d{2}\\s-{5}");
                    Pattern patternCompile2 = Pattern.compile("-{5}\\send\\s\\d+\\s-{5}");
                    Pattern patternCompile3 = Pattern.compile("Cmd\\sline:\\s(\\S+)");
                    Pattern patternCompile4 = Pattern.compile("\".+\"\\s(daemon\\s){0,1}prio=\\d+\\stid=\\d+\\s.*");
                    SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss", Locale.US);
                    while (true) {
                        Object[] objArrM460a = m460a(bufferedReader, patternCompile);
                        if (objArrM460a == null) {
                            try {
                                bufferedReader.close();
                                return;
                            } catch (IOException e) {
                                if (C1386x.m767a(e)) {
                                    return;
                                }
                                e.printStackTrace();
                                return;
                            }
                        }
                        String[] strArrSplit = objArrM460a[1].toString().split("\\s");
                        long j = Long.parseLong(strArrSplit[2]);
                        long time = simpleDateFormat.parse(strArrSplit[4] + " " + strArrSplit[5]).getTime();
                        Object[] objArrM460a2 = m460a(bufferedReader, patternCompile3);
                        if (objArrM460a2 == null) {
                            try {
                                bufferedReader.close();
                                return;
                            } catch (IOException e2) {
                                if (C1386x.m767a(e2)) {
                                    return;
                                }
                                e2.printStackTrace();
                                return;
                            }
                        }
                        Matcher matcher = patternCompile3.matcher(objArrM460a2[1].toString());
                        matcher.find();
                        matcher.group(1);
                        SimpleDateFormat simpleDateFormat2 = simpleDateFormat;
                        if (!interfaceC1333b.mo463a(j, time, matcher.group(1))) {
                            try {
                                bufferedReader.close();
                                return;
                            } catch (IOException e3) {
                                if (C1386x.m767a(e3)) {
                                    return;
                                }
                                e3.printStackTrace();
                                return;
                            }
                        }
                        while (true) {
                            Object[] objArrM460a3 = m460a(bufferedReader, patternCompile4, patternCompile2);
                            if (objArrM460a3 == null) {
                                break;
                            }
                            if (objArrM460a3[0] == patternCompile4) {
                                String string = objArrM460a3[1].toString();
                                Matcher matcher2 = Pattern.compile("\".+\"").matcher(string);
                                matcher2.find();
                                String strGroup = matcher2.group();
                                String strSubstring = strGroup.substring(1, strGroup.length() - 1);
                                string.contains("NATIVE");
                                Matcher matcher3 = Pattern.compile("tid=\\d+").matcher(string);
                                matcher3.find();
                                String strGroup2 = matcher3.group();
                                interfaceC1333b.mo464a(strSubstring, Integer.parseInt(strGroup2.substring(strGroup2.indexOf("=") + 1)), m459a(bufferedReader), m461b(bufferedReader));
                            } else if (!interfaceC1333b.mo462a(Long.parseLong(objArrM460a3[1].toString().split("\\s")[2]))) {
                                try {
                                    bufferedReader.close();
                                    return;
                                } catch (IOException e4) {
                                    if (C1386x.m767a(e4)) {
                                        return;
                                    }
                                    e4.printStackTrace();
                                    return;
                                }
                            }
                        }
                        simpleDateFormat = simpleDateFormat2;
                    }
                } catch (Exception e5) {
                    e = e5;
                    bufferedReader2 = bufferedReader;
                    if (!C1386x.m767a(e)) {
                        e.printStackTrace();
                    }
                    C1386x.m772d("trace open fail:%s : %s", e.getClass().getName(), e.getMessage());
                    if (bufferedReader2 != null) {
                        try {
                            bufferedReader2.close();
                        } catch (IOException e6) {
                            if (C1386x.m767a(e6)) {
                                return;
                            }
                            e6.printStackTrace();
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                    if (bufferedReader == null) {
                        throw th;
                    }
                    try {
                        bufferedReader.close();
                        throw th;
                    } catch (IOException e7) {
                        if (C1386x.m767a(e7)) {
                            throw th;
                        }
                        e7.printStackTrace();
                        throw th;
                    }
                }
            } catch (Exception e8) {
                e = e8;
            }
        } catch (Throwable th3) {
            th = th3;
            bufferedReader = null;
        }
    }

    /* renamed from: a */
    private static Object[] m460a(BufferedReader bufferedReader, Pattern... patternArr) throws IOException {
        if (bufferedReader != null && patternArr != null) {
            while (true) {
                String line = bufferedReader.readLine();
                if (line == null) {
                    break;
                }
                for (Pattern pattern : patternArr) {
                    if (pattern.matcher(line).matches()) {
                        return new Object[]{pattern, line};
                    }
                }
            }
        }
        return null;
    }

    /* renamed from: a */
    private static String m459a(BufferedReader bufferedReader) throws IOException {
        StringBuffer stringBuffer = new StringBuffer();
        for (int i = 0; i < 3; i++) {
            String line = bufferedReader.readLine();
            if (line == null) {
                return null;
            }
            stringBuffer.append(line + "\n");
        }
        return stringBuffer.toString();
    }

    /* renamed from: b */
    private static String m461b(BufferedReader bufferedReader) throws IOException {
        StringBuffer stringBuffer = new StringBuffer();
        while (true) {
            String line = bufferedReader.readLine();
            if (line == null || line.trim().length() <= 0) {
                break;
            }
            stringBuffer.append(line + "\n");
        }
        return stringBuffer.toString();
    }
}
