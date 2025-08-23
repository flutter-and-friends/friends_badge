package cn.manytag.rfidapi.ble.d;

import java.util.LinkedHashMap;
import java.util.Map;

/* loaded from: classes.dex */
public class b extends LinkedHashMap {
    private final int a;

    public b(int i) {
        super(((int) Math.ceil(i / 0.75d)) + 1, 0.75f, true);
        this.a = i;
    }

    @Override // java.util.LinkedHashMap
    protected boolean removeEldestEntry(Map.Entry entry) {
        if (size() > this.a && (entry.getValue() instanceof cn.manytag.rfidapi.ble.a.a)) {
            ((cn.manytag.rfidapi.ble.a.a) entry.getValue()).h();
        }
        return size() > this.a;
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
