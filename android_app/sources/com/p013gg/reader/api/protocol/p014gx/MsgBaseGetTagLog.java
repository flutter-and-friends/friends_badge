package com.p013gg.reader.api.protocol.p014gx;

import com.p013gg.reader.api.utils.BitBuffer;

/* loaded from: classes.dex */
public class MsgBaseGetTagLog extends Message {
    private int repeatedTime;
    private int rssiTV;

    @Override // com.p013gg.reader.api.protocol.p014gx.Message
    public void pack() {
    }

    public MsgBaseGetTagLog() {
        this.repeatedTime = Integer.MAX_VALUE;
        this.rssiTV = Integer.MAX_VALUE;
        try {
            this.msgType = new MsgType();
            this.msgType.mt_8_11 = EnumG.MSG_TYPE_BIT_BASE;
            this.msgType.msgId = (byte) 10;
            this.dataLen = 0;
        } catch (Exception unused) {
        }
    }

    public MsgBaseGetTagLog(byte[] bArr) {
        this();
        if (bArr != null) {
            try {
                if (bArr.length <= 0) {
                    return;
                }
                BitBuffer bitBufferWrap = BitBuffer.wrap(bArr);
                bitBufferWrap.position(0);
                this.repeatedTime = bitBufferWrap.getIntUnsigned(16);
                this.rssiTV = bitBufferWrap.getIntUnsigned(8);
            } catch (Exception unused) {
            }
        }
    }

    public int getRepeatedTime() {
        return this.repeatedTime;
    }

    public void setRepeatedTime(int i) {
        this.repeatedTime = i;
    }

    public int getRssiTV() {
        return this.rssiTV;
    }

    public void setRssiTV(int i) {
        this.rssiTV = i;
    }

    @Override // com.p013gg.reader.api.protocol.p014gx.Message
    public void ackPack() {
        try {
            BitBuffer bitBufferAllocateDynamic = BitBuffer.allocateDynamic();
            if (Integer.MAX_VALUE != this.repeatedTime) {
                bitBufferAllocateDynamic.putLong(this.repeatedTime, 16);
            }
            if (Integer.MAX_VALUE != this.rssiTV) {
                bitBufferAllocateDynamic.putLong(this.rssiTV, 8);
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
        this.repeatedTime = bitBufferWrap.getIntUnsigned(16);
        this.rssiTV = bitBufferWrap.getIntUnsigned(8);
        setRtCode((byte) 0);
    }

    public String toString() {
        return "MsgBaseGetTagLog{repeatedTime=" + this.repeatedTime + ", rssiTV=" + this.rssiTV + '}';
    }
}
