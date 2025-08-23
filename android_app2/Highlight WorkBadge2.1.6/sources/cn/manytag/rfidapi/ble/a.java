package cn.manytag.rfidapi.ble;

import android.app.Application;
import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothGatt;
import android.bluetooth.BluetoothManager;
import android.content.Context;
import android.os.Build;
import android.os.Looper;
import cn.manytag.rfidapi.ble.a.g;
import cn.manytag.rfidapi.ble.a.h;
import cn.manytag.rfidapi.ble.b.d;
import cn.manytag.rfidapi.ble.c.i;
import cn.manytag.rfidapi.ble.c.j;
import cn.manytag.rfidapi.ble.callback.BleScanCallback;
import cn.manytag.rfidapi.ble.callback.e;
import cn.manytag.rfidapi.ble.data.BleDevice;
import com.zhy.http.okhttp.OkHttpUtils;

/* loaded from: classes.dex */
public class a {
    private Application a;
    private i b;
    private BluetoothAdapter c;
    private g d;
    private BluetoothManager e;
    private int f = 7;
    private int g = 5000;
    private int h = 0;
    private long i = 5000;
    private int j = 20;
    private long k = OkHttpUtils.DEFAULT_MILLISECONDS;

    public static a a() {
        return b.a;
    }

    public BluetoothGatt a(BleDevice bleDevice, cn.manytag.rfidapi.ble.callback.b bVar) {
        if (bVar == null) {
            throw new IllegalArgumentException("BleGattCallback can not be Null!");
        }
        if (!m()) {
            cn.manytag.rfidapi.ble.d.a.c("Bluetooth not enable!");
            bVar.a(bleDevice, new d("Bluetooth not enable!"));
            return null;
        }
        if (Looper.myLooper() == null || Looper.myLooper() != Looper.getMainLooper()) {
            cn.manytag.rfidapi.ble.d.a.b("Be careful: currentThread is not MainThread!");
        }
        if (bleDevice != null && bleDevice.getDevice() != null) {
            return this.d.a(bleDevice).a(bleDevice, this.b.d(), bVar);
        }
        bVar.a(bleDevice, new d("Not Found Device Exception Occurred!"));
        return null;
    }

    public BluetoothGatt a(String str, cn.manytag.rfidapi.ble.callback.b bVar) {
        return a(new BleDevice(c().getRemoteDevice(str), 0, null, 0L), bVar);
    }

    public a a(int i) {
        this.g = i;
        return this;
    }

    public a a(int i, long j) {
        if (i > 10) {
            i = 10;
        }
        if (j < 0) {
            j = 0;
        }
        this.h = i;
        this.i = j;
        return this;
    }

    public a a(long j) {
        if (j <= 0) {
            j = 100;
        }
        this.k = j;
        return this;
    }

    public a a(boolean z) {
        cn.manytag.rfidapi.ble.d.a.a = z;
        return this;
    }

    public void a(Application application) {
        if (this.a != null || application == null) {
            return;
        }
        this.a = application;
        if (l()) {
            this.e = (BluetoothManager) this.a.getSystemService("bluetooth");
        }
        this.c = BluetoothAdapter.getDefaultAdapter();
        this.d = new g();
        this.b = new i();
    }

    public void a(BleScanCallback bleScanCallback) {
        if (bleScanCallback == null) {
            throw new IllegalArgumentException("BleScanCallback can not be Null!");
        }
        if (!m()) {
            cn.manytag.rfidapi.ble.d.a.c("Bluetooth not enable!");
            bleScanCallback.onScanStarted(false);
            return;
        }
        j.a().a(this.b.a(), this.b.b(), this.b.c(), this.b.e(), this.b.f(), bleScanCallback);
    }

    public void a(BleDevice bleDevice, int i, cn.manytag.rfidapi.ble.callback.d dVar) {
        d dVar2;
        if (dVar == null) {
            throw new IllegalArgumentException("BleMtuChangedCallback can not be Null!");
        }
        if (i > 512) {
            cn.manytag.rfidapi.ble.d.a.c("requiredMtu should lower than 512 !");
            dVar2 = new d("requiredMtu should lower than 512 !");
        } else {
            if (i >= 23) {
                cn.manytag.rfidapi.ble.a.a aVarB = this.d.b(bleDevice);
                if (aVarB == null) {
                    dVar.a(new d("This device is not connected!"));
                    return;
                } else {
                    aVarB.a().a(i, dVar);
                    return;
                }
            }
            cn.manytag.rfidapi.ble.d.a.c("requiredMtu should higher than 23 !");
            dVar2 = new d("requiredMtu should higher than 23 !");
        }
        dVar.a(dVar2);
    }

    public void a(BleDevice bleDevice, String str, String str2, e eVar) {
        a(bleDevice, str, str2, false, eVar);
    }

    public void a(BleDevice bleDevice, String str, String str2, boolean z, e eVar) {
        if (eVar == null) {
            throw new IllegalArgumentException("BleNotifyCallback can not be Null!");
        }
        cn.manytag.rfidapi.ble.a.a aVarB = this.d.b(bleDevice);
        if (aVarB == null) {
            eVar.a(new d("This device not connect!"));
        } else {
            aVarB.a().a(str, str2).a(eVar, str2, z);
        }
    }

    public void a(BleDevice bleDevice, String str, String str2, byte[] bArr, cn.manytag.rfidapi.ble.callback.i iVar) {
        a(bleDevice, str, str2, bArr, true, iVar);
    }

    public void a(BleDevice bleDevice, String str, String str2, byte[] bArr, boolean z, cn.manytag.rfidapi.ble.callback.i iVar) {
        a(bleDevice, str, str2, bArr, z, true, 0L, iVar);
    }

    public void a(BleDevice bleDevice, String str, String str2, byte[] bArr, boolean z, boolean z2, long j, cn.manytag.rfidapi.ble.callback.i iVar) {
        if (iVar == null) {
            throw new IllegalArgumentException("BleWriteCallback can not be Null!");
        }
        if (bArr == null) {
            cn.manytag.rfidapi.ble.d.a.c("data is Null!");
            iVar.a(new d("data is Null!"));
            return;
        }
        if (bArr.length > 20 && !z) {
            cn.manytag.rfidapi.ble.d.a.b("Be careful: data's length beyond 20! Ensure MTU higher than 23, or use spilt write!");
        }
        cn.manytag.rfidapi.ble.a.a aVarB = this.d.b(bleDevice);
        if (aVarB == null) {
            iVar.a(new d("This device not connect!"));
        } else if (!z || bArr.length <= i()) {
            aVarB.a().a(str, str2).a(bArr, iVar, str2);
        } else {
            new h().a(aVarB, str, str2, bArr, z2, j, iVar);
        }
    }

    public Context b() {
        return this.a;
    }

    public BluetoothAdapter c() {
        return this.c;
    }

    public g d() {
        return this.d;
    }

    public int e() {
        return this.f;
    }

    public int f() {
        return this.g;
    }

    public int g() {
        return this.h;
    }

    public long h() {
        return this.i;
    }

    public int i() {
        return this.j;
    }

    public long j() {
        return this.k;
    }

    public void k() {
        j.a().b();
    }

    public boolean l() {
        return Build.VERSION.SDK_INT >= 18 && this.a.getApplicationContext().getPackageManager().hasSystemFeature("android.hardware.bluetooth_le");
    }

    public boolean m() {
        BluetoothAdapter bluetoothAdapter = this.c;
        return bluetoothAdapter != null && bluetoothAdapter.isEnabled();
    }

    public void n() {
        g gVar = this.d;
        if (gVar != null) {
            gVar.a();
        }
    }

    public void o() {
        g gVar = this.d;
        if (gVar != null) {
            gVar.b();
        }
    }
}
