package com.p013gg.reader.api.dal.communication;

import com.p013gg.reader.api.protocol.p014gx.Message;
import com.p013gg.reader.api.protocol.p014gx.MsgAppHeartbeat;
import com.p013gg.reader.api.utils.ThreadPoolUtils;
import com.zhy.http.okhttp.OkHttpUtils;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.util.Date;

/* loaded from: classes.dex */
public class TcpClient extends CommunicationInterface {
    public Socket sConn = null;
    public String serverIp = "192.168.1.168";
    public int serverPort = 8160;
    public InputStream inputStream = null;
    public OutputStream outputStream = null;
    boolean _isOpen = false;
    private Date lastUrgentData = new Date();
    private int count = 1;

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
    public int receive(byte[] bArr) {
        return 0;
    }

    @Override // com.p013gg.reader.api.dal.communication.CommunicationInterface
    public boolean setBufferSize(int i) {
        return false;
    }

    @Override // com.p013gg.reader.api.dal.communication.CommunicationInterface
    public boolean open(Socket socket) throws IOException {
        try {
            if (this.sConn != null && this.sConn.isConnected()) {
                return false;
            }
            this.sConn = socket;
            this.keepReceived = true;
            socket.setSoTimeout(1000);
            socket.setKeepAlive(true);
            this.inputStream = socket.getInputStream();
            this.outputStream = socket.getOutputStream();
            startReceive();
            startProcess();
            return true;
        } catch (Exception unused) {
            close();
            return false;
        }
    }

    @Override // com.p013gg.reader.api.dal.communication.CommunicationInterface
    public boolean open(String str) throws IOException {
        try {
            String[] strArrSplit = str.split(":");
            if (strArrSplit.length == 2) {
                this.serverIp = strArrSplit[0];
                this.serverPort = Integer.parseInt(strArrSplit[1]);
                this.sConn = new Socket();
                this.sConn.connect(new InetSocketAddress(this.serverIp, this.serverPort), 5000);
                this.sConn.setSoTimeout(1000);
                this.sConn.setKeepAlive(true);
                this.inputStream = this.sConn.getInputStream();
                this.outputStream = this.sConn.getOutputStream();
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
    public void close() throws IOException {
        try {
            this.keepReceived = false;
            this._isOpen = false;
            if (this.sConn != null) {
                this.sConn.close();
                this.inputStream = null;
                this.outputStream = null;
                this.sConn = null;
            }
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
                this.outputStream.write(bArr);
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
        if (this.sConn == null) {
            return true;
        }
        Date date = new Date();
        long time = date.getTime() - this.lastUrgentData.getTime();
        int i = this.count;
        if (time > i * 3000) {
            try {
                this.count = i + 1;
                send(new MsgAppHeartbeat());
            } catch (Exception unused) {
            }
        }
        return date.getTime() - this.lastUrgentData.getTime() > 15000;
    }

    public void startReceive() {
        ThreadPoolUtils.run(new Runnable() { // from class: com.gg.reader.api.dal.communication.TcpClient.1
            @Override // java.lang.Runnable
            public void run() throws Exception {
                while (TcpClient.this.keepReceived) {
                    try {
                        int iAvailable = TcpClient.this.inputStream.available();
                        if (iAvailable <= 0) {
                            Thread.sleep(100L);
                        }
                        if (iAvailable > 0) {
                            iAvailable = TcpClient.this.inputStream.read(TcpClient.this.rcvBuff, 0, TcpClient.this.rcvBuff.length);
                            synchronized (TcpClient.this.lockRingBuffer) {
                                while (TcpClient.this.ringBuffer.getDataCount() + iAvailable > 1048576) {
                                    try {
                                        TcpClient.this.lockRingBuffer.wait(OkHttpUtils.DEFAULT_MILLISECONDS);
                                    } catch (InterruptedException unused) {
                                    }
                                }
                                TcpClient.this.ringBuffer.WriteBuffer(TcpClient.this.rcvBuff, 0, iAvailable);
                                TcpClient.this.lockRingBuffer.notify();
                            }
                        }
                        if (!TcpClient.this._isSendHeartbeat) {
                            continue;
                        } else if (iAvailable <= 0) {
                            if (TcpClient.this.isRemoteClosed()) {
                                throw new Exception("remote closed.");
                            }
                        } else {
                            TcpClient.this.lastUrgentData = new Date();
                            TcpClient.this.count = 1;
                        }
                    } catch (Exception unused2) {
                        TcpClient.this.triggerDisconnected();
                        Thread.sleep(3000L);
                    }
                }
            }
        });
    }
}
