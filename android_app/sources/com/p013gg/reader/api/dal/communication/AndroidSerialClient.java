package com.p013gg.reader.api.dal.communication;

import com.gxwl.device.reader.dal.SerialPort;
import com.p013gg.reader.api.protocol.p014gx.Message;
import com.p013gg.reader.api.utils.GLog;
import com.p013gg.reader.api.utils.ThreadPoolUtils;
import com.zhy.http.okhttp.OkHttpUtils;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.Socket;

/* loaded from: classes.dex */
public class AndroidSerialClient extends CommunicationInterface {
    private int iBaudRate;
    private int iDelay;
    private boolean isOpen;
    private InputStream mInputStream;
    private OutputStream mOutputStream;
    private SerialPort mSerialPort;
    private String sPort;

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

    public AndroidSerialClient() {
        this.isOpen = false;
        this.iDelay = 100;
        this.sPort = "/dev/ttyS0";
    }

    public AndroidSerialClient(String str, int i) {
        this.isOpen = false;
        this.iDelay = 100;
        this.sPort = "/dev/ttyS0";
        this.sPort = str;
        this.iBaudRate = i;
    }

    public boolean isOpen() {
        return this.isOpen;
    }

    @Override // com.p013gg.reader.api.dal.communication.CommunicationInterface
    public void send(byte[] bArr) {
        synchronized (AndroidSerialClient.class) {
            try {
                try {
                    this.mOutputStream.write(bArr);
                } catch (IOException e) {
                    e.printStackTrace();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.p013gg.reader.api.dal.communication.CommunicationInterface
    public void send(Message message) {
        synchronized (AndroidSerialClient.class) {
            try {
                if (this.isRs485) {
                    message.msgType.mt_13 = "1";
                    message.rs485Address = getRs485Address();
                }
                message.pack();
                send(message.toBytes(this.isRs485));
            } catch (Exception e) {
                GLog.m303e("[AndroidSerialClient]base serial send error:" + e.getMessage());
            }
        }
    }

    @Override // com.p013gg.reader.api.dal.communication.CommunicationInterface
    public void dispose() {
        close();
    }

    @Override // com.p013gg.reader.api.dal.communication.CommunicationInterface
    public boolean open(String str) {
        try {
            String[] strArrSplit = str.split(":");
            if (strArrSplit.length == 2) {
                this.sPort = strArrSplit[0];
                this.iBaudRate = Integer.parseInt(strArrSplit[1]);
                this.mSerialPort = new SerialPort(new File(this.sPort), this.iBaudRate, 0);
                this.mOutputStream = this.mSerialPort.getOutputStream();
                this.mInputStream = this.mSerialPort.getInputStream();
                this.isOpen = true;
                this.keepReceived = true;
                startReceive();
                startProcess();
                return true;
            }
        } catch (Exception unused) {
        }
        return false;
    }

    @Override // com.p013gg.reader.api.dal.communication.CommunicationInterface
    public void close() {
        try {
            this.isOpen = false;
            this.keepReceived = false;
            if (this.mSerialPort != null) {
                this.mSerialPort.close();
                this.mInputStream = null;
                this.mOutputStream = null;
                this.mSerialPort = null;
            }
            synchronized (this.lockRingBuffer) {
                this.lockRingBuffer.notify();
            }
        } catch (Exception unused) {
        }
    }

    public void startReceive() {
        ThreadPoolUtils.run(new Runnable() { // from class: com.gg.reader.api.dal.communication.AndroidSerialClient.1
            @Override // java.lang.Runnable
            public void run() throws InterruptedException, IOException {
                while (AndroidSerialClient.this.keepReceived) {
                    try {
                    } catch (Exception unused) {
                        GLog.m303e("[AndroidSerialClient]startReceive error.");
                    }
                    if (AndroidSerialClient.this.mInputStream == null) {
                        return;
                    }
                    int iAvailable = AndroidSerialClient.this.mInputStream.available();
                    if (iAvailable <= 0) {
                        Thread.sleep(AndroidSerialClient.this.iDelay);
                    }
                    if (iAvailable > 0) {
                        int i = AndroidSerialClient.this.mInputStream.read(AndroidSerialClient.this.rcvBuff, 0, AndroidSerialClient.this.rcvBuff.length);
                        synchronized (AndroidSerialClient.this.lockRingBuffer) {
                            while (AndroidSerialClient.this.ringBuffer.getDataCount() + i > 1048576) {
                                AndroidSerialClient.this.lockRingBuffer.wait(OkHttpUtils.DEFAULT_MILLISECONDS);
                            }
                            AndroidSerialClient.this.ringBuffer.WriteBuffer(AndroidSerialClient.this.rcvBuff, 0, i);
                            AndroidSerialClient.this.lockRingBuffer.notify();
                        }
                    } else {
                        continue;
                    }
                }
            }
        });
    }
}
