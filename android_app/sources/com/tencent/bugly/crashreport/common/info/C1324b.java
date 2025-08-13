package com.tencent.bugly.crashreport.common.info;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.Environment;
import android.os.Process;
import android.os.StatFs;
import android.provider.Settings;
import com.tencent.bugly.proguard.C1386x;
import com.tencent.bugly.proguard.C1388z;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;

/* compiled from: BUGLY */
/* renamed from: com.tencent.bugly.crashreport.common.info.b */
/* loaded from: classes.dex */
public class C1324b {

    /* renamed from: a */
    private static final String[] f587a = {"/su", "/su/bin/su", "/sbin/su", "/data/local/xbin/su", "/data/local/bin/su", "/data/local/su", "/system/xbin/su", "/system/bin/su", "/system/sd/xbin/su", "/system/bin/failsafe/su", "/system/bin/cufsdosck", "/system/xbin/cufsdosck", "/system/bin/cufsmgr", "/system/xbin/cufsmgr", "/system/bin/cufaevdd", "/system/xbin/cufaevdd", "/system/bin/conbb", "/system/xbin/conbb"};

    /* renamed from: b */
    private static final String[] f588b = {"com.ami.duosupdater.ui", "com.ami.launchmetro", "com.ami.syncduosservices", "com.bluestacks.home", "com.bluestacks.windowsfilemanager", "com.bluestacks.settings", "com.bluestacks.bluestackslocationprovider", "com.bluestacks.appsettings", "com.bluestacks.bstfolder", "com.bluestacks.BstCommandProcessor", "com.bluestacks.s2p", "com.bluestacks.setup", "com.kaopu001.tiantianserver", "com.kpzs.helpercenter", "com.kaopu001.tiantianime", "com.android.development_settings", "com.android.development", "com.android.customlocale2", "com.genymotion.superuser", "com.genymotion.clipboardproxy", "com.uc.xxzs.keyboard", "com.uc.xxzs", "com.blue.huang17.agent", "com.blue.huang17.launcher", "com.blue.huang17.ime", "com.microvirt.guide", "com.microvirt.market", "com.microvirt.memuime", "cn.itools.vm.launcher", "cn.itools.vm.proxy", "cn.itools.vm.softkeyboard", "cn.itools.avdmarket", "com.syd.IME", "com.bignox.app.store.hd", "com.bignox.launcher", "com.bignox.app.phone", "com.bignox.app.noxservice", "com.android.noxpush", "com.haimawan.push", "me.haima.helpcenter", "com.windroy.launcher", "com.windroy.superuser", "com.windroy.launcher", "com.windroy.ime", "com.android.flysilkworm", "com.android.emu.inputservice", "com.tiantian.ime", "com.microvirt.launcher", "me.le8.androidassist", "com.vphone.helper", "com.vphone.launcher", "com.duoyi.giftcenter.giftcenter"};

    /* renamed from: c */
    private static final String[] f589c = {"/sys/devices/system/cpu/cpu0/cpufreq/scaling_cur_freq", "/system/lib/libc_malloc_debug_qemu.so", "/sys/qemu_trace", "/system/bin/qemu-props", "/dev/socket/qemud", "/dev/qemu_pipe", "/dev/socket/baseband_genyd", "/dev/socket/genyd"};

    /* renamed from: j */
    public static String m434j() {
        return "";
    }

    /* renamed from: a */
    public static String m416a() {
        try {
            return Build.MODEL;
        } catch (Throwable th) {
            if (C1386x.m767a(th)) {
                return "fail";
            }
            th.printStackTrace();
            return "fail";
        }
    }

    /* renamed from: b */
    public static String m419b() {
        try {
            return Build.VERSION.RELEASE;
        } catch (Throwable th) {
            if (C1386x.m767a(th)) {
                return "fail";
            }
            th.printStackTrace();
            return "fail";
        }
    }

    /* renamed from: c */
    public static int m421c() {
        try {
            return Build.VERSION.SDK_INT;
        } catch (Throwable th) {
            if (C1386x.m767a(th)) {
                return -1;
            }
            th.printStackTrace();
            return -1;
        }
    }

    /* renamed from: a */
    public static String m417a(Context context) {
        String string = "fail";
        if (context == null) {
            return "fail";
        }
        try {
            string = Settings.Secure.getString(context.getContentResolver(), "android_id");
            return string == null ? "null" : string.toLowerCase();
        } catch (Throwable th) {
            if (!C1386x.m767a(th)) {
                C1386x.m766a("Failed to get Android ID.", new Object[0]);
            }
            return string;
        }
    }

    /* renamed from: n */
    private static boolean m438n() {
        try {
            return Environment.getExternalStorageState().equals("mounted");
        } catch (Throwable th) {
            if (C1386x.m767a(th)) {
                return false;
            }
            th.printStackTrace();
            return false;
        }
    }

    /* renamed from: a */
    public static String m418a(Context context, boolean z) {
        String property = null;
        if (z) {
            try {
                String strM800a = C1388z.m800a(context, "ro.product.cpu.abilist");
                if (C1388z.m814a(strM800a) || strM800a.equals("fail")) {
                    strM800a = C1388z.m800a(context, "ro.product.cpu.abi");
                }
                if (!C1388z.m814a(strM800a) && !strM800a.equals("fail")) {
                    C1386x.m768b(C1324b.class, "ABI list: " + strM800a, new Object[0]);
                    property = strM800a.split(",")[0];
                }
            } catch (Throwable th) {
                if (!C1386x.m767a(th)) {
                    th.printStackTrace();
                }
                return "fail";
            }
        }
        if (property == null) {
            property = System.getProperty("os.arch");
        }
        return property;
    }

    /* renamed from: d */
    public static long m423d() {
        try {
            StatFs statFs = new StatFs(Environment.getDataDirectory().getPath());
            return statFs.getBlockCount() * statFs.getBlockSize();
        } catch (Throwable th) {
            if (!C1386x.m767a(th)) {
                th.printStackTrace();
            }
            return -1L;
        }
    }

    /* renamed from: e */
    public static long m425e() {
        try {
            StatFs statFs = new StatFs(Environment.getDataDirectory().getPath());
            return statFs.getAvailableBlocks() * statFs.getBlockSize();
        } catch (Throwable th) {
            if (!C1386x.m767a(th)) {
                th.printStackTrace();
            }
            return -1L;
        }
    }

    /* renamed from: f */
    public static long m427f() throws IOException {
        FileReader fileReader;
        Throwable th;
        BufferedReader bufferedReader;
        try {
            fileReader = new FileReader("/proc/meminfo");
            try {
                bufferedReader = new BufferedReader(fileReader, 2048);
            } catch (Throwable th2) {
                th = th2;
                bufferedReader = null;
            }
        } catch (Throwable th3) {
            fileReader = null;
            th = th3;
            bufferedReader = null;
        }
        try {
            String line = bufferedReader.readLine();
            if (line != null) {
                long j = Long.parseLong(line.split(":\\s+", 2)[1].toLowerCase().replace("kb", "").trim()) << 10;
                try {
                    bufferedReader.close();
                } catch (IOException e) {
                    if (!C1386x.m767a(e)) {
                        e.printStackTrace();
                    }
                }
                try {
                    fileReader.close();
                } catch (IOException e2) {
                    if (!C1386x.m767a(e2)) {
                        e2.printStackTrace();
                    }
                }
                return j;
            }
            try {
                bufferedReader.close();
            } catch (IOException e3) {
                if (!C1386x.m767a(e3)) {
                    e3.printStackTrace();
                }
            }
            try {
                fileReader.close();
                return -1L;
            } catch (IOException e4) {
                if (C1386x.m767a(e4)) {
                    return -1L;
                }
                e4.printStackTrace();
                return -1L;
            }
        } catch (Throwable th4) {
            th = th4;
            try {
                if (!C1386x.m767a(th)) {
                    th.printStackTrace();
                }
                if (bufferedReader != null) {
                    try {
                        bufferedReader.close();
                    } catch (IOException e5) {
                        if (!C1386x.m767a(e5)) {
                            e5.printStackTrace();
                        }
                    }
                }
                if (fileReader == null) {
                    return -2L;
                }
                try {
                    fileReader.close();
                    return -2L;
                } catch (IOException e6) {
                    if (C1386x.m767a(e6)) {
                        return -2L;
                    }
                    e6.printStackTrace();
                    return -2L;
                }
            } catch (Throwable th5) {
                if (bufferedReader != null) {
                    try {
                        bufferedReader.close();
                    } catch (IOException e7) {
                        if (!C1386x.m767a(e7)) {
                            e7.printStackTrace();
                        }
                    }
                }
                if (fileReader != null) {
                    try {
                        fileReader.close();
                    } catch (IOException e8) {
                        if (!C1386x.m767a(e8)) {
                            e8.printStackTrace();
                        }
                    }
                }
                throw th5;
            }
        }
    }

    /* renamed from: g */
    public static long m429g() throws IOException {
        BufferedReader bufferedReader;
        FileReader fileReader;
        try {
            fileReader = new FileReader("/proc/meminfo");
            try {
                bufferedReader = new BufferedReader(fileReader, 2048);
            } catch (Throwable th) {
                th = th;
                bufferedReader = null;
            }
        } catch (Throwable th2) {
            th = th2;
            bufferedReader = null;
            fileReader = null;
        }
        try {
            bufferedReader.readLine();
            String line = bufferedReader.readLine();
            if (line == null) {
                try {
                    bufferedReader.close();
                } catch (IOException e) {
                    if (!C1386x.m767a(e)) {
                        e.printStackTrace();
                    }
                }
                try {
                    fileReader.close();
                } catch (IOException e2) {
                    if (!C1386x.m767a(e2)) {
                        e2.printStackTrace();
                    }
                }
                return -1L;
            }
            long j = (Long.parseLong(line.split(":\\s+", 2)[1].toLowerCase().replace("kb", "").trim()) << 10) + 0;
            String line2 = bufferedReader.readLine();
            if (line2 == null) {
                try {
                    bufferedReader.close();
                } catch (IOException e3) {
                    if (!C1386x.m767a(e3)) {
                        e3.printStackTrace();
                    }
                }
                try {
                    fileReader.close();
                } catch (IOException e4) {
                    if (!C1386x.m767a(e4)) {
                        e4.printStackTrace();
                    }
                }
                return -1L;
            }
            long j2 = j + (Long.parseLong(line2.split(":\\s+", 2)[1].toLowerCase().replace("kb", "").trim()) << 10);
            String line3 = bufferedReader.readLine();
            if (line3 == null) {
                try {
                    bufferedReader.close();
                } catch (IOException e5) {
                    if (!C1386x.m767a(e5)) {
                        e5.printStackTrace();
                    }
                }
                try {
                    fileReader.close();
                } catch (IOException e6) {
                    if (!C1386x.m767a(e6)) {
                        e6.printStackTrace();
                    }
                }
                return -1L;
            }
            long j3 = j2 + (Long.parseLong(line3.split(":\\s+", 2)[1].toLowerCase().replace("kb", "").trim()) << 10);
            try {
                bufferedReader.close();
            } catch (IOException e7) {
                if (!C1386x.m767a(e7)) {
                    e7.printStackTrace();
                }
            }
            try {
                fileReader.close();
            } catch (IOException e8) {
                if (!C1386x.m767a(e8)) {
                    e8.printStackTrace();
                }
            }
            return j3;
        } catch (Throwable th3) {
            th = th3;
            try {
                if (!C1386x.m767a(th)) {
                    th.printStackTrace();
                }
                if (bufferedReader != null) {
                    try {
                        bufferedReader.close();
                    } catch (IOException e9) {
                        if (!C1386x.m767a(e9)) {
                            e9.printStackTrace();
                        }
                    }
                }
                if (fileReader == null) {
                    return -2L;
                }
                try {
                    fileReader.close();
                    return -2L;
                } catch (IOException e10) {
                    if (C1386x.m767a(e10)) {
                        return -2L;
                    }
                    e10.printStackTrace();
                    return -2L;
                }
            } catch (Throwable th4) {
                if (bufferedReader != null) {
                    try {
                        bufferedReader.close();
                    } catch (IOException e11) {
                        if (!C1386x.m767a(e11)) {
                            e11.printStackTrace();
                        }
                    }
                }
                if (fileReader != null) {
                    try {
                        fileReader.close();
                    } catch (IOException e12) {
                        if (!C1386x.m767a(e12)) {
                            e12.printStackTrace();
                        }
                    }
                }
                throw th4;
            }
        }
    }

    /* renamed from: h */
    public static long m432h() {
        if (!m438n()) {
            return 0L;
        }
        try {
            StatFs statFs = new StatFs(Environment.getExternalStorageDirectory().getPath());
            return statFs.getBlockCount() * statFs.getBlockSize();
        } catch (Throwable th) {
            if (C1386x.m767a(th)) {
                return -2L;
            }
            th.printStackTrace();
            return -2L;
        }
    }

    /* renamed from: i */
    public static long m433i() {
        if (!m438n()) {
            return 0L;
        }
        try {
            StatFs statFs = new StatFs(Environment.getExternalStorageDirectory().getPath());
            return statFs.getAvailableBlocks() * statFs.getBlockSize();
        } catch (Throwable th) {
            if (C1386x.m767a(th)) {
                return -2L;
            }
            th.printStackTrace();
            return -2L;
        }
    }

    /* renamed from: k */
    public static String m435k() {
        try {
            return Build.BRAND;
        } catch (Throwable th) {
            if (!C1386x.m767a(th)) {
                th.printStackTrace();
            }
            return "fail";
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:37:0x007e  */
    /* JADX WARN: Removed duplicated region for block: B:60:? A[RETURN, SYNTHETIC] */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.lang.String m420b(android.content.Context r4) {
        /*
            java.lang.String r0 = "unknown"
            java.lang.String r1 = "connectivity"
            java.lang.Object r1 = r4.getSystemService(r1)     // Catch: java.lang.Exception -> L77
            android.net.ConnectivityManager r1 = (android.net.ConnectivityManager) r1     // Catch: java.lang.Exception -> L77
            android.net.NetworkInfo r1 = r1.getActiveNetworkInfo()     // Catch: java.lang.Exception -> L77
            if (r1 != 0) goto L12
            r4 = 0
            return r4
        L12:
            int r2 = r1.getType()     // Catch: java.lang.Exception -> L77
            r3 = 1
            if (r2 != r3) goto L1d
            java.lang.String r0 = "WIFI"
            goto L81
        L1d:
            int r1 = r1.getType()     // Catch: java.lang.Exception -> L77
            if (r1 != 0) goto L81
            java.lang.String r1 = "phone"
            java.lang.Object r4 = r4.getSystemService(r1)     // Catch: java.lang.Exception -> L77
            android.telephony.TelephonyManager r4 = (android.telephony.TelephonyManager) r4     // Catch: java.lang.Exception -> L77
            if (r4 == 0) goto L81
            int r4 = r4.getNetworkType()     // Catch: java.lang.Exception -> L77
            switch(r4) {
                case 1: goto L61;
                case 2: goto L5e;
                case 3: goto L5b;
                case 4: goto L58;
                case 5: goto L55;
                case 6: goto L52;
                case 7: goto L4f;
                case 8: goto L4c;
                case 9: goto L49;
                case 10: goto L46;
                case 11: goto L43;
                case 12: goto L40;
                case 13: goto L3d;
                case 14: goto L3a;
                case 15: goto L37;
                default: goto L34;
            }     // Catch: java.lang.Exception -> L77
        L34:
            java.lang.StringBuilder r1 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> L77
            goto L64
        L37:
            java.lang.String r0 = "HSPA+"
            goto L81
        L3a:
            java.lang.String r0 = "eHRPD"
            goto L81
        L3d:
            java.lang.String r0 = "LTE"
            goto L81
        L40:
            java.lang.String r0 = "EVDO_B"
            goto L81
        L43:
            java.lang.String r0 = "iDen"
            goto L81
        L46:
            java.lang.String r0 = "HSPA"
            goto L81
        L49:
            java.lang.String r0 = "HSUPA"
            goto L81
        L4c:
            java.lang.String r0 = "HSDPA"
            goto L81
        L4f:
            java.lang.String r0 = "1xRTT"
            goto L81
        L52:
            java.lang.String r0 = "EVDO_A"
            goto L81
        L55:
            java.lang.String r0 = "EVDO_0"
            goto L81
        L58:
            java.lang.String r0 = "CDMA"
            goto L81
        L5b:
            java.lang.String r0 = "UMTS"
            goto L81
        L5e:
            java.lang.String r0 = "EDGE"
            goto L81
        L61:
            java.lang.String r0 = "GPRS"
            goto L81
        L64:
            java.lang.String r2 = "MOBILE("
            r1.<init>(r2)     // Catch: java.lang.Exception -> L77
            r1.append(r4)     // Catch: java.lang.Exception -> L77
            java.lang.String r4 = ")"
            r1.append(r4)     // Catch: java.lang.Exception -> L77
            java.lang.String r4 = r1.toString()     // Catch: java.lang.Exception -> L77
            r0 = r4
            goto L81
        L77:
            r4 = move-exception
            boolean r1 = com.tencent.bugly.proguard.C1386x.m767a(r4)
            if (r1 != 0) goto L81
            r4.printStackTrace()
        L81:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.bugly.crashreport.common.info.C1324b.m420b(android.content.Context):java.lang.String");
    }

    /* renamed from: c */
    public static String m422c(Context context) throws IOException {
        String strM800a = C1388z.m800a(context, "ro.miui.ui.version.name");
        if (!C1388z.m814a(strM800a) && !strM800a.equals("fail")) {
            return "XiaoMi/MIUI/" + strM800a;
        }
        String strM800a2 = C1388z.m800a(context, "ro.build.version.emui");
        if (!C1388z.m814a(strM800a2) && !strM800a2.equals("fail")) {
            return "HuaWei/EMOTION/" + strM800a2;
        }
        String strM800a3 = C1388z.m800a(context, "ro.lenovo.series");
        if (!C1388z.m814a(strM800a3) && !strM800a3.equals("fail")) {
            return "Lenovo/VIBE/" + C1388z.m800a(context, "ro.build.version.incremental");
        }
        String strM800a4 = C1388z.m800a(context, "ro.build.nubia.rom.name");
        if (!C1388z.m814a(strM800a4) && !strM800a4.equals("fail")) {
            return "Zte/NUBIA/" + strM800a4 + "_" + C1388z.m800a(context, "ro.build.nubia.rom.code");
        }
        String strM800a5 = C1388z.m800a(context, "ro.meizu.product.model");
        if (!C1388z.m814a(strM800a5) && !strM800a5.equals("fail")) {
            return "Meizu/FLYME/" + C1388z.m800a(context, "ro.build.display.id");
        }
        String strM800a6 = C1388z.m800a(context, "ro.build.version.opporom");
        if (!C1388z.m814a(strM800a6) && !strM800a6.equals("fail")) {
            return "Oppo/COLOROS/" + strM800a6;
        }
        String strM800a7 = C1388z.m800a(context, "ro.vivo.os.build.display.id");
        if (!C1388z.m814a(strM800a7) && !strM800a7.equals("fail")) {
            return "vivo/FUNTOUCH/" + strM800a7;
        }
        String strM800a8 = C1388z.m800a(context, "ro.aa.romver");
        if (!C1388z.m814a(strM800a8) && !strM800a8.equals("fail")) {
            return "htc/" + strM800a8 + "/" + C1388z.m800a(context, "ro.build.description");
        }
        String strM800a9 = C1388z.m800a(context, "ro.lewa.version");
        if (!C1388z.m814a(strM800a9) && !strM800a9.equals("fail")) {
            return "tcl/" + strM800a9 + "/" + C1388z.m800a(context, "ro.build.display.id");
        }
        String strM800a10 = C1388z.m800a(context, "ro.gn.gnromvernumber");
        if (!C1388z.m814a(strM800a10) && !strM800a10.equals("fail")) {
            return "amigo/" + strM800a10 + "/" + C1388z.m800a(context, "ro.build.display.id");
        }
        String strM800a11 = C1388z.m800a(context, "ro.build.tyd.kbstyle_version");
        if (!C1388z.m814a(strM800a11) && !strM800a11.equals("fail")) {
            return "dido/" + strM800a11;
        }
        return C1388z.m800a(context, "ro.build.fingerprint") + "/" + C1388z.m800a(context, "ro.build.rom.id");
    }

    /* renamed from: d */
    public static String m424d(Context context) {
        return C1388z.m800a(context, "ro.board.platform");
    }

    /* renamed from: l */
    public static boolean m436l() {
        boolean z;
        String[] strArr = f587a;
        int length = strArr.length;
        int i = 0;
        while (true) {
            if (i >= length) {
                z = false;
                break;
            }
            if (new File(strArr[i]).exists()) {
                z = true;
                break;
            }
            i++;
        }
        return (Build.TAGS != null && Build.TAGS.contains("test-keys")) || z;
    }

    /*  JADX ERROR: JadxRuntimeException in pass: ConstructorVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Duplicate predecessors in PHI insn: B:26:0x0034, 0x0034: PHI (r3v1 ?? I:java.io.File) = (r3v2 ?? I:java.io.File) binds: [B:26:0x0034] A[DONT_GENERATE, DONT_INLINE]
        	at jadx.core.dex.instructions.PhiInsn.bindArg(PhiInsn.java:44)
        	at jadx.core.dex.visitors.ConstructorVisitor.insertPhiInsn(ConstructorVisitor.java:157)
        	at jadx.core.dex.visitors.ConstructorVisitor.processInvoke(ConstructorVisitor.java:91)
        	at jadx.core.dex.visitors.ConstructorVisitor.replaceInvoke(ConstructorVisitor.java:56)
        	at jadx.core.dex.visitors.ConstructorVisitor.visit(ConstructorVisitor.java:42)
        */
    /* renamed from: e */
    public static boolean m426e(
    /*  JADX ERROR: JadxRuntimeException in pass: ConstructorVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Duplicate predecessors in PHI insn: B:26:0x0034, 0x0034: PHI (r3v1 ?? I:java.io.File) = (r3v2 ?? I:java.io.File) binds: [B:26:0x0034] A[DONT_GENERATE, DONT_INLINE]
        	at jadx.core.dex.instructions.PhiInsn.bindArg(PhiInsn.java:44)
        	at jadx.core.dex.visitors.ConstructorVisitor.insertPhiInsn(ConstructorVisitor.java:157)
        	at jadx.core.dex.visitors.ConstructorVisitor.processInvoke(ConstructorVisitor.java:91)
        	at jadx.core.dex.visitors.ConstructorVisitor.replaceInvoke(ConstructorVisitor.java:56)
        */
    /*  JADX ERROR: Method generation error
        jadx.core.utils.exceptions.JadxRuntimeException: Code variable not set in r4v0 ??
        	at jadx.core.dex.instructions.args.SSAVar.getCodeVar(SSAVar.java:236)
        	at jadx.core.codegen.MethodGen.addMethodArguments(MethodGen.java:224)
        	at jadx.core.codegen.MethodGen.addDefinition(MethodGen.java:169)
        	at jadx.core.codegen.ClassGen.addMethodCode(ClassGen.java:405)
        	at jadx.core.codegen.ClassGen.addMethod(ClassGen.java:335)
        	at jadx.core.codegen.ClassGen.lambda$addInnerClsAndMethods$3(ClassGen.java:301)
        	at java.base/java.util.stream.ForEachOps$ForEachOp$OfRef.accept(ForEachOps.java:184)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at java.base/java.util.stream.SortedOps$RefSortingSink.end(SortedOps.java:395)
        	at java.base/java.util.stream.Sink$ChainedReference.end(Sink.java:261)
        */

    /* renamed from: g */
    private static String m430g(Context context) throws PackageManager.NameNotFoundException {
        PackageManager packageManager = context.getPackageManager();
        ArrayList arrayList = new ArrayList();
        int i = 0;
        while (true) {
            String[] strArr = f588b;
            if (i >= strArr.length) {
                break;
            }
            try {
                packageManager.getPackageInfo(strArr[i], 1);
                arrayList.add(Integer.valueOf(i));
            } catch (PackageManager.NameNotFoundException unused) {
            }
            i++;
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        return arrayList.toString();
    }

    /* renamed from: f */
    public static boolean m428f(Context context) {
        return (((m431h(context) | m440p()) | m441q()) | m439o()) > 0;
    }

    /* renamed from: o */
    private static int m439o() throws NoSuchMethodException, SecurityException {
        try {
            Method method = Class.forName("android.app.ActivityManagerNative").getMethod("getDefault", new Class[0]);
            method.setAccessible(true);
            return method.invoke(null, new Object[0]).getClass().getName().startsWith("$Proxy") ? 256 : 0;
        } catch (Exception unused) {
            return 256;
        }
    }

    /* renamed from: h */
    private static int m431h(Context context) {
        int i;
        PackageManager packageManager = context.getPackageManager();
        try {
            packageManager.getInstallerPackageName("de.robv.android.xposed.installer");
            i = 1;
        } catch (Exception unused) {
            i = 0;
        }
        try {
            packageManager.getInstallerPackageName("com.saurik.substrate");
            return i | 2;
        } catch (Exception unused2) {
            return i;
        }
    }

    /* renamed from: p */
    private static int m440p() throws Exception {
        try {
            throw new Exception("detect hook");
        } catch (Exception e) {
            int i = 0;
            int i2 = 0;
            for (StackTraceElement stackTraceElement : e.getStackTrace()) {
                if (stackTraceElement.getClassName().equals("de.robv.android.xposed.XposedBridge") && stackTraceElement.getMethodName().equals("main")) {
                    i |= 4;
                }
                if (stackTraceElement.getClassName().equals("de.robv.android.xposed.XposedBridge") && stackTraceElement.getMethodName().equals("handleHookedMethod")) {
                    i |= 8;
                }
                if (stackTraceElement.getClassName().equals("com.saurik.substrate.MS$2") && stackTraceElement.getMethodName().equals("invoked")) {
                    i |= 16;
                }
                if (stackTraceElement.getClassName().equals("com.android.internal.os.ZygoteInit") && (i2 = i2 + 1) == 2) {
                    i |= 32;
                }
            }
            return i;
        }
    }

    /* renamed from: q */
    private static int m441q() throws Throwable {
        BufferedReader bufferedReader;
        IOException e;
        UnsupportedEncodingException e2;
        FileNotFoundException e3;
        int i = 0;
        BufferedReader bufferedReader2 = null;
        try {
            try {
                try {
                    HashSet hashSet = new HashSet();
                    bufferedReader = new BufferedReader(new InputStreamReader(new FileInputStream("/proc/" + Process.myPid() + "/maps"), "utf-8"));
                    while (true) {
                        try {
                            String line = bufferedReader.readLine();
                            if (line == null) {
                                break;
                            }
                            if (line.endsWith(".so") || line.endsWith(".jar")) {
                                hashSet.add(line.substring(line.lastIndexOf(" ") + 1));
                            }
                        } catch (FileNotFoundException e4) {
                            e3 = e4;
                            e3.printStackTrace();
                            if (bufferedReader != null) {
                                bufferedReader.close();
                            }
                            return i;
                        } catch (UnsupportedEncodingException e5) {
                            e2 = e5;
                            e2.printStackTrace();
                            if (bufferedReader != null) {
                                bufferedReader.close();
                            }
                            return i;
                        } catch (IOException e6) {
                            e = e6;
                            e.printStackTrace();
                            if (bufferedReader != null) {
                                bufferedReader.close();
                            }
                            return i;
                        }
                    }
                    Iterator it = hashSet.iterator();
                    while (it.hasNext()) {
                        Object next = it.next();
                        if (((String) next).toLowerCase().contains("xposed")) {
                            i |= 64;
                        }
                        if (((String) next).contains("com.saurik.substrate")) {
                            i |= 128;
                        }
                    }
                    bufferedReader.close();
                } catch (FileNotFoundException e7) {
                    bufferedReader = null;
                    e3 = e7;
                } catch (UnsupportedEncodingException e8) {
                    bufferedReader = null;
                    e2 = e8;
                } catch (IOException e9) {
                    bufferedReader = null;
                    e = e9;
                } catch (Throwable th) {
                    th = th;
                    if (0 != 0) {
                        try {
                            bufferedReader2.close();
                        } catch (IOException e10) {
                            e10.printStackTrace();
                        }
                    }
                    throw th;
                }
            } catch (IOException e11) {
                e11.printStackTrace();
            }
            return i;
        } catch (Throwable th2) {
            th = th2;
        }
    }

    /* renamed from: m */
    public static boolean m437m() {
        float fMaxMemory = (float) (Runtime.getRuntime().maxMemory() / 1048576.0d);
        float f = (float) (Runtime.getRuntime().totalMemory() / 1048576.0d);
        float f2 = fMaxMemory - f;
        C1386x.m771c("maxMemory : %f", Float.valueOf(fMaxMemory));
        C1386x.m771c("totalMemory : %f", Float.valueOf(f));
        C1386x.m771c("freeMemory : %f", Float.valueOf(f2));
        return f2 < 10.0f;
    }
}
