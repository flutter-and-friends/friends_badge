package com.p013gg.reader.api.dal.communication;

import android.bluetooth.BluetoothDevice;

/* loaded from: classes.dex */
public interface BluetoothHandler {
    void dispense(BluetoothDevice bluetoothDevice);

    void finishDiscover();

    void startDiscover();
}
