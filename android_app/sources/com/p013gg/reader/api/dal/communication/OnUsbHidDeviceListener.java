package com.p013gg.reader.api.dal.communication;

/* loaded from: classes.dex */
public interface OnUsbHidDeviceListener {
    void onDeviceConnectFailed(AndroidUsbHidClient androidUsbHidClient);

    void onDeviceConnected(AndroidUsbHidClient androidUsbHidClient);
}
