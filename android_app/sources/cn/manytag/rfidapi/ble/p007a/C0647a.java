package cn.manytag.rfidapi.ble.p007a;

import android.bluetooth.BluetoothGatt;
import android.bluetooth.BluetoothGattCallback;
import android.os.Build;
import android.os.Looper;
import android.os.Message;
import cn.manytag.rfidapi.ble.C0646a;
import cn.manytag.rfidapi.ble.callback.AbstractC0677b;
import cn.manytag.rfidapi.ble.callback.AbstractC0679d;
import cn.manytag.rfidapi.ble.callback.AbstractC0680e;
import cn.manytag.rfidapi.ble.callback.AbstractC0682g;
import cn.manytag.rfidapi.ble.callback.AbstractC0684i;
import cn.manytag.rfidapi.ble.data.BleDevice;
import cn.manytag.rfidapi.ble.p008b.C0661d;
import cn.manytag.rfidapi.ble.p010d.C0685a;
import java.lang.reflect.Method;
import java.util.HashMap;

/* renamed from: cn.manytag.rfidapi.ble.a.a */
/* loaded from: classes.dex */
public class C0647a {

    /* renamed from: a */
    private AbstractC0677b f148a;

    /* renamed from: b */
    private AbstractC0682g f149b;

    /* renamed from: c */
    private AbstractC0679d f150c;

    /* renamed from: h */
    private EnumC0649c f155h;

    /* renamed from: j */
    private BleDevice f157j;

    /* renamed from: k */
    private BluetoothGatt f158k;

    /* renamed from: d */
    private HashMap f151d = new HashMap();

    /* renamed from: e */
    private HashMap f152e = new HashMap();

    /* renamed from: f */
    private HashMap f153f = new HashMap();

    /* renamed from: g */
    private HashMap f154g = new HashMap();

    /* renamed from: i */
    private boolean f156i = false;

    /* renamed from: l */
    private HandlerC0650d f159l = new HandlerC0650d(this, Looper.getMainLooper());

    /* renamed from: m */
    private int f160m = 0;

    /* renamed from: n */
    private BluetoothGattCallback f161n = new C0648b(this);

    public C0647a(BleDevice bleDevice) {
        this.f157j = bleDevice;
    }

    /* renamed from: e */
    static /* synthetic */ int m86e(C0647a c0647a) {
        int i = c0647a.f160m + 1;
        c0647a.f160m = i;
        return i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: j */
    public synchronized void m92j() {
        if (this.f158k != null) {
            this.f158k.disconnect();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: k */
    public synchronized void m93k() {
        Method method;
        try {
            method = BluetoothGatt.class.getMethod("refresh", new Class[0]);
        } catch (Exception e) {
            C0685a.m201a("exception occur while refreshing device: " + e.getMessage());
            e.printStackTrace();
        }
        if (method != null && this.f158k != null) {
            C0685a.m201a("refreshDeviceCache, is success:  " + ((Boolean) method.invoke(this.f158k, new Object[0])).booleanValue());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: l */
    public synchronized void m96l() {
        if (this.f158k != null) {
            this.f158k.close();
        }
    }

    /* renamed from: a */
    public synchronized BluetoothGatt m102a(BleDevice bleDevice, boolean z, AbstractC0677b abstractC0677b) {
        return m103a(bleDevice, z, abstractC0677b, 0);
    }

    /* renamed from: a */
    public synchronized BluetoothGatt m103a(BleDevice bleDevice, boolean z, AbstractC0677b abstractC0677b, int i) {
        C0685a.m201a("connect device: " + bleDevice.getName() + "\nmac: " + bleDevice.getMac() + "\nautoConnect: " + z + "\ncurrentThread: " + Thread.currentThread().getId() + "\nconnectCount:" + (i + 1));
        if (i == 0) {
            this.f160m = 0;
        }
        m105a(abstractC0677b);
        this.f155h = EnumC0649c.CONNECT_CONNECTING;
        this.f158k = Build.VERSION.SDK_INT >= 23 ? bleDevice.getDevice().connectGatt(C0646a.m50a().m65b(), z, this.f161n, 2) : bleDevice.getDevice().connectGatt(C0646a.m50a().m65b(), z, this.f161n);
        if (this.f158k != null) {
            if (this.f148a != null) {
                this.f148a.mo45a();
            }
            Message messageObtainMessage = this.f159l.obtainMessage();
            messageObtainMessage.what = 7;
            this.f159l.sendMessageDelayed(messageObtainMessage, C0646a.m50a().m73j());
        } else {
            m92j();
            m93k();
            m96l();
            this.f155h = EnumC0649c.CONNECT_FAILURE;
            C0646a.m50a().m67d().m135a(this);
            if (this.f148a != null) {
                this.f148a.mo47a(bleDevice, new C0661d("GATT connect exception occurred!"));
            }
        }
        return this.f158k;
    }

    /* renamed from: a */
    public C0651e m104a() {
        return new C0651e(this);
    }

    /* renamed from: a */
    public synchronized void m105a(AbstractC0677b abstractC0677b) {
        this.f148a = abstractC0677b;
    }

    /* renamed from: a */
    public synchronized void m106a(AbstractC0679d abstractC0679d) {
        this.f150c = abstractC0679d;
    }

    /* renamed from: a */
    public synchronized void m107a(String str, AbstractC0680e abstractC0680e) {
        this.f151d.put(str, abstractC0680e);
    }

    /* renamed from: a */
    public synchronized void m108a(String str, AbstractC0684i abstractC0684i) {
        this.f153f.put(str, abstractC0684i);
    }

    /* renamed from: b */
    public synchronized void m109b() {
        this.f148a = null;
    }

    /* renamed from: c */
    public synchronized void m110c() {
        if (this.f151d != null) {
            this.f151d.clear();
        }
        if (this.f152e != null) {
            this.f152e.clear();
        }
        if (this.f153f != null) {
            this.f153f.clear();
        }
        if (this.f154g != null) {
            this.f154g.clear();
        }
    }

    /* renamed from: d */
    public synchronized void m111d() {
        this.f149b = null;
    }

    /* renamed from: e */
    public synchronized void m112e() {
        this.f150c = null;
    }

    /* renamed from: f */
    public String m113f() {
        return this.f157j.getKey();
    }

    /* renamed from: g */
    public BluetoothGatt m114g() {
        return this.f158k;
    }

    /* renamed from: h */
    public synchronized void m115h() {
        this.f156i = true;
        m92j();
    }

    /* renamed from: i */
    public synchronized void m116i() {
        this.f155h = EnumC0649c.CONNECT_IDLE;
        m92j();
        m93k();
        m96l();
        m109b();
        m111d();
        m112e();
        m110c();
        this.f159l.removeCallbacksAndMessages(null);
    }
}
