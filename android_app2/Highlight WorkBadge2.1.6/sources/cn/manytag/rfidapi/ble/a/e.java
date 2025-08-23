package cn.manytag.rfidapi.ble.a;

import android.bluetooth.BluetoothGatt;
import android.bluetooth.BluetoothGattCharacteristic;
import android.bluetooth.BluetoothGattDescriptor;
import android.bluetooth.BluetoothGattService;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import java.util.UUID;

/* loaded from: classes.dex */
public class e {
    private BluetoothGatt a;
    private BluetoothGattService b;
    private BluetoothGattCharacteristic c;
    private a d;
    private Handler e = new f(this, Looper.getMainLooper());

    e(a aVar) {
        this.d = aVar;
        this.a = aVar.g();
    }

    private e a(UUID uuid, UUID uuid2) {
        BluetoothGatt bluetoothGatt;
        if (uuid != null && (bluetoothGatt = this.a) != null) {
            this.b = bluetoothGatt.getService(uuid);
        }
        BluetoothGattService bluetoothGattService = this.b;
        if (bluetoothGattService != null && uuid2 != null) {
            this.c = bluetoothGattService.getCharacteristic(uuid2);
        }
        return this;
    }

    private UUID a(String str) {
        if (str == null) {
            return null;
        }
        return UUID.fromString(str);
    }

    private void a(cn.manytag.rfidapi.ble.callback.d dVar) {
        if (dVar != null) {
            f();
            dVar.a(this.e);
            this.d.a(dVar);
            Handler handler = this.e;
            handler.sendMessageDelayed(handler.obtainMessage(97, dVar), cn.manytag.rfidapi.ble.a.a().f());
        }
    }

    private void a(cn.manytag.rfidapi.ble.callback.e eVar, String str) {
        if (eVar != null) {
            a();
            eVar.a(str);
            eVar.a(this.e);
            this.d.a(str, eVar);
            Handler handler = this.e;
            handler.sendMessageDelayed(handler.obtainMessage(17, eVar), cn.manytag.rfidapi.ble.a.a().f());
        }
    }

    private void a(cn.manytag.rfidapi.ble.callback.i iVar, String str) {
        if (iVar != null) {
            c();
            iVar.a(str);
            iVar.a(this.e);
            this.d.a(str, iVar);
            Handler handler = this.e;
            handler.sendMessageDelayed(handler.obtainMessage(49, iVar), cn.manytag.rfidapi.ble.a.a().f());
        }
    }

    private boolean a(BluetoothGatt bluetoothGatt, BluetoothGattCharacteristic bluetoothGattCharacteristic, boolean z, boolean z2, cn.manytag.rfidapi.ble.callback.e eVar) {
        if (bluetoothGatt == null || bluetoothGattCharacteristic == null) {
            a();
            if (eVar != null) {
                eVar.a(new cn.manytag.rfidapi.ble.b.d("gatt or characteristic equal null"));
            }
            return false;
        }
        if (!bluetoothGatt.setCharacteristicNotification(bluetoothGattCharacteristic, z2)) {
            a();
            if (eVar != null) {
                eVar.a(new cn.manytag.rfidapi.ble.b.d("gatt setCharacteristicNotification fail"));
            }
            return false;
        }
        BluetoothGattDescriptor descriptor = bluetoothGattCharacteristic.getDescriptor(z ? bluetoothGattCharacteristic.getUuid() : a("00002902-0000-1000-8000-00805f9b34fb"));
        if (descriptor == null) {
            a();
            if (eVar != null) {
                eVar.a(new cn.manytag.rfidapi.ble.b.d("descriptor equals null"));
            }
            return false;
        }
        descriptor.setValue(z2 ? BluetoothGattDescriptor.ENABLE_NOTIFICATION_VALUE : BluetoothGattDescriptor.DISABLE_NOTIFICATION_VALUE);
        boolean zWriteDescriptor = bluetoothGatt.writeDescriptor(descriptor);
        if (!zWriteDescriptor) {
            a();
            if (eVar != null) {
                eVar.a(new cn.manytag.rfidapi.ble.b.d("gatt writeDescriptor fail"));
            }
        }
        return zWriteDescriptor;
    }

    public e a(String str, String str2) {
        return a(a(str), a(str2));
    }

    public void a() {
        this.e.removeMessages(17);
    }

    public void a(int i, cn.manytag.rfidapi.ble.callback.d dVar) {
        cn.manytag.rfidapi.ble.b.d dVar2;
        if (Build.VERSION.SDK_INT >= 21) {
            a(dVar);
            if (this.a.requestMtu(i)) {
                return;
            }
            f();
            if (dVar == null) {
                return;
            } else {
                dVar2 = new cn.manytag.rfidapi.ble.b.d("gatt requestMtu fail");
            }
        } else if (dVar == null) {
            return;
        } else {
            dVar2 = new cn.manytag.rfidapi.ble.b.d("API level lower than 21");
        }
        dVar.a(dVar2);
    }

    public void a(cn.manytag.rfidapi.ble.callback.e eVar, String str, boolean z) {
        BluetoothGattCharacteristic bluetoothGattCharacteristic = this.c;
        if (bluetoothGattCharacteristic != null && (bluetoothGattCharacteristic.getProperties() | 16) > 0) {
            a(eVar, str);
            a(this.a, this.c, z, true, eVar);
        } else if (eVar != null) {
            eVar.a(new cn.manytag.rfidapi.ble.b.d("this characteristic not support notify!"));
        }
    }

    public void a(byte[] bArr, cn.manytag.rfidapi.ble.callback.i iVar, String str) {
        cn.manytag.rfidapi.ble.b.d dVar;
        if (bArr == null || bArr.length <= 0) {
            if (iVar != null) {
                iVar.a(new cn.manytag.rfidapi.ble.b.d("the data to be written is empty"));
                return;
            }
            return;
        }
        BluetoothGattCharacteristic bluetoothGattCharacteristic = this.c;
        if (bluetoothGattCharacteristic == null || (bluetoothGattCharacteristic.getProperties() & 12) == 0) {
            if (iVar != null) {
                iVar.a(new cn.manytag.rfidapi.ble.b.d("this characteristic not support write!"));
                return;
            }
            return;
        }
        if (this.c.setValue(bArr)) {
            a(iVar, str);
            if (this.a.writeCharacteristic(this.c)) {
                return;
            }
            c();
            if (iVar == null) {
                return;
            } else {
                dVar = new cn.manytag.rfidapi.ble.b.d("gatt writeCharacteristic fail");
            }
        } else if (iVar == null) {
            return;
        } else {
            dVar = new cn.manytag.rfidapi.ble.b.d("Updates the locally stored value of this characteristic fail");
        }
        iVar.a(dVar);
    }

    public void b() {
        this.e.removeMessages(33);
    }

    public void c() {
        this.e.removeMessages(49);
    }

    public void d() {
        this.e.removeMessages(65);
    }

    public void e() {
        this.e.removeMessages(81);
    }

    public void f() {
        this.e.removeMessages(97);
    }
}
