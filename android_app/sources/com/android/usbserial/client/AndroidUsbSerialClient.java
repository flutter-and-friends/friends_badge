package com.android.usbserial.client;

import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.hardware.usb.UsbDevice;
import android.hardware.usb.UsbDeviceConnection;
import android.hardware.usb.UsbManager;
import android.os.Handler;
import com.android.usbserial.driver.UsbSerialDriver;
import com.android.usbserial.driver.UsbSerialPort;
import com.android.usbserial.driver.UsbSerialProber;
import com.android.usbserial.util.SerialInputOutputManager;
import com.p013gg.reader.api.dal.communication.CommunicationInterface;
import com.p013gg.reader.api.dal.communication.OnUsbSerialStateListener;
import com.p013gg.reader.api.protocol.p014gx.Message;
import com.zhy.http.okhttp.OkHttpUtils;
import java.io.IOException;
import java.net.Socket;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public class AndroidUsbSerialClient extends CommunicationInterface implements SerialInputOutputManager.Listener {
    private static final String ACTION_USB_PERMISSION = "com.android.gx.USB_PERMISSION";
    public OnUsbSerialDeviceListener deviceListener;
    private Context mContext;
    private Handler mHandler;
    private SerialInputOutputManager mSerialIoManager;
    private UsbManager mUsbManager;
    private String mUsbName;
    public OnUsbSerialStateListener stateListener;
    private UsbSerialPort usbSerialPort;
    private int mBaudRate = 115200;
    private int writeTimeout = 100;
    private final BroadcastReceiver mUsbReceiver = new BroadcastReceiver() { // from class: com.android.usbserial.client.AndroidUsbSerialClient.1
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (AndroidUsbSerialClient.ACTION_USB_PERMISSION.equals(intent.getAction())) {
                context.unregisterReceiver(this);
                synchronized (this) {
                    UsbDevice usbDevice = (UsbDevice) intent.getParcelableExtra("device");
                    if (!intent.getBooleanExtra("permission", false) || usbDevice == null) {
                        AndroidUsbSerialClient.this.onConnectFailed();
                    } else {
                        AndroidUsbSerialClient.this.openDevice();
                    }
                }
            }
        }
    };
    private final BroadcastReceiver mUsbStateChange = new BroadcastReceiver() { // from class: com.android.usbserial.client.AndroidUsbSerialClient.4
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            String action = intent.getAction();
            if ("android.hardware.usb.action.USB_DEVICE_ATTACHED".equals(action)) {
                if (AndroidUsbSerialClient.this.stateListener != null) {
                    AndroidUsbSerialClient.this.stateListener.onDeviceAttached();
                }
            } else {
                if (!"android.hardware.usb.action.USB_DEVICE_DETACHED".equals(action) || AndroidUsbSerialClient.this.stateListener == null) {
                    return;
                }
                AndroidUsbSerialClient.this.stateListener.onDeviceDetached();
            }
        }
    };

    @Override // com.p013gg.reader.api.dal.communication.CommunicationInterface
    public void dispose() {
    }

    @Override // com.android.usbserial.util.SerialInputOutputManager.Listener
    public void onRunError(Exception exc) {
    }

    @Override // com.p013gg.reader.api.dal.communication.CommunicationInterface
    public boolean open(String str, int i) {
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

    public UsbDevice getUsbDevice() {
        return this.usbSerialPort.getDriver().getDevice();
    }

    public int getBaudRate() {
        return this.mBaudRate;
    }

    public void setBaudRate(int i) {
        this.mBaudRate = i;
    }

    public int getWriteTimeout() {
        return this.writeTimeout;
    }

    public void setWriteTimeout(int i) {
        this.writeTimeout = i;
    }

    public String getUsbName() {
        return this.mUsbName;
    }

    public void setmUsbName(String str) {
        this.mUsbName = str;
    }

    public static Map<String, AndroidUsbSerialClient> getUsbDevicesMap(Context context) {
        UsbManager usbManager = (UsbManager) context.getApplicationContext().getSystemService("usb");
        if (usbManager == null) {
            return null;
        }
        List<UsbSerialDriver> listFindAllDrivers = UsbSerialProber.getDefaultProber().findAllDrivers(usbManager);
        HashMap map = new HashMap();
        for (UsbSerialDriver usbSerialDriver : listFindAllDrivers) {
            for (UsbSerialPort usbSerialPort : usbSerialDriver.getPorts()) {
                UsbDevice device = usbSerialPort.getDriver().getDevice();
                String str = usbSerialDriver.getDriverName() + "_vid_" + device.getVendorId() + "&pid_" + device.getProductId();
                map.put(str, new AndroidUsbSerialClient(usbSerialPort, context, usbManager, str));
            }
        }
        return map;
    }

    public static Map<String, AndroidUsbSerialClient> getUsbDevicesMap(Context context, int i, int i2) {
        UsbManager usbManager = (UsbManager) context.getApplicationContext().getSystemService("usb");
        if (usbManager == null) {
            return null;
        }
        List<UsbSerialDriver> listFindAllDrivers = UsbSerialProber.getDefaultProber().findAllDrivers(usbManager);
        HashMap map = new HashMap();
        for (UsbSerialDriver usbSerialDriver : listFindAllDrivers) {
            for (UsbSerialPort usbSerialPort : usbSerialDriver.getPorts()) {
                UsbDevice device = usbSerialPort.getDriver().getDevice();
                if (device.getVendorId() == i && device.getProductId() == i2) {
                    String str = usbSerialDriver.getDriverName() + "_vid_" + device.getVendorId() + "&pid_" + device.getProductId();
                    map.put(str, new AndroidUsbSerialClient(usbSerialPort, context, usbManager, str));
                }
            }
        }
        return map;
    }

    public static List<AndroidUsbSerialClient> getUsbDevicesList(Context context) {
        Map<String, AndroidUsbSerialClient> usbDevicesMap = getUsbDevicesMap(context);
        if (usbDevicesMap == null) {
            return null;
        }
        return new ArrayList(usbDevicesMap.values());
    }

    public static List<AndroidUsbSerialClient> getUsbDevicesList(Context context, int i, int i2) {
        Map<String, AndroidUsbSerialClient> usbDevicesMap = getUsbDevicesMap(context, i, i2);
        if (usbDevicesMap == null) {
            return null;
        }
        return new ArrayList(usbDevicesMap.values());
    }

    private AndroidUsbSerialClient(UsbSerialPort usbSerialPort, Context context, UsbManager usbManager, String str) {
        this.usbSerialPort = usbSerialPort;
        this.mContext = context;
        this.mUsbManager = usbManager;
        this.mUsbName = str;
    }

    private void hasPermission() {
        this.mHandler = new Handler(this.mContext.getMainLooper());
        if (!this.mUsbManager.hasPermission(getUsbDevice())) {
            PendingIntent broadcast = PendingIntent.getBroadcast(this.mContext, 0, new Intent(ACTION_USB_PERMISSION), 0);
            this.mContext.registerReceiver(this.mUsbReceiver, new IntentFilter(ACTION_USB_PERMISSION));
            this.mUsbManager.requestPermission(getUsbDevice(), broadcast);
            return;
        }
        openDevice();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void openDevice() {
        UsbDeviceConnection usbDeviceConnectionOpenDevice = this.mUsbManager.openDevice(getUsbDevice());
        if (usbDeviceConnectionOpenDevice == null) {
            onConnectFailed();
            return;
        }
        try {
            this.usbSerialPort.open(usbDeviceConnectionOpenDevice);
            this.usbSerialPort.setParameters(this.mBaudRate, 8, 1, 0);
            this.mSerialIoManager = new SerialInputOutputManager(this.usbSerialPort, this);
            this.keepReceived = true;
            this.mSerialIoManager.start();
            startProcess();
            this.mHandler.post(new Runnable() { // from class: com.android.usbserial.client.AndroidUsbSerialClient.2
                @Override // java.lang.Runnable
                public void run() {
                    if (AndroidUsbSerialClient.this.deviceListener != null) {
                        AndroidUsbSerialClient.this.deviceListener.onDeviceConnected();
                    }
                }
            });
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onConnectFailed() {
        this.mHandler.post(new Runnable() { // from class: com.android.usbserial.client.AndroidUsbSerialClient.3
            @Override // java.lang.Runnable
            public void run() {
                if (AndroidUsbSerialClient.this.deviceListener != null) {
                    AndroidUsbSerialClient.this.deviceListener.onDeviceConnectFailed();
                }
            }
        });
    }

    @Override // com.p013gg.reader.api.dal.communication.CommunicationInterface
    public boolean open(String str) {
        hasPermission();
        return true;
    }

    @Override // com.p013gg.reader.api.dal.communication.CommunicationInterface
    public void close() {
        this.keepReceived = false;
        if (this.usbSerialPort != null) {
            try {
                this.mSerialIoManager.stop();
                this.usbSerialPort.close();
            } catch (IOException e) {
                e.printStackTrace();
            }
            synchronized (this.lockRingBuffer) {
                this.lockRingBuffer.notify();
                this.ringBuffer.Clear();
            }
        }
    }

    @Override // com.p013gg.reader.api.dal.communication.CommunicationInterface
    public void send(byte[] bArr) {
        UsbSerialPort usbSerialPort = this.usbSerialPort;
        if (usbSerialPort != null) {
            int maxPacketSize = usbSerialPort.getWriteEndpoint().getMaxPacketSize();
            int length = bArr.length / maxPacketSize;
            if (bArr.length % maxPacketSize > 0) {
                length++;
            }
            for (int i = 0; i < length; i++) {
                int i2 = i * maxPacketSize;
                try {
                    this.usbSerialPort.write(Arrays.copyOfRange(bArr, i2, maxPacketSize + i2), this.writeTimeout);
                } catch (IOException e) {
                    e.printStackTrace();
                }
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

    @Override // com.android.usbserial.util.SerialInputOutputManager.Listener
    public void onNewData(byte[] bArr) {
        try {
            synchronized (this.lockRingBuffer) {
                while (bArr.length + this.ringBuffer.getDataCount() > 1048576) {
                    this.lockRingBuffer.wait(OkHttpUtils.DEFAULT_MILLISECONDS);
                }
                this.ringBuffer.WriteBuffer(bArr, 0, bArr.length);
                this.lockRingBuffer.notify();
            }
        } catch (Exception unused) {
        }
    }

    public void registerUsbState(Context context) {
        this.mUsbManager = (UsbManager) context.getSystemService("usb");
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.hardware.usb.action.USB_DEVICE_ATTACHED");
        intentFilter.addAction("android.hardware.usb.action.USB_DEVICE_DETACHED");
        context.registerReceiver(this.mUsbStateChange, intentFilter);
    }

    public void unregisterState(Context context) {
        context.unregisterReceiver(this.mUsbStateChange);
    }
}
