package cn.highlight.p004tx.ble.utils;

import cn.highlight.p004tx.ble.bluetooth.BleBluetooth;
import java.util.LinkedHashMap;
import java.util.Map;

/* loaded from: classes.dex */
public class BleLruHashMap<K, V> extends LinkedHashMap<K, V> {
    private final int MAX_SIZE;

    public BleLruHashMap(int i) {
        super(((int) Math.ceil(i / 0.75d)) + 1, 0.75f, true);
        this.MAX_SIZE = i;
    }

    @Override // java.util.LinkedHashMap
    protected boolean removeEldestEntry(Map.Entry entry) {
        if (size() > this.MAX_SIZE && (entry.getValue() instanceof BleBluetooth)) {
            ((BleBluetooth) entry.getValue()).disconnect();
        }
        return size() > this.MAX_SIZE;
    }

    @Override // java.util.AbstractMap
    public String toString() {
        StringBuilder sb = new StringBuilder();
        for (Map.Entry<K, V> entry : entrySet()) {
            sb.append(String.format("%s:%s ", entry.getKey(), entry.getValue()));
        }
        return sb.toString();
    }
}
