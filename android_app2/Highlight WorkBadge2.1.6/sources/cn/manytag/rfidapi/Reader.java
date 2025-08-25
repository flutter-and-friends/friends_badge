package cn.manytag.rfidapi;

import android.app.Application;
import cn.manytag.rfidapi.ble.callback.BleScanCallback;
import cn.manytag.rfidapi.ble.data.BleDevice;
import cn.manytag.rfidapi.uhf.MST1126;
import cn.manytag.rfidapi.uhf.data.Setting;
import cn.manytag.rfidapi.uhf.data.WorkingModeType;
import cn.manytag.rfidapi.uhf.listen.OnConnStatus;
import cn.manytag.rfidapi.uhf.listen.OnFindTag;
import cn.manytag.rfidapi.uhf.listen.OnInventoryTag;
import cn.manytag.rfidapi.uhf.listen.OnKeypad;
import cn.manytag.rfidapi.uhf.listen.OnOperation;
import cn.manytag.rfidapi.uhf.listen.OnSetting;
import cn.manytag.rfidapi.uhf.listen.OnTagInfo;
import cn.manytag.rfidapi.uhf.listen.OnWorkingMode;
import cn.manytag.rfidapi.uhf.m;
import cn.manytag.rfidapi.uhf.util.HexUtil;

/* loaded from: classes.dex */
public class Reader {
    private static Reader instance;
    BleDevice ble;
    cn.manytag.rfidapi.uhf.a bluetoothOperation;
    Application context;

    /* JADX INFO: Access modifiers changed from: private */
    public int byteToInt(byte b) {
        try {
            return Integer.parseInt(String.format("%02x", Integer.valueOf(b & 255)).toUpperCase(), 16);
        } catch (NumberFormatException e) {
            e.printStackTrace();
            return 0;
        }
    }

    public static Reader getInstance() {
        if (instance == null) {
            synchronized (Reader.class) {
                if (instance == null) {
                    instance = new Reader();
                }
            }
        }
        return instance;
    }

    private void setBMtu(BleDevice bleDevice) {
        cn.manytag.rfidapi.ble.a.a().a(bleDevice, 23, new c(this));
    }

    public void cancelScan() {
        this.bluetoothOperation.a();
    }

    public void closeDevice() {
        this.bluetoothOperation.b();
    }

    public void connect(BleDevice bleDevice, OnConnStatus onConnStatus) {
        this.bluetoothOperation.a(bleDevice, new d(this, onConnStatus));
    }

    public void connect(String str) {
        this.bluetoothOperation.a(str, new e(this));
    }

    public void connect(String str, OnConnStatus onConnStatus) {
        this.bluetoothOperation.a(str, new a(this, onConnStatus));
    }

    public void findTag(byte[] bArr, int i) throws InterruptedException, NumberFormatException {
        this.bluetoothOperation.a(this.ble, m.a(bArr, i));
    }

    public void getDutyCycle() throws InterruptedException, NumberFormatException {
        this.bluetoothOperation.a(this.ble, m.j());
    }

    public void getGattery() throws InterruptedException, NumberFormatException {
        this.bluetoothOperation.a(this.ble, m.a());
    }

    public void getPower() throws InterruptedException, NumberFormatException {
        this.bluetoothOperation.a(this.ble, m.d());
    }

    public void getSonudMode() throws InterruptedException, NumberFormatException {
        this.bluetoothOperation.a(this.ble, m.b());
    }

    public void getTag() throws InterruptedException, NumberFormatException {
        cn.manytag.rfidapi.uhf.a.j = 2;
        this.bluetoothOperation.a(this.ble, m.e());
    }

    public void getVersion() throws InterruptedException, NumberFormatException {
        this.bluetoothOperation.a(this.ble, m.l());
    }

    public void getWorkingFrequency() throws InterruptedException, NumberFormatException {
        this.bluetoothOperation.a(this.ble, m.k());
    }

    public void getWorkingMode() throws InterruptedException, NumberFormatException {
        this.bluetoothOperation.a(this.ble, m.g());
    }

    public void init(Application application) {
        this.context = application;
        this.bluetoothOperation = new cn.manytag.rfidapi.uhf.a(application);
    }

    public void removeListening() {
        this.bluetoothOperation.c();
    }

    public void setBuzzing() throws InterruptedException, NumberFormatException {
        this.bluetoothOperation.a(this.ble, m.c());
    }

    public void setDeviceDisplayNum(int i) throws InterruptedException, NumberFormatException {
        if (i > 65535) {
            i = 65535;
        }
        if (i < 0) {
            i = 0;
        }
        this.bluetoothOperation.a(this.ble, m.a(HexUtil.IntToByte(i)));
    }

    public void setDutyCycle(int i, int i2) throws InterruptedException, NumberFormatException {
        this.bluetoothOperation.a(this.ble, m.a(i, i2));
    }

    public void setFindTagListener(OnFindTag onFindTag) {
        this.bluetoothOperation.a(new b(this, onFindTag));
    }

    public void setInventory(OnInventoryTag onInventoryTag) {
        this.bluetoothOperation.a(new h(this, onInventoryTag));
    }

    public void setKeypad(OnKeypad onKeypad) {
        this.bluetoothOperation.a(new j(this, onKeypad));
    }

    public void setOperation(OnOperation onOperation) {
        this.bluetoothOperation.a(new f(this, onOperation));
    }

    public void setPower(int i) throws InterruptedException, NumberFormatException {
        int i2 = i >= 5 ? i : 5;
        if (i > 33) {
            i2 = 33;
        }
        this.bluetoothOperation.a(this.ble, m.b(i2));
    }

    public void setSetting(OnSetting onSetting) {
        try {
            this.bluetoothOperation.a(new g(this, new Setting(), onSetting));
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void setSonudMode(boolean z) throws InterruptedException, NumberFormatException {
        this.bluetoothOperation.a(this.ble, m.a(z ? 6 : 8));
    }

    public void setTagInventory(OnTagInfo onTagInfo) {
        this.bluetoothOperation.a(new i(this, onTagInfo));
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:23:0x004a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void setWorkingFrequency(String str) throws InterruptedException, NumberFormatException {
        char c;
        byte b = 0;
        switch (str.hashCode()) {
            case -1574598577:
                if (!str.equals(MST1126.CHINA1)) {
                    c = 65535;
                    break;
                } else {
                    c = 0;
                    break;
                }
            case -1173639986:
                if (str.equals(MST1126.CHINA2)) {
                    c = 1;
                    break;
                }
                break;
            case -940799867:
                if (str.equals(MST1126.USA)) {
                    c = 3;
                    break;
                }
                break;
            case 144669269:
                if (str.equals(MST1126.KOREA)) {
                    c = 4;
                    break;
                }
                break;
            case 281410309:
                if (str.equals(MST1126.EUROPE)) {
                    c = 2;
                    break;
                }
                break;
            case 586923135:
                if (str.equals(MST1126.JAPAN)) {
                    c = 5;
                    break;
                }
                break;
        }
        if (c == 0) {
            b = 1;
        } else if (c == 1) {
            b = 2;
        } else if (c == 2) {
            b = 4;
        } else if (c == 3) {
            b = 8;
        } else if (c == 4) {
            b = 22;
        } else if (c == 5) {
            b = 50;
        }
        this.bluetoothOperation.a(this.ble, m.a(b));
    }

    public void setWorkingMode(WorkingModeType workingModeType) throws InterruptedException, NumberFormatException {
        if (workingModeType == WorkingModeType.RFID) {
            this.bluetoothOperation.a(this.ble, m.c(0));
        }
        if (workingModeType == WorkingModeType.BARCODE) {
            this.bluetoothOperation.a(this.ble, m.c(1));
        }
    }

    public void setWorkingMode(String str) throws InterruptedException, NumberFormatException {
        if (str.equals(MST1126.RFID)) {
            this.bluetoothOperation.a(this.ble, m.c(0));
        }
        if (str.equals(MST1126.BARCODE)) {
            this.bluetoothOperation.a(this.ble, m.c(1));
        }
    }

    public void setWorkingModeListener(OnWorkingMode onWorkingMode) {
        this.bluetoothOperation.a(new k(this, onWorkingMode));
    }

    public void startInventory() throws InterruptedException, NumberFormatException {
        cn.manytag.rfidapi.uhf.a.j = 1;
        this.bluetoothOperation.a(this.ble, m.h());
    }

    public void startScanBle(BleScanCallback bleScanCallback) {
        if (bleScanCallback != null) {
            cn.manytag.rfidapi.ble.a.a().a(bleScanCallback);
        }
    }

    public void stopFindTag() throws InterruptedException, NumberFormatException {
        this.bluetoothOperation.a(this.ble, m.f());
    }

    public void stopInventory() throws InterruptedException, NumberFormatException {
        this.bluetoothOperation.a(this.ble, m.i());
    }

    public void stopReadBuffer() throws InterruptedException, NumberFormatException {
        this.bluetoothOperation.a(this.ble, m.m());
    }
}
