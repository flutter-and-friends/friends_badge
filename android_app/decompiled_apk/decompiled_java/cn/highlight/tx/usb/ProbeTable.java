package cn.highlight.tx.usb;

import android.util.Pair;
import java.lang.reflect.InvocationTargetException;
import java.util.LinkedHashMap;
import java.util.Map;

/* loaded from: classes.dex */
public class ProbeTable {
    private final Map<Pair<Integer, Integer>, Class<? extends UsbSerialDriver>> mProbeTable = new LinkedHashMap();

    public ProbeTable addProduct(int i, int i2, Class<? extends UsbSerialDriver> cls) {
        this.mProbeTable.put(Pair.create(Integer.valueOf(i), Integer.valueOf(i2)), cls);
        return this;
    }

    ProbeTable addDriver(Class<? extends UsbSerialDriver> cls) {
        try {
            try {
                for (Map.Entry entry : ((Map) cls.getMethod("getSupportedDevices", new Class[0]).invoke(null, new Object[0])).entrySet()) {
                    int iIntValue = ((Integer) entry.getKey()).intValue();
                    for (int i : (int[]) entry.getValue()) {
                        addProduct(iIntValue, i, cls);
                    }
                }
                return this;
            } catch (IllegalAccessException e) {
                throw new RuntimeException(e);
            } catch (IllegalArgumentException e2) {
                throw new RuntimeException(e2);
            } catch (InvocationTargetException e3) {
                throw new RuntimeException(e3);
            }
        } catch (NoSuchMethodException e4) {
            throw new RuntimeException(e4);
        } catch (SecurityException e5) {
            throw new RuntimeException(e5);
        }
    }

    public Class<? extends UsbSerialDriver> findDriver(int i, int i2) {
        return this.mProbeTable.get(Pair.create(Integer.valueOf(i), Integer.valueOf(i2)));
    }
}
