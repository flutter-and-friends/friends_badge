package cn.highlight.tx.usb;

import android.hardware.usb.UsbDevice;
import android.hardware.usb.UsbManager;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public class UsbSerialProber {
    private final ProbeTable mProbeTable;

    public UsbSerialProber(ProbeTable probeTable) {
        this.mProbeTable = probeTable;
    }

    public static UsbSerialProber getDefaultProber() {
        return new UsbSerialProber(getDefaultProbeTable());
    }

    public static ProbeTable getDefaultProbeTable() {
        ProbeTable probeTable = new ProbeTable();
        probeTable.addDriver(CdcAcmSerialDriver.class);
        probeTable.addDriver(Cp21xxSerialDriver.class);
        probeTable.addDriver(FtdiSerialDriver.class);
        probeTable.addDriver(ProlificSerialDriver.class);
        probeTable.addDriver(Ch34xSerialDriver.class);
        return probeTable;
    }

    public List<UsbSerialDriver> findAllDrivers(UsbManager usbManager) {
        ArrayList arrayList = new ArrayList();
        Iterator<UsbDevice> it = usbManager.getDeviceList().values().iterator();
        while (it.hasNext()) {
            UsbSerialDriver usbSerialDriverProbeDevice = probeDevice(it.next());
            if (usbSerialDriverProbeDevice != null) {
                arrayList.add(usbSerialDriverProbeDevice);
            }
        }
        return arrayList;
    }

    public UsbSerialDriver probeDevice(UsbDevice usbDevice) {
        Class<? extends UsbSerialDriver> clsFindDriver = this.mProbeTable.findDriver(usbDevice.getVendorId(), usbDevice.getProductId());
        if (clsFindDriver == null) {
            return null;
        }
        try {
            return clsFindDriver.getConstructor(UsbDevice.class).newInstance(usbDevice);
        } catch (IllegalAccessException e) {
            throw new RuntimeException(e);
        } catch (IllegalArgumentException e2) {
            throw new RuntimeException(e2);
        } catch (InstantiationException e3) {
            throw new RuntimeException(e3);
        } catch (NoSuchMethodException e4) {
            throw new RuntimeException(e4);
        } catch (InvocationTargetException e5) {
            throw new RuntimeException(e5);
        }
    }
}
