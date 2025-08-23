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
        To view partially-correct add '--show-bad-code' argument
    */
    public void setWorkingFrequency(java.lang.String r8) throws java.lang.InterruptedException, java.lang.NumberFormatException {
        /*
            r7 = this;
            int r0 = r8.hashCode()
            r1 = 5
            r2 = 3
            r3 = 0
            r4 = 4
            r5 = 2
            r6 = 1
            switch(r0) {
                case -1574598577: goto L40;
                case -1173639986: goto L36;
                case -940799867: goto L2c;
                case 144669269: goto L22;
                case 281410309: goto L18;
                case 586923135: goto Le;
                default: goto Ld;
            }
        Ld:
            goto L4a
        Le:
            java.lang.String r0 = "Japan(952MHz-953MHz)"
            boolean r8 = r8.equals(r0)
            if (r8 == 0) goto L4a
            r8 = 5
            goto L4b
        L18:
            java.lang.String r0 = "Europe(865MHz-868MHz)"
            boolean r8 = r8.equals(r0)
            if (r8 == 0) goto L4a
            r8 = 2
            goto L4b
        L22:
            java.lang.String r0 = "Korea(917MHz-923MHz)"
            boolean r8 = r8.equals(r0)
            if (r8 == 0) goto L4a
            r8 = 4
            goto L4b
        L2c:
            java.lang.String r0 = "USA(902MHz-928MHz)"
            boolean r8 = r8.equals(r0)
            if (r8 == 0) goto L4a
            r8 = 3
            goto L4b
        L36:
            java.lang.String r0 = "China2(920MHz-925MHz)"
            boolean r8 = r8.equals(r0)
            if (r8 == 0) goto L4a
            r8 = 1
            goto L4b
        L40:
            java.lang.String r0 = "China1(840MHz-845MHz)"
            boolean r8 = r8.equals(r0)
            if (r8 == 0) goto L4a
            r8 = 0
            goto L4b
        L4a:
            r8 = -1
        L4b:
            if (r8 == 0) goto L65
            if (r8 == r6) goto L63
            if (r8 == r5) goto L61
            if (r8 == r2) goto L5e
            if (r8 == r4) goto L5b
            if (r8 == r1) goto L58
            goto L66
        L58:
            r3 = 50
            goto L66
        L5b:
            r3 = 22
            goto L66
        L5e:
            r3 = 8
            goto L66
        L61:
            r3 = 4
            goto L66
        L63:
            r3 = 2
            goto L66
        L65:
            r3 = 1
        L66:
            cn.manytag.rfidapi.uhf.a r8 = r7.bluetoothOperation
            cn.manytag.rfidapi.ble.data.BleDevice r0 = r7.ble
            byte[] r1 = cn.manytag.rfidapi.uhf.m.a(r3)
            r8.a(r0, r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: cn.manytag.rfidapi.Reader.setWorkingFrequency(java.lang.String):void");
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
