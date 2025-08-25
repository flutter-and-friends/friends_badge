package cn.manytag.rfidapi.ble.a;

import android.bluetooth.BluetoothGatt;
import android.bluetooth.BluetoothGattCallback;
import android.os.Build;
import android.os.Looper;
import android.os.Message;
import cn.manytag.rfidapi.ble.data.BleDevice;
import java.lang.reflect.Method;
import java.util.HashMap;

/* loaded from: classes.dex */
public class a {
    private cn.manytag.rfidapi.ble.callback.b a;
    private cn.manytag.rfidapi.ble.callback.g b;
    private cn.manytag.rfidapi.ble.callback.d c;
    private c h;
    private BleDevice j;
    private BluetoothGatt k;
    private HashMap d = new HashMap();
    private HashMap e = new HashMap();
    private HashMap f = new HashMap();
    private HashMap g = new HashMap();
    private boolean i = false;
    private d l = new d(this, Looper.getMainLooper());
    private int m = 0;
    private BluetoothGattCallback n = new b(this);

    public a(BleDevice bleDevice) {
        this.j = bleDevice;
    }

    static /* synthetic */ int e(a aVar) {
        int i = aVar.m + 1;
        aVar.m = i;
        return i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void j() {
        if (this.k != null) {
            this.k.disconnect();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void k() {
        Method method;
        try {
            method = BluetoothGatt.class.getMethod("refresh", new Class[0]);
        } catch (Exception e) {
            cn.manytag.rfidapi.ble.d.a.a("exception occur while refreshing device: " + e.getMessage());
            e.printStackTrace();
        }
        if (method != null && this.k != null) {
            cn.manytag.rfidapi.ble.d.a.a("refreshDeviceCache, is success:  " + ((Boolean) method.invoke(this.k, new Object[0])).booleanValue());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void l() {
        if (this.k != null) {
            this.k.close();
        }
    }

    public synchronized BluetoothGatt a(BleDevice bleDevice, boolean z, cn.manytag.rfidapi.ble.callback.b bVar) {
        return a(bleDevice, z, bVar, 0);
    }

    public synchronized BluetoothGatt a(BleDevice bleDevice, boolean z, cn.manytag.rfidapi.ble.callback.b bVar, int i) {
        cn.manytag.rfidapi.ble.d.a.a("connect device: " + bleDevice.getName() + "\nmac: " + bleDevice.getMac() + "\nautoConnect: " + z + "\ncurrentThread: " + Thread.currentThread().getId() + "\nconnectCount:" + (i + 1));
        if (i == 0) {
            this.m = 0;
        }
        a(bVar);
        this.h = c.CONNECT_CONNECTING;
        this.k = Build.VERSION.SDK_INT >= 23 ? bleDevice.getDevice().connectGatt(cn.manytag.rfidapi.ble.a.a().b(), z, this.n, 2) : bleDevice.getDevice().connectGatt(cn.manytag.rfidapi.ble.a.a().b(), z, this.n);
        if (this.k != null) {
            if (this.a != null) {
                this.a.a();
            }
            Message messageObtainMessage = this.l.obtainMessage();
            messageObtainMessage.what = 7;
            this.l.sendMessageDelayed(messageObtainMessage, cn.manytag.rfidapi.ble.a.a().j());
        } else {
            j();
            k();
            l();
            this.h = c.CONNECT_FAILURE;
            cn.manytag.rfidapi.ble.a.a().d().a(this);
            if (this.a != null) {
                this.a.a(bleDevice, new cn.manytag.rfidapi.ble.b.d("GATT connect exception occurred!"));
            }
        }
        return this.k;
    }

    public e a() {
        return new e(this);
    }

    public synchronized void a(cn.manytag.rfidapi.ble.callback.b bVar) {
        this.a = bVar;
    }

    public synchronized void a(cn.manytag.rfidapi.ble.callback.d dVar) {
        this.c = dVar;
    }

    public synchronized void a(String str, cn.manytag.rfidapi.ble.callback.e eVar) {
        this.d.put(str, eVar);
    }

    public synchronized void a(String str, cn.manytag.rfidapi.ble.callback.i iVar) {
        this.f.put(str, iVar);
    }

    public synchronized void b() {
        this.a = null;
    }

    public synchronized void c() {
        if (this.d != null) {
            this.d.clear();
        }
        if (this.e != null) {
            this.e.clear();
        }
        if (this.f != null) {
            this.f.clear();
        }
        if (this.g != null) {
            this.g.clear();
        }
    }

    public synchronized void d() {
        this.b = null;
    }

    public synchronized void e() {
        this.c = null;
    }

    public String f() {
        return this.j.getKey();
    }

    public BluetoothGatt g() {
        return this.k;
    }

    public synchronized void h() {
        this.i = true;
        j();
    }

    public synchronized void i() {
        this.h = c.CONNECT_IDLE;
        j();
        k();
        l();
        b();
        d();
        e();
        c();
        this.l.removeCallbacksAndMessages(null);
    }
}
