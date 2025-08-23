package cn.manytag.rfidapi.ble.c;

import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothDevice;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
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
        To view partially-correct add '--show-bad-code' argument
    */
    private void d(cn.manytag.rfidapi.ble.data.BleDevice r9) {
        /*
            r8 = this;
            java.lang.String r0 = r8.b
            boolean r0 = android.text.TextUtils.isEmpty(r0)
            r1 = 1
            if (r0 == 0) goto L14
            java.lang.String[] r0 = r8.a
            if (r0 == 0) goto L10
            int r0 = r0.length
            if (r0 >= r1) goto L14
        L10:
            r8.e(r9)
            return
        L14:
            java.lang.String r0 = r8.b
            boolean r0 = android.text.TextUtils.isEmpty(r0)
            if (r0 != 0) goto L29
            java.lang.String r0 = r8.b
            java.lang.String r2 = r9.getMac()
            boolean r0 = r0.equalsIgnoreCase(r2)
            if (r0 != 0) goto L29
            return
        L29:
            java.lang.String[] r0 = r8.a
            if (r0 == 0) goto L63
            int r0 = r0.length
            if (r0 <= 0) goto L63
            java.util.concurrent.atomic.AtomicBoolean r0 = new java.util.concurrent.atomic.AtomicBoolean
            r2 = 0
            r0.<init>(r2)
            java.lang.String[] r3 = r8.a
            int r4 = r3.length
        L39:
            if (r2 >= r4) goto L5c
            r5 = r3[r2]
            java.lang.String r6 = r9.getName()
            if (r6 != 0) goto L45
            java.lang.String r6 = ""
        L45:
            boolean r7 = r8.c
            if (r7 == 0) goto L50
            boolean r5 = r6.contains(r5)
            if (r5 == 0) goto L59
            goto L56
        L50:
            boolean r5 = r6.equals(r5)
            if (r5 == 0) goto L59
        L56:
            r0.set(r1)
        L59:
            int r2 = r2 + 1
            goto L39
        L5c:
            boolean r0 = r0.get()
            if (r0 != 0) goto L63
            return
        L63:
            r8.e(r9)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: cn.manytag.rfidapi.ble.c.a.d(cn.manytag.rfidapi.ble.data.BleDevice):void");
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
