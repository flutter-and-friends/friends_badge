package cn.highlight.p004tx.usb;

import android.hardware.usb.UsbDevice;
import java.util.List;

/* loaded from: classes.dex */
public interface UsbSerialDriver {
    UsbDevice getDevice();

    List<UsbSerialPort> getPorts();
}
