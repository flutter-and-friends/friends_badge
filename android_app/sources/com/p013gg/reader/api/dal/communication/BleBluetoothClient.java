package com.p013gg.reader.api.dal.communication;

import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothDevice;
import android.bluetooth.BluetoothGatt;
import android.bluetooth.BluetoothGattCallback;
import android.bluetooth.BluetoothGattCharacteristic;
import android.bluetooth.BluetoothGattDescriptor;
import android.bluetooth.BluetoothGattService;
import android.bluetooth.BluetoothManager;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Handler;
import android.util.Log;
import com.p013gg.reader.api.dal.communication.BleClientCallback;
import com.p013gg.reader.api.protocol.p014gx.Message;
import com.p013gg.reader.api.utils.HexUtils;
import com.p013gg.reader.api.utils.StringUtils;
import com.zhy.http.okhttp.OkHttpUtils;
import java.net.Socket;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

/* loaded from: classes.dex */
public class BleBluetoothClient extends CommunicationInterface {
    private static final UUID DESCRIPTOR = UUID.fromString("00002902-0000-1000-8000-00805f9b34fb");
    private BluetoothAdapter adapter;
    private BluetoothGatt bluetoothGatt;
    public BleClientCallback.OnBlueConnectCallBack connectCallBack;
    private Context context;
    private BluetoothDevice device;
    private BluetoothGattCharacteristic mNotifyCharacteristic;
    private BluetoothGattCharacteristic mWriteCharacteristic;
    private BluetoothManager manager;
    public BleClientCallback.OnBlueScanCallBack scanCallBack;
    private final String TAG = BleBluetoothClient.class.getName();
    private UUID SERVER_UUID = UUID.fromString("0000fff0-0000-1000-8000-00805F9B34FB");
    private UUID NOTIFY_UUID = UUID.fromString("0000fff1-0000-1000-8000-00805F9B34FB");
    private UUID WRITE_UUID = UUID.fromString("0000fff2-0000-1000-8000-00805F9B34FB");
    private Map<String, BluetoothDevice> deviceMap = new HashMap();
    private Handler scanHandler = new Handler();
    private long writeTime = 50;
    private int mtu = 512;
    private boolean isPackage = false;
    BluetoothAdapter.LeScanCallback leScanCallback = new BluetoothAdapter.LeScanCallback() { // from class: com.gg.reader.api.dal.communication.BleBluetoothClient.1
        @Override // android.bluetooth.BluetoothAdapter.LeScanCallback
        public void onLeScan(BluetoothDevice bluetoothDevice, int i, byte[] bArr) {
            BleBluetoothClient.this.deviceMap.put(bluetoothDevice.getAddress(), bluetoothDevice);
            BleBluetoothClient.this.scanCallBack.onBlueFind(bluetoothDevice);
        }
    };
    private final Runnable mScanRunnable = new Runnable() { // from class: com.gg.reader.api.dal.communication.BleBluetoothClient.2
        @Override // java.lang.Runnable
        public void run() {
            BleBluetoothClient.this.scanBluetooth(false, 5000L);
        }
    };
    BluetoothGattCallback mBluetoothGattCallback = new BluetoothGattCallback() { // from class: com.gg.reader.api.dal.communication.BleBluetoothClient.3
        @Override // android.bluetooth.BluetoothGattCallback
        public void onConnectionStateChange(BluetoothGatt bluetoothGatt, int i, int i2) throws InterruptedException {
            if (i2 != 2) {
                if (i2 == 0) {
                    Log.e(BleBluetoothClient.this.TAG, "STATE_DISCONNECTED");
                    BleBluetoothClient.this.connectCallBack.onDisconnect();
                    return;
                } else {
                    if (i2 == 3) {
                        Log.e(BleBluetoothClient.this.TAG, "STATE_DISCONNECTING");
                        return;
                    }
                    return;
                }
            }
            Log.e(BleBluetoothClient.this.TAG, "STATE_CONNECTED");
            BleBluetoothClient.this.bluetoothGatt.discoverServices();
            Log.e("requestMtu-->", BleBluetoothClient.this.requestMtu(bluetoothGatt) + "");
            try {
                Thread.sleep(200L);
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
        }

        @Override // android.bluetooth.BluetoothGattCallback
        public void onServicesDiscovered(BluetoothGatt bluetoothGatt, int i) {
            if (i == 0) {
                BleBluetoothClient.this.connectCallBack.onConnectSuccess();
                BleBluetoothClient.this.enableTxNotification();
            } else {
                BleBluetoothClient.this.connectCallBack.onConnectFailure();
            }
        }

        @Override // android.bluetooth.BluetoothGattCallback
        public void onCharacteristicRead(BluetoothGatt bluetoothGatt, BluetoothGattCharacteristic bluetoothGattCharacteristic, int i) {
            if (i != 0 || bluetoothGattCharacteristic.getValue().length <= 0) {
                return;
            }
            Log.e(BleBluetoothClient.this.TAG, "onCharacteristicRead" + Arrays.toString(bluetoothGattCharacteristic.getValue()));
        }

        @Override // android.bluetooth.BluetoothGattCallback
        public void onCharacteristicWrite(BluetoothGatt bluetoothGatt, BluetoothGattCharacteristic bluetoothGattCharacteristic, int i) {
            if (i != 0 || bluetoothGattCharacteristic.getValue().length <= 0) {
                return;
            }
            Log.e(BleBluetoothClient.this.TAG, "onCharacteristicWrite" + Arrays.toString(bluetoothGattCharacteristic.getValue()));
        }

        @Override // android.bluetooth.BluetoothGattCallback
        public void onCharacteristicChanged(BluetoothGatt bluetoothGatt, BluetoothGattCharacteristic bluetoothGattCharacteristic) {
            if (bluetoothGattCharacteristic.getValue().length <= 0) {
                Log.e(BleBluetoothClient.this.TAG, "receive data is null");
                return;
            }
            Log.e("ble receive--->", HexUtils.bytes2HexString(bluetoothGattCharacteristic.getValue()));
            try {
                byte[] value = bluetoothGattCharacteristic.getValue();
                synchronized (BleBluetoothClient.this.lockRingBuffer) {
                    while (value.length + BleBluetoothClient.this.ringBuffer.getDataCount() > 1048576) {
                        BleBluetoothClient.this.lockRingBuffer.wait(OkHttpUtils.DEFAULT_MILLISECONDS);
                    }
                    BleBluetoothClient.this.ringBuffer.WriteBuffer(value, 0, value.length);
                    BleBluetoothClient.this.lockRingBuffer.notify();
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }

        @Override // android.bluetooth.BluetoothGattCallback
        public void onDescriptorRead(BluetoothGatt bluetoothGatt, BluetoothGattDescriptor bluetoothGattDescriptor, int i) {
            super.onDescriptorRead(bluetoothGatt, bluetoothGattDescriptor, i);
        }

        @Override // android.bluetooth.BluetoothGattCallback
        public void onDescriptorWrite(BluetoothGatt bluetoothGatt, BluetoothGattDescriptor bluetoothGattDescriptor, int i) {
            super.onDescriptorWrite(bluetoothGatt, bluetoothGattDescriptor, i);
        }
    };

    @Override // com.p013gg.reader.api.dal.communication.CommunicationInterface
    public void dispose() {
    }

    @Override // com.p013gg.reader.api.dal.communication.CommunicationInterface
    public boolean open(String str) {
        return false;
    }

    @Override // com.p013gg.reader.api.dal.communication.CommunicationInterface
    public boolean open(String str, int i, int i2) {
        return false;
    }

    @Override // com.p013gg.reader.api.dal.communication.CommunicationInterface
    public boolean open(Socket socket) {
        return false;
    }

    @Override // com.p013gg.reader.api.dal.communication.CommunicationInterface
    public int receive(byte[] bArr) {
        return 0;
    }

    @Override // com.p013gg.reader.api.dal.communication.CommunicationInterface
    public boolean setBufferSize(int i) {
        return false;
    }

    public BleBluetoothClient(Context context) {
        this.context = context;
        this.manager = (BluetoothManager) this.context.getSystemService("bluetooth");
        this.adapter = this.manager.getAdapter();
    }

    public void setWriteTime(long j) {
        this.writeTime = j;
    }

    public boolean isSupportBle(Context context) {
        return (context == null || !context.getPackageManager().hasSystemFeature("android.hardware.bluetooth_le") || this.adapter == null) ? false : true;
    }

    public boolean isBleEnable(Context context) {
        if (isSupportBle(context)) {
            return this.adapter.isEnabled();
        }
        return false;
    }

    public BluetoothAdapter getAdapter() {
        return this.adapter;
    }

    public UUID getSERVER_UUID() {
        return this.SERVER_UUID;
    }

    public void setSERVER_UUID(UUID uuid) {
        this.SERVER_UUID = uuid;
    }

    public UUID getNOTIFY_UUID() {
        return this.NOTIFY_UUID;
    }

    public void setNOTIFY_UUID(UUID uuid) {
        this.NOTIFY_UUID = uuid;
    }

    public UUID getWRITE_UUID() {
        return this.WRITE_UUID;
    }

    public void setWRITE_UUID(UUID uuid) {
        this.WRITE_UUID = uuid;
    }

    public void enableBluetooth() {
        this.adapter.enable();
    }

    public BluetoothGatt getBluetoothGatt() {
        return this.bluetoothGatt;
    }

    public void openBluetoothSetting() {
        Intent intent = new Intent();
        intent.setAction("android.settings.BLUETOOTH_SETTINGS");
        intent.setFlags(268435456);
        this.context.startActivity(intent);
    }

    public void scanBluetooth(boolean z, long j) {
        if (z) {
            if (this.adapter.isEnabled()) {
                this.scanHandler.postDelayed(this.mScanRunnable, j);
                this.adapter.startLeScan(this.leScanCallback);
                return;
            }
            return;
        }
        this.adapter.stopLeScan(this.leScanCallback);
        this.scanHandler.removeCallbacks(this.mScanRunnable);
    }

    public void stopScanBluetooth() {
        this.adapter.stopLeScan(this.leScanCallback);
    }

    public void enableTxNotification() {
        BluetoothGattService service = this.bluetoothGatt.getService(this.SERVER_UUID);
        this.mWriteCharacteristic = service.getCharacteristic(this.WRITE_UUID);
        this.mNotifyCharacteristic = service.getCharacteristic(this.NOTIFY_UUID);
        this.bluetoothGatt.setCharacteristicNotification(this.mNotifyCharacteristic, true);
        BluetoothGattDescriptor descriptor = this.mNotifyCharacteristic.getDescriptor(DESCRIPTOR);
        if (descriptor != null) {
            if ((this.mNotifyCharacteristic.getProperties() & 16) > 0) {
                descriptor.setValue(BluetoothGattDescriptor.ENABLE_NOTIFICATION_VALUE);
            } else if ((this.mNotifyCharacteristic.getProperties() & 32) > 0) {
                descriptor.setValue(BluetoothGattDescriptor.ENABLE_INDICATION_VALUE);
            }
        }
        this.bluetoothGatt.writeDescriptor(descriptor);
    }

    @Override // com.p013gg.reader.api.dal.communication.CommunicationInterface
    public boolean open(String str, int i) {
        if (StringUtils.isNullOfEmpty(str)) {
            return false;
        }
        if (this.adapter.isDiscovering()) {
            this.adapter.cancelDiscovery();
        }
        BluetoothGatt bluetoothGatt = this.bluetoothGatt;
        if (bluetoothGatt != null) {
            bluetoothGatt.disconnect();
            this.bluetoothGatt.discoverServices();
        }
        if (this.deviceMap.containsKey(str)) {
            this.device = this.deviceMap.get(str);
        } else {
            this.device = this.adapter.getRemoteDevice(str);
        }
        if (this.device == null) {
            return false;
        }
        if (Build.VERSION.SDK_INT >= 26) {
            this.bluetoothGatt = this.device.connectGatt(this.context, false, this.mBluetoothGattCallback, 2, 1);
        } else if (Build.VERSION.SDK_INT >= 23) {
            this.bluetoothGatt = this.device.connectGatt(this.context, false, this.mBluetoothGattCallback, 2);
        } else {
            this.bluetoothGatt = this.device.connectGatt(this.context, false, this.mBluetoothGattCallback);
        }
        this.keepReceived = true;
        startProcess();
        return true;
    }

    @Override // com.p013gg.reader.api.dal.communication.CommunicationInterface
    public void close() {
        this.keepReceived = false;
        BluetoothGatt bluetoothGatt = this.bluetoothGatt;
        if (bluetoothGatt != null) {
            bluetoothGatt.disconnect();
            this.bluetoothGatt.close();
            this.mWriteCharacteristic = null;
            this.mNotifyCharacteristic = null;
            this.bluetoothGatt = null;
        }
        this.device = null;
        synchronized (this.lockRingBuffer) {
            this.lockRingBuffer.notifyAll();
        }
    }

    @Override // com.p013gg.reader.api.dal.communication.CommunicationInterface
    public void send(byte[] bArr) {
        synchronized (BleBluetoothClient.class) {
            try {
                if (this.mWriteCharacteristic != null) {
                    if (this.isPackage) {
                        int length = bArr.length / 20;
                        if (bArr.length % 20 != 0) {
                            length++;
                        }
                        for (int i = 0; i < length; i++) {
                            int i2 = i * 20;
                            this.mWriteCharacteristic.setValue(Arrays.copyOfRange(bArr, i2, i2 + 20));
                            this.bluetoothGatt.writeCharacteristic(this.mWriteCharacteristic);
                            Thread.sleep(this.writeTime);
                        }
                    } else {
                        this.mWriteCharacteristic.setValue(bArr);
                        this.bluetoothGatt.writeCharacteristic(this.mWriteCharacteristic);
                        Thread.sleep(this.writeTime);
                    }
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    @Override // com.p013gg.reader.api.dal.communication.CommunicationInterface
    public void send(Message message) {
        synchronized (BleBluetoothClient.class) {
            try {
                message.pack();
                send(message.toBytes(this.isRs485));
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean requestMtu(BluetoothGatt bluetoothGatt) {
        if (bluetoothGatt != null) {
            return bluetoothGatt.requestMtu(this.mtu);
        }
        return false;
    }

    public void setMtu(int i) {
        this.mtu = i;
    }

    public void setPartPackage(boolean z) {
        this.isPackage = z;
    }
}
