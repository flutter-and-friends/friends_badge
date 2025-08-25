package cn.highlight.tx.ble.bluetooth;

import android.bluetooth.BluetoothDevice;
import android.os.Build;
import cn.highlight.tx.ble.BleManager;
import cn.highlight.tx.ble.data.BleDevice;
import cn.highlight.tx.ble.utils.BleLruHashMap;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public class MultipleBluetoothController {
    private final BleLruHashMap<String, BleBluetooth> bleLruHashMap = new BleLruHashMap<>(BleManager.getInstance().getMaxConnectCount());
    private final HashMap<String, BleBluetooth> bleTempHashMap = new HashMap<>();

    public synchronized BleBluetooth buildConnectingBle(BleDevice bleDevice) {
        BleBluetooth bleBluetooth;
        bleBluetooth = new BleBluetooth(bleDevice);
        if (!this.bleTempHashMap.containsKey(bleBluetooth.getDeviceKey())) {
            this.bleTempHashMap.put(bleBluetooth.getDeviceKey(), bleBluetooth);
        }
        return bleBluetooth;
    }

    public synchronized void removeConnectingBle(BleBluetooth bleBluetooth) {
        if (bleBluetooth == null) {
            return;
        }
        if (this.bleTempHashMap.containsKey(bleBluetooth.getDeviceKey())) {
            this.bleTempHashMap.remove(bleBluetooth.getDeviceKey());
        }
    }

    public synchronized void addBleBluetooth(BleBluetooth bleBluetooth) {
        if (bleBluetooth == null) {
            return;
        }
        if (!this.bleLruHashMap.containsKey(bleBluetooth.getDeviceKey())) {
            this.bleLruHashMap.put(bleBluetooth.getDeviceKey(), bleBluetooth);
        }
    }

    public synchronized void removeBleBluetooth(BleBluetooth bleBluetooth) {
        if (bleBluetooth == null) {
            return;
        }
        if (this.bleLruHashMap.containsKey(bleBluetooth.getDeviceKey())) {
            this.bleLruHashMap.remove(bleBluetooth.getDeviceKey());
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0014  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public synchronized boolean isContainDevice(BleDevice bleDevice) {
        boolean z;
        if (bleDevice != null) {
            z = this.bleLruHashMap.containsKey(bleDevice.getKey());
        }
        return z;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0027  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public synchronized boolean isContainDevice(BluetoothDevice bluetoothDevice) {
        boolean z;
        if (bluetoothDevice != null) {
            BleLruHashMap<String, BleBluetooth> bleLruHashMap = this.bleLruHashMap;
            StringBuilder sb = new StringBuilder();
            sb.append(bluetoothDevice.getName());
            sb.append(bluetoothDevice.getAddress());
            z = bleLruHashMap.containsKey(sb.toString());
        }
        return z;
    }

    public synchronized BleBluetooth getBleBluetooth(BleDevice bleDevice) {
        if (bleDevice != null) {
            if (this.bleLruHashMap.containsKey(bleDevice.getKey())) {
                return this.bleLruHashMap.get(bleDevice.getKey());
            }
        }
        return null;
    }

    public synchronized void disconnect(BleDevice bleDevice) {
        if (isContainDevice(bleDevice)) {
            getBleBluetooth(bleDevice).disconnect();
        }
    }

    public synchronized void disconnectAllDevice() {
        Iterator<Map.Entry<String, BleBluetooth>> it = this.bleLruHashMap.entrySet().iterator();
        while (it.hasNext()) {
            it.next().getValue().disconnect();
        }
        this.bleLruHashMap.clear();
    }

    public synchronized void destroy() {
        Iterator<Map.Entry<String, BleBluetooth>> it = this.bleLruHashMap.entrySet().iterator();
        while (it.hasNext()) {
            it.next().getValue().destroy();
        }
        this.bleLruHashMap.clear();
        Iterator<Map.Entry<String, BleBluetooth>> it2 = this.bleTempHashMap.entrySet().iterator();
        while (it2.hasNext()) {
            it2.next().getValue().destroy();
        }
        this.bleTempHashMap.clear();
    }

    public synchronized List<BleBluetooth> getBleBluetoothList() {
        ArrayList arrayList;
        arrayList = new ArrayList(this.bleLruHashMap.values());
        Collections.sort(arrayList, new Comparator<BleBluetooth>() { // from class: cn.highlight.tx.ble.bluetooth.MultipleBluetoothController.1
            @Override // java.util.Comparator
            public int compare(BleBluetooth bleBluetooth, BleBluetooth bleBluetooth2) {
                return bleBluetooth.getDeviceKey().compareToIgnoreCase(bleBluetooth2.getDeviceKey());
            }
        });
        return arrayList;
    }

    public synchronized List<BleDevice> getDeviceList() {
        ArrayList arrayList;
        refreshConnectedDevice();
        arrayList = new ArrayList();
        for (BleBluetooth bleBluetooth : getBleBluetoothList()) {
            if (bleBluetooth != null) {
                arrayList.add(bleBluetooth.getDevice());
            }
        }
        return arrayList;
    }

    public void refreshConnectedDevice() {
        if (Build.VERSION.SDK_INT >= 18) {
            List<BleBluetooth> bleBluetoothList = getBleBluetoothList();
            for (int i = 0; bleBluetoothList != null && i < bleBluetoothList.size(); i++) {
                BleBluetooth bleBluetooth = bleBluetoothList.get(i);
                if (!BleManager.getInstance().isConnected(bleBluetooth.getDevice())) {
                    removeBleBluetooth(bleBluetooth);
                }
            }
        }
    }
}
