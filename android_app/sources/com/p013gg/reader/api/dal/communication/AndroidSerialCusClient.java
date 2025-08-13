package com.p013gg.reader.api.dal.communication;

import com.gxwl.device.reader.dal.SerialPortJNI;
import com.p013gg.reader.api.protocol.p014gx.Message;
import com.p013gg.reader.api.utils.GLog;
import com.p013gg.reader.api.utils.ThreadPoolUtils;
import com.zhy.http.okhttp.OkHttpUtils;
import java.net.Socket;

/* loaded from: classes.dex */
public class AndroidSerialCusClient extends CommunicationInterface {
    private int freeWait;
    private int packageSize;

    @Override // com.p013gg.reader.api.dal.communication.CommunicationInterface
    public void dispose() {
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

    public AndroidSerialCusClient(int i, int i2) {
        this.packageSize = 64;
        this.freeWait = 1;
        this.packageSize = i;
        this.freeWait = i2;
    }

    @Override // com.p013gg.reader.api.dal.communication.CommunicationInterface
    public boolean open(String str) {
        try {
            String[] strArrSplit = str.split(":");
            if (strArrSplit.length == 2 && 1 == SerialPortJNI.openPort(strArrSplit[0], Integer.parseInt(strArrSplit[1]), 8, 1, 'N')) {
                this.keepReceived = true;
                startReceive();
                startProcess();
                return true;
            }
        } catch (Exception unused) {
        }
        return false;
    }

    public void startReceive() {
        ThreadPoolUtils.run(new Runnable() { // from class: com.gg.reader.api.dal.communication.AndroidSerialCusClient.1
            @Override // java.lang.Runnable
            public void run() throws InterruptedException {
                byte[] port;
                while (AndroidSerialCusClient.this.keepReceived) {
                    try {
                        port = SerialPortJNI.readPort(AndroidSerialCusClient.this.packageSize);
                    } catch (Exception unused) {
                        GLog.m303e("[AndroidSerialCusClient]startReceive error.");
                    }
                    if (port == null || port.length <= 0) {
                        Thread.sleep(AndroidSerialCusClient.this.freeWait);
                    } else {
                        synchronized (AndroidSerialCusClient.this.lockRingBuffer) {
                            while (port.length + AndroidSerialCusClient.this.ringBuffer.getDataCount() > 1048576) {
                                AndroidSerialCusClient.this.lockRingBuffer.wait(OkHttpUtils.DEFAULT_MILLISECONDS);
                            }
                            AndroidSerialCusClient.this.ringBuffer.WriteBuffer(port, 0, port.length);
                            AndroidSerialCusClient.this.lockRingBuffer.notify();
                        }
                    }
                }
            }
        });
    }

    @Override // com.p013gg.reader.api.dal.communication.CommunicationInterface
    public void close() {
        try {
            this.keepReceived = false;
            SerialPortJNI.closePort();
            synchronized (this.lockRingBuffer) {
                this.lockRingBuffer.notifyAll();
            }
        } catch (Exception unused) {
        }
    }

    @Override // com.p013gg.reader.api.dal.communication.CommunicationInterface
    public void send(byte[] bArr) {
        synchronized (AndroidSerialCusClient.class) {
            try {
                SerialPortJNI.writePort(bArr);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    @Override // com.p013gg.reader.api.dal.communication.CommunicationInterface
    public void send(Message message) {
        synchronized (AndroidSerialCusClient.class) {
            try {
                if (this.isRs485) {
                    message.msgType.mt_13 = "1";
                    message.rs485Address = getRs485Address();
                }
                message.pack();
                send(message.toBytes(this.isRs485));
            } catch (Exception e) {
                GLog.m303e("[AndroidSerialCusClient]base serial send error:" + e.getMessage());
            }
        }
    }
}
