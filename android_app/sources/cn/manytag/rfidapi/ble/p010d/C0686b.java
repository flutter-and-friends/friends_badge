package cn.manytag.rfidapi.ble.p010d;

import cn.manytag.rfidapi.ble.p007a.C0647a;
import java.util.LinkedHashMap;
import java.util.Map;

/* renamed from: cn.manytag.rfidapi.ble.d.b */
/* loaded from: classes.dex */
public class C0686b extends LinkedHashMap {

    /* renamed from: a */
    private final int f237a;

    public C0686b(int i) {
        super(((int) Math.ceil(i / 0.75d)) + 1, 0.75f, true);
        this.f237a = i;
    }

    @Override // java.util.LinkedHashMap
    protected boolean removeEldestEntry(Map.Entry entry) {
        if (size() > this.f237a && (entry.getValue() instanceof C0647a)) {
            ((C0647a) entry.getValue()).m115h();
        }
        return size() > this.f237a;
    }

    @Override // java.util.AbstractMap
    public String toString() {
        StringBuilder sb = new StringBuilder();
        for (Map.Entry entry : entrySet()) {
            sb.append(String.format("%s:%s ", entry.getKey(), entry.getValue()));
        }
        return sb.toString();
    }
}
