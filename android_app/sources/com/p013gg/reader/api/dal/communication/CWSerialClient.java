package com.p013gg.reader.api.dal.communication;

import com.p013gg.reader.api.protocol.p014gx.Message;
import com.p013gg.reader.api.utils.ThreadPoolUtils;
import com.rscja.deviceapi.Module;
import com.rscja.deviceapi.exception.ConfigurationException;
import com.zhy.http.okhttp.OkHttpUtils;
import java.net.Socket;

/* loaded from: classes.dex */
public class CWSerialClient extends CommunicationInterface {
    private Module instance;

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

    public CWSerialClient() {
        try {
            this.instance = Module.getInstance();
        } catch (ConfigurationException e) {
            e.printStackTrace();
        }
    }

    public boolean powerOn(int i) {
        Module module = this.instance;
        if (module != null) {
            return module.powerOn(i);
        }
        return false;
    }

    public boolean powerOff(int i) {
        Module module = this.instance;
        if (module != null) {
            return module.powerOff(i);
        }
        return false;
    }

    public boolean init(int i) {
        Module module = this.instance;
        if (module != null) {
            return module.init(i);
        }
        return false;
    }

    public boolean free() {
        Module module = this.instance;
        if (module != null) {
            return module.free();
        }
        return false;
    }

    @Override // com.p013gg.reader.api.dal.communication.CommunicationInterface
    public boolean open(String str) {
        if (str == null) {
            return false;
        }
        String[] strArrSplit = str.split(":");
        Module module = this.instance;
        if (module == null || !module.openSerail(strArrSplit[0], Integer.parseInt(strArrSplit[1]), 8, 1, 0)) {
            return false;
        }
        this.keepReceived = true;
        startReceive();
        startProcess();
        return true;
    }

    public void startReceive() {
        ThreadPoolUtils.run(new Runnable() { // from class: com.gg.reader.api.dal.communication.CWSerialClient.1
            @Override // java.lang.Runnable
            public void run() throws InterruptedException {
                while (CWSerialClient.this.keepReceived) {
                    try {
                        byte[] bArrReceiveEx = CWSerialClient.this.instance.receiveEx();
                        if (bArrReceiveEx.length <= 0) {
                            Thread.sleep(100L);
                        } else {
                            synchronized (CWSerialClient.this.lockRingBuffer) {
                                while (bArrReceiveEx.length + CWSerialClient.this.ringBuffer.getDataCount() > 1048576) {
                                    CWSerialClient.this.lockRingBuffer.wait(OkHttpUtils.DEFAULT_MILLISECONDS);
                                }
                                CWSerialClient.this.ringBuffer.WriteBuffer(bArrReceiveEx, 0, bArrReceiveEx.length);
                                CWSerialClient.this.lockRingBuffer.notify();
                            }
                        }
                    } catch (Exception unused) {
                        try {
                            Thread.sleep(3000L);
                        } catch (InterruptedException e) {
                            e.printStackTrace();
                        }
                    }
                }
            }
        });
    }

    @Override // com.p013gg.reader.api.dal.communication.CommunicationInterface
    public void close() {
        Module module = this.instance;
        if (module != null) {
            this.keepReceived = false;
            module.closeSerail();
        }
    }

    @Override // com.p013gg.reader.api.dal.communication.CommunicationInterface
    public void send(byte[] bArr) {
        synchronized (this) {
            try {
                this.instance.send(bArr);
            } catch (Exception unused) {
            }
        }
    }

    @Override // com.p013gg.reader.api.dal.communication.CommunicationInterface
    public void send(Message message) {
        try {
            if (this.isRs485) {
                message.msgType.mt_13 = "1";
                message.rs485Address = getRs485Address();
            }
            message.pack();
            send(message.toBytes(this.isRs485));
        } catch (Exception unused) {
        }
    }
}
