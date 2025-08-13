package cn.manytag.rfidapi.ble;

import android.app.Application;
import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothGatt;
import android.bluetooth.BluetoothManager;
import android.content.Context;
import android.os.Build;
import android.os.Looper;
import cn.manytag.rfidapi.ble.callback.AbstractC0677b;
import cn.manytag.rfidapi.ble.callback.AbstractC0679d;
import cn.manytag.rfidapi.ble.callback.AbstractC0680e;
import cn.manytag.rfidapi.ble.callback.AbstractC0684i;
import cn.manytag.rfidapi.ble.callback.BleScanCallback;
import cn.manytag.rfidapi.ble.data.BleDevice;
import cn.manytag.rfidapi.ble.p007a.C0647a;
import cn.manytag.rfidapi.ble.p007a.C0653g;
import cn.manytag.rfidapi.ble.p007a.C0654h;
import cn.manytag.rfidapi.ble.p008b.C0661d;
import cn.manytag.rfidapi.ble.p009c.C0671i;
import cn.manytag.rfidapi.ble.p009c.C0672j;
import cn.manytag.rfidapi.ble.p010d.C0685a;
import com.zhy.http.okhttp.OkHttpUtils;

/* renamed from: cn.manytag.rfidapi.ble.a */
/* loaded from: classes.dex */
public class C0646a {

    /* renamed from: a */
    private Application f137a;

    /* renamed from: b */
    private C0671i f138b;

    /* renamed from: c */
    private BluetoothAdapter f139c;

    /* renamed from: d */
    private C0653g f140d;

    /* renamed from: e */
    private BluetoothManager f141e;

    /* renamed from: f */
    private int f142f = 7;

    /* renamed from: g */
    private int f143g = 5000;

    /* renamed from: h */
    private int f144h = 0;

    /* renamed from: i */
    private long f145i = 5000;

    /* renamed from: j */
    private int f146j = 20;

    /* renamed from: k */
    private long f147k = OkHttpUtils.DEFAULT_MILLISECONDS;

    /* renamed from: a */
    public static C0646a m50a() {
        return C0657b.f192a;
    }

    /* renamed from: a */
    public BluetoothGatt m51a(BleDevice bleDevice, AbstractC0677b abstractC0677b) {
        if (abstractC0677b == null) {
            throw new IllegalArgumentException("BleGattCallback can not be Null!");
        }
        if (!m76m()) {
            C0685a.m203c("Bluetooth not enable!");
            abstractC0677b.mo47a(bleDevice, new C0661d("Bluetooth not enable!"));
            return null;
        }
        if (Looper.myLooper() == null || Looper.myLooper() != Looper.getMainLooper()) {
            C0685a.m202b("Be careful: currentThread is not MainThread!");
        }
        if (bleDevice != null && bleDevice.getDevice() != null) {
            return this.f140d.m133a(bleDevice).m102a(bleDevice, this.f138b.m174d(), abstractC0677b);
        }
        abstractC0677b.mo47a(bleDevice, new C0661d("Not Found Device Exception Occurred!"));
        return null;
    }

    /* renamed from: a */
    public BluetoothGatt m52a(String str, AbstractC0677b abstractC0677b) {
        return m51a(new BleDevice(m66c().getRemoteDevice(str), 0, null, 0L), abstractC0677b);
    }

    /* renamed from: a */
    public C0646a m53a(int i) {
        this.f143g = i;
        return this;
    }

    /* renamed from: a */
    public C0646a m54a(int i, long j) {
        if (i > 10) {
            i = 10;
        }
        if (j < 0) {
            j = 0;
        }
        this.f144h = i;
        this.f145i = j;
        return this;
    }

    /* renamed from: a */
    public C0646a m55a(long j) {
        if (j <= 0) {
            j = 100;
        }
        this.f147k = j;
        return this;
    }

    /* renamed from: a */
    public C0646a m56a(boolean z) {
        C0685a.f235a = z;
        return this;
    }

    /* renamed from: a */
    public void m57a(Application application) {
        if (this.f137a != null || application == null) {
            return;
        }
        this.f137a = application;
        if (m75l()) {
            this.f141e = (BluetoothManager) this.f137a.getSystemService("bluetooth");
        }
        this.f139c = BluetoothAdapter.getDefaultAdapter();
        this.f140d = new C0653g();
        this.f138b = new C0671i();
    }

    /* renamed from: a */
    public void m58a(BleScanCallback bleScanCallback) {
        if (bleScanCallback == null) {
            throw new IllegalArgumentException("BleScanCallback can not be Null!");
        }
        if (!m76m()) {
            C0685a.m203c("Bluetooth not enable!");
            bleScanCallback.onScanStarted(false);
            return;
        }
        C0672j.m178a().m180a(this.f138b.m171a(), this.f138b.m172b(), this.f138b.m173c(), this.f138b.m175e(), this.f138b.m176f(), bleScanCallback);
    }

    /* renamed from: a */
    public void m59a(BleDevice bleDevice, int i, AbstractC0679d abstractC0679d) {
        C0661d c0661d;
        if (abstractC0679d == null) {
            throw new IllegalArgumentException("BleMtuChangedCallback can not be Null!");
        }
        if (i > 512) {
            C0685a.m203c("requiredMtu should lower than 512 !");
            c0661d = new C0661d("requiredMtu should lower than 512 !");
        } else {
            if (i >= 23) {
                C0647a c0647aM136b = this.f140d.m136b(bleDevice);
                if (c0647aM136b == null) {
                    abstractC0679d.mo191a(new C0661d("This device is not connected!"));
                    return;
                } else {
                    c0647aM136b.m104a().m125a(i, abstractC0679d);
                    return;
                }
            }
            C0685a.m203c("requiredMtu should higher than 23 !");
            c0661d = new C0661d("requiredMtu should higher than 23 !");
        }
        abstractC0679d.mo191a(c0661d);
    }

    /* renamed from: a */
    public void m60a(BleDevice bleDevice, String str, String str2, AbstractC0680e abstractC0680e) {
        m61a(bleDevice, str, str2, false, abstractC0680e);
    }

    /* renamed from: a */
    public void m61a(BleDevice bleDevice, String str, String str2, boolean z, AbstractC0680e abstractC0680e) {
        if (abstractC0680e == null) {
            throw new IllegalArgumentException("BleNotifyCallback can not be Null!");
        }
        C0647a c0647aM136b = this.f140d.m136b(bleDevice);
        if (c0647aM136b == null) {
            abstractC0680e.mo192a(new C0661d("This device not connect!"));
        } else {
            c0647aM136b.m104a().m123a(str, str2).m126a(abstractC0680e, str2, z);
        }
    }

    /* renamed from: a */
    public void m62a(BleDevice bleDevice, String str, String str2, byte[] bArr, AbstractC0684i abstractC0684i) {
        m63a(bleDevice, str, str2, bArr, true, abstractC0684i);
    }

    /* renamed from: a */
    public void m63a(BleDevice bleDevice, String str, String str2, byte[] bArr, boolean z, AbstractC0684i abstractC0684i) {
        m64a(bleDevice, str, str2, bArr, z, true, 0L, abstractC0684i);
    }

    /* renamed from: a */
    public void m64a(BleDevice bleDevice, String str, String str2, byte[] bArr, boolean z, boolean z2, long j, AbstractC0684i abstractC0684i) {
        if (abstractC0684i == null) {
            throw new IllegalArgumentException("BleWriteCallback can not be Null!");
        }
        if (bArr == null) {
            C0685a.m203c("data is Null!");
            abstractC0684i.mo153a(new C0661d("data is Null!"));
            return;
        }
        if (bArr.length > 20 && !z) {
            C0685a.m202b("Be careful: data's length beyond 20! Ensure MTU higher than 23, or use spilt write!");
        }
        C0647a c0647aM136b = this.f140d.m136b(bleDevice);
        if (c0647aM136b == null) {
            abstractC0684i.mo153a(new C0661d("This device not connect!"));
        } else if (!z || bArr.length <= m72i()) {
            c0647aM136b.m104a().m123a(str, str2).m127a(bArr, abstractC0684i, str2);
        } else {
            new C0654h().m151a(c0647aM136b, str, str2, bArr, z2, j, abstractC0684i);
        }
    }

    /* renamed from: b */
    public Context m65b() {
        return this.f137a;
    }

    /* renamed from: c */
    public BluetoothAdapter m66c() {
        return this.f139c;
    }

    /* renamed from: d */
    public C0653g m67d() {
        return this.f140d;
    }

    /* renamed from: e */
    public int m68e() {
        return this.f142f;
    }

    /* renamed from: f */
    public int m69f() {
        return this.f143g;
    }

    /* renamed from: g */
    public int m70g() {
        return this.f144h;
    }

    /* renamed from: h */
    public long m71h() {
        return this.f145i;
    }

    /* renamed from: i */
    public int m72i() {
        return this.f146j;
    }

    /* renamed from: j */
    public long m73j() {
        return this.f147k;
    }

    /* renamed from: k */
    public void m74k() {
        C0672j.m178a().m181b();
    }

    /* renamed from: l */
    public boolean m75l() {
        return Build.VERSION.SDK_INT >= 18 && this.f137a.getApplicationContext().getPackageManager().hasSystemFeature("android.hardware.bluetooth_le");
    }

    /* renamed from: m */
    public boolean m76m() {
        BluetoothAdapter bluetoothAdapter = this.f139c;
        return bluetoothAdapter != null && bluetoothAdapter.isEnabled();
    }

    /* renamed from: n */
    public void m77n() {
        C0653g c0653g = this.f140d;
        if (c0653g != null) {
            c0653g.m134a();
        }
    }

    /* renamed from: o */
    public void m78o() {
        C0653g c0653g = this.f140d;
        if (c0653g != null) {
            c0653g.m137b();
        }
    }
}
