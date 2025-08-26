package cn.manytag.rfidapi.ble.callback;

import android.os.Handler;

/* renamed from: cn.manytag.rfidapi.ble.callback.a */
/* loaded from: classes.dex */
public abstract class AbstractC0676a {

    /* renamed from: a */
    private String f233a;

    /* renamed from: b */
    private Handler f234b;

    /* renamed from: a */
    public String m183a() {
        return this.f233a;
    }

    /* renamed from: a */
    public void m184a(Handler handler) {
        this.f234b = handler;
    }

    /* renamed from: a */
    public void m185a(String str) {
        this.f233a = str;
    }

    /* renamed from: b */
    public Handler m186b() {
        return this.f234b;
    }
}
