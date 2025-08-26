package com.p013gg.reader.api.dal.communication;

import cn.pda.serialport.SerialPort;
import com.p013gg.reader.api.protocol.p014gx.Message;
import com.p013gg.reader.api.utils.GLog;
import com.p013gg.reader.api.utils.ThreadPoolUtils;
import com.zhy.http.okhttp.OkHttpUtils;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.Socket;

/* loaded from: classes.dex */
public class AndroidPdaSerialClient extends CommunicationInterface {
    private int baudrate;
    private int iDelay;
    private boolean isOpen;
    private InputStream mInputStream;
    private OutputStream mOutputStream;
    private SerialPort mSerialPort;
    private int port;
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

    public AndroidPdaSerialClient() {
        this.isOpen = false;
        this.iDelay = 100;
        this.sPort = "/dev/ttyMT1";
        this.port = 13;
        this.baudrate = 115200;
    }

    public AndroidPdaSerialClient(String str, int i) {
        this.isOpen = false;
        this.iDelay = 100;
        this.sPort = "/dev/ttyMT1";
        this.port = 13;
        this.baudrate = 115200;
        this.sPort = str;
        this.baudrate = i;
    }

    public boolean isOpen() {
        return this.isOpen;
    }

    @Override // com.p013gg.reader.api.dal.communication.CommunicationInterface
    public void send(byte[] bArr) {
        synchronized (AndroidPdaSerialClient.class) {
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
        synchronized (AndroidPdaSerialClient.class) {
            try {
                if (this.isRs485) {
                    message.msgType.mt_13 = "1";
                    message.rs485Address = getRs485Address();
                }
                message.pack();
                send(message.toBytes(this.isRs485));
            } catch (Exception e) {
                GLog.m303e("[AndroidPdaSerialClient]base serial send error:" + e.getMessage());
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
                this.port = Integer.parseInt(strArrSplit[0]);
                this.baudrate = Integer.parseInt(strArrSplit[1]);
                this.mSerialPort = new SerialPort(this.port, this.baudrate, 0);
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
                this.mSerialPort.close(this.port);
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

    @Override // com.p013gg.reader.api.dal.communication.CommunicationInterface
    public void hdPowerOn() {
        super.hdPowerOn();
        SerialPort serialPort = this.mSerialPort;
        if (serialPort != null) {
            serialPort.power_5Von();
        }
    }

    @Override // com.p013gg.reader.api.dal.communication.CommunicationInterface
    public void hdPowerOff() {
        super.hdPowerOff();
        SerialPort serialPort = this.mSerialPort;
        if (serialPort != null) {
            serialPort.power_5Voff();
        }
    }

    public void startReceive() {
        ThreadPoolUtils.run(new Runnable() { // from class: com.gg.reader.api.dal.communication.AndroidPdaSerialClient.1
            @Override // java.lang.Runnable
            public void run() throws InterruptedException, IOException {
                while (AndroidPdaSerialClient.this.keepReceived) {
                    try {
                    } catch (Exception unused) {
                        GLog.m303e("[AndroidPdaSerialClient]startReceive error.");
                    }
                    if (AndroidPdaSerialClient.this.mInputStream == null) {
                        return;
                    }
                    int iAvailable = AndroidPdaSerialClient.this.mInputStream.available();
                    if (iAvailable <= 0) {
                        Thread.sleep(AndroidPdaSerialClient.this.iDelay);
                    }
                    if (iAvailable > 0) {
                        int i = AndroidPdaSerialClient.this.mInputStream.read(AndroidPdaSerialClient.this.rcvBuff, 0, AndroidPdaSerialClient.this.rcvBuff.length);
                        synchronized (AndroidPdaSerialClient.this.lockRingBuffer) {
                            while (AndroidPdaSerialClient.this.ringBuffer.getDataCount() + i > 1048576) {
                                AndroidPdaSerialClient.this.lockRingBuffer.wait(OkHttpUtils.DEFAULT_MILLISECONDS);
                            }
                            AndroidPdaSerialClient.this.ringBuffer.WriteBuffer(AndroidPdaSerialClient.this.rcvBuff, 0, i);
                            AndroidPdaSerialClient.this.lockRingBuffer.notify();
                        }
                    } else {
                        continue;
                    }
                }
            }
        });
    }
}
