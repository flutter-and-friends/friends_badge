package cn.manytag.rfidapi.ble.p007a;

import android.bluetooth.BluetoothGatt;
import android.bluetooth.BluetoothGattCharacteristic;
import android.bluetooth.BluetoothGattDescriptor;
import android.bluetooth.BluetoothGattService;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import cn.manytag.rfidapi.ble.C0646a;
import cn.manytag.rfidapi.ble.callback.AbstractC0679d;
import cn.manytag.rfidapi.ble.callback.AbstractC0680e;
import cn.manytag.rfidapi.ble.callback.AbstractC0684i;
import cn.manytag.rfidapi.ble.p008b.C0661d;
import java.util.UUID;

/* renamed from: cn.manytag.rfidapi.ble.a.e */
/* loaded from: classes.dex */
public class C0651e {

    /* renamed from: a */
    private BluetoothGatt f170a;

    /* renamed from: b */
    private BluetoothGattService f171b;

    /* renamed from: c */
    private BluetoothGattCharacteristic f172c;

    /* renamed from: d */
    private C0647a f173d;

    /* renamed from: e */
    private Handler f174e = new HandlerC0652f(this, Looper.getMainLooper());

    C0651e(C0647a c0647a) {
        this.f173d = c0647a;
        this.f170a = c0647a.m114g();
    }

    /* renamed from: a */
    private C0651e m117a(UUID uuid, UUID uuid2) {
        BluetoothGatt bluetoothGatt;
        if (uuid != null && (bluetoothGatt = this.f170a) != null) {
            this.f171b = bluetoothGatt.getService(uuid);
        }
        BluetoothGattService bluetoothGattService = this.f171b;
        if (bluetoothGattService != null && uuid2 != null) {
            this.f172c = bluetoothGattService.getCharacteristic(uuid2);
        }
        return this;
    }

    /* renamed from: a */
    private UUID m118a(String str) {
        if (str == null) {
            return null;
        }
        return UUID.fromString(str);
    }

    /* renamed from: a */
    private void m119a(AbstractC0679d abstractC0679d) {
        if (abstractC0679d != null) {
            m132f();
            abstractC0679d.m184a(this.f174e);
            this.f173d.m106a(abstractC0679d);
            Handler handler = this.f174e;
            handler.sendMessageDelayed(handler.obtainMessage(97, abstractC0679d), C0646a.m50a().m69f());
        }
    }

    /* renamed from: a */
    private void m120a(AbstractC0680e abstractC0680e, String str) {
        if (abstractC0680e != null) {
            m124a();
            abstractC0680e.m185a(str);
            abstractC0680e.m184a(this.f174e);
            this.f173d.m107a(str, abstractC0680e);
            Handler handler = this.f174e;
            handler.sendMessageDelayed(handler.obtainMessage(17, abstractC0680e), C0646a.m50a().m69f());
        }
    }

    /* renamed from: a */
    private void m121a(AbstractC0684i abstractC0684i, String str) {
        if (abstractC0684i != null) {
            m129c();
            abstractC0684i.m185a(str);
            abstractC0684i.m184a(this.f174e);
            this.f173d.m108a(str, abstractC0684i);
            Handler handler = this.f174e;
            handler.sendMessageDelayed(handler.obtainMessage(49, abstractC0684i), C0646a.m50a().m69f());
        }
    }

    /* renamed from: a */
    private boolean m122a(BluetoothGatt bluetoothGatt, BluetoothGattCharacteristic bluetoothGattCharacteristic, boolean z, boolean z2, AbstractC0680e abstractC0680e) {
        if (bluetoothGatt == null || bluetoothGattCharacteristic == null) {
            m124a();
            if (abstractC0680e != null) {
                abstractC0680e.mo192a(new C0661d("gatt or characteristic equal null"));
            }
            return false;
        }
        if (!bluetoothGatt.setCharacteristicNotification(bluetoothGattCharacteristic, z2)) {
            m124a();
            if (abstractC0680e != null) {
                abstractC0680e.mo192a(new C0661d("gatt setCharacteristicNotification fail"));
            }
            return false;
        }
        BluetoothGattDescriptor descriptor = bluetoothGattCharacteristic.getDescriptor(z ? bluetoothGattCharacteristic.getUuid() : m118a("00002902-0000-1000-8000-00805f9b34fb"));
        if (descriptor == null) {
            m124a();
            if (abstractC0680e != null) {
                abstractC0680e.mo192a(new C0661d("descriptor equals null"));
            }
            return false;
        }
        descriptor.setValue(z2 ? BluetoothGattDescriptor.ENABLE_NOTIFICATION_VALUE : BluetoothGattDescriptor.DISABLE_NOTIFICATION_VALUE);
        boolean zWriteDescriptor = bluetoothGatt.writeDescriptor(descriptor);
        if (!zWriteDescriptor) {
            m124a();
            if (abstractC0680e != null) {
                abstractC0680e.mo192a(new C0661d("gatt writeDescriptor fail"));
            }
        }
        return zWriteDescriptor;
    }

    /* renamed from: a */
    public C0651e m123a(String str, String str2) {
        return m117a(m118a(str), m118a(str2));
    }

    /* renamed from: a */
    public void m124a() {
        this.f174e.removeMessages(17);
    }

    /* renamed from: a */
    public void m125a(int i, AbstractC0679d abstractC0679d) {
        C0661d c0661d;
        if (Build.VERSION.SDK_INT >= 21) {
            m119a(abstractC0679d);
            if (this.f170a.requestMtu(i)) {
                return;
            }
            m132f();
            if (abstractC0679d == null) {
                return;
            } else {
                c0661d = new C0661d("gatt requestMtu fail");
            }
        } else if (abstractC0679d == null) {
            return;
        } else {
            c0661d = new C0661d("API level lower than 21");
        }
        abstractC0679d.mo191a(c0661d);
    }

    /* renamed from: a */
    public void m126a(AbstractC0680e abstractC0680e, String str, boolean z) {
        BluetoothGattCharacteristic bluetoothGattCharacteristic = this.f172c;
        if (bluetoothGattCharacteristic != null && (bluetoothGattCharacteristic.getProperties() | 16) > 0) {
            m120a(abstractC0680e, str);
            m122a(this.f170a, this.f172c, z, true, abstractC0680e);
        } else if (abstractC0680e != null) {
            abstractC0680e.mo192a(new C0661d("this characteristic not support notify!"));
        }
    }

    /* renamed from: a */
    public void m127a(byte[] bArr, AbstractC0684i abstractC0684i, String str) {
        C0661d c0661d;
        if (bArr == null || bArr.length <= 0) {
            if (abstractC0684i != null) {
                abstractC0684i.mo153a(new C0661d("the data to be written is empty"));
                return;
            }
            return;
        }
        BluetoothGattCharacteristic bluetoothGattCharacteristic = this.f172c;
        if (bluetoothGattCharacteristic == null || (bluetoothGattCharacteristic.getProperties() & 12) == 0) {
            if (abstractC0684i != null) {
                abstractC0684i.mo153a(new C0661d("this characteristic not support write!"));
                return;
            }
            return;
        }
        if (this.f172c.setValue(bArr)) {
            m121a(abstractC0684i, str);
            if (this.f170a.writeCharacteristic(this.f172c)) {
                return;
            }
            m129c();
            if (abstractC0684i == null) {
                return;
            } else {
                c0661d = new C0661d("gatt writeCharacteristic fail");
            }
        } else if (abstractC0684i == null) {
            return;
        } else {
            c0661d = new C0661d("Updates the locally stored value of this characteristic fail");
        }
        abstractC0684i.mo153a(c0661d);
    }

    /* renamed from: b */
    public void m128b() {
        this.f174e.removeMessages(33);
    }

    /* renamed from: c */
    public void m129c() {
        this.f174e.removeMessages(49);
    }

    /* renamed from: d */
    public void m130d() {
        this.f174e.removeMessages(65);
    }

    /* renamed from: e */
    public void m131e() {
        this.f174e.removeMessages(81);
    }

    /* renamed from: f */
    public void m132f() {
        this.f174e.removeMessages(97);
    }
}
