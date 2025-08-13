package com.p013gg.reader.api.protocol.p014gx;

import com.p013gg.reader.api.utils.BitBuffer;

/* loaded from: classes.dex */
public class MsgAppGetTcpMode extends Message {
    private String clientIp;
    private int clientPort;
    private int serverPort;
    private int tcpMode;

    @Override // com.p013gg.reader.api.protocol.p014gx.Message
    public void pack() {
    }

    public MsgAppGetTcpMode() {
        this.serverPort = Integer.MAX_VALUE;
        this.clientPort = Integer.MAX_VALUE;
        try {
            this.msgType = new MsgType();
            this.msgType.mt_8_11 = EnumG.MSG_TYPE_BIT_APP;
            this.msgType.msgId = (byte) 8;
            this.dataLen = 0;
        } catch (Exception unused) {
        }
    }

    public MsgAppGetTcpMode(byte[] bArr) {
        this();
        if (bArr != null) {
            try {
                if (bArr.length <= 0) {
                    return;
                }
                BitBuffer bitBufferWrap = BitBuffer.wrap(bArr);
                bitBufferWrap.position(0);
                this.tcpMode = bitBufferWrap.getIntUnsigned(8);
                this.serverPort = bitBufferWrap.getIntUnsigned(16);
                this.clientIp = bitBufferWrap.getIntUnsigned(8) + "." + bitBufferWrap.getIntUnsigned(8) + "." + bitBufferWrap.getIntUnsigned(8) + "." + bitBufferWrap.getIntUnsigned(8);
                this.clientPort = bitBufferWrap.getIntUnsigned(16);
            } catch (Exception unused) {
            }
        }
    }

    public int getTcpMode() {
        return this.tcpMode;
    }

    public void setTcpMode(int i) {
        this.tcpMode = i;
    }

    public int getServerPort() {
        return this.serverPort;
    }

    public void setServerPort(int i) {
        this.serverPort = i;
    }

    public String getClientIp() {
        return this.clientIp;
    }

    public void setClientIp(String str) {
        this.clientIp = str;
    }

    public int getClientPort() {
        return this.clientPort;
    }

    public void setClientPort(int i) {
        this.clientPort = i;
    }

    @Override // com.p013gg.reader.api.protocol.p014gx.Message
    public void ackPack() {
        try {
            BitBuffer bitBufferAllocateDynamic = BitBuffer.allocateDynamic();
            bitBufferAllocateDynamic.putLong(this.tcpMode, 8);
            if (Integer.MAX_VALUE != this.serverPort) {
                bitBufferAllocateDynamic.put(this.serverPort, 16);
            }
            if (this.clientIp != null) {
                for (String str : this.clientIp.split("\\.")) {
                    bitBufferAllocateDynamic.put(Integer.parseInt(str), 8);
                }
            }
            if (Integer.MAX_VALUE != this.clientPort) {
                bitBufferAllocateDynamic.put(this.clientPort, 16);
            }
            this.cData = bitBufferAllocateDynamic.asByteArray();
            this.dataLen = this.cData.length;
        } catch (Exception unused) {
        }
    }

    @Override // com.p013gg.reader.api.protocol.p014gx.Message
    public void ackUnpack() {
        if (this.cData == null || this.cData.length <= 0) {
            return;
        }
        BitBuffer bitBufferWrap = BitBuffer.wrap(this.cData);
        bitBufferWrap.position(0);
        this.tcpMode = bitBufferWrap.getIntUnsigned(8);
        this.serverPort = bitBufferWrap.getIntUnsigned(16);
        this.clientIp = bitBufferWrap.getIntUnsigned(8) + "." + bitBufferWrap.getIntUnsigned(8) + "." + bitBufferWrap.getIntUnsigned(8) + "." + bitBufferWrap.getIntUnsigned(8);
        this.clientPort = bitBufferWrap.getIntUnsigned(16);
        setRtCode((byte) 0);
    }

    public String toString() {
        return "MsgAppGetTcpMode{tcpMode=" + this.tcpMode + ", serverPort=" + this.serverPort + ", clientIp='" + this.clientIp + "', clientPort=" + this.clientPort + '}';
    }
}
