package com.tencent.bugly;

import com.tencent.bugly.crashreport.common.info.C1323a;
import java.util.Map;

/* compiled from: BUGLY */
/* loaded from: classes.dex */
public class BuglyStrategy {

    /* renamed from: c */
    private String f439c;

    /* renamed from: d */
    private String f440d;

    /* renamed from: e */
    private String f441e;

    /* renamed from: f */
    private long f442f;

    /* renamed from: g */
    private String f443g;

    /* renamed from: h */
    private String f444h;

    /* renamed from: r */
    private C1313a f454r;

    /* renamed from: i */
    private boolean f445i = true;

    /* renamed from: j */
    private boolean f446j = true;

    /* renamed from: k */
    private boolean f447k = false;

    /* renamed from: l */
    private boolean f448l = true;

    /* renamed from: m */
    private Class<?> f449m = null;

    /* renamed from: n */
    private boolean f450n = true;

    /* renamed from: o */
    private boolean f451o = true;

    /* renamed from: p */
    private boolean f452p = true;

    /* renamed from: q */
    private boolean f453q = false;

    /* renamed from: a */
    protected int f437a = 31;

    /* renamed from: b */
    protected boolean f438b = false;

    public synchronized BuglyStrategy setBuglyLogUpload(boolean z) {
        this.f450n = z;
        return this;
    }

    public synchronized BuglyStrategy setRecordUserInfoOnceADay(boolean z) {
        this.f453q = z;
        return this;
    }

    public synchronized BuglyStrategy setUploadProcess(boolean z) {
        this.f452p = z;
        return this;
    }

    public synchronized boolean isUploadProcess() {
        return this.f452p;
    }

    public synchronized boolean isBuglyLogUpload() {
        return this.f450n;
    }

    public synchronized boolean recordUserInfoOnceADay() {
        return this.f453q;
    }

    public boolean isReplaceOldChannel() {
        return this.f451o;
    }

    public void setReplaceOldChannel(boolean z) {
        this.f451o = z;
    }

    public synchronized String getAppVersion() {
        if (this.f439c == null) {
            return C1323a.m372b().f571k;
        }
        return this.f439c;
    }

    public synchronized BuglyStrategy setAppVersion(String str) {
        this.f439c = str;
        return this;
    }

    public synchronized BuglyStrategy setUserInfoActivity(Class<?> cls) {
        this.f449m = cls;
        return this;
    }

    public synchronized Class<?> getUserInfoActivity() {
        return this.f449m;
    }

    public synchronized String getAppChannel() {
        if (this.f440d == null) {
            return C1323a.m372b().f573m;
        }
        return this.f440d;
    }

    public synchronized BuglyStrategy setAppChannel(String str) {
        this.f440d = str;
        return this;
    }

    public synchronized String getAppPackageName() {
        if (this.f441e == null) {
            return C1323a.m372b().f563c;
        }
        return this.f441e;
    }

    public synchronized BuglyStrategy setAppPackageName(String str) {
        this.f441e = str;
        return this;
    }

    public synchronized long getAppReportDelay() {
        return this.f442f;
    }

    public synchronized BuglyStrategy setAppReportDelay(long j) {
        this.f442f = j;
        return this;
    }

    public synchronized String getLibBuglySOFilePath() {
        return this.f443g;
    }

    public synchronized BuglyStrategy setLibBuglySOFilePath(String str) {
        this.f443g = str;
        return this;
    }

    public synchronized String getDeviceID() {
        return this.f444h;
    }

    public synchronized BuglyStrategy setDeviceID(String str) {
        this.f444h = str;
        return this;
    }

    public synchronized boolean isEnableNativeCrashMonitor() {
        return this.f445i;
    }

    public synchronized BuglyStrategy setEnableNativeCrashMonitor(boolean z) {
        this.f445i = z;
        return this;
    }

    public synchronized BuglyStrategy setEnableUserInfo(boolean z) {
        this.f448l = z;
        return this;
    }

    public synchronized boolean isEnableUserInfo() {
        return this.f448l;
    }

    public synchronized boolean isEnableCatchAnrTrace() {
        return this.f447k;
    }

    public void setEnableCatchAnrTrace(boolean z) {
        this.f447k = z;
    }

    public synchronized boolean isEnableANRCrashMonitor() {
        return this.f446j;
    }

    public synchronized BuglyStrategy setEnableANRCrashMonitor(boolean z) {
        this.f446j = z;
        return this;
    }

    public synchronized C1313a getCrashHandleCallback() {
        return this.f454r;
    }

    public synchronized BuglyStrategy setCrashHandleCallback(C1313a c1313a) {
        this.f454r = c1313a;
        return this;
    }

    public synchronized void setCallBackType(int i) {
        this.f437a = i;
    }

    public synchronized int getCallBackType() {
        return this.f437a;
    }

    public synchronized void setCloseErrorCallback(boolean z) {
        this.f438b = z;
    }

    public synchronized boolean getCloseErrorCallback() {
        return this.f438b;
    }

    /* compiled from: BUGLY */
    /* renamed from: com.tencent.bugly.BuglyStrategy$a */
    public static class C1313a {
        public static final int CRASHTYPE_ANR = 4;
        public static final int CRASHTYPE_BLOCK = 7;
        public static final int CRASHTYPE_COCOS2DX_JS = 5;
        public static final int CRASHTYPE_COCOS2DX_LUA = 6;
        public static final int CRASHTYPE_JAVA_CATCH = 1;
        public static final int CRASHTYPE_JAVA_CRASH = 0;
        public static final int CRASHTYPE_NATIVE = 2;
        public static final int CRASHTYPE_U3D = 3;
        public static final int MAX_USERDATA_KEY_LENGTH = 100;
        public static final int MAX_USERDATA_VALUE_LENGTH = 30000;

        public synchronized Map<String, String> onCrashHandleStart(int i, String str, String str2, String str3) {
            return null;
        }

        public synchronized byte[] onCrashHandleStart2GetExtraDatas(int i, String str, String str2, String str3) {
            return null;
        }
    }
}
