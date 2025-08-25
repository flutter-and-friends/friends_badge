package cn.manytag.rfidapi.ble.a;

import android.bluetooth.BluetoothGatt;
import android.bluetooth.BluetoothGattCallback;
import android.bluetooth.BluetoothGattCharacteristic;
import android.bluetooth.BluetoothGattDescriptor;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import cn.highlight.tx.ble.data.BleMsg;
import java.util.Iterator;
import java.util.Map;

/* loaded from: classes.dex */
class b extends BluetoothGattCallback {
    final /* synthetic */ a a;

    b(a aVar) {
        this.a = aVar;
    }

    @Override // android.bluetooth.BluetoothGattCallback
    public void onCharacteristicChanged(BluetoothGatt bluetoothGatt, BluetoothGattCharacteristic bluetoothGattCharacteristic) {
        Handler handlerB;
        Handler handlerB2;
        super.onCharacteristicChanged(bluetoothGatt, bluetoothGattCharacteristic);
        Iterator it = this.a.d.entrySet().iterator();
        while (it.hasNext()) {
            Object value = ((Map.Entry) it.next()).getValue();
            if (value instanceof cn.manytag.rfidapi.ble.callback.e) {
                cn.manytag.rfidapi.ble.callback.e eVar = (cn.manytag.rfidapi.ble.callback.e) value;
                if (bluetoothGattCharacteristic.getUuid().toString().equalsIgnoreCase(eVar.a()) && (handlerB2 = eVar.b()) != null) {
                    Message messageObtainMessage = handlerB2.obtainMessage();
                    messageObtainMessage.what = 19;
                    messageObtainMessage.obj = eVar;
                    Bundle bundle = new Bundle();
                    bundle.putByteArray(BleMsg.KEY_NOTIFY_BUNDLE_VALUE, bluetoothGattCharacteristic.getValue());
                    messageObtainMessage.setData(bundle);
                    handlerB2.sendMessage(messageObtainMessage);
                }
            }
        }
        Iterator it2 = this.a.e.entrySet().iterator();
        while (it2.hasNext()) {
            Object value2 = ((Map.Entry) it2.next()).getValue();
            if (value2 instanceof cn.manytag.rfidapi.ble.callback.c) {
                cn.manytag.rfidapi.ble.callback.c cVar = (cn.manytag.rfidapi.ble.callback.c) value2;
                if (bluetoothGattCharacteristic.getUuid().toString().equalsIgnoreCase(cVar.a()) && (handlerB = cVar.b()) != null) {
                    Message messageObtainMessage2 = handlerB.obtainMessage();
                    messageObtainMessage2.what = 35;
                    messageObtainMessage2.obj = cVar;
                    Bundle bundle2 = new Bundle();
                    bundle2.putByteArray(BleMsg.KEY_INDICATE_BUNDLE_VALUE, bluetoothGattCharacteristic.getValue());
                    messageObtainMessage2.setData(bundle2);
                    handlerB.sendMessage(messageObtainMessage2);
                }
            }
        }
    }

    @Override // android.bluetooth.BluetoothGattCallback
    public void onCharacteristicRead(BluetoothGatt bluetoothGatt, BluetoothGattCharacteristic bluetoothGattCharacteristic, int i) {
        Handler handlerB;
        super.onCharacteristicRead(bluetoothGatt, bluetoothGattCharacteristic, i);
        Iterator it = this.a.g.entrySet().iterator();
        while (it.hasNext()) {
            Object value = ((Map.Entry) it.next()).getValue();
            if (value instanceof cn.manytag.rfidapi.ble.callback.f) {
                cn.manytag.rfidapi.ble.callback.f fVar = (cn.manytag.rfidapi.ble.callback.f) value;
                if (bluetoothGattCharacteristic.getUuid().toString().equalsIgnoreCase(fVar.a()) && (handlerB = fVar.b()) != null) {
                    Message messageObtainMessage = handlerB.obtainMessage();
                    messageObtainMessage.what = 66;
                    messageObtainMessage.obj = fVar;
                    Bundle bundle = new Bundle();
                    bundle.putInt(BleMsg.KEY_READ_BUNDLE_STATUS, i);
                    bundle.putByteArray(BleMsg.KEY_READ_BUNDLE_VALUE, bluetoothGattCharacteristic.getValue());
                    messageObtainMessage.setData(bundle);
                    handlerB.sendMessage(messageObtainMessage);
                }
            }
        }
    }

    @Override // android.bluetooth.BluetoothGattCallback
    public void onCharacteristicWrite(BluetoothGatt bluetoothGatt, BluetoothGattCharacteristic bluetoothGattCharacteristic, int i) {
        Handler handlerB;
        super.onCharacteristicWrite(bluetoothGatt, bluetoothGattCharacteristic, i);
        Iterator it = this.a.f.entrySet().iterator();
        while (it.hasNext()) {
            Object value = ((Map.Entry) it.next()).getValue();
            if (value instanceof cn.manytag.rfidapi.ble.callback.i) {
                cn.manytag.rfidapi.ble.callback.i iVar = (cn.manytag.rfidapi.ble.callback.i) value;
                if (bluetoothGattCharacteristic.getUuid().toString().equalsIgnoreCase(iVar.a()) && (handlerB = iVar.b()) != null) {
                    Message messageObtainMessage = handlerB.obtainMessage();
                    messageObtainMessage.what = 50;
                    messageObtainMessage.obj = iVar;
                    Bundle bundle = new Bundle();
                    bundle.putInt(BleMsg.KEY_WRITE_BUNDLE_STATUS, i);
                    bundle.putByteArray(BleMsg.KEY_WRITE_BUNDLE_VALUE, bluetoothGattCharacteristic.getValue());
                    messageObtainMessage.setData(bundle);
                    handlerB.sendMessage(messageObtainMessage);
                }
            }
        }
    }

    @Override // android.bluetooth.BluetoothGattCallback
    public void onConnectionStateChange(BluetoothGatt bluetoothGatt, int i, int i2) {
        super.onConnectionStateChange(bluetoothGatt, i, i2);
        cn.manytag.rfidapi.ble.d.a.a("BluetoothGattCallback：onConnectionStateChange \nstatus: " + i + "\nnewState: " + i2 + "\ncurrentThread: " + Thread.currentThread().getId());
        this.a.k = bluetoothGatt;
        this.a.l.removeMessages(7);
        if (i2 == 2) {
            Message messageObtainMessage = this.a.l.obtainMessage();
            messageObtainMessage.what = 4;
            this.a.l.sendMessageDelayed(messageObtainMessage, 500L);
            return;
        }
        if (i2 == 0) {
            if (this.a.h == c.CONNECT_CONNECTING) {
                Message messageObtainMessage2 = this.a.l.obtainMessage();
                messageObtainMessage2.what = 1;
                messageObtainMessage2.obj = new cn.manytag.rfidapi.ble.data.a(i);
                this.a.l.sendMessage(messageObtainMessage2);
                return;
            }
            if (this.a.h == c.CONNECT_CONNECTED) {
                Message messageObtainMessage3 = this.a.l.obtainMessage();
                messageObtainMessage3.what = 2;
                cn.manytag.rfidapi.ble.data.a aVar = new cn.manytag.rfidapi.ble.data.a(i);
                aVar.a(this.a.i);
                messageObtainMessage3.obj = aVar;
                this.a.l.sendMessage(messageObtainMessage3);
            }
        }
    }

    @Override // android.bluetooth.BluetoothGattCallback
    public void onDescriptorWrite(BluetoothGatt bluetoothGatt, BluetoothGattDescriptor bluetoothGattDescriptor, int i) {
        Handler handlerB;
        Handler handlerB2;
        super.onDescriptorWrite(bluetoothGatt, bluetoothGattDescriptor, i);
        Iterator it = this.a.d.entrySet().iterator();
        while (it.hasNext()) {
            Object value = ((Map.Entry) it.next()).getValue();
            if (value instanceof cn.manytag.rfidapi.ble.callback.e) {
                cn.manytag.rfidapi.ble.callback.e eVar = (cn.manytag.rfidapi.ble.callback.e) value;
                if (bluetoothGattDescriptor.getCharacteristic().getUuid().toString().equalsIgnoreCase(eVar.a()) && (handlerB2 = eVar.b()) != null) {
                    Message messageObtainMessage = handlerB2.obtainMessage();
                    messageObtainMessage.what = 18;
                    messageObtainMessage.obj = eVar;
                    Bundle bundle = new Bundle();
                    bundle.putInt(BleMsg.KEY_NOTIFY_BUNDLE_STATUS, i);
                    messageObtainMessage.setData(bundle);
                    handlerB2.sendMessage(messageObtainMessage);
                }
            }
        }
        Iterator it2 = this.a.e.entrySet().iterator();
        while (it2.hasNext()) {
            Object value2 = ((Map.Entry) it2.next()).getValue();
            if (value2 instanceof cn.manytag.rfidapi.ble.callback.c) {
                cn.manytag.rfidapi.ble.callback.c cVar = (cn.manytag.rfidapi.ble.callback.c) value2;
                if (bluetoothGattDescriptor.getCharacteristic().getUuid().toString().equalsIgnoreCase(cVar.a()) && (handlerB = cVar.b()) != null) {
                    Message messageObtainMessage2 = handlerB.obtainMessage();
                    messageObtainMessage2.what = 34;
                    messageObtainMessage2.obj = cVar;
                    Bundle bundle2 = new Bundle();
                    bundle2.putInt(BleMsg.KEY_INDICATE_BUNDLE_STATUS, i);
                    messageObtainMessage2.setData(bundle2);
                    handlerB.sendMessage(messageObtainMessage2);
                }
            }
        }
    }

    @Override // android.bluetooth.BluetoothGattCallback
    public void onMtuChanged(BluetoothGatt bluetoothGatt, int i, int i2) {
        Handler handlerB;
        super.onMtuChanged(bluetoothGatt, i, i2);
        if (this.a.c == null || (handlerB = this.a.c.b()) == null) {
            return;
        }
        Message messageObtainMessage = handlerB.obtainMessage();
        messageObtainMessage.what = 98;
        messageObtainMessage.obj = this.a.c;
        Bundle bundle = new Bundle();
        bundle.putInt(BleMsg.KEY_SET_MTU_BUNDLE_STATUS, i2);
        bundle.putInt(BleMsg.KEY_SET_MTU_BUNDLE_VALUE, i);
        messageObtainMessage.setData(bundle);
        handlerB.sendMessage(messageObtainMessage);
    }

    @Override // android.bluetooth.BluetoothGattCallback
    public void onReadRemoteRssi(BluetoothGatt bluetoothGatt, int i, int i2) {
        Handler handlerB;
        super.onReadRemoteRssi(bluetoothGatt, i, i2);
        if (this.a.b == null || (handlerB = this.a.b.b()) == null) {
            return;
        }
        Message messageObtainMessage = handlerB.obtainMessage();
        messageObtainMessage.what = 82;
        messageObtainMessage.obj = this.a.b;
        Bundle bundle = new Bundle();
        bundle.putInt(BleMsg.KEY_READ_RSSI_BUNDLE_STATUS, i2);
        bundle.putInt(BleMsg.KEY_READ_RSSI_BUNDLE_VALUE, i);
        messageObtainMessage.setData(bundle);
        handlerB.sendMessage(messageObtainMessage);
    }

    @Override // android.bluetooth.BluetoothGattCallback
    public void onServicesDiscovered(BluetoothGatt bluetoothGatt, int i) {
        super.onServicesDiscovered(bluetoothGatt, i);
        cn.manytag.rfidapi.ble.d.a.a("BluetoothGattCallback：onServicesDiscovered \nstatus: " + i + "\ncurrentThread: " + Thread.currentThread().getId());
        this.a.k = bluetoothGatt;
        Message messageObtainMessage = this.a.l.obtainMessage();
        if (i == 0) {
            messageObtainMessage.what = 6;
            messageObtainMessage.obj = new cn.manytag.rfidapi.ble.data.a(i);
        } else {
            messageObtainMessage.what = 5;
        }
        this.a.l.sendMessage(messageObtainMessage);
    }
}
