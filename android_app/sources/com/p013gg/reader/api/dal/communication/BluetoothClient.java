package com.p013gg.reader.api.dal.communication;

import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothDevice;
import android.bluetooth.BluetoothSocket;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.util.Log;
import com.p013gg.reader.api.protocol.p014gx.Message;
import com.p013gg.reader.api.protocol.p014gx.MsgAppGetReaderInfo;
import com.p013gg.reader.api.utils.StringUtils;
import com.p013gg.reader.api.utils.ThreadPoolUtils;
import com.zhy.http.okhttp.OkHttpUtils;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.Socket;
import java.util.Date;
import java.util.HashSet;
import java.util.Set;
import java.util.UUID;

/* loaded from: classes.dex */
public class BluetoothClient extends CommunicationInterface {
    private static final UUID SPP_UUID = UUID.fromString("00001101-0000-1000-8000-00805F9B34FB");
    public BluetoothHandler bluetoothHandler;
    private BluetoothDevice device;
    private InputStream inputStream;
    private OutputStream outputStream;
    private BluetoothSocket socket;
    private String TAG = BluetoothClient.class.getName();
    private Date lastUrgentData = null;
    private int count = 1;
    private int reconnection = 10;
    private int tempReConCount = 0;
    private BroadcastReceiver receiver = new BroadcastReceiver() { // from class: com.gg.reader.api.dal.communication.BluetoothClient.2
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            String action = intent.getAction();
            Set<BluetoothDevice> bondedDevices = BluetoothClient.this.bluetoothAdapter.getBondedDevices();
            if (bondedDevices.size() > 0) {
                for (BluetoothDevice bluetoothDevice : bondedDevices) {
                    if (BluetoothClient.this.bluetoothHandler != null) {
                        BluetoothClient.this.bluetoothHandler.dispense(bluetoothDevice);
                    }
                }
            }
            if ("android.bluetooth.device.action.FOUND".equals(action)) {
                BluetoothDevice bluetoothDevice2 = (BluetoothDevice) intent.getParcelableExtra("android.bluetooth.device.extra.DEVICE");
                if (bluetoothDevice2.getBondState() == 12 || BluetoothClient.this.bluetoothHandler == null) {
                    return;
                }
                if (!StringUtils.isNullOfEmpty(bluetoothDevice2.getName())) {
                    BluetoothClient.this.bluetoothHandler.dispense(bluetoothDevice2);
                    return;
                } else {
                    BluetoothClient.this.bluetoothHandler.dispense(bluetoothDevice2);
                    return;
                }
            }
            if ("android.bluetooth.adapter.action.DISCOVERY_FINISHED".equals(action)) {
                if (BluetoothClient.this.bluetoothHandler != null) {
                    BluetoothClient.this.bluetoothHandler.finishDiscover();
                }
            } else {
                if (!"android.bluetooth.adapter.action.DISCOVERY_STARTED".equals(action) || BluetoothClient.this.bluetoothHandler == null) {
                    return;
                }
                BluetoothClient.this.bluetoothHandler.startDiscover();
            }
        }
    };
    private BluetoothAdapter bluetoothAdapter = BluetoothAdapter.getDefaultAdapter();

    @Override // com.p013gg.reader.api.dal.communication.CommunicationInterface
    public void dispose() {
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

    public BluetoothAdapter getAdapter() {
        return this.bluetoothAdapter;
    }

    @Override // com.p013gg.reader.api.dal.communication.CommunicationInterface
    public boolean open(String str, int i) throws IOException {
        try {
            try {
                if (this.socket == null && !StringUtils.isNullOfEmpty(str)) {
                    if (this.bluetoothAdapter.isDiscovering()) {
                        this.bluetoothAdapter.cancelDiscovery();
                    }
                    this.device = this.bluetoothAdapter.getRemoteDevice(str);
                    if (i == 0) {
                        this.socket = this.device.createInsecureRfcommSocketToServiceRecord(SPP_UUID);
                    } else {
                        this.socket = this.device.createRfcommSocketToServiceRecord(SPP_UUID);
                    }
                    this.socket.connect();
                    this.inputStream = this.socket.getInputStream();
                    this.outputStream = this.socket.getOutputStream();
                    this.keepReceived = true;
                    this.lastUrgentData = new Date();
                    startReceive();
                    startProcess();
                    return true;
                }
                return false;
            } catch (IOException e) {
                Log.e(BluetoothClient.class.getName(), e.getMessage());
                return false;
            }
        } catch (Exception unused) {
            this.socket.close();
            this.socket = null;
            return false;
        }
    }

    @Override // com.p013gg.reader.api.dal.communication.CommunicationInterface
    public boolean open(String str) throws IOException {
        try {
            try {
                if (this.socket == null && !StringUtils.isNullOfEmpty(str)) {
                    if (this.bluetoothAdapter.isDiscovering()) {
                        this.bluetoothAdapter.cancelDiscovery();
                    }
                    this.device = this.bluetoothAdapter.getRemoteDevice(str);
                    this.socket = this.device.createInsecureRfcommSocketToServiceRecord(SPP_UUID);
                    this.socket.connect();
                    this.inputStream = this.socket.getInputStream();
                    this.outputStream = this.socket.getOutputStream();
                    this.keepReceived = true;
                    this.lastUrgentData = new Date();
                    startReceive();
                    startProcess();
                    return true;
                }
                return false;
            } catch (Exception unused) {
                this.socket.close();
                this.socket = null;
                return false;
            }
        } catch (IOException e) {
            Log.e(BluetoothClient.class.getName(), e.getMessage());
            return false;
        }
    }

    @Override // com.p013gg.reader.api.dal.communication.CommunicationInterface
    public void close() throws IOException {
        try {
            this.keepReceived = false;
            this.onDisconnected = null;
            if (this.socket != null) {
                this.socket.close();
                this.inputStream = null;
                this.outputStream = null;
            }
            this.socket = null;
            synchronized (this.lockRingBuffer) {
                this.lockRingBuffer.notifyAll();
            }
        } catch (Exception unused) {
        }
    }

    @Override // com.p013gg.reader.api.dal.communication.CommunicationInterface
    public void send(byte[] bArr) {
        synchronized (this) {
            try {
                if (this.outputStream != null) {
                    this.outputStream.write(bArr);
                }
            } catch (IOException unused) {
            }
        }
    }

    @Override // com.p013gg.reader.api.dal.communication.CommunicationInterface
    public void send(Message message) {
        try {
            message.pack();
            send(message.toBytes(this.isRs485));
        } catch (Exception unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isRemoteClosed() {
        if (this.socket == null) {
            return true;
        }
        Date date = new Date();
        long time = date.getTime() - this.lastUrgentData.getTime();
        int i = this.count;
        if (time > i * 3000) {
            try {
                this.count = i + 1;
                send(new MsgAppGetReaderInfo());
            } catch (Exception unused) {
            }
        }
        return date.getTime() - this.lastUrgentData.getTime() > 15000;
    }

    public void startReceive() {
        ThreadPoolUtils.run(new Runnable() { // from class: com.gg.reader.api.dal.communication.BluetoothClient.1
            @Override // java.lang.Runnable
            public void run() throws Exception {
                while (BluetoothClient.this.keepReceived) {
                    try {
                        try {
                            int iAvailable = BluetoothClient.this.inputStream.available();
                            if (iAvailable <= 0) {
                                Thread.sleep(100L);
                            }
                            if (iAvailable > 0) {
                                iAvailable = BluetoothClient.this.inputStream.read(BluetoothClient.this.rcvBuff, 0, BluetoothClient.this.rcvBuff.length);
                                synchronized (BluetoothClient.this.lockRingBuffer) {
                                    while (BluetoothClient.this.ringBuffer.getDataCount() + iAvailable > 1048576) {
                                        BluetoothClient.this.lockRingBuffer.wait(OkHttpUtils.DEFAULT_MILLISECONDS);
                                    }
                                    BluetoothClient.this.ringBuffer.WriteBuffer(BluetoothClient.this.rcvBuff, 0, iAvailable);
                                    BluetoothClient.this.lockRingBuffer.notify();
                                }
                            }
                            if (!BluetoothClient.this._isSendHeartbeat) {
                                continue;
                            } else if (iAvailable <= 0) {
                                if (BluetoothClient.this.isRemoteClosed()) {
                                    throw new Exception("remote closed.");
                                }
                            } else {
                                BluetoothClient.this.lastUrgentData = new Date();
                                BluetoothClient.this.count = 1;
                            }
                        } catch (InterruptedException e) {
                            e.printStackTrace();
                        }
                    } catch (Exception unused) {
                        BluetoothClient.this.triggerDisconnected();
                        Thread.sleep(3000L);
                    }
                }
            }
        });
    }

    public void scanBluetooth(Context context) {
        BluetoothAdapter bluetoothAdapter = this.bluetoothAdapter;
        if (bluetoothAdapter != null) {
            if (!bluetoothAdapter.isEnabled()) {
                this.bluetoothAdapter.enable();
                return;
            } else {
                this.bluetoothAdapter.startDiscovery();
                return;
            }
        }
        Log.e(this.TAG, "当前设备没有蓝牙模块");
    }

    public void registerBluetoothScanReceiver(Context context) {
        IntentFilter intentFilter = new IntentFilter("android.bluetooth.device.action.FOUND");
        intentFilter.addAction("android.bluetooth.adapter.action.STATE_CHANGED");
        intentFilter.addAction("android.bluetooth.device.action.FOUND");
        intentFilter.addAction("android.bluetooth.adapter.action.DISCOVERY_FINISHED");
        intentFilter.addAction("android.bluetooth.adapter.action.DISCOVERY_STARTED");
        intentFilter.addAction("android.bluetooth.device.action.BOND_STATE_CHANGED");
        context.registerReceiver(this.receiver, intentFilter);
    }

    public void unRegisterBluetoothScanReceiver(Context context) {
        context.unregisterReceiver(this.receiver);
    }

    public void stopScanner() {
        BluetoothAdapter bluetoothAdapter = this.bluetoothAdapter;
        if (bluetoothAdapter == null || !bluetoothAdapter.isDiscovering()) {
            return;
        }
        this.bluetoothAdapter.cancelDiscovery();
    }

    public void startScanner() {
        BluetoothAdapter bluetoothAdapter = this.bluetoothAdapter;
        if (bluetoothAdapter == null || bluetoothAdapter.isDiscovering()) {
            return;
        }
        this.bluetoothAdapter.startDiscovery();
    }

    public Set<BluetoothDevice> getBondDevice() {
        BluetoothAdapter bluetoothAdapter = this.bluetoothAdapter;
        if (bluetoothAdapter != null) {
            return bluetoothAdapter.getBondedDevices();
        }
        return new HashSet();
    }

    public void setDisPlay(Context context, int i) {
        Intent intent = new Intent("android.bluetooth.adapter.action.REQUEST_DISCOVERABLE");
        intent.putExtra("android.bluetooth.adapter.extra.DISCOVERABLE_DURATION", i);
        context.startActivity(intent);
    }

    public void openBluetooth() {
        BluetoothAdapter bluetoothAdapter = this.bluetoothAdapter;
        if (bluetoothAdapter == null || bluetoothAdapter.isEnabled()) {
            return;
        }
        this.bluetoothAdapter.enable();
    }

    public void closeBluetooth() {
        BluetoothAdapter bluetoothAdapter = this.bluetoothAdapter;
        if (bluetoothAdapter == null || !bluetoothAdapter.isEnabled()) {
            return;
        }
        this.bluetoothAdapter.disable();
    }

    private void openBluetoothSetting(Context context) {
        Intent intent = new Intent();
        intent.setAction("android.settings.BLUETOOTH_SETTINGS");
        intent.setFlags(268435456);
        context.startActivity(intent);
    }
}
