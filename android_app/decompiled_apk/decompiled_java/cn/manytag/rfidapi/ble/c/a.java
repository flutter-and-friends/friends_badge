package cn.manytag.rfidapi.ble.c;

import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothDevice;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import cn.manytag.rfidapi.ble.callback.BleScanPresenterImp;
import cn.manytag.rfidapi.ble.data.BleDevice;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes.dex */
public abstract class a implements BluetoothAdapter.LeScanCallback {
    private String[] a;
    private String b;
    private boolean c;
    private boolean d;
    private long e;
    private BleScanPresenterImp f;
    private List g = new ArrayList();
    private Handler h = new Handler(Looper.getMainLooper());
    private HandlerThread i;
    private Handler j;
    private boolean k;

    /* JADX INFO: Access modifiers changed from: private */
    public void c(BleDevice bleDevice) {
        this.h.post(new b(this, bleDevice));
        d(bleDevice);
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x0056  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void d(BleDevice bleDevice) {
        String[] strArr;
        if (TextUtils.isEmpty(this.b) && ((strArr = this.a) == null || strArr.length < 1)) {
            e(bleDevice);
            return;
        }
        if (TextUtils.isEmpty(this.b) || this.b.equalsIgnoreCase(bleDevice.getMac())) {
            String[] strArr2 = this.a;
            if (strArr2 != null && strArr2.length > 0) {
                AtomicBoolean atomicBoolean = new AtomicBoolean(false);
                for (String str : this.a) {
                    String name = bleDevice.getName();
                    if (name == null) {
                        name = "";
                    }
                    if (this.c) {
                        if (name.contains(str)) {
                            atomicBoolean.set(true);
                        }
                    } else if (name.equals(str)) {
                    }
                }
                if (!atomicBoolean.get()) {
                    return;
                }
            }
            e(bleDevice);
        }
    }

    private void e(BleDevice bleDevice) {
        String name = bleDevice.getName();
        if (name == null || name.equals("")) {
            return;
        }
        if (this.d) {
            if (name != null) {
                this.g.add(bleDevice);
            }
            this.h.post(new c(this));
            return;
        }
        AtomicBoolean atomicBoolean = new AtomicBoolean(false);
        Iterator it = this.g.iterator();
        while (it.hasNext()) {
            if (((BleDevice) it.next()).getDevice().equals(bleDevice.getDevice())) {
                atomicBoolean.set(true);
            }
        }
        if (atomicBoolean.get()) {
            return;
        }
        if (name != null) {
            this.g.add(bleDevice);
        }
        this.h.post(new d(this, name, bleDevice));
    }

    public abstract void a(BleDevice bleDevice);

    public abstract void a(List list);

    public final void a(boolean z) {
        this.g.clear();
        d();
        if (z && this.e > 0) {
            this.h.postDelayed(new e(this), this.e);
        }
        this.h.post(new f(this, z));
    }

    public void a(String[] strArr, String str, boolean z, boolean z2, long j, BleScanPresenterImp bleScanPresenterImp) {
        this.a = strArr;
        this.b = str;
        this.c = z;
        this.d = z2;
        this.e = j;
        this.f = bleScanPresenterImp;
        this.i = new HandlerThread(a.class.getSimpleName());
        this.i.start();
        this.j = new h(this.i.getLooper(), this);
        this.k = true;
    }

    public boolean a() {
        return this.d;
    }

    public BleScanPresenterImp b() {
        return this.f;
    }

    public abstract void b(BleDevice bleDevice);

    public abstract void b(boolean z);

    public final void c() {
        this.k = false;
        this.i.quit();
        d();
        this.h.post(new g(this));
    }

    public final void d() {
        this.h.removeCallbacksAndMessages(null);
        this.j.removeCallbacksAndMessages(null);
    }

    @Override // android.bluetooth.BluetoothAdapter.LeScanCallback
    public void onLeScan(BluetoothDevice bluetoothDevice, int i, byte[] bArr) {
        if (bluetoothDevice != null && this.k) {
            Message messageObtainMessage = this.j.obtainMessage();
            messageObtainMessage.what = 0;
            messageObtainMessage.obj = new BleDevice(bluetoothDevice, i, bArr, System.currentTimeMillis());
            this.j.sendMessage(messageObtainMessage);
        }
    }
}
