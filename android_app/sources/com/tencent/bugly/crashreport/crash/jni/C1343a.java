package com.tencent.bugly.crashreport.crash.jni;

import android.content.Context;
import com.tencent.bugly.crashreport.common.info.C1323a;
import com.tencent.bugly.crashreport.common.info.C1324b;
import com.tencent.bugly.crashreport.common.strategy.C1326a;
import com.tencent.bugly.crashreport.crash.C1336b;
import com.tencent.bugly.crashreport.crash.C1337c;
import com.tencent.bugly.crashreport.crash.CrashDetailBean;
import com.tencent.bugly.proguard.C1386x;
import com.tencent.bugly.proguard.C1387y;
import com.tencent.bugly.proguard.C1388z;
import java.util.Map;

/* compiled from: BUGLY */
/* renamed from: com.tencent.bugly.crashreport.crash.jni.a */
/* loaded from: classes.dex */
public final class C1343a implements NativeExceptionHandler {

    /* renamed from: a */
    private final Context f820a;

    /* renamed from: b */
    private final C1336b f821b;

    /* renamed from: c */
    private final C1323a f822c;

    /* renamed from: d */
    private final C1326a f823d;

    public C1343a(Context context, C1323a c1323a, C1336b c1336b, C1326a c1326a) {
        this.f820a = context;
        this.f821b = c1336b;
        this.f822c = c1323a;
        this.f823d = c1326a;
    }

    @Override // com.tencent.bugly.crashreport.crash.jni.NativeExceptionHandler
    public final CrashDetailBean packageCrashDatas(String str, String str2, long j, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11, byte[] bArr, Map<String, String> map, boolean z, boolean z2) {
        int i;
        String str12;
        int iIndexOf;
        boolean zM531m = C1337c.m509a().m531m();
        if (zM531m) {
            C1386x.m773e("This Crash Caused By ANR , PLS To Fix ANR , This Trace May Be Not Useful!", new Object[0]);
        }
        CrashDetailBean crashDetailBean = new CrashDetailBean();
        crashDetailBean.f653b = 1;
        crashDetailBean.f656e = this.f822c.m397h();
        crashDetailBean.f657f = this.f822c.f571k;
        crashDetailBean.f658g = this.f822c.m406q();
        crashDetailBean.f664m = this.f822c.m395g();
        crashDetailBean.f665n = str3;
        crashDetailBean.f666o = zM531m ? " This Crash Caused By ANR , PLS To Fix ANR , This Trace May Be Not Useful![Bugly]" : "";
        crashDetailBean.f667p = str4;
        crashDetailBean.f668q = str5 != null ? str5 : "";
        crashDetailBean.f669r = j;
        crashDetailBean.f672u = C1388z.m804a(crashDetailBean.f668q.getBytes());
        crashDetailBean.f628A = str;
        crashDetailBean.f629B = str2;
        crashDetailBean.f636I = this.f822c.m408s();
        crashDetailBean.f659h = this.f822c.m405p();
        crashDetailBean.f660i = this.f822c.m374B();
        crashDetailBean.f673v = str8;
        NativeCrashHandler nativeCrashHandler = NativeCrashHandler.getInstance();
        String dumpFilePath = nativeCrashHandler != null ? nativeCrashHandler.getDumpFilePath() : null;
        String strM575a = C1344b.m575a(dumpFilePath, str8);
        if (!C1388z.m814a(strM575a)) {
            crashDetailBean.f649V = strM575a;
        }
        crashDetailBean.f650W = C1344b.m577b(dumpFilePath);
        crashDetailBean.f674w = C1344b.m574a(str9, C1337c.f733e, null, false);
        crashDetailBean.f675x = C1344b.m574a(str10, C1337c.f733e, null, true);
        crashDetailBean.f637J = str7;
        crashDetailBean.f638K = str6;
        crashDetailBean.f639L = str11;
        crashDetailBean.f633F = this.f822c.m400k();
        crashDetailBean.f634G = this.f822c.m399j();
        crashDetailBean.f635H = this.f822c.m401l();
        if (z) {
            crashDetailBean.f630C = C1324b.m429g();
            crashDetailBean.f631D = C1324b.m425e();
            crashDetailBean.f632E = C1324b.m433i();
            if (crashDetailBean.f674w == null) {
                crashDetailBean.f674w = C1388z.m799a(this.f820a, C1337c.f733e, (String) null);
            }
            crashDetailBean.f676y = C1387y.m779a();
            crashDetailBean.f640M = this.f822c.f546a;
            crashDetailBean.f641N = this.f822c.m381a();
            crashDetailBean.f677z = C1388z.m807a(C1337c.f734f, false);
            int iIndexOf2 = crashDetailBean.f668q.indexOf("java:\n");
            if (iIndexOf2 > 0 && (i = iIndexOf2 + 6) < crashDetailBean.f668q.length()) {
                String strSubstring = crashDetailBean.f668q.substring(i, crashDetailBean.f668q.length() - 1);
                if (strSubstring.length() > 0 && crashDetailBean.f677z.containsKey(crashDetailBean.f629B) && (iIndexOf = (str12 = crashDetailBean.f677z.get(crashDetailBean.f629B)).indexOf(strSubstring)) > 0) {
                    String strSubstring2 = str12.substring(iIndexOf);
                    crashDetailBean.f677z.put(crashDetailBean.f629B, strSubstring2);
                    crashDetailBean.f668q = crashDetailBean.f668q.substring(0, i);
                    crashDetailBean.f668q += strSubstring2;
                }
            }
            if (str == null) {
                crashDetailBean.f628A = this.f822c.f564d;
            }
            this.f821b.m507d(crashDetailBean);
            crashDetailBean.f644Q = this.f822c.m415z();
            crashDetailBean.f645R = this.f822c.m373A();
            crashDetailBean.f646S = this.f822c.m409t();
            crashDetailBean.f647T = this.f822c.m414y();
        } else {
            crashDetailBean.f630C = -1L;
            crashDetailBean.f631D = -1L;
            crashDetailBean.f632E = -1L;
            if (crashDetailBean.f674w == null) {
                crashDetailBean.f674w = "this crash is occurred at last process! Log is miss, when get an terrible ABRT Native Exception etc.";
            }
            crashDetailBean.f640M = -1L;
            crashDetailBean.f644Q = -1;
            crashDetailBean.f645R = -1;
            crashDetailBean.f646S = map;
            crashDetailBean.f647T = this.f822c.m414y();
            crashDetailBean.f677z = null;
            if (str == null) {
                crashDetailBean.f628A = "unknown(record)";
            }
            if (bArr != null) {
                crashDetailBean.f676y = bArr;
            }
        }
        return crashDetailBean;
    }

    @Override // com.tencent.bugly.crashreport.crash.jni.NativeExceptionHandler
    public final void handleNativeException(int i, int i2, long j, long j2, String str, String str2, String str3, String str4, int i3, String str5, int i4, int i5, int i6, String str6, String str7) {
        C1386x.m766a("Native Crash Happen v1", new Object[0]);
        handleNativeException2(i, i2, j, j2, str, str2, str3, str4, i3, str5, i4, i5, i6, str6, str7, null);
    }

    /* JADX WARN: Removed duplicated region for block: B:60:0x01b1 A[Catch: all -> 0x029b, TryCatch #2 {all -> 0x029b, blocks: (B:3:0x0010, B:6:0x001c, B:15:0x006b, B:18:0x0073, B:20:0x0076, B:22:0x007a, B:24:0x0095, B:25:0x009e, B:26:0x00a8, B:28:0x00b2, B:30:0x00bc, B:32:0x00c4, B:34:0x00d0, B:36:0x00da, B:39:0x00e1, B:41:0x00f0, B:43:0x00fc, B:46:0x0103, B:47:0x0119, B:49:0x011f, B:51:0x012f, B:54:0x014f, B:58:0x018e, B:60:0x01b1, B:61:0x01b8, B:64:0x01c4, B:66:0x01cc, B:56:0x016a, B:40:0x00ec, B:27:0x00ab, B:9:0x0041, B:10:0x0047, B:12:0x0051), top: B:99:0x0010 }] */
    /* JADX WARN: Removed duplicated region for block: B:71:0x0228 A[Catch: all -> 0x0297, TryCatch #1 {all -> 0x0297, blocks: (B:69:0x0222, B:71:0x0228, B:73:0x0231), top: B:98:0x0222 }] */
    /* JADX WARN: Removed duplicated region for block: B:73:0x0231 A[Catch: all -> 0x0297, TRY_LEAVE, TryCatch #1 {all -> 0x0297, blocks: (B:69:0x0222, B:71:0x0228, B:73:0x0231), top: B:98:0x0222 }] */
    @Override // com.tencent.bugly.crashreport.crash.jni.NativeExceptionHandler
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void handleNativeException2(int r27, int r28, long r29, long r31, java.lang.String r33, java.lang.String r34, java.lang.String r35, java.lang.String r36, int r37, java.lang.String r38, int r39, int r40, int r41, java.lang.String r42, java.lang.String r43, java.lang.String[] r44) {
        /*
            Method dump skipped, instructions count: 679
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.bugly.crashreport.crash.jni.C1343a.handleNativeException2(int, int, long, long, java.lang.String, java.lang.String, java.lang.String, java.lang.String, int, java.lang.String, int, int, int, java.lang.String, java.lang.String, java.lang.String[]):void");
    }
}
