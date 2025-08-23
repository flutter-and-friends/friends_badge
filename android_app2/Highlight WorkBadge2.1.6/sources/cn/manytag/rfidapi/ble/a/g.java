package cn.manytag.rfidapi.ble.a;

import cn.manytag.rfidapi.ble.data.BleDevice;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* loaded from: classes.dex */
public class g {
    private final cn.manytag.rfidapi.ble.d.b a = new cn.manytag.rfidapi.ble.d.b(cn.manytag.rfidapi.ble.a.a().e());
    private final HashMap b = new HashMap();

    public synchronized a a(BleDevice bleDevice) {
        a aVar;
        aVar = new a(bleDevice);
        if (!this.b.containsKey(aVar.f())) {
            this.b.put(aVar.f(), aVar);
        }
        return aVar;
    }

    public synchronized void a() {
        Iterator it = this.a.entrySet().iterator();
        while (it.hasNext()) {
            ((a) ((Map.Entry) it.next()).getValue()).h();
        }
        this.a.clear();
    }

    public synchronized void a(a aVar) {
        if (aVar == null) {
            return;
        }
        if (this.b.containsKey(aVar.f())) {
            this.b.remove(aVar.f());
        }
    }

    public synchronized a b(BleDevice bleDevice) {
        if (bleDevice != null) {
            if (this.a.containsKey(bleDevice.getKey())) {
                return (a) this.a.get(bleDevice.getKey());
            }
        }
        return null;
    }

    public synchronized void b() {
        Iterator it = this.a.entrySet().iterator();
        while (it.hasNext()) {
            ((a) ((Map.Entry) it.next()).getValue()).i();
        }
        this.a.clear();
        Iterator it2 = this.b.entrySet().iterator();
        while (it2.hasNext()) {
            ((a) ((Map.Entry) it2.next()).getValue()).i();
        }
        this.b.clear();
    }

    public synchronized void b(a aVar) {
        if (aVar == null) {
            return;
        }
        if (!this.a.containsKey(aVar.f())) {
            this.a.put(aVar.f(), aVar);
        }
    }

    public synchronized void c(a aVar) {
        if (aVar == null) {
            return;
        }
        if (this.a.containsKey(aVar.f())) {
            this.a.remove(aVar.f());
        }
    }
}
