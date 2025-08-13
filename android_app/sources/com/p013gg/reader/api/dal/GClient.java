package com.p013gg.reader.api.dal;

import com.android.usbserial.client.AndroidUsbSerialClient;
import com.p013gg.reader.api.dal.communication.AndroidPdaSerialClient;
import com.p013gg.reader.api.dal.communication.AndroidSerialClient;
import com.p013gg.reader.api.dal.communication.AndroidSerialCusClient;
import com.p013gg.reader.api.dal.communication.AndroidUsbHidClient;
import com.p013gg.reader.api.dal.communication.BleBluetoothClient;
import com.p013gg.reader.api.dal.communication.BluetoothClient;
import com.p013gg.reader.api.dal.communication.CWSerialClient;
import com.p013gg.reader.api.dal.communication.CommunicationInterface;
import com.p013gg.reader.api.dal.communication.HandlerDisconnected;
import com.p013gg.reader.api.dal.communication.HandlerMessageReceived;
import com.p013gg.reader.api.dal.communication.TcpClient;
import com.p013gg.reader.api.protocol.p014gx.EnumG;
import com.p013gg.reader.api.protocol.p014gx.LogAppGpiOver;
import com.p013gg.reader.api.protocol.p014gx.LogAppGpiStart;
import com.p013gg.reader.api.protocol.p014gx.LogBase6bInfo;
import com.p013gg.reader.api.protocol.p014gx.LogBase6bOver;
import com.p013gg.reader.api.protocol.p014gx.LogBaseEpcInfo;
import com.p013gg.reader.api.protocol.p014gx.LogBaseEpcOver;
import com.p013gg.reader.api.protocol.p014gx.LogBaseGJbInfo;
import com.p013gg.reader.api.protocol.p014gx.LogBaseGJbOver;
import com.p013gg.reader.api.protocol.p014gx.LogBaseGbInfo;
import com.p013gg.reader.api.protocol.p014gx.LogBaseGbOver;
import com.p013gg.reader.api.protocol.p014gx.LogBaseGbSafeParam;
import com.p013gg.reader.api.protocol.p014gx.Message;
import com.p013gg.reader.api.protocol.p014gx.MsgAppGetCacheTagData;
import com.p013gg.reader.api.protocol.p014gx.MsgAppHeartbeat;
import com.p013gg.reader.api.utils.GLog;
import com.p013gg.reader.api.utils.HexUtils;
import java.util.HashMap;

/* loaded from: classes.dex */
public class GClient {
    private static final int MSG_TIME_OUT = 3000;
    public HandlerCacheDataOver cacheDataOver;

    /* renamed from: ci */
    private CommunicationInterface f347ci;
    public HandlerDebugLog debugLog;
    private HashMap<Integer, ClientManualResetEvent> dicMre = new HashMap<>();
    private boolean isPrint = true;
    private String name;
    public HandlerTcpDisconnected onDisconnected;
    public HandlerGpiOver onGpiOver;
    public HandlerGpiStart onGpiStart;
    public HandlerHeartbeatLog onHeartbeatLog;
    public HandlerTag6bLog onTag6bLog;
    public HandlerTag6bOver onTag6bOver;
    public HandlerTagEpcLog onTagEpcLog;
    public HandlerTagEpcOver onTagEpcOver;
    public HandlerTagGJbLog onTagGJbLog;
    public HandlerTagGJbOver onTagGJbOver;
    public HandlerTagGJbRn11Log onTagGJbRn11Log;
    public HandlerTagGbLog onTagGbLog;
    public HandlerTagGbOver onTagGbOver;
    public HandlerTagGbSafeParam onTagGbSafeParam;
    private String serialNumber;

    public String getName() {
        return this.name;
    }

    public void setName(String str) {
        this.name = str;
    }

    public String getSerialNumber() {
        return this.serialNumber;
    }

    public void setSerialNumber(String str) {
        this.serialNumber = str;
    }

    public int getConnectType() {
        CommunicationInterface communicationInterface = this.f347ci;
        if (communicationInterface == null) {
            return 255;
        }
        return communicationInterface.getConnectType();
    }

    public void setSendHeartBeat(boolean z) {
        CommunicationInterface communicationInterface = this.f347ci;
        if (communicationInterface != null) {
            communicationInterface._isSendHeartbeat = z;
        }
    }

    public void setPrint(boolean z) {
        this.isPrint = z;
    }

    protected void triggerTagEpcLogEvent(LogBaseEpcInfo logBaseEpcInfo) {
        try {
            if (this.onTagEpcLog != null) {
                synchronized (this.onTagEpcLog) {
                    if (this.serialNumber != null) {
                        logBaseEpcInfo.setReaderSerialNumber(this.serialNumber);
                    }
                    this.onTagEpcLog.log(this.name, logBaseEpcInfo);
                }
            }
        } catch (Exception unused) {
        }
    }

    protected void triggerTagEpcOverEvent(LogBaseEpcOver logBaseEpcOver) {
        try {
            if (this.onTagEpcOver != null) {
                synchronized (this.onTagEpcOver) {
                    if (this.serialNumber != null) {
                        logBaseEpcOver.setReaderSerialNumber(this.serialNumber);
                    }
                    this.onTagEpcOver.log(this.name, logBaseEpcOver);
                }
            }
        } catch (Exception unused) {
        }
    }

    protected void triggerTag6bLogEvent(LogBase6bInfo logBase6bInfo) {
        try {
            if (this.onTag6bLog != null) {
                synchronized (this.onTag6bLog) {
                    if (this.serialNumber != null) {
                        logBase6bInfo.setReaderSerialNumber(this.serialNumber);
                    }
                    this.onTag6bLog.log(this.name, logBase6bInfo);
                }
            }
        } catch (Exception unused) {
        }
    }

    protected void triggerTag6bOverEvent(LogBase6bOver logBase6bOver) {
        try {
            if (this.onTag6bOver != null) {
                synchronized (this.onTag6bOver) {
                    if (this.serialNumber != null) {
                        logBase6bOver.setReaderSerialNumber(this.serialNumber);
                    }
                    this.onTag6bOver.log(this.name, logBase6bOver);
                }
            }
        } catch (Exception unused) {
        }
    }

    protected void triggerTagGbLogEvent(LogBaseGbInfo logBaseGbInfo) {
        try {
            if (this.onTagGbLog != null) {
                synchronized (this.onTagGbLog) {
                    if (this.serialNumber != null) {
                        logBaseGbInfo.setReaderSerialNumber(this.serialNumber);
                    }
                    this.onTagGbLog.log(this.name, logBaseGbInfo);
                }
            }
        } catch (Exception unused) {
        }
    }

    protected void triggerTagGbOverEvent(LogBaseGbOver logBaseGbOver) {
        try {
            if (this.onTagGbOver != null) {
                synchronized (this.onTagGbOver) {
                    if (this.serialNumber != null) {
                        logBaseGbOver.setReaderSerialNumber(this.serialNumber);
                    }
                    this.onTagGbOver.log(this.name, logBaseGbOver);
                }
            }
        } catch (Exception unused) {
        }
    }

    protected void triggerTagGJbLogEvent(LogBaseGJbInfo logBaseGJbInfo) {
        try {
            if (this.onTagGJbLog != null) {
                synchronized (this.onTagGJbLog) {
                    if (this.serialNumber != null) {
                        logBaseGJbInfo.setReaderSerialNumber(this.serialNumber);
                    }
                    this.onTagGJbLog.log(this.name, logBaseGJbInfo);
                }
            }
        } catch (Exception unused) {
        }
    }

    protected void triggerTagGJbOverEvent(LogBaseGJbOver logBaseGJbOver) {
        try {
            if (this.onTagGJbOver != null) {
                synchronized (this.onTagGJbOver) {
                    if (this.serialNumber != null) {
                        logBaseGJbOver.setReaderSerialNumber(this.serialNumber);
                    }
                    this.onTagGJbOver.log(this.name, logBaseGJbOver);
                }
            }
        } catch (Exception unused) {
        }
    }

    protected void triggerTagGJbRn11LogEvent(byte[] bArr) {
        try {
            if (this.onTagGJbRn11Log != null) {
                synchronized (this.onTagGJbRn11Log) {
                    this.onTagGJbRn11Log.log(this.name, bArr);
                }
            }
        } catch (Exception unused) {
        }
    }

    protected void triggerTagGbSafeParamEvent(LogBaseGbSafeParam logBaseGbSafeParam) {
        try {
            if (this.onTagGbSafeParam != null) {
                synchronized (this.onTagGbSafeParam) {
                    this.onTagGbSafeParam.log(this.name, logBaseGbSafeParam);
                }
            }
        } catch (Exception unused) {
        }
    }

    protected void triggerGpiStart(LogAppGpiStart logAppGpiStart) {
        try {
            if (this.onGpiStart != null) {
                synchronized (this.onGpiStart) {
                    if (this.serialNumber != null) {
                        logAppGpiStart.setReaderSerialNumber(this.serialNumber);
                    }
                    this.onGpiStart.log(this.name, logAppGpiStart);
                }
            }
        } catch (Exception unused) {
        }
    }

    protected void triggerGpiOver(LogAppGpiOver logAppGpiOver) {
        try {
            if (this.onGpiOver != null) {
                synchronized (this.onGpiOver) {
                    if (this.serialNumber != null) {
                        logAppGpiOver.setReaderSerialNumber(this.serialNumber);
                    }
                    this.onGpiOver.log(this.name, logAppGpiOver);
                }
            }
        } catch (Exception unused) {
        }
    }

    protected void triggerCacheDataOver(MsgAppGetCacheTagData msgAppGetCacheTagData) {
        try {
            if (this.cacheDataOver != null) {
                synchronized (this.cacheDataOver) {
                    this.cacheDataOver.log(this.name, msgAppGetCacheTagData);
                }
            }
        } catch (Exception unused) {
        }
    }

    protected void triggerDisconnected() {
        try {
            if (this.onDisconnected != null) {
                synchronized (this.onDisconnected) {
                    this.onDisconnected.log(this.name);
                }
            }
        } catch (Exception unused) {
        }
    }

    public boolean open(String str, CommunicationInterface communicationInterface, int i) {
        if (communicationInterface == null) {
            return false;
        }
        this.f347ci = communicationInterface;
        this.f347ci.onMessageReceived = new HandlerMessageReceived() { // from class: com.gg.reader.api.dal.GClient.1
            @Override // com.p013gg.reader.api.dal.communication.HandlerMessageReceived
            public void received(Message message) {
                GClient.this.processMessage(message);
            }
        };
        this.f347ci.onDisconnected = new HandlerDisconnected() { // from class: com.gg.reader.api.dal.GClient.2
            @Override // com.p013gg.reader.api.dal.communication.HandlerDisconnected
            public void log() {
                GClient.this.triggerDisconnected();
            }
        };
        if (!this.f347ci.isConnected()) {
            return false;
        }
        this.name = str;
        this.f347ci.setConnectType(3);
        return true;
    }

    public boolean openAndroidSerial(String str, int i) {
        try {
            this.f347ci = new AndroidSerialClient();
            this.f347ci.onMessageReceived = new HandlerMessageReceived() { // from class: com.gg.reader.api.dal.GClient.3
                @Override // com.p013gg.reader.api.dal.communication.HandlerMessageReceived
                public void received(Message message) {
                    GClient.this.processMessage(message);
                }
            };
            if (this.f347ci.open(str)) {
                this.name = str;
                this.f347ci.setConnectType(0);
                return true;
            }
        } catch (Exception unused) {
        }
        return false;
    }

    public boolean openCusAndroidSerial(String str, int i, int i2) {
        try {
            this.f347ci = new AndroidSerialCusClient(i, i2);
            this.f347ci.onMessageReceived = new HandlerMessageReceived() { // from class: com.gg.reader.api.dal.GClient.4
                @Override // com.p013gg.reader.api.dal.communication.HandlerMessageReceived
                public void received(Message message) {
                    GClient.this.processMessage(message);
                }
            };
            if (this.f347ci.open(str)) {
                this.name = str;
                this.f347ci.setConnectType(0);
                return true;
            }
        } catch (Exception unused) {
        }
        return false;
    }

    public boolean openCusAndroidRs485(String str, int i, int i2) {
        try {
            String[] strArrSplit = str.split(":");
            if (strArrSplit != null && strArrSplit.length == 3) {
                this.f347ci = new AndroidSerialCusClient(i, i2);
                this.f347ci.onMessageReceived = new HandlerMessageReceived() { // from class: com.gg.reader.api.dal.GClient.5
                    @Override // com.p013gg.reader.api.dal.communication.HandlerMessageReceived
                    public void received(Message message) {
                        GClient.this.processMessage(message);
                    }
                };
                if (this.f347ci.open(strArrSplit[0] + ":" + strArrSplit[1])) {
                    this.name = str;
                    this.f347ci.setConnectType(1);
                    this.f347ci.setRs485(true);
                    this.f347ci.setRs485Address(Integer.parseInt(strArrSplit[2]));
                    return true;
                }
            }
        } catch (Exception unused) {
        }
        return false;
    }

    public boolean openAndroidRs485(String str, int i) {
        try {
            String[] strArrSplit = str.split(":");
            if (strArrSplit != null && strArrSplit.length == 3) {
                this.f347ci = new AndroidSerialClient();
                this.f347ci.onMessageReceived = new HandlerMessageReceived() { // from class: com.gg.reader.api.dal.GClient.6
                    @Override // com.p013gg.reader.api.dal.communication.HandlerMessageReceived
                    public void received(Message message) {
                        GClient.this.processMessage(message);
                    }
                };
                if (this.f347ci.open(strArrSplit[0] + ":" + strArrSplit[1])) {
                    this.name = str;
                    this.f347ci.setConnectType(1);
                    this.f347ci.setRs485(true);
                    this.f347ci.setRs485Address(Integer.parseInt(strArrSplit[2]));
                    return true;
                }
            }
        } catch (Exception unused) {
        }
        return false;
    }

    public boolean openHdSerial(String str, int i) {
        try {
            this.f347ci = new AndroidPdaSerialClient();
            this.f347ci.onMessageReceived = new HandlerMessageReceived() { // from class: com.gg.reader.api.dal.GClient.7
                @Override // com.p013gg.reader.api.dal.communication.HandlerMessageReceived
                public void received(Message message) {
                    GClient.this.processMessage(message);
                }
            };
            if (this.f347ci.open(str)) {
                this.name = str;
                this.f347ci.setConnectType(0);
                return true;
            }
        } catch (Exception unused) {
        }
        return false;
    }

    public void hdPowerOn() {
        CommunicationInterface communicationInterface = this.f347ci;
        if (communicationInterface == null || !(communicationInterface instanceof AndroidPdaSerialClient)) {
            return;
        }
        communicationInterface.hdPowerOn();
    }

    public void hdPowerOff() {
        CommunicationInterface communicationInterface = this.f347ci;
        if (communicationInterface == null || !(communicationInterface instanceof AndroidPdaSerialClient)) {
            return;
        }
        communicationInterface.hdPowerOff();
    }

    public boolean openTcp(String str, int i) {
        try {
            this.f347ci = new TcpClient();
            this.f347ci.onMessageReceived = new HandlerMessageReceived() { // from class: com.gg.reader.api.dal.GClient.8
                @Override // com.p013gg.reader.api.dal.communication.HandlerMessageReceived
                public void received(Message message) {
                    GClient.this.processMessage(message);
                }
            };
            this.f347ci.onDisconnected = new HandlerDisconnected() { // from class: com.gg.reader.api.dal.GClient.9
                @Override // com.p013gg.reader.api.dal.communication.HandlerDisconnected
                public void log() {
                    GClient.this.triggerDisconnected();
                }
            };
            if (!this.f347ci.open(str)) {
                return false;
            }
            this.name = str;
            this.f347ci.setConnectType(2);
            return true;
        } catch (Exception unused) {
            return false;
        }
    }

    public boolean openAndroidUsbSerial(AndroidUsbSerialClient androidUsbSerialClient) {
        try {
            this.f347ci = androidUsbSerialClient;
            this.f347ci.onMessageReceived = new HandlerMessageReceived() { // from class: com.gg.reader.api.dal.GClient.10
                @Override // com.p013gg.reader.api.dal.communication.HandlerMessageReceived
                public void received(Message message) {
                    GClient.this.processMessage(message);
                }
            };
            this.name = androidUsbSerialClient.getUsbName();
            this.f347ci.setConnectType(4);
            this.f347ci.open("");
            return true;
        } catch (Exception unused) {
            return false;
        }
    }

    public boolean openAndroidUsbRs485(AndroidUsbSerialClient androidUsbSerialClient, int i) {
        try {
            this.f347ci = androidUsbSerialClient;
            this.f347ci.onMessageReceived = new HandlerMessageReceived() { // from class: com.gg.reader.api.dal.GClient.11
                @Override // com.p013gg.reader.api.dal.communication.HandlerMessageReceived
                public void received(Message message) {
                    GClient.this.processMessage(message);
                }
            };
            this.name = androidUsbSerialClient.getUsbName();
            this.f347ci.setRs485(true);
            this.f347ci.setRs485Address(i);
            this.f347ci.setConnectType(4);
            this.f347ci.open("");
            return true;
        } catch (Exception unused) {
            return false;
        }
    }

    public boolean openBluetooth(String str, int i, int i2, BluetoothClient bluetoothClient) {
        try {
            this.f347ci = bluetoothClient;
            this.f347ci.onMessageReceived = new HandlerMessageReceived() { // from class: com.gg.reader.api.dal.GClient.12
                @Override // com.p013gg.reader.api.dal.communication.HandlerMessageReceived
                public void received(Message message) {
                    GClient.this.processMessage(message);
                }
            };
            this.f347ci.onDisconnected = new HandlerDisconnected() { // from class: com.gg.reader.api.dal.GClient.13
                @Override // com.p013gg.reader.api.dal.communication.HandlerDisconnected
                public void log() {
                    GClient.this.triggerDisconnected();
                }
            };
            if (!this.f347ci.open(str, i2)) {
                return false;
            }
            this.name = str;
            return true;
        } catch (Exception unused) {
            return false;
        }
    }

    public boolean openCwSerial(String str, int i, CWSerialClient cWSerialClient) {
        try {
            this.f347ci = cWSerialClient;
            this.f347ci.onMessageReceived = new HandlerMessageReceived() { // from class: com.gg.reader.api.dal.GClient.14
                @Override // com.p013gg.reader.api.dal.communication.HandlerMessageReceived
                public void received(Message message) {
                    GClient.this.processMessage(message);
                }
            };
            if (this.f347ci.open(str)) {
                this.name = str;
                this.f347ci.setConnectType(0);
                return true;
            }
        } catch (Exception unused) {
        }
        return false;
    }

    public boolean openBleBluetooth(String str, int i, BleBluetoothClient bleBluetoothClient) {
        try {
            this.f347ci = bleBluetoothClient;
            this.f347ci.onMessageReceived = new HandlerMessageReceived() { // from class: com.gg.reader.api.dal.GClient.15
                @Override // com.p013gg.reader.api.dal.communication.HandlerMessageReceived
                public void received(Message message) {
                    GClient.this.processMessage(message);
                }
            };
            this.f347ci.onDisconnected = new HandlerDisconnected() { // from class: com.gg.reader.api.dal.GClient.16
                @Override // com.p013gg.reader.api.dal.communication.HandlerDisconnected
                public void log() {
                    GClient.this.triggerDisconnected();
                }
            };
            if (!this.f347ci.open(str, i)) {
                return false;
            }
            this.name = str;
            return true;
        } catch (Exception unused) {
            return false;
        }
    }

    public boolean openAndroidUsbHid(AndroidUsbHidClient androidUsbHidClient) {
        try {
            this.f347ci = androidUsbHidClient;
            this.f347ci.onMessageReceived = new HandlerMessageReceived() { // from class: com.gg.reader.api.dal.GClient.17
                @Override // com.p013gg.reader.api.dal.communication.HandlerMessageReceived
                public void received(Message message) {
                    GClient.this.processMessage(message);
                }
            };
            this.name = androidUsbHidClient.getUsbName();
            this.f347ci.setConnectType(4);
            this.f347ci.open("");
            return true;
        } catch (Exception unused) {
            return false;
        }
    }

    public boolean close() {
        try {
            if (this.f347ci == null) {
                return false;
            }
            this.f347ci.close();
            this.f347ci.onMessageReceived = null;
            this.f347ci.onDisconnected = null;
            this.f347ci = null;
            return true;
        } catch (Exception unused) {
            return false;
        }
    }

    public void sendSynMsg(Message message, int i) {
        if (message == null) {
            return;
        }
        if (getConnectType() == 1) {
            message.msgType.mt_13 = "1";
        }
        int i2 = message.msgType.toInt();
        if (this.dicMre == null) {
            this.dicMre = new HashMap<>();
        }
        if (!this.dicMre.containsKey(Integer.valueOf(i2))) {
            ClientManualResetEvent clientManualResetEvent = new ClientManualResetEvent(false);
            clientManualResetEvent.data = null;
            this.dicMre.put(Integer.valueOf(i2), clientManualResetEvent);
        } else {
            this.dicMre.get(Integer.valueOf(i2)).data = null;
            this.dicMre.get(Integer.valueOf(i2)).evt.reset();
        }
        try {
            this.f347ci.send(message);
            if (this.isPrint && this.debugLog != null) {
                this.debugLog.sendDebugLog("send-[" + message.getClass().getName() + "]-[" + HexUtils.bytes2HexString(message.msgData) + "]");
            }
            this.dicMre.get(Integer.valueOf(i2)).evt.waitOne(i);
            if (this.dicMre.get(Integer.valueOf(i2)).data != null) {
                message.msgData = this.dicMre.get(Integer.valueOf(i2)).data.msgData;
                message.ackUnpack(this.dicMre.get(Integer.valueOf(i2)).data.cData);
                if (!this.isPrint || this.debugLog == null) {
                    return;
                }
                this.debugLog.receiveDebugLog("receive-[" + message.getClass().getName() + "]-[" + HexUtils.bytes2HexString(message.msgData) + "]");
            }
        } catch (Exception unused) {
        }
    }

    public void sendSynMsg(Message message) {
        sendSynMsg(message, 3000);
    }

    public void sendSynMsgRetry(Message message, int i, int i2) {
        for (int i3 = 0; i3 < i2; i3++) {
            sendSynMsg(message, i);
            if (message.getRtCode() == 0) {
                return;
            }
        }
    }

    public void sendUnsynMsg(Message message) {
        HandlerDebugLog handlerDebugLog;
        if (message == null) {
            return;
        }
        this.f347ci.send(message);
        if (!this.isPrint || (handlerDebugLog = this.debugLog) == null) {
            return;
        }
        handlerDebugLog.sendDebugLog("send-[" + message.getClass().getName() + "]-[" + HexUtils.bytes2HexString(message.msgData) + "]");
    }

    public void sendUnsynMsg(byte[] bArr) {
        HandlerDebugLog handlerDebugLog;
        if (bArr == null) {
            return;
        }
        this.f347ci.send(bArr);
        if (!this.isPrint || (handlerDebugLog = this.debugLog) == null) {
            return;
        }
        handlerDebugLog.sendDebugLog("send-[custom]-[" + HexUtils.bytes2HexString(bArr) + "]");
    }

    public void sendUnsynMsgRetry(Message message, int i) {
        for (int i2 = 0; i2 < i; i2++) {
            sendUnsynMsg(message);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void processMessage(Message message) {
        if (message == null) {
            return;
        }
        try {
            if (message.msgType.mt_12.equals("0")) {
                int i = message.msgType.toInt();
                if (this.dicMre.containsKey(Integer.valueOf(i))) {
                    this.dicMre.get(Integer.valueOf(i)).data = message;
                    this.dicMre.get(Integer.valueOf(i)).evt.set();
                    return;
                }
                return;
            }
            if (message.msgType.mt_8_11.equals(EnumG.MSG_TYPE_BIT_BASE)) {
                if (message.msgType.msgId == 0) {
                    LogBaseEpcInfo logBaseEpcInfo = new LogBaseEpcInfo();
                    logBaseEpcInfo.ackUnpack(message.cData);
                    triggerTagEpcLogEvent(logBaseEpcInfo);
                    return;
                }
                if (32 == message.msgType.msgId) {
                    LogBase6bInfo logBase6bInfo = new LogBase6bInfo();
                    logBase6bInfo.ackUnpack(message.cData);
                    triggerTag6bLogEvent(logBase6bInfo);
                    return;
                }
                if (48 == message.msgType.msgId) {
                    LogBaseGbInfo logBaseGbInfo = new LogBaseGbInfo();
                    logBaseGbInfo.ackUnpack(message.cData);
                    triggerTagGbLogEvent(logBaseGbInfo);
                    return;
                }
                if (64 == message.msgType.msgId) {
                    LogBaseGJbInfo logBaseGJbInfo = new LogBaseGJbInfo();
                    logBaseGJbInfo.ackUnpack(message.cData);
                    triggerTagGJbLogEvent(logBaseGJbInfo);
                    return;
                }
                if (1 == message.msgType.msgId) {
                    LogBaseEpcOver logBaseEpcOver = new LogBaseEpcOver();
                    logBaseEpcOver.ackUnpack(message.cData);
                    triggerTagEpcOverEvent(logBaseEpcOver);
                    return;
                }
                if (33 == message.msgType.msgId) {
                    LogBase6bOver logBase6bOver = new LogBase6bOver();
                    logBase6bOver.ackUnpack(message.cData);
                    triggerTag6bOverEvent(logBase6bOver);
                    return;
                }
                if (49 == message.msgType.msgId) {
                    LogBaseGbOver logBaseGbOver = new LogBaseGbOver();
                    logBaseGbOver.ackUnpack(message.cData);
                    triggerTagGbOverEvent(logBaseGbOver);
                    return;
                } else if (65 == message.msgType.msgId) {
                    LogBaseGJbOver logBaseGJbOver = new LogBaseGJbOver();
                    logBaseGJbOver.ackUnpack(message.cData);
                    triggerTagGJbOverEvent(logBaseGJbOver);
                    return;
                } else if (50 == message.msgType.msgId) {
                    LogBaseGbSafeParam logBaseGbSafeParam = new LogBaseGbSafeParam();
                    logBaseGbSafeParam.ackUnpack(message.cData);
                    triggerTagGbSafeParamEvent(logBaseGbSafeParam);
                    return;
                } else {
                    if (67 == message.msgType.msgId) {
                        triggerTagGJbRn11LogEvent(message.cData);
                        return;
                    }
                    return;
                }
            }
            if (message.msgType.mt_8_11.equals(EnumG.MSG_TYPE_BIT_APP)) {
                if (18 == message.msgType.msgId) {
                    if (this.isPrint) {
                        GLog.m302d("[heartbeat]");
                    }
                    MsgAppHeartbeat msgAppHeartbeat = new MsgAppHeartbeat();
                    msgAppHeartbeat.msgType = message.msgType;
                    msgAppHeartbeat.ackUnpack(message.cData);
                    sendUnsynMsg(msgAppHeartbeat);
                    if (this.onHeartbeatLog != null) {
                        this.onHeartbeatLog.log(this.name);
                    }
                }
                if (message.msgType.msgId == 0) {
                    LogAppGpiStart logAppGpiStart = new LogAppGpiStart();
                    logAppGpiStart.ackUnpack(message.cData);
                    triggerGpiStart(logAppGpiStart);
                } else if (1 == message.msgType.msgId) {
                    LogAppGpiOver logAppGpiOver = new LogAppGpiOver();
                    logAppGpiOver.ackUnpack(message.cData);
                    triggerGpiOver(logAppGpiOver);
                } else if (27 == message.msgType.msgId) {
                    MsgAppGetCacheTagData msgAppGetCacheTagData = new MsgAppGetCacheTagData();
                    msgAppGetCacheTagData.ackUnpack(message.cData);
                    triggerCacheDataOver(msgAppGetCacheTagData);
                }
            }
        } catch (Exception unused) {
        }
    }
}
