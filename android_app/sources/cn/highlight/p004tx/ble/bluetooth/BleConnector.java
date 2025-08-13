package cn.highlight.p004tx.ble.bluetooth;

import android.bluetooth.BluetoothGatt;
import android.bluetooth.BluetoothGattCharacteristic;
import android.bluetooth.BluetoothGattDescriptor;
import android.bluetooth.BluetoothGattService;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import cn.highlight.p004tx.ble.BleManager;
import cn.highlight.p004tx.ble.callback.BleIndicateCallbackHighlight;
import cn.highlight.p004tx.ble.callback.BleMtuChangedCallbackHighlight;
import cn.highlight.p004tx.ble.callback.BleNotifyCallbackHighlight;
import cn.highlight.p004tx.ble.callback.BleReadCallbackHighlight;
import cn.highlight.p004tx.ble.callback.BleRssiCallbackHighlight;
import cn.highlight.p004tx.ble.callback.BleWriteCallbackHighlight;
import cn.highlight.p004tx.ble.data.BleMsg;
import cn.highlight.p004tx.ble.exception.GattException;
import cn.highlight.p004tx.ble.exception.OtherException;
import cn.highlight.p004tx.ble.exception.TimeoutException;
import java.util.UUID;

/* loaded from: classes.dex */
public class BleConnector {
    private static final String UUID_CLIENT_CHARACTERISTIC_CONFIG_DESCRIPTOR = "00002902-0000-1000-8000-00805f9b34fb";
    private BleBluetooth mBleBluetooth;
    private BluetoothGatt mBluetoothGatt;
    private BluetoothGattCharacteristic mCharacteristic;
    private BluetoothGattService mGattService;
    private Handler mHandler = new Handler(Looper.getMainLooper()) { // from class: cn.highlight.tx.ble.bluetooth.BleConnector.1
        @Override // android.os.Handler
        public void handleMessage(Message message) {
            super.handleMessage(message);
            int i = message.what;
            if (i == 49) {
                BleWriteCallbackHighlight bleWriteCallbackHighlight = (BleWriteCallbackHighlight) message.obj;
                if (bleWriteCallbackHighlight != null) {
                    bleWriteCallbackHighlight.onWriteFailure(new TimeoutException());
                    return;
                }
                return;
            }
            if (i == 50) {
                BleConnector.this.writeMsgInit();
                BleWriteCallbackHighlight bleWriteCallbackHighlight2 = (BleWriteCallbackHighlight) message.obj;
                Bundle data = message.getData();
                int i2 = data.getInt(BleMsg.KEY_WRITE_BUNDLE_STATUS);
                byte[] byteArray = data.getByteArray(BleMsg.KEY_WRITE_BUNDLE_VALUE);
                if (bleWriteCallbackHighlight2 != null) {
                    if (i2 == 0) {
                        bleWriteCallbackHighlight2.onWriteSuccess(1, 1, byteArray);
                        return;
                    } else {
                        bleWriteCallbackHighlight2.onWriteFailure(new GattException(i2));
                        return;
                    }
                }
                return;
            }
            if (i == 65) {
                BleReadCallbackHighlight bleReadCallbackHighlight = (BleReadCallbackHighlight) message.obj;
                if (bleReadCallbackHighlight != null) {
                    bleReadCallbackHighlight.onReadFailure(new TimeoutException());
                    return;
                }
                return;
            }
            if (i == 66) {
                BleConnector.this.readMsgInit();
                BleReadCallbackHighlight bleReadCallbackHighlight2 = (BleReadCallbackHighlight) message.obj;
                Bundle data2 = message.getData();
                int i3 = data2.getInt(BleMsg.KEY_READ_BUNDLE_STATUS);
                byte[] byteArray2 = data2.getByteArray(BleMsg.KEY_READ_BUNDLE_VALUE);
                if (bleReadCallbackHighlight2 != null) {
                    if (i3 == 0) {
                        bleReadCallbackHighlight2.onReadSuccess(byteArray2);
                        return;
                    } else {
                        bleReadCallbackHighlight2.onReadFailure(new GattException(i3));
                        return;
                    }
                }
                return;
            }
            if (i == 81) {
                BleRssiCallbackHighlight bleRssiCallbackHighlight = (BleRssiCallbackHighlight) message.obj;
                if (bleRssiCallbackHighlight != null) {
                    bleRssiCallbackHighlight.onRssiFailure(new TimeoutException());
                    return;
                }
                return;
            }
            if (i == 82) {
                BleConnector.this.rssiMsgInit();
                BleRssiCallbackHighlight bleRssiCallbackHighlight2 = (BleRssiCallbackHighlight) message.obj;
                Bundle data3 = message.getData();
                int i4 = data3.getInt(BleMsg.KEY_READ_RSSI_BUNDLE_STATUS);
                int i5 = data3.getInt(BleMsg.KEY_READ_RSSI_BUNDLE_VALUE);
                if (bleRssiCallbackHighlight2 != null) {
                    if (i4 == 0) {
                        bleRssiCallbackHighlight2.onRssiSuccess(i5);
                        return;
                    } else {
                        bleRssiCallbackHighlight2.onRssiFailure(new GattException(i4));
                        return;
                    }
                }
                return;
            }
            if (i == 97) {
                BleMtuChangedCallbackHighlight bleMtuChangedCallbackHighlight = (BleMtuChangedCallbackHighlight) message.obj;
                if (bleMtuChangedCallbackHighlight != null) {
                    bleMtuChangedCallbackHighlight.onSetMTUFailure(new TimeoutException());
                    return;
                }
                return;
            }
            if (i != 98) {
                switch (i) {
                    case 17:
                        BleNotifyCallbackHighlight bleNotifyCallbackHighlight = (BleNotifyCallbackHighlight) message.obj;
                        if (bleNotifyCallbackHighlight != null) {
                            bleNotifyCallbackHighlight.onNotifyFailure(new TimeoutException());
                            break;
                        }
                        break;
                    case 18:
                        BleConnector.this.notifyMsgInit();
                        BleNotifyCallbackHighlight bleNotifyCallbackHighlight2 = (BleNotifyCallbackHighlight) message.obj;
                        int i6 = message.getData().getInt(BleMsg.KEY_NOTIFY_BUNDLE_STATUS);
                        if (bleNotifyCallbackHighlight2 != null) {
                            if (i6 == 0) {
                                bleNotifyCallbackHighlight2.onNotifySuccess();
                                break;
                            } else {
                                bleNotifyCallbackHighlight2.onNotifyFailure(new GattException(i6));
                                break;
                            }
                        }
                        break;
                    case 19:
                        BleNotifyCallbackHighlight bleNotifyCallbackHighlight3 = (BleNotifyCallbackHighlight) message.obj;
                        byte[] byteArray3 = message.getData().getByteArray(BleMsg.KEY_NOTIFY_BUNDLE_VALUE);
                        if (bleNotifyCallbackHighlight3 != null) {
                            bleNotifyCallbackHighlight3.onCharacteristicChanged(byteArray3);
                            break;
                        }
                        break;
                    default:
                        switch (i) {
                            case 33:
                                BleIndicateCallbackHighlight bleIndicateCallbackHighlight = (BleIndicateCallbackHighlight) message.obj;
                                if (bleIndicateCallbackHighlight != null) {
                                    bleIndicateCallbackHighlight.onIndicateFailure(new TimeoutException());
                                    break;
                                }
                                break;
                            case 34:
                                BleConnector.this.indicateMsgInit();
                                BleIndicateCallbackHighlight bleIndicateCallbackHighlight2 = (BleIndicateCallbackHighlight) message.obj;
                                int i7 = message.getData().getInt(BleMsg.KEY_INDICATE_BUNDLE_STATUS);
                                if (bleIndicateCallbackHighlight2 != null) {
                                    if (i7 == 0) {
                                        bleIndicateCallbackHighlight2.onIndicateSuccess();
                                        break;
                                    } else {
                                        bleIndicateCallbackHighlight2.onIndicateFailure(new GattException(i7));
                                        break;
                                    }
                                }
                                break;
                            case 35:
                                BleIndicateCallbackHighlight bleIndicateCallbackHighlight3 = (BleIndicateCallbackHighlight) message.obj;
                                byte[] byteArray4 = message.getData().getByteArray(BleMsg.KEY_INDICATE_BUNDLE_VALUE);
                                if (bleIndicateCallbackHighlight3 != null) {
                                    bleIndicateCallbackHighlight3.onCharacteristicChanged(byteArray4);
                                    break;
                                }
                                break;
                        }
                }
                return;
            }
            BleConnector.this.mtuChangedMsgInit();
            BleMtuChangedCallbackHighlight bleMtuChangedCallbackHighlight2 = (BleMtuChangedCallbackHighlight) message.obj;
            Bundle data4 = message.getData();
            int i8 = data4.getInt(BleMsg.KEY_SET_MTU_BUNDLE_STATUS);
            int i9 = data4.getInt(BleMsg.KEY_SET_MTU_BUNDLE_VALUE);
            if (bleMtuChangedCallbackHighlight2 != null) {
                if (i8 == 0) {
                    bleMtuChangedCallbackHighlight2.onMtuChanged(i9);
                } else {
                    bleMtuChangedCallbackHighlight2.onSetMTUFailure(new GattException(i8));
                }
            }
        }
    };

    BleConnector(BleBluetooth bleBluetooth) {
        this.mBleBluetooth = bleBluetooth;
        this.mBluetoothGatt = bleBluetooth.getBluetoothGatt();
    }

    private BleConnector withUUID(UUID uuid, UUID uuid2) {
        BluetoothGatt bluetoothGatt;
        if (uuid != null && (bluetoothGatt = this.mBluetoothGatt) != null) {
            this.mGattService = bluetoothGatt.getService(uuid);
        }
        BluetoothGattService bluetoothGattService = this.mGattService;
        if (bluetoothGattService != null && uuid2 != null) {
            this.mCharacteristic = bluetoothGattService.getCharacteristic(uuid2);
        }
        return this;
    }

    public BleConnector withUUIDString(String str, String str2) {
        return withUUID(formUUID(str), formUUID(str2));
    }

    private UUID formUUID(String str) {
        if (str == null) {
            return null;
        }
        return UUID.fromString(str);
    }

    public void enableCharacteristicNotify(BleNotifyCallbackHighlight bleNotifyCallbackHighlight, String str, boolean z) {
        BluetoothGattCharacteristic bluetoothGattCharacteristic = this.mCharacteristic;
        if (bluetoothGattCharacteristic != null && (bluetoothGattCharacteristic.getProperties() | 16) > 0) {
            handleCharacteristicNotifyCallback(bleNotifyCallbackHighlight, str);
            setCharacteristicNotification(this.mBluetoothGatt, this.mCharacteristic, z, true, bleNotifyCallbackHighlight);
        } else if (bleNotifyCallbackHighlight != null) {
            bleNotifyCallbackHighlight.onNotifyFailure(new OtherException("this characteristic not support notify!"));
        }
    }

    public boolean disableCharacteristicNotify(boolean z) {
        BluetoothGattCharacteristic bluetoothGattCharacteristic = this.mCharacteristic;
        if (bluetoothGattCharacteristic == null || (bluetoothGattCharacteristic.getProperties() | 16) <= 0) {
            return false;
        }
        return setCharacteristicNotification(this.mBluetoothGatt, this.mCharacteristic, z, false, null);
    }

    private boolean setCharacteristicNotification(BluetoothGatt bluetoothGatt, BluetoothGattCharacteristic bluetoothGattCharacteristic, boolean z, boolean z2, BleNotifyCallbackHighlight bleNotifyCallbackHighlight) {
        BluetoothGattDescriptor descriptor;
        if (bluetoothGatt == null || bluetoothGattCharacteristic == null) {
            notifyMsgInit();
            if (bleNotifyCallbackHighlight != null) {
                bleNotifyCallbackHighlight.onNotifyFailure(new OtherException("gatt or characteristic equal null"));
            }
            return false;
        }
        if (!bluetoothGatt.setCharacteristicNotification(bluetoothGattCharacteristic, z2)) {
            notifyMsgInit();
            if (bleNotifyCallbackHighlight != null) {
                bleNotifyCallbackHighlight.onNotifyFailure(new OtherException("gatt setCharacteristicNotification fail"));
            }
            return false;
        }
        if (z) {
            descriptor = bluetoothGattCharacteristic.getDescriptor(bluetoothGattCharacteristic.getUuid());
        } else {
            descriptor = bluetoothGattCharacteristic.getDescriptor(formUUID(UUID_CLIENT_CHARACTERISTIC_CONFIG_DESCRIPTOR));
        }
        if (descriptor == null) {
            notifyMsgInit();
            if (bleNotifyCallbackHighlight != null) {
                bleNotifyCallbackHighlight.onNotifyFailure(new OtherException("descriptor equals null"));
            }
            return false;
        }
        descriptor.setValue(z2 ? BluetoothGattDescriptor.ENABLE_NOTIFICATION_VALUE : BluetoothGattDescriptor.DISABLE_NOTIFICATION_VALUE);
        boolean zWriteDescriptor = bluetoothGatt.writeDescriptor(descriptor);
        if (!zWriteDescriptor) {
            notifyMsgInit();
            if (bleNotifyCallbackHighlight != null) {
                bleNotifyCallbackHighlight.onNotifyFailure(new OtherException("gatt writeDescriptor fail"));
            }
        }
        return zWriteDescriptor;
    }

    public void enableCharacteristicIndicate(BleIndicateCallbackHighlight bleIndicateCallbackHighlight, String str, boolean z) {
        BluetoothGattCharacteristic bluetoothGattCharacteristic = this.mCharacteristic;
        if (bluetoothGattCharacteristic != null && (bluetoothGattCharacteristic.getProperties() | 16) > 0) {
            handleCharacteristicIndicateCallback(bleIndicateCallbackHighlight, str);
            setCharacteristicIndication(this.mBluetoothGatt, this.mCharacteristic, z, true, bleIndicateCallbackHighlight);
        } else if (bleIndicateCallbackHighlight != null) {
            bleIndicateCallbackHighlight.onIndicateFailure(new OtherException("this characteristic not support indicate!"));
        }
    }

    public boolean disableCharacteristicIndicate(boolean z) {
        BluetoothGattCharacteristic bluetoothGattCharacteristic = this.mCharacteristic;
        if (bluetoothGattCharacteristic == null || (bluetoothGattCharacteristic.getProperties() | 16) <= 0) {
            return false;
        }
        return setCharacteristicIndication(this.mBluetoothGatt, this.mCharacteristic, z, false, null);
    }

    private boolean setCharacteristicIndication(BluetoothGatt bluetoothGatt, BluetoothGattCharacteristic bluetoothGattCharacteristic, boolean z, boolean z2, BleIndicateCallbackHighlight bleIndicateCallbackHighlight) {
        BluetoothGattDescriptor descriptor;
        if (bluetoothGatt == null || bluetoothGattCharacteristic == null) {
            indicateMsgInit();
            if (bleIndicateCallbackHighlight != null) {
                bleIndicateCallbackHighlight.onIndicateFailure(new OtherException("gatt or characteristic equal null"));
            }
            return false;
        }
        if (!bluetoothGatt.setCharacteristicNotification(bluetoothGattCharacteristic, z2)) {
            indicateMsgInit();
            if (bleIndicateCallbackHighlight != null) {
                bleIndicateCallbackHighlight.onIndicateFailure(new OtherException("gatt setCharacteristicNotification fail"));
            }
            return false;
        }
        if (z) {
            descriptor = bluetoothGattCharacteristic.getDescriptor(bluetoothGattCharacteristic.getUuid());
        } else {
            descriptor = bluetoothGattCharacteristic.getDescriptor(formUUID(UUID_CLIENT_CHARACTERISTIC_CONFIG_DESCRIPTOR));
        }
        if (descriptor == null) {
            indicateMsgInit();
            if (bleIndicateCallbackHighlight != null) {
                bleIndicateCallbackHighlight.onIndicateFailure(new OtherException("descriptor equals null"));
            }
            return false;
        }
        descriptor.setValue(z2 ? BluetoothGattDescriptor.ENABLE_INDICATION_VALUE : BluetoothGattDescriptor.DISABLE_NOTIFICATION_VALUE);
        boolean zWriteDescriptor = bluetoothGatt.writeDescriptor(descriptor);
        if (!zWriteDescriptor) {
            indicateMsgInit();
            if (bleIndicateCallbackHighlight != null) {
                bleIndicateCallbackHighlight.onIndicateFailure(new OtherException("gatt writeDescriptor fail"));
            }
        }
        return zWriteDescriptor;
    }

    public void writeCharacteristic(byte[] bArr, BleWriteCallbackHighlight bleWriteCallbackHighlight, String str) {
        if (bArr == null || bArr.length <= 0) {
            if (bleWriteCallbackHighlight != null) {
                bleWriteCallbackHighlight.onWriteFailure(new OtherException("the data to be written is empty"));
                return;
            }
            return;
        }
        BluetoothGattCharacteristic bluetoothGattCharacteristic = this.mCharacteristic;
        if (bluetoothGattCharacteristic == null || (bluetoothGattCharacteristic.getProperties() & 12) == 0) {
            if (bleWriteCallbackHighlight != null) {
                bleWriteCallbackHighlight.onWriteFailure(new OtherException("this characteristic not support write!"));
            }
        } else {
            if (!this.mCharacteristic.setValue(bArr)) {
                if (bleWriteCallbackHighlight != null) {
                    bleWriteCallbackHighlight.onWriteFailure(new OtherException("Updates the locally stored value of this characteristic fail"));
                    return;
                }
                return;
            }
            handleCharacteristicWriteCallback(bleWriteCallbackHighlight, str);
            if (this.mBluetoothGatt.writeCharacteristic(this.mCharacteristic)) {
                return;
            }
            writeMsgInit();
            if (bleWriteCallbackHighlight != null) {
                bleWriteCallbackHighlight.onWriteFailure(new OtherException("gatt writeCharacteristic fail"));
            }
        }
    }

    public void readCharacteristic(BleReadCallbackHighlight bleReadCallbackHighlight, String str) {
        BluetoothGattCharacteristic bluetoothGattCharacteristic = this.mCharacteristic;
        if (bluetoothGattCharacteristic == null || (bluetoothGattCharacteristic.getProperties() & 2) <= 0) {
            if (bleReadCallbackHighlight != null) {
                bleReadCallbackHighlight.onReadFailure(new OtherException("this characteristic not support read!"));
                return;
            }
            return;
        }
        handleCharacteristicReadCallback(bleReadCallbackHighlight, str);
        if (this.mBluetoothGatt.readCharacteristic(this.mCharacteristic)) {
            return;
        }
        readMsgInit();
        if (bleReadCallbackHighlight != null) {
            bleReadCallbackHighlight.onReadFailure(new OtherException("gatt readCharacteristic fail"));
        }
    }

    public void readRemoteRssi(BleRssiCallbackHighlight bleRssiCallbackHighlight) {
        handleRSSIReadCallback(bleRssiCallbackHighlight);
        if (this.mBluetoothGatt.readRemoteRssi()) {
            return;
        }
        rssiMsgInit();
        if (bleRssiCallbackHighlight != null) {
            bleRssiCallbackHighlight.onRssiFailure(new OtherException("gatt readRemoteRssi fail"));
        }
    }

    public void setMtu(int i, BleMtuChangedCallbackHighlight bleMtuChangedCallbackHighlight) {
        if (Build.VERSION.SDK_INT < 21) {
            if (bleMtuChangedCallbackHighlight != null) {
                bleMtuChangedCallbackHighlight.onSetMTUFailure(new OtherException("API level lower than 21"));
                return;
            }
            return;
        }
        handleSetMtuCallback(bleMtuChangedCallbackHighlight);
        if (this.mBluetoothGatt.requestMtu(i)) {
            return;
        }
        mtuChangedMsgInit();
        if (bleMtuChangedCallbackHighlight != null) {
            bleMtuChangedCallbackHighlight.onSetMTUFailure(new OtherException("gatt requestMtu fail"));
        }
    }

    public boolean requestConnectionPriority(int i) {
        if (Build.VERSION.SDK_INT >= 21) {
            return this.mBluetoothGatt.requestConnectionPriority(i);
        }
        return false;
    }

    private void handleCharacteristicNotifyCallback(BleNotifyCallbackHighlight bleNotifyCallbackHighlight, String str) {
        if (bleNotifyCallbackHighlight != null) {
            notifyMsgInit();
            bleNotifyCallbackHighlight.setKey(str);
            bleNotifyCallbackHighlight.setHandler(this.mHandler);
            this.mBleBluetooth.addNotifyCallback(str, bleNotifyCallbackHighlight);
            Handler handler = this.mHandler;
            handler.sendMessageDelayed(handler.obtainMessage(17, bleNotifyCallbackHighlight), BleManager.getInstance().getOperateTimeout());
        }
    }

    private void handleCharacteristicIndicateCallback(BleIndicateCallbackHighlight bleIndicateCallbackHighlight, String str) {
        if (bleIndicateCallbackHighlight != null) {
            indicateMsgInit();
            bleIndicateCallbackHighlight.setKey(str);
            bleIndicateCallbackHighlight.setHandler(this.mHandler);
            this.mBleBluetooth.addIndicateCallback(str, bleIndicateCallbackHighlight);
            Handler handler = this.mHandler;
            handler.sendMessageDelayed(handler.obtainMessage(33, bleIndicateCallbackHighlight), BleManager.getInstance().getOperateTimeout());
        }
    }

    private void handleCharacteristicWriteCallback(BleWriteCallbackHighlight bleWriteCallbackHighlight, String str) {
        if (bleWriteCallbackHighlight != null) {
            writeMsgInit();
            bleWriteCallbackHighlight.setKey(str);
            bleWriteCallbackHighlight.setHandler(this.mHandler);
            this.mBleBluetooth.addWriteCallback(str, bleWriteCallbackHighlight);
            Handler handler = this.mHandler;
            handler.sendMessageDelayed(handler.obtainMessage(49, bleWriteCallbackHighlight), BleManager.getInstance().getOperateTimeout());
        }
    }

    private void handleCharacteristicReadCallback(BleReadCallbackHighlight bleReadCallbackHighlight, String str) {
        if (bleReadCallbackHighlight != null) {
            readMsgInit();
            bleReadCallbackHighlight.setKey(str);
            bleReadCallbackHighlight.setHandler(this.mHandler);
            this.mBleBluetooth.addReadCallback(str, bleReadCallbackHighlight);
            Handler handler = this.mHandler;
            handler.sendMessageDelayed(handler.obtainMessage(65, bleReadCallbackHighlight), BleManager.getInstance().getOperateTimeout());
        }
    }

    private void handleRSSIReadCallback(BleRssiCallbackHighlight bleRssiCallbackHighlight) {
        if (bleRssiCallbackHighlight != null) {
            rssiMsgInit();
            bleRssiCallbackHighlight.setHandler(this.mHandler);
            this.mBleBluetooth.addRssiCallback(bleRssiCallbackHighlight);
            Handler handler = this.mHandler;
            handler.sendMessageDelayed(handler.obtainMessage(81, bleRssiCallbackHighlight), BleManager.getInstance().getOperateTimeout());
        }
    }

    private void handleSetMtuCallback(BleMtuChangedCallbackHighlight bleMtuChangedCallbackHighlight) {
        if (bleMtuChangedCallbackHighlight != null) {
            mtuChangedMsgInit();
            bleMtuChangedCallbackHighlight.setHandler(this.mHandler);
            this.mBleBluetooth.addMtuChangedCallback(bleMtuChangedCallbackHighlight);
            Handler handler = this.mHandler;
            handler.sendMessageDelayed(handler.obtainMessage(97, bleMtuChangedCallbackHighlight), BleManager.getInstance().getOperateTimeout());
        }
    }

    public void notifyMsgInit() {
        this.mHandler.removeMessages(17);
    }

    public void indicateMsgInit() {
        this.mHandler.removeMessages(33);
    }

    public void writeMsgInit() {
        this.mHandler.removeMessages(49);
    }

    public void readMsgInit() {
        this.mHandler.removeMessages(65);
    }

    public void rssiMsgInit() {
        this.mHandler.removeMessages(81);
    }

    public void mtuChangedMsgInit() {
        this.mHandler.removeMessages(97);
    }
}
