package com.tencent.bugly.proguard;

import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import kotlin.jvm.internal.LongCompanionObject;

/* compiled from: BUGLY */
/* renamed from: com.tencent.bugly.proguard.aa */
/* loaded from: classes.dex */
public final class RunnableC1346aa implements Runnable {

    /* renamed from: a */
    private final Handler f830a;

    /* renamed from: b */
    private final String f831b;

    /* renamed from: c */
    private long f832c;

    /* renamed from: d */
    private final long f833d;

    /* renamed from: e */
    private boolean f834e = true;

    /* renamed from: f */
    private long f835f;

    RunnableC1346aa(Handler handler, String str, long j) {
        this.f830a = handler;
        this.f831b = str;
        this.f832c = j;
        this.f833d = j;
    }

    /* renamed from: a */
    public final void m598a() {
        if (this.f834e) {
            this.f834e = false;
            this.f835f = SystemClock.uptimeMillis();
            this.f830a.post(this);
        }
    }

    /* renamed from: b */
    public final boolean m600b() {
        return !this.f834e && SystemClock.uptimeMillis() > this.f835f + this.f832c;
    }

    /* renamed from: c */
    public final int m601c() {
        if (this.f834e) {
            return 0;
        }
        return SystemClock.uptimeMillis() - this.f835f < this.f832c ? 1 : 3;
    }

    /* renamed from: d */
    public final String m602d() {
        return this.f831b;
    }

    /* renamed from: e */
    public final Looper m603e() {
        return this.f830a.getLooper();
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f834e = true;
        this.f832c = this.f833d;
    }

    /* renamed from: a */
    public final void m599a(long j) {
        this.f832c = LongCompanionObject.MAX_VALUE;
    }
}
