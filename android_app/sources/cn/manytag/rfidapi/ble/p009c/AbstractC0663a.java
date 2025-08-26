package cn.manytag.rfidapi.ble.p009c;

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

/* renamed from: cn.manytag.rfidapi.ble.c.a */
/* loaded from: classes.dex */
public abstract class AbstractC0663a implements BluetoothAdapter.LeScanCallback {

    /* renamed from: a */
    private String[] f198a;

    /* renamed from: b */
    private String f199b;

    /* renamed from: c */
    private boolean f200c;

    /* renamed from: d */
    private boolean f201d;

    /* renamed from: e */
    private long f202e;

    /* renamed from: f */
    private BleScanPresenterImp f203f;

    /* renamed from: g */
    private List f204g = new ArrayList();

    /* renamed from: h */
    private Handler f205h = new Handler(Looper.getMainLooper());

    /* renamed from: i */
    private HandlerThread f206i;

    /* renamed from: j */
    private Handler f207j;

    /* renamed from: k */
    private boolean f208k;

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: c */
    public void m158c(BleDevice bleDevice) {
        this.f205h.post(new RunnableC0664b(this, bleDevice));
        m159d(bleDevice);
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x0056  */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void m159d(cn.manytag.rfidapi.ble.data.BleDevice r9) {
        /*
            r8 = this;
            java.lang.String r0 = r8.f199b
            boolean r0 = android.text.TextUtils.isEmpty(r0)
            r1 = 1
            if (r0 == 0) goto L14
            java.lang.String[] r0 = r8.f198a
            if (r0 == 0) goto L10
            int r0 = r0.length
            if (r0 >= r1) goto L14
        L10:
            r8.m160e(r9)
            return
        L14:
            java.lang.String r0 = r8.f199b
            boolean r0 = android.text.TextUtils.isEmpty(r0)
            if (r0 != 0) goto L29
            java.lang.String r0 = r8.f199b
            java.lang.String r2 = r9.getMac()
            boolean r0 = r0.equalsIgnoreCase(r2)
            if (r0 != 0) goto L29
            return
        L29:
            java.lang.String[] r0 = r8.f198a
            if (r0 == 0) goto L63
            int r0 = r0.length
            if (r0 <= 0) goto L63
            java.util.concurrent.atomic.AtomicBoolean r0 = new java.util.concurrent.atomic.AtomicBoolean
            r2 = 0
            r0.<init>(r2)
            java.lang.String[] r3 = r8.f198a
            int r4 = r3.length
        L39:
            if (r2 >= r4) goto L5c
            r5 = r3[r2]
            java.lang.String r6 = r9.getName()
            if (r6 != 0) goto L45
            java.lang.String r6 = ""
        L45:
            boolean r7 = r8.f200c
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
            r8.m160e(r9)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: cn.manytag.rfidapi.ble.p009c.AbstractC0663a.m159d(cn.manytag.rfidapi.ble.data.BleDevice):void");
    }

    /* renamed from: e */
    private void m160e(BleDevice bleDevice) {
        String name = bleDevice.getName();
        if (name == null || name.equals("")) {
            return;
        }
        if (this.f201d) {
            if (name != null) {
                this.f204g.add(bleDevice);
            }
            this.f205h.post(new RunnableC0665c(this));
            return;
        }
        AtomicBoolean atomicBoolean = new AtomicBoolean(false);
        Iterator it = this.f204g.iterator();
        while (it.hasNext()) {
            if (((BleDevice) it.next()).getDevice().equals(bleDevice.getDevice())) {
                atomicBoolean.set(true);
            }
        }
        if (atomicBoolean.get()) {
            return;
        }
        if (name != null) {
            this.f204g.add(bleDevice);
        }
        this.f205h.post(new RunnableC0666d(this, name, bleDevice));
    }

    /* renamed from: a */
    public abstract void mo161a(BleDevice bleDevice);

    /* renamed from: a */
    public abstract void mo162a(List list);

    /* renamed from: a */
    public final void m163a(boolean z) {
        this.f204g.clear();
        m170d();
        if (z && this.f202e > 0) {
            this.f205h.postDelayed(new RunnableC0667e(this), this.f202e);
        }
        this.f205h.post(new RunnableC0668f(this, z));
    }

    /* renamed from: a */
    public void m164a(String[] strArr, String str, boolean z, boolean z2, long j, BleScanPresenterImp bleScanPresenterImp) {
        this.f198a = strArr;
        this.f199b = str;
        this.f200c = z;
        this.f201d = z2;
        this.f202e = j;
        this.f203f = bleScanPresenterImp;
        this.f206i = new HandlerThread(AbstractC0663a.class.getSimpleName());
        this.f206i.start();
        this.f207j = new HandlerC0670h(this.f206i.getLooper(), this);
        this.f208k = true;
    }

    /* renamed from: a */
    public boolean m165a() {
        return this.f201d;
    }

    /* renamed from: b */
    public BleScanPresenterImp m166b() {
        return this.f203f;
    }

    /* renamed from: b */
    public abstract void mo167b(BleDevice bleDevice);

    /* renamed from: b */
    public abstract void mo168b(boolean z);

    /* renamed from: c */
    public final void m169c() {
        this.f208k = false;
        this.f206i.quit();
        m170d();
        this.f205h.post(new RunnableC0669g(this));
    }

    /* renamed from: d */
    public final void m170d() {
        this.f205h.removeCallbacksAndMessages(null);
        this.f207j.removeCallbacksAndMessages(null);
    }

    @Override // android.bluetooth.BluetoothAdapter.LeScanCallback
    public void onLeScan(BluetoothDevice bluetoothDevice, int i, byte[] bArr) {
        if (bluetoothDevice != null && this.f208k) {
            Message messageObtainMessage = this.f207j.obtainMessage();
            messageObtainMessage.what = 0;
            messageObtainMessage.obj = new BleDevice(bluetoothDevice, i, bArr, System.currentTimeMillis());
            this.f207j.sendMessage(messageObtainMessage);
        }
    }
}
