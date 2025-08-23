package cn.highlight.tx.listener;

import android.hardware.usb.UsbDevice;
import android.hardware.usb.UsbManager;
import java.util.List;

/* loaded from: classes.dex */
public interface USBStatus {
    void disConnect(List<UsbDevice> list);

    void onConnect(UsbManager usbManager, List<UsbDevice> list);
}
