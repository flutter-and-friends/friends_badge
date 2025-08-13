package com.p013gg.reader.api.dal.communication;

import android.bluetooth.BluetoothDevice;

/* loaded from: classes.dex */
public class BleClientCallback {

    public interface OnBlueConnectCallBack {
        void onConnectFailure();

        void onConnectSuccess();

        void onDisconnect();
    }

    public interface OnBlueScanCallBack {
        void onBlueFind(BluetoothDevice bluetoothDevice);
    }
}
