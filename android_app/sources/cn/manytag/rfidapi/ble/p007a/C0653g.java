package cn.manytag.rfidapi.ble.p007a;

import cn.manytag.rfidapi.ble.C0646a;
import cn.manytag.rfidapi.ble.data.BleDevice;
import cn.manytag.rfidapi.ble.p010d.C0686b;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* renamed from: cn.manytag.rfidapi.ble.a.g */
/* loaded from: classes.dex */
public class C0653g {

    /* renamed from: a */
    private final C0686b f176a = new C0686b(C0646a.m50a().m68e());

    /* renamed from: b */
    private final HashMap f177b = new HashMap();

    /* renamed from: a */
    public synchronized C0647a m133a(BleDevice bleDevice) {
        C0647a c0647a;
        c0647a = new C0647a(bleDevice);
        if (!this.f177b.containsKey(c0647a.m113f())) {
            this.f177b.put(c0647a.m113f(), c0647a);
        }
        return c0647a;
    }

    /* renamed from: a */
    public synchronized void m134a() {
        Iterator it = this.f176a.entrySet().iterator();
        while (it.hasNext()) {
            ((C0647a) ((Map.Entry) it.next()).getValue()).m115h();
        }
        this.f176a.clear();
    }

    /* renamed from: a */
    public synchronized void m135a(C0647a c0647a) {
        if (c0647a == null) {
            return;
        }
        if (this.f177b.containsKey(c0647a.m113f())) {
            this.f177b.remove(c0647a.m113f());
        }
    }

    /* renamed from: b */
    public synchronized C0647a m136b(BleDevice bleDevice) {
        if (bleDevice != null) {
            if (this.f176a.containsKey(bleDevice.getKey())) {
                return (C0647a) this.f176a.get(bleDevice.getKey());
            }
        }
        return null;
    }

    /* renamed from: b */
    public synchronized void m137b() {
        Iterator it = this.f176a.entrySet().iterator();
        while (it.hasNext()) {
            ((C0647a) ((Map.Entry) it.next()).getValue()).m116i();
        }
        this.f176a.clear();
        Iterator it2 = this.f177b.entrySet().iterator();
        while (it2.hasNext()) {
            ((C0647a) ((Map.Entry) it2.next()).getValue()).m116i();
        }
        this.f177b.clear();
    }

    /* renamed from: b */
    public synchronized void m138b(C0647a c0647a) {
        if (c0647a == null) {
            return;
        }
        if (!this.f176a.containsKey(c0647a.m113f())) {
            this.f176a.put(c0647a.m113f(), c0647a);
        }
    }

    /* renamed from: c */
    public synchronized void m139c(C0647a c0647a) {
        if (c0647a == null) {
            return;
        }
        if (this.f176a.containsKey(c0647a.m113f())) {
            this.f176a.remove(c0647a.m113f());
        }
    }
}
