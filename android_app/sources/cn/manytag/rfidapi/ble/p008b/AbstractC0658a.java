package cn.manytag.rfidapi.ble.p008b;

import java.io.Serializable;

/* renamed from: cn.manytag.rfidapi.ble.b.a */
/* loaded from: classes.dex */
public abstract class AbstractC0658a implements Serializable {

    /* renamed from: a */
    private int f193a;

    /* renamed from: b */
    private String f194b;

    public AbstractC0658a(int i, String str) {
        this.f193a = i;
        this.f194b = str;
    }

    /* renamed from: a */
    public String m155a() {
        return this.f194b;
    }

    public String toString() {
        return "BleException { code=" + this.f193a + ", description='" + this.f194b + "'}";
    }
}
