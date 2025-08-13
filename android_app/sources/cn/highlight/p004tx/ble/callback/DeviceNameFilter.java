package cn.highlight.p004tx.ble.callback;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public class DeviceNameFilter {
    private static List<String> getCustomerDeviceName() {
        ArrayList arrayList = new ArrayList();
        arrayList.add("QSYR");
        arrayList.add("CFBT");
        arrayList.add("SDTB");
        return arrayList;
    }

    public static boolean isCustomerName(String str) {
        Iterator<String> it = getCustomerDeviceName().iterator();
        while (it.hasNext()) {
            if (str.contains(it.next())) {
                return true;
            }
        }
        return false;
    }
}
