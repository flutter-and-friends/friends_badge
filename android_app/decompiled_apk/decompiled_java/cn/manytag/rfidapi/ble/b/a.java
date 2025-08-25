package cn.manytag.rfidapi.ble.b;

import java.io.Serializable;

/* loaded from: classes.dex */
public abstract class a implements Serializable {
    private int a;
    private String b;

    public a(int i, String str) {
        this.a = i;
        this.b = str;
    }

    public String a() {
        return this.b;
    }

    public String toString() {
        return "BleException { code=" + this.a + ", description='" + this.b + "'}";
    }
}
