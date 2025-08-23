package cn.manytag.rfidapi.ble.callback;

import android.os.Handler;

/* loaded from: classes.dex */
public abstract class a {
    private String a;
    private Handler b;

    public String a() {
        return this.a;
    }

    public void a(Handler handler) {
        this.b = handler;
    }

    public void a(String str) {
        this.a = str;
    }

    public Handler b() {
        return this.b;
    }
}
