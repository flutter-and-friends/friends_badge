package cn.highlight.tx.listener;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.hardware.usb.UsbDevice;
import android.hardware.usb.UsbManager;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
public class USBReceiver extends BroadcastReceiver {
    private static USBStatus usbStatus;
    ArrayList<Integer> list = null;

    public static void setUsbStatus(USBStatus uSBStatus) {
        usbStatus = uSBStatus;
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        USBStatus uSBStatus;
        USBStatus uSBStatus2;
        String action = intent.getAction();
        ArrayList arrayList = new ArrayList();
        if (action.equals("android.hardware.usb.action.USB_DEVICE_ATTACHED")) {
            UsbManager usbManager = (UsbManager) context.getSystemService("usb");
            Iterator<UsbDevice> it = usbManager.getDeviceList().values().iterator();
            while (it.hasNext()) {
                arrayList.add(it.next());
            }
            if (arrayList.size() == 0 || (uSBStatus2 = usbStatus) == null) {
                return;
            }
            uSBStatus2.onConnect(usbManager, arrayList);
            return;
        }
        if (action.equals("android.hardware.usb.action.USB_DEVICE_DETACHED")) {
            Iterator<UsbDevice> it2 = ((UsbManager) context.getSystemService("usb")).getDeviceList().values().iterator();
            while (it2.hasNext()) {
                arrayList.add(it2.next());
            }
            if (arrayList.size() == 0 || (uSBStatus = usbStatus) == null) {
                return;
            }
            uSBStatus.disConnect(arrayList);
        }
    }
}
