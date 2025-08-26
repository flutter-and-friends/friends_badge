package cn.highlight.p004tx;

import android.app.Application;
import android.bluetooth.BluetoothGatt;
import android.hardware.usb.UsbDeviceConnection;
import android.hardware.usb.UsbManager;
import android.os.Handler;
import android.os.Message;
import android.util.Log;
import cn.highlight.p004tx.ble.BleManager;
import cn.highlight.p004tx.ble.callback.BleGattCallback;
import cn.highlight.p004tx.ble.callback.BleMtuChangedCallbackHighlight;
import cn.highlight.p004tx.ble.callback.BleNotifyCallbackHighlight;
import cn.highlight.p004tx.ble.callback.BleScanCallback;
import cn.highlight.p004tx.ble.callback.BleWriteCallbackHighlight;
import cn.highlight.p004tx.ble.data.BleDevice;
import cn.highlight.p004tx.ble.exception.BleException;
import cn.highlight.p004tx.listener.OnConnStatus;
import cn.highlight.p004tx.listener.OnDataReceivedTag;
import cn.highlight.p004tx.listener.OnOpen;
import cn.highlight.p004tx.listener.OnOpenSerialPortListener;
import cn.highlight.p004tx.listener.OnSerialPortDataListener;
import cn.highlight.p004tx.serialport.SerialPortTxManager;
import cn.highlight.p004tx.usb.SerialInputOutputManager;
import cn.highlight.p004tx.usb.UsbSerialDriver;
import cn.highlight.p004tx.usb.UsbSerialPort;
import cn.highlight.p004tx.usb.UsbSerialProber;
import cn.highlight.p004tx.utils.TxUtil;
import com.zhy.http.okhttp.OkHttpUtils;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* loaded from: classes.dex */
public class BaseTxManager {
    private static final String UUID_NOTIFY = "6e400003-b5a3-f393-e0a9-e50e24dcca9e";
    private static final String UUID_SERVICE = "6e400001-b5a3-f393-e0a9-e50e24dcca9e";
    private static final String UUID_WRITE = "6e400002-b5a3-f393-e0a9-e50e24dcca9e";
    private BleDevice ble;
    private SerialInputOutputManager mSerialIoManager;
    private SerialPortTxManager mSerialPortManager;
    private OnDataReceivedTag onDataReceivedTag;
    private OnOpen onOpen;
    private UsbManager usbManager;
    private UsbSerialPort usbSerialPort;
    private final ExecutorService mExecutor = Executors.newSingleThreadExecutor();
    private Handler handler = new Handler() { // from class: cn.highlight.tx.BaseTxManager.5
        @Override // android.os.Handler
        public void handleMessage(Message message) {
            super.handleMessage(message);
            if (message.what == 0) {
                UsbSerialPort usbSerialPort = (UsbSerialPort) message.obj;
                BaseTxManager.this.usbSerialPort = usbSerialPort;
                BaseTxManager baseTxManager = BaseTxManager.this;
                baseTxManager.initUsb(usbSerialPort, baseTxManager.usbManager);
            }
        }
    };
    private final SerialInputOutputManager.Listener mListener = new SerialInputOutputManager.Listener() { // from class: cn.highlight.tx.BaseTxManager.6
        @Override // cn.highlight.tx.usb.SerialInputOutputManager.Listener
        public void onRunError(Exception exc) {
            exc.printStackTrace();
        }

        @Override // cn.highlight.tx.usb.SerialInputOutputManager.Listener
        public void onNewData(byte[] bArr) {
            BaseTxManager.this.resData(bArr);
        }
    };

    public void setOpen(OnOpen onOpen) {
        this.onOpen = onOpen;
    }

    public void setOnDataReceivedTag(OnDataReceivedTag onDataReceivedTag) {
        this.onDataReceivedTag = onDataReceivedTag;
    }

    public SerialPortTxManager init232SerialPort(File file, int i) {
        SerialPortTxManager serialPortTxManager = this.mSerialPortManager;
        if (serialPortTxManager != null) {
            return serialPortTxManager;
        }
        this.mSerialPortManager = new SerialPortTxManager();
        if (file == null) {
            return this.mSerialPortManager;
        }
        this.mSerialPortManager.setOnOpenSerialPortListener(new OnOpenSerialPortListener() { // from class: cn.highlight.tx.BaseTxManager.1
            @Override // cn.highlight.p004tx.listener.OnOpenSerialPortListener
            public void onSuccess(File file2) {
                if (BaseTxManager.this.onOpen != null) {
                    BaseTxManager.this.onOpen.OnOpenStatus(0, "");
                }
            }

            @Override // cn.highlight.p004tx.listener.OnOpenSerialPortListener
            public void onFail(File file2, OnOpenSerialPortListener.Status status) {
                if (C04807.f87x7823456b[status.ordinal()] != 1) {
                    if (BaseTxManager.this.onOpen != null) {
                        BaseTxManager.this.onOpen.OnOpenStatus(1, "");
                    }
                } else if (BaseTxManager.this.onOpen != null) {
                    BaseTxManager.this.onOpen.OnOpenStatus(1, "当前串口没有读写权限");
                }
            }
        });
        this.mSerialPortManager.setOnSerialPortDataListener(new OnSerialPortDataListener() { // from class: cn.highlight.tx.BaseTxManager.2
            @Override // cn.highlight.p004tx.listener.OnSerialPortDataListener
            public void onDataSent(byte[] bArr) {
            }

            @Override // cn.highlight.p004tx.listener.OnSerialPortDataListener
            public void onDataReceived(byte[] bArr) {
                BaseTxManager.this.resData(bArr);
            }
        });
        this.mSerialPortManager.openSerialPort(file, i);
        return this.mSerialPortManager;
    }

    /* renamed from: cn.highlight.tx.BaseTxManager$7 */
    static /* synthetic */ class C04807 {

        /* renamed from: $SwitchMap$cn$highlight$tx$listener$OnOpenSerialPortListener$Status */
        static final /* synthetic */ int[] f87x7823456b = new int[OnOpenSerialPortListener.Status.values().length];

        static {
            try {
                f87x7823456b[OnOpenSerialPortListener.Status.NO_READ_WRITE_PERMISSION.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f87x7823456b[OnOpenSerialPortListener.Status.OPEN_FAIL.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public void initUSBserialPort(final UsbManager usbManager) {
        this.usbManager = usbManager;
        new Thread(new Runnable() { // from class: cn.highlight.tx.-$$Lambda$BaseTxManager$WRcRCgbx15M3UsiCrjX0xxCo-_s
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$initUSBserialPort$0$BaseTxManager(usbManager);
            }
        }).start();
    }

    public /* synthetic */ void lambda$initUSBserialPort$0$BaseTxManager(UsbManager usbManager) {
        List<UsbSerialDriver> listFindAllDrivers = UsbSerialProber.getDefaultProber().findAllDrivers(usbManager);
        ArrayList arrayList = new ArrayList();
        for (UsbSerialDriver usbSerialDriver : listFindAllDrivers) {
            Log.e("tuc", "查找设备PID：" + usbSerialDriver.getDevice().getProductId());
            Log.e("tuc", "查找设备VID：" + usbSerialDriver.getDevice().getVendorId());
            if (usbSerialDriver.getDevice().getProductId() == 60000) {
                arrayList.addAll(usbSerialDriver.getPorts());
            }
        }
        if (arrayList.size() == 0) {
            OnOpen onOpen = this.onOpen;
            if (onOpen != null) {
                onOpen.OnOpenStatus(1, "没有找到可用USB串口设备");
                return;
            }
            return;
        }
        Message messageObtain = Message.obtain();
        messageObtain.what = 0;
        messageObtain.obj = arrayList.get(0);
        this.handler.sendMessage(messageObtain);
    }

    public void initBle(Application application) {
        BleManager.getInstance().init(application);
        BleManager.getInstance().enableLog(false).setReConnectCount(1, 2000L).setConnectOverTime(OkHttpUtils.DEFAULT_MILLISECONDS).setOperateTimeout(5000);
    }

    public void startScanBle(BleScanCallback bleScanCallback) {
        if (bleScanCallback != null) {
            BleManager.getInstance().scan(bleScanCallback);
        }
    }

    public void cancelScan() {
        BleManager.getInstance().cancelScan();
    }

    /* renamed from: cn.highlight.tx.BaseTxManager$3 */
    class C04763 extends BleGattCallback {
        final /* synthetic */ OnConnStatus val$onConnStatus;

        @Override // cn.highlight.p004tx.ble.callback.BleGattCallback
        public void onStartConnect() {
        }

        C04763(OnConnStatus onConnStatus) {
            this.val$onConnStatus = onConnStatus;
        }

        @Override // cn.highlight.p004tx.ble.callback.BleGattCallback
        public void onConnectFail(BleDevice bleDevice, BleException bleException) {
            OnConnStatus onConnStatus = this.val$onConnStatus;
            if (onConnStatus != null) {
                onConnStatus.connFail();
            }
        }

        @Override // cn.highlight.p004tx.ble.callback.BleGattCallback
        public void onConnectSuccess(final BleDevice bleDevice, BluetoothGatt bluetoothGatt, int i) {
            BleManager.getInstance().setMtu(bleDevice, 247, new BleMtuChangedCallbackHighlight() { // from class: cn.highlight.tx.BaseTxManager.3.1
                @Override // cn.highlight.p004tx.ble.callback.BleMtuChangedCallbackHighlight
                public void onSetMTUFailure(BleException bleException) {
                    Log.e("WriteActivity", "Mtu参数设置失败：" + bleException.getDescription());
                }

                @Override // cn.highlight.p004tx.ble.callback.BleMtuChangedCallbackHighlight
                public void onMtuChanged(int i2) {
                    Log.e("WriteActivity", "Mtu参数设置成功：" + i2);
                }
            });
            BaseTxManager.this.ble = bleDevice;
            Handler handler = new Handler();
            final OnConnStatus onConnStatus = this.val$onConnStatus;
            handler.postDelayed(new Runnable() { // from class: cn.highlight.tx.-$$Lambda$BaseTxManager$3$pbYv5R67pvqb4uH959g6-XDpzqc
                @Override // java.lang.Runnable
                public final void run() throws InterruptedException {
                    this.f$0.lambda$onConnectSuccess$0$BaseTxManager$3(bleDevice, onConnStatus);
                }
            }, 500L);
        }

        public /* synthetic */ void lambda$onConnectSuccess$0$BaseTxManager$3(BleDevice bleDevice, OnConnStatus onConnStatus) throws InterruptedException {
            BaseTxManager.this.oPenNotify(bleDevice);
            if (onConnStatus != null) {
                onConnStatus.connSuccess();
            }
        }

        @Override // cn.highlight.p004tx.ble.callback.BleGattCallback
        public void onDisConnected(boolean z, BleDevice bleDevice, BluetoothGatt bluetoothGatt, int i) {
            OnConnStatus onConnStatus = this.val$onConnStatus;
            if (onConnStatus != null) {
                onConnStatus.disConnected();
            }
        }
    }

    public void conn(BleDevice bleDevice, OnConnStatus onConnStatus) {
        BleManager.getInstance().connect(bleDevice, new C04763(onConnStatus));
    }

    public void disConn() {
        if (this.ble != null) {
            BleManager.getInstance().disconnectAllDevice();
        }
    }

    public void write(BleDevice bleDevice, byte[] bArr, BleWriteCallbackHighlight bleWriteCallbackHighlight) throws InterruptedException {
        writeDevice(bleDevice, bArr, bleWriteCallbackHighlight);
    }

    private void writeDevice(BleDevice bleDevice, byte[] bArr, BleWriteCallbackHighlight bleWriteCallbackHighlight) throws InterruptedException {
        try {
            Thread.sleep(50L);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
        BleManager.getInstance().write(bleDevice, UUID_SERVICE, UUID_WRITE, bArr, false, bleWriteCallbackHighlight);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void oPenNotify(BleDevice bleDevice) throws InterruptedException {
        try {
            Thread.sleep(200L);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
        BleManager.getInstance().notify(bleDevice, UUID_SERVICE, UUID_NOTIFY, new BleNotifyCallbackHighlight() { // from class: cn.highlight.tx.BaseTxManager.4
            @Override // cn.highlight.p004tx.ble.callback.BleNotifyCallbackHighlight
            public void onNotifyFailure(BleException bleException) {
            }

            @Override // cn.highlight.p004tx.ble.callback.BleNotifyCallbackHighlight
            public void onNotifySuccess() {
            }

            @Override // cn.highlight.p004tx.ble.callback.BleNotifyCallbackHighlight
            public void onCharacteristicChanged(byte[] bArr) {
                BaseTxManager.this.resData(bArr);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void initUsb(UsbSerialPort usbSerialPort, UsbManager usbManager) {
        if (usbSerialPort == null) {
            return;
        }
        try {
            UsbDeviceConnection usbDeviceConnectionOpenDevice = usbManager.openDevice(usbSerialPort.getDriver().getDevice());
            if (usbDeviceConnectionOpenDevice == null) {
                if (this.onOpen != null) {
                    this.onOpen.OnOpenStatus(1, "连接usb串口设备失败");
                }
            } else {
                usbSerialPort.open(usbDeviceConnectionOpenDevice);
                usbSerialPort.setParameters(115200, 8, 1, 0);
                onDeviceStateChange();
                if (this.onOpen != null) {
                    this.onOpen.OnOpenStatus(0, "");
                }
            }
        } catch (Exception unused) {
            OnOpen onOpen = this.onOpen;
            if (onOpen != null) {
                onOpen.OnOpenStatus(1, "");
            }
            try {
                usbSerialPort.close();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }

    private void startIoManager() {
        UsbSerialPort usbSerialPort = this.usbSerialPort;
        if (usbSerialPort != null) {
            this.mSerialIoManager = new SerialInputOutputManager(usbSerialPort, this.mListener);
            this.mExecutor.submit(this.mSerialIoManager);
        }
    }

    private void stopIoManager() {
        SerialInputOutputManager serialInputOutputManager = this.mSerialIoManager;
        if (serialInputOutputManager != null) {
            serialInputOutputManager.stop();
            this.mSerialIoManager = null;
        }
    }

    private void onDeviceStateChange() {
        stopIoManager();
        startIoManager();
    }

    public synchronized void writeData(byte[] bArr, BleWriteCallbackHighlight bleWriteCallbackHighlight) {
        try {
            if (this.mSerialPortManager != null) {
                Log.e("tuc", "232发送数据：" + TxUtil.bytesToHexString(bArr, true) + "----:" + this.mSerialPortManager.sendBytes(bArr));
                Thread.sleep(100L);
            }
            if (this.mSerialIoManager != null) {
                this.mSerialIoManager.write(bArr);
                Thread.sleep(100L);
            }
            if (this.ble != null) {
                write(this.ble, bArr, bleWriteCallbackHighlight);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void resData(byte[] bArr) {
        OnDataReceivedTag onDataReceivedTag;
        if (bArr == null) {
            return;
        }
        TxData txData = new TxData(bArr);
        if (txData.getData() == null || (onDataReceivedTag = this.onDataReceivedTag) == null) {
            return;
        }
        onDataReceivedTag.onData(txData.getData());
    }

    public void free() {
        try {
            if (this.mSerialPortManager != null) {
                this.mSerialPortManager.closeSerialPort();
                this.mSerialPortManager = null;
            }
            stopIoManager();
            if (this.usbSerialPort != null) {
                try {
                    this.usbSerialPort.close();
                    this.usbSerialPort = null;
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
            if (this.ble != null) {
                BleManager.getInstance().disconnectAllDevice();
                BleManager.getInstance().destroy();
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }
}
