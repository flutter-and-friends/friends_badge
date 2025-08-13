package cn.manytag.rfidapi;

import android.app.Application;
import cn.manytag.rfidapi.ble.C0646a;
import cn.manytag.rfidapi.ble.callback.BleScanCallback;
import cn.manytag.rfidapi.ble.data.BleDevice;
import cn.manytag.rfidapi.uhf.C0699a;
import cn.manytag.rfidapi.uhf.C0711m;
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
import cn.manytag.rfidapi.uhf.util.HexUtil;

/* loaded from: classes.dex */
public class Reader {
    private static Reader instance;
    BleDevice ble;
    C0699a bluetoothOperation;
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
        C0646a.m50a().m59a(bleDevice, 23, new C0690c(this));
    }

    public void cancelScan() {
        this.bluetoothOperation.m226a();
    }

    public void closeDevice() {
        this.bluetoothOperation.m238b();
    }

    public void connect(BleDevice bleDevice, OnConnStatus onConnStatus) {
        this.bluetoothOperation.m228a(bleDevice, new C0691d(this, onConnStatus));
    }

    public void connect(String str) {
        this.bluetoothOperation.m237a(str, new C0692e(this));
    }

    public void connect(String str, OnConnStatus onConnStatus) {
        this.bluetoothOperation.m237a(str, new C0644a(this, onConnStatus));
    }

    public void findTag(byte[] bArr, int i) throws InterruptedException, NumberFormatException {
        this.bluetoothOperation.m229a(this.ble, C0711m.m245a(bArr, i));
    }

    public void getDutyCycle() throws InterruptedException, NumberFormatException {
        this.bluetoothOperation.m229a(this.ble, C0711m.m259j());
    }

    public void getGattery() throws InterruptedException, NumberFormatException {
        this.bluetoothOperation.m229a(this.ble, C0711m.m240a());
    }

    public void getPower() throws InterruptedException, NumberFormatException {
        this.bluetoothOperation.m229a(this.ble, C0711m.m253d());
    }

    public void getSonudMode() throws InterruptedException, NumberFormatException {
        this.bluetoothOperation.m229a(this.ble, C0711m.m247b());
    }

    public void getTag() throws InterruptedException, NumberFormatException {
        C0699a.f261j = 2;
        this.bluetoothOperation.m229a(this.ble, C0711m.m254e());
    }

    public void getVersion() throws InterruptedException, NumberFormatException {
        this.bluetoothOperation.m229a(this.ble, C0711m.m261l());
    }

    public void getWorkingFrequency() throws InterruptedException, NumberFormatException {
        this.bluetoothOperation.m229a(this.ble, C0711m.m260k());
    }

    public void getWorkingMode() throws InterruptedException, NumberFormatException {
        this.bluetoothOperation.m229a(this.ble, C0711m.m256g());
    }

    public void init(Application application) {
        this.context = application;
        this.bluetoothOperation = new C0699a(application);
    }

    public void removeListening() {
        this.bluetoothOperation.m239c();
    }

    public void setBuzzing() throws InterruptedException, NumberFormatException {
        this.bluetoothOperation.m229a(this.ble, C0711m.m250c());
    }

    public void setDeviceDisplayNum(int i) throws InterruptedException, NumberFormatException {
        if (i > 65535) {
            i = 65535;
        }
        if (i < 0) {
            i = 0;
        }
        this.bluetoothOperation.m229a(this.ble, C0711m.m244a(HexUtil.IntToByte(i)));
    }

    public void setDutyCycle(int i, int i2) throws InterruptedException, NumberFormatException {
        this.bluetoothOperation.m229a(this.ble, C0711m.m243a(i, i2));
    }

    public void setFindTagListener(OnFindTag onFindTag) {
        this.bluetoothOperation.m230a(new C0645b(this, onFindTag));
    }

    public void setInventory(OnInventoryTag onInventoryTag) {
        this.bluetoothOperation.m231a(new C0695h(this, onInventoryTag));
    }

    public void setKeypad(OnKeypad onKeypad) {
        this.bluetoothOperation.m232a(new C0697j(this, onKeypad));
    }

    public void setOperation(OnOperation onOperation) {
        this.bluetoothOperation.m233a(new C0693f(this, onOperation));
    }

    public void setPower(int i) throws InterruptedException, NumberFormatException {
        int i2 = i >= 5 ? i : 5;
        if (i > 33) {
            i2 = 33;
        }
        this.bluetoothOperation.m229a(this.ble, C0711m.m248b(i2));
    }

    public void setSetting(OnSetting onSetting) {
        try {
            this.bluetoothOperation.m234a(new C0694g(this, new Setting(), onSetting));
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void setSonudMode(boolean z) throws InterruptedException, NumberFormatException {
        this.bluetoothOperation.m229a(this.ble, C0711m.m242a(z ? 6 : 8));
    }

    public void setTagInventory(OnTagInfo onTagInfo) {
        this.bluetoothOperation.m235a(new C0696i(this, onTagInfo));
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:23:0x004a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
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
            byte[] r1 = cn.manytag.rfidapi.uhf.C0711m.m241a(r3)
            r8.m229a(r0, r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: cn.manytag.rfidapi.Reader.setWorkingFrequency(java.lang.String):void");
    }

    public void setWorkingMode(WorkingModeType workingModeType) throws InterruptedException, NumberFormatException {
        if (workingModeType == WorkingModeType.RFID) {
            this.bluetoothOperation.m229a(this.ble, C0711m.m251c(0));
        }
        if (workingModeType == WorkingModeType.BARCODE) {
            this.bluetoothOperation.m229a(this.ble, C0711m.m251c(1));
        }
    }

    public void setWorkingMode(String str) throws InterruptedException, NumberFormatException {
        if (str.equals(MST1126.RFID)) {
            this.bluetoothOperation.m229a(this.ble, C0711m.m251c(0));
        }
        if (str.equals(MST1126.BARCODE)) {
            this.bluetoothOperation.m229a(this.ble, C0711m.m251c(1));
        }
    }

    public void setWorkingModeListener(OnWorkingMode onWorkingMode) {
        this.bluetoothOperation.m236a(new C0698k(this, onWorkingMode));
    }

    public void startInventory() throws InterruptedException, NumberFormatException {
        C0699a.f261j = 1;
        this.bluetoothOperation.m229a(this.ble, C0711m.m257h());
    }

    public void startScanBle(BleScanCallback bleScanCallback) {
        if (bleScanCallback != null) {
            C0646a.m50a().m58a(bleScanCallback);
        }
    }

    public void stopFindTag() throws InterruptedException, NumberFormatException {
        this.bluetoothOperation.m229a(this.ble, C0711m.m255f());
    }

    public void stopInventory() throws InterruptedException, NumberFormatException {
        this.bluetoothOperation.m229a(this.ble, C0711m.m258i());
    }

    public void stopReadBuffer() throws InterruptedException, NumberFormatException {
        this.bluetoothOperation.m229a(this.ble, C0711m.m262m());
    }
}
