package com.p013gg.reader.api.dal.communication;

import com.p013gg.reader.api.protocol.p014gx.Message;
import com.p013gg.reader.api.utils.BitBuffer;
import com.p013gg.reader.api.utils.HexUtils;
import com.p013gg.reader.api.utils.RingBuffer;
import com.p013gg.reader.api.utils.ThreadPoolUtils;
import java.net.Socket;

/* loaded from: classes.dex */
public abstract class CommunicationInterface {
    protected static final int MAX_BUFFER_LEN = 1048576;
    public HandlerDisconnected onDisconnected;
    public HandlerMessageReceived onMessageReceived;
    protected int connType = 255;
    protected volatile RingBuffer ringBuffer = new RingBuffer(1048576);
    protected Object lockRingBuffer = new Object();
    protected boolean keepReceived = false;
    protected byte[] rcvBuff = new byte[1024];
    protected boolean isRs485 = false;
    private int rs485Address = 0;
    public boolean _isSendHeartbeat = false;

    public abstract void close();

    public abstract void dispose();

    public void hdPowerOff() {
    }

    public void hdPowerOn() {
    }

    public abstract boolean open(String str);

    public abstract boolean open(String str, int i);

    public abstract boolean open(String str, int i, int i2);

    public abstract boolean open(Socket socket);

    public abstract int receive(byte[] bArr);

    public abstract void send(Message message);

    public abstract void send(byte[] bArr);

    public abstract boolean setBufferSize(int i);

    public void setUhfPower(boolean z) {
    }

    public boolean isRs485() {
        return this.isRs485;
    }

    public void setRs485(boolean z) {
        this.isRs485 = z;
    }

    public int getRs485Address() {
        return this.rs485Address;
    }

    public void setRs485Address(int i) {
        this.rs485Address = i;
    }

    public void setConnectType(int i) {
        this.connType = i;
    }

    public int getConnectType() {
        return this.connType;
    }

    protected void triggerMessageEvent(Message message) {
        try {
            if (this.onMessageReceived != null) {
                synchronized (this.onMessageReceived) {
                    this.onMessageReceived.received(message);
                }
            }
        } catch (Exception unused) {
        }
    }

    protected void triggerDisconnected() {
        try {
            if (this.onDisconnected != null) {
                synchronized (this.onDisconnected) {
                    this.onDisconnected.log();
                }
            }
        } catch (Exception unused) {
        }
    }

    public boolean isConnected() {
        return this.keepReceived;
    }

    public void startProcess() {
        ThreadPoolUtils.run(new Runnable() { // from class: com.gg.reader.api.dal.communication.CommunicationInterface.1
            @Override // java.lang.Runnable
            public void run() {
                while (CommunicationInterface.this.keepReceived) {
                    byte[] bArr = null;
                    synchronized (CommunicationInterface.this.lockRingBuffer) {
                        try {
                            try {
                                if (CommunicationInterface.this.ringBuffer.getDataCount() < 7) {
                                    CommunicationInterface.this.lockRingBuffer.wait();
                                }
                                if ((CommunicationInterface.this.ringBuffer.Index(0) & 255) != 90) {
                                    CommunicationInterface.this.ringBuffer.Clear(1);
                                } else if (CommunicationInterface.this.ringBuffer.Index(1) != 0) {
                                    CommunicationInterface.this.ringBuffer.Clear(1);
                                } else {
                                    BitBuffer bitBufferAllocateDynamic = BitBuffer.allocateDynamic();
                                    int i = CommunicationInterface.this.isRs485 ? 8 : 7;
                                    byte[] bArr2 = new byte[i];
                                    CommunicationInterface.this.ringBuffer.ReadBuffer(bArr2, 0, bArr2.length);
                                    bitBufferAllocateDynamic.put(bArr2);
                                    bitBufferAllocateDynamic.position((bArr2.length * 8) - 16);
                                    int intUnsigned = bitBufferAllocateDynamic.getIntUnsigned(16);
                                    if (intUnsigned < 0 || intUnsigned > 1024) {
                                        CommunicationInterface.this.ringBuffer.Clear(1);
                                    } else {
                                        int i2 = intUnsigned + i + 2;
                                        if (CommunicationInterface.this.ringBuffer.getDataCount() < i2) {
                                            CommunicationInterface.this.lockRingBuffer.wait();
                                        } else {
                                            byte[] bArr3 = new byte[i2];
                                            CommunicationInterface.this.ringBuffer.ReadBuffer(bArr3, 0, i2);
                                            CommunicationInterface.this.ringBuffer.Clear(i2);
                                            bArr = bArr3;
                                        }
                                    }
                                }
                                if (bArr != null) {
                                    Message message = new Message(bArr);
                                    if (message.checkCrc()) {
                                        if (!CommunicationInterface.this.isRs485 || message.rs485Address == CommunicationInterface.this.rs485Address) {
                                            CommunicationInterface.this.triggerMessageEvent(message);
                                        }
                                    } else {
                                        System.out.println("crc错误-->" + HexUtils.bytes2HexString(message.msgData));
                                    }
                                }
                            } finally {
                            }
                        } catch (Exception unused) {
                        }
                    }
                }
            }
        });
    }
}
