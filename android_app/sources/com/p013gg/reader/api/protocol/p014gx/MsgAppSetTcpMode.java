package com.p013gg.reader.api.protocol.p014gx;

import com.p013gg.reader.api.utils.BitBuffer;
import java.util.Hashtable;

/* loaded from: classes.dex */
public class MsgAppSetTcpMode extends Message {
    private String clientIp;
    private int clientPort;
    private int serverPort;
    private int tcpMode;

    public MsgAppSetTcpMode() {
        this.serverPort = Integer.MAX_VALUE;
        this.clientPort = Integer.MAX_VALUE;
        try {
            this.msgType = new MsgType();
            this.msgType.mt_8_11 = EnumG.MSG_TYPE_BIT_APP;
            this.msgType.msgId = (byte) 7;
            this.dataLen = 0;
        } catch (Exception unused) {
        }
    }

    public MsgAppSetTcpMode(byte[] bArr) {
        this();
        if (bArr != null) {
            try {
                if (bArr.length <= 0) {
                    return;
                }
                BitBuffer bitBufferWrap = BitBuffer.wrap(bArr);
                bitBufferWrap.position(0);
                this.tcpMode = bitBufferWrap.getIntUnsigned(8);
                while (bitBufferWrap.position() / 8 < bArr.length) {
                    byte b = bitBufferWrap.getByte();
                    if (b == 1) {
                        this.serverPort = bitBufferWrap.getIntUnsigned(16);
                    } else if (b == 2) {
                        this.clientIp = bitBufferWrap.getIntUnsigned(8) + "." + bitBufferWrap.getIntUnsigned(8) + "." + bitBufferWrap.getIntUnsigned(8) + "." + bitBufferWrap.getIntUnsigned(8);
                    } else if (b == 3) {
                        this.clientPort = bitBufferWrap.getIntUnsigned(16);
                    }
                }
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
    public void pack() {
        BitBuffer bitBufferAllocateDynamic = BitBuffer.allocateDynamic();
        bitBufferAllocateDynamic.putLong(this.tcpMode, 8);
        if (Integer.MAX_VALUE != this.serverPort) {
            bitBufferAllocateDynamic.putInt(1, 8);
            bitBufferAllocateDynamic.putInt(this.serverPort, 16);
        }
        String str = this.clientIp;
        if (str != null) {
            String[] strArrSplit = str.split("\\.");
            bitBufferAllocateDynamic.putInt(2, 8);
            for (String str2 : strArrSplit) {
                bitBufferAllocateDynamic.putInt(Integer.parseInt(str2), 8);
            }
        }
        if (Integer.MAX_VALUE != this.clientPort) {
            bitBufferAllocateDynamic.putInt(3, 8);
            bitBufferAllocateDynamic.putInt(this.clientPort, 16);
        }
        this.cData = bitBufferAllocateDynamic.asByteArray();
        this.dataLen = this.cData.length;
    }

    @Override // com.p013gg.reader.api.protocol.p014gx.Message
    public void ackUnpack() {
        Hashtable<Byte, String> hashtable = new Hashtable<Byte, String>() { // from class: com.gg.reader.api.protocol.gx.MsgAppSetTcpMode.1
            {
                put((byte) 0, "Success.");
                put((byte) 1, "Server IP parameter error .");
            }
        };
        if (this.cData == null || this.cData.length != 1) {
            return;
        }
        setRtCode(this.cData[0]);
        if (hashtable.containsKey(Byte.valueOf(this.cData[0]))) {
            setRtMsg(hashtable.get(Byte.valueOf(this.cData[0])));
        }
    }
}
