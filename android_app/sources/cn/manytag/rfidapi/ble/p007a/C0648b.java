package cn.manytag.rfidapi.ble.p007a;

import android.bluetooth.BluetoothGatt;
import android.bluetooth.BluetoothGattCallback;
import android.bluetooth.BluetoothGattCharacteristic;
import android.bluetooth.BluetoothGattDescriptor;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import cn.highlight.p004tx.ble.data.BleMsg;
import cn.manytag.rfidapi.ble.callback.AbstractC0678c;
import cn.manytag.rfidapi.ble.callback.AbstractC0680e;
import cn.manytag.rfidapi.ble.callback.AbstractC0681f;
import cn.manytag.rfidapi.ble.callback.AbstractC0684i;
import cn.manytag.rfidapi.ble.data.C0687a;
import cn.manytag.rfidapi.ble.p010d.C0685a;
import java.util.Iterator;
import java.util.Map;

/* renamed from: cn.manytag.rfidapi.ble.a.b */
/* loaded from: classes.dex */
class C0648b extends BluetoothGattCallback {

    /* renamed from: a */
    final /* synthetic */ C0647a f162a;

    C0648b(C0647a c0647a) {
        this.f162a = c0647a;
    }

    @Override // android.bluetooth.BluetoothGattCallback
    public void onCharacteristicChanged(BluetoothGatt bluetoothGatt, BluetoothGattCharacteristic bluetoothGattCharacteristic) {
        Handler handlerB;
        Handler handlerB2;
        super.onCharacteristicChanged(bluetoothGatt, bluetoothGattCharacteristic);
        Iterator it = this.f162a.f151d.entrySet().iterator();
        while (it.hasNext()) {
            Object value = ((Map.Entry) it.next()).getValue();
            if (value instanceof AbstractC0680e) {
                AbstractC0680e abstractC0680e = (AbstractC0680e) value;
                if (bluetoothGattCharacteristic.getUuid().toString().equalsIgnoreCase(abstractC0680e.m183a()) && (handlerB2 = abstractC0680e.m186b()) != null) {
                    Message messageObtainMessage = handlerB2.obtainMessage();
                    messageObtainMessage.what = 19;
                    messageObtainMessage.obj = abstractC0680e;
                    Bundle bundle = new Bundle();
                    bundle.putByteArray(BleMsg.KEY_NOTIFY_BUNDLE_VALUE, bluetoothGattCharacteristic.getValue());
                    messageObtainMessage.setData(bundle);
                    handlerB2.sendMessage(messageObtainMessage);
                }
            }
        }
        Iterator it2 = this.f162a.f152e.entrySet().iterator();
        while (it2.hasNext()) {
            Object value2 = ((Map.Entry) it2.next()).getValue();
            if (value2 instanceof AbstractC0678c) {
                AbstractC0678c abstractC0678c = (AbstractC0678c) value2;
                if (bluetoothGattCharacteristic.getUuid().toString().equalsIgnoreCase(abstractC0678c.m183a()) && (handlerB = abstractC0678c.m186b()) != null) {
                    Message messageObtainMessage2 = handlerB.obtainMessage();
                    messageObtainMessage2.what = 35;
                    messageObtainMessage2.obj = abstractC0678c;
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
        Iterator it = this.f162a.f154g.entrySet().iterator();
        while (it.hasNext()) {
            Object value = ((Map.Entry) it.next()).getValue();
            if (value instanceof AbstractC0681f) {
                AbstractC0681f abstractC0681f = (AbstractC0681f) value;
                if (bluetoothGattCharacteristic.getUuid().toString().equalsIgnoreCase(abstractC0681f.m183a()) && (handlerB = abstractC0681f.m186b()) != null) {
                    Message messageObtainMessage = handlerB.obtainMessage();
                    messageObtainMessage.what = 66;
                    messageObtainMessage.obj = abstractC0681f;
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
        Iterator it = this.f162a.f153f.entrySet().iterator();
        while (it.hasNext()) {
            Object value = ((Map.Entry) it.next()).getValue();
            if (value instanceof AbstractC0684i) {
                AbstractC0684i abstractC0684i = (AbstractC0684i) value;
                if (bluetoothGattCharacteristic.getUuid().toString().equalsIgnoreCase(abstractC0684i.m183a()) && (handlerB = abstractC0684i.m186b()) != null) {
                    Message messageObtainMessage = handlerB.obtainMessage();
                    messageObtainMessage.what = 50;
                    messageObtainMessage.obj = abstractC0684i;
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
        C0685a.m201a("BluetoothGattCallback：onConnectionStateChange \nstatus: " + i + "\nnewState: " + i2 + "\ncurrentThread: " + Thread.currentThread().getId());
        this.f162a.f158k = bluetoothGatt;
        this.f162a.f159l.removeMessages(7);
        if (i2 == 2) {
            Message messageObtainMessage = this.f162a.f159l.obtainMessage();
            messageObtainMessage.what = 4;
            this.f162a.f159l.sendMessageDelayed(messageObtainMessage, 500L);
            return;
        }
        if (i2 == 0) {
            if (this.f162a.f155h == EnumC0649c.CONNECT_CONNECTING) {
                Message messageObtainMessage2 = this.f162a.f159l.obtainMessage();
                messageObtainMessage2.what = 1;
                messageObtainMessage2.obj = new C0687a(i);
                this.f162a.f159l.sendMessage(messageObtainMessage2);
                return;
            }
            if (this.f162a.f155h == EnumC0649c.CONNECT_CONNECTED) {
                Message messageObtainMessage3 = this.f162a.f159l.obtainMessage();
                messageObtainMessage3.what = 2;
                C0687a c0687a = new C0687a(i);
                c0687a.m205a(this.f162a.f156i);
                messageObtainMessage3.obj = c0687a;
                this.f162a.f159l.sendMessage(messageObtainMessage3);
            }
        }
    }

    @Override // android.bluetooth.BluetoothGattCallback
    public void onDescriptorWrite(BluetoothGatt bluetoothGatt, BluetoothGattDescriptor bluetoothGattDescriptor, int i) {
        Handler handlerB;
        Handler handlerB2;
        super.onDescriptorWrite(bluetoothGatt, bluetoothGattDescriptor, i);
        Iterator it = this.f162a.f151d.entrySet().iterator();
        while (it.hasNext()) {
            Object value = ((Map.Entry) it.next()).getValue();
            if (value instanceof AbstractC0680e) {
                AbstractC0680e abstractC0680e = (AbstractC0680e) value;
                if (bluetoothGattDescriptor.getCharacteristic().getUuid().toString().equalsIgnoreCase(abstractC0680e.m183a()) && (handlerB2 = abstractC0680e.m186b()) != null) {
                    Message messageObtainMessage = handlerB2.obtainMessage();
                    messageObtainMessage.what = 18;
                    messageObtainMessage.obj = abstractC0680e;
                    Bundle bundle = new Bundle();
                    bundle.putInt(BleMsg.KEY_NOTIFY_BUNDLE_STATUS, i);
                    messageObtainMessage.setData(bundle);
                    handlerB2.sendMessage(messageObtainMessage);
                }
            }
        }
        Iterator it2 = this.f162a.f152e.entrySet().iterator();
        while (it2.hasNext()) {
            Object value2 = ((Map.Entry) it2.next()).getValue();
            if (value2 instanceof AbstractC0678c) {
                AbstractC0678c abstractC0678c = (AbstractC0678c) value2;
                if (bluetoothGattDescriptor.getCharacteristic().getUuid().toString().equalsIgnoreCase(abstractC0678c.m183a()) && (handlerB = abstractC0678c.m186b()) != null) {
                    Message messageObtainMessage2 = handlerB.obtainMessage();
                    messageObtainMessage2.what = 34;
                    messageObtainMessage2.obj = abstractC0678c;
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
        if (this.f162a.f150c == null || (handlerB = this.f162a.f150c.m186b()) == null) {
            return;
        }
        Message messageObtainMessage = handlerB.obtainMessage();
        messageObtainMessage.what = 98;
        messageObtainMessage.obj = this.f162a.f150c;
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
        if (this.f162a.f149b == null || (handlerB = this.f162a.f149b.m186b()) == null) {
            return;
        }
        Message messageObtainMessage = handlerB.obtainMessage();
        messageObtainMessage.what = 82;
        messageObtainMessage.obj = this.f162a.f149b;
        Bundle bundle = new Bundle();
        bundle.putInt(BleMsg.KEY_READ_RSSI_BUNDLE_STATUS, i2);
        bundle.putInt(BleMsg.KEY_READ_RSSI_BUNDLE_VALUE, i);
        messageObtainMessage.setData(bundle);
        handlerB.sendMessage(messageObtainMessage);
    }

    @Override // android.bluetooth.BluetoothGattCallback
    public void onServicesDiscovered(BluetoothGatt bluetoothGatt, int i) {
        super.onServicesDiscovered(bluetoothGatt, i);
        C0685a.m201a("BluetoothGattCallback：onServicesDiscovered \nstatus: " + i + "\ncurrentThread: " + Thread.currentThread().getId());
        this.f162a.f158k = bluetoothGatt;
        Message messageObtainMessage = this.f162a.f159l.obtainMessage();
        if (i == 0) {
            messageObtainMessage.what = 6;
            messageObtainMessage.obj = new C0687a(i);
        } else {
            messageObtainMessage.what = 5;
        }
        this.f162a.f159l.sendMessage(messageObtainMessage);
    }
}
