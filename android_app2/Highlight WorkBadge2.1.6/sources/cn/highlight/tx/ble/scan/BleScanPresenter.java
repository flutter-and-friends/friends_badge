package cn.highlight.tx.ble.scan;

import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothDevice;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import cn.highlight.tx.ble.callback.BleScanPresenterImp;
import cn.highlight.tx.ble.data.BleDevice;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes.dex */
public abstract class BleScanPresenter implements BluetoothAdapter.LeScanCallback {
    private BleScanPresenterImp mBleScanPresenterImp;
    private String mDeviceMac;
    private String[] mDeviceNames;
    private boolean mFuzzy;
    private Handler mHandler;
    private HandlerThread mHandlerThread;
    private boolean mHandling;
    private boolean mNeedConnect;
    private long mScanTimeout;
    private List<BleDevice> mBleDeviceList = new ArrayList();
    private Handler mMainHandler = new Handler(Looper.getMainLooper());

    public abstract void onLeScan(BleDevice bleDevice);

    public abstract void onScanFinished(List<BleDevice> list);

    public abstract void onScanStarted(boolean z);

    public abstract void onScanning(BleDevice bleDevice);

    private static final class ScanHandler extends Handler {
        private final WeakReference<BleScanPresenter> mBleScanPresenter;

        ScanHandler(Looper looper, BleScanPresenter bleScanPresenter) {
            super(looper);
            this.mBleScanPresenter = new WeakReference<>(bleScanPresenter);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            BleDevice bleDevice;
            BleScanPresenter bleScanPresenter = this.mBleScanPresenter.get();
            if (bleScanPresenter == null || message.what != 0 || (bleDevice = (BleDevice) message.obj) == null) {
                return;
            }
            bleScanPresenter.handleResult(bleDevice);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleResult(final BleDevice bleDevice) {
        this.mMainHandler.post(new Runnable() { // from class: cn.highlight.tx.ble.scan.BleScanPresenter.1
            @Override // java.lang.Runnable
            public void run() {
                BleScanPresenter.this.onLeScan(bleDevice);
            }
        });
        checkDevice(bleDevice);
    }

    public void prepare(String[] strArr, String str, boolean z, boolean z2, long j, BleScanPresenterImp bleScanPresenterImp) {
        this.mDeviceNames = strArr;
        this.mDeviceMac = str;
        this.mFuzzy = z;
        this.mNeedConnect = z2;
        this.mScanTimeout = j;
        this.mBleScanPresenterImp = bleScanPresenterImp;
        this.mHandlerThread = new HandlerThread(BleScanPresenter.class.getSimpleName());
        this.mHandlerThread.start();
        this.mHandler = new ScanHandler(this.mHandlerThread.getLooper(), this);
        this.mHandling = true;
    }

    public boolean ismNeedConnect() {
        return this.mNeedConnect;
    }

    public BleScanPresenterImp getBleScanPresenterImp() {
        return this.mBleScanPresenterImp;
    }

    @Override // android.bluetooth.BluetoothAdapter.LeScanCallback
    public void onLeScan(BluetoothDevice bluetoothDevice, int i, byte[] bArr) {
        if (bluetoothDevice != null && this.mHandling) {
            Message messageObtainMessage = this.mHandler.obtainMessage();
            messageObtainMessage.what = 0;
            messageObtainMessage.obj = new BleDevice(bluetoothDevice, i, bArr, System.currentTimeMillis());
            this.mHandler.sendMessage(messageObtainMessage);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x0056  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void checkDevice(cn.highlight.tx.ble.data.BleDevice r9) {
        /*
            r8 = this;
            java.lang.String r0 = r8.mDeviceMac
            boolean r0 = android.text.TextUtils.isEmpty(r0)
            r1 = 1
            if (r0 == 0) goto L14
            java.lang.String[] r0 = r8.mDeviceNames
            if (r0 == 0) goto L10
            int r0 = r0.length
            if (r0 >= r1) goto L14
        L10:
            r8.correctDeviceAndNextStep(r9)
            return
        L14:
            java.lang.String r0 = r8.mDeviceMac
            boolean r0 = android.text.TextUtils.isEmpty(r0)
            if (r0 != 0) goto L29
            java.lang.String r0 = r8.mDeviceMac
            java.lang.String r2 = r9.getMac()
            boolean r0 = r0.equalsIgnoreCase(r2)
            if (r0 != 0) goto L29
            return
        L29:
            java.lang.String[] r0 = r8.mDeviceNames
            if (r0 == 0) goto L63
            int r0 = r0.length
            if (r0 <= 0) goto L63
            java.util.concurrent.atomic.AtomicBoolean r0 = new java.util.concurrent.atomic.AtomicBoolean
            r2 = 0
            r0.<init>(r2)
            java.lang.String[] r3 = r8.mDeviceNames
            int r4 = r3.length
        L39:
            if (r2 >= r4) goto L5c
            r5 = r3[r2]
            java.lang.String r6 = r9.getName()
            if (r6 != 0) goto L45
            java.lang.String r6 = ""
        L45:
            boolean r7 = r8.mFuzzy
            if (r7 == 0) goto L50
            boolean r5 = r6.contains(r5)
            if (r5 == 0) goto L59
            goto L56
        L50:
            boolean r5 = r6.equals(r5)
            if (r5 == 0) goto L59
        L56:
            r0.set(r1)
        L59:
            int r2 = r2 + 1
            goto L39
        L5c:
            boolean r0 = r0.get()
            if (r0 != 0) goto L63
            return
        L63:
            r8.correctDeviceAndNextStep(r9)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: cn.highlight.tx.ble.scan.BleScanPresenter.checkDevice(cn.highlight.tx.ble.data.BleDevice):void");
    }

    private void correctDeviceAndNextStep(final BleDevice bleDevice) {
        final String name = bleDevice.getName();
        if (name == null || name.equals("")) {
            return;
        }
        if (this.mNeedConnect) {
            if (name != null) {
                this.mBleDeviceList.add(bleDevice);
            }
            this.mMainHandler.post(new Runnable() { // from class: cn.highlight.tx.ble.scan.BleScanPresenter.2
                @Override // java.lang.Runnable
                public void run() {
                    BleScanner.getInstance().stopLeScan();
                }
            });
            return;
        }
        AtomicBoolean atomicBoolean = new AtomicBoolean(false);
        Iterator<BleDevice> it = this.mBleDeviceList.iterator();
        while (it.hasNext()) {
            if (it.next().getDevice().equals(bleDevice.getDevice())) {
                atomicBoolean.set(true);
            }
        }
        if (atomicBoolean.get()) {
            return;
        }
        if (name != null) {
            this.mBleDeviceList.add(bleDevice);
        }
        this.mMainHandler.post(new Runnable() { // from class: cn.highlight.tx.ble.scan.BleScanPresenter.3
            @Override // java.lang.Runnable
            public void run() {
                if (name != null) {
                    BleScanPresenter.this.onScanning(bleDevice);
                }
            }
        });
    }

    public final void notifyScanStarted(final boolean z) {
        this.mBleDeviceList.clear();
        removeHandlerMsg();
        if (z && this.mScanTimeout > 0) {
            this.mMainHandler.postDelayed(new Runnable() { // from class: cn.highlight.tx.ble.scan.BleScanPresenter.4
                @Override // java.lang.Runnable
                public void run() {
                    BleScanner.getInstance().stopLeScan();
                }
            }, this.mScanTimeout);
        }
        this.mMainHandler.post(new Runnable() { // from class: cn.highlight.tx.ble.scan.BleScanPresenter.5
            @Override // java.lang.Runnable
            public void run() {
                BleScanPresenter.this.onScanStarted(z);
            }
        });
    }

    public final void notifyScanStopped() {
        HandlerThread handlerThread = this.mHandlerThread;
        if (handlerThread == null) {
            return;
        }
        this.mHandling = false;
        handlerThread.quit();
        removeHandlerMsg();
        this.mMainHandler.post(new Runnable() { // from class: cn.highlight.tx.ble.scan.BleScanPresenter.6
            @Override // java.lang.Runnable
            public void run() {
                BleScanPresenter bleScanPresenter = BleScanPresenter.this;
                bleScanPresenter.onScanFinished(bleScanPresenter.mBleDeviceList);
            }
        });
    }

    public final void removeHandlerMsg() {
        this.mMainHandler.removeCallbacksAndMessages(null);
        this.mHandler.removeCallbacksAndMessages(null);
    }
}
