package com.p013gg.reader.api.protocol.p014gx;

import com.p013gg.reader.api.utils.BitBuffer;

/* loaded from: classes.dex */
public class MsgAppTagDataReply extends Message {
    private long serialNumber;

    public MsgAppTagDataReply() {
        this.serialNumber = 0L;
        this.msgType = new MsgType();
        this.msgType.mt_8_11 = EnumG.MSG_TYPE_BIT_APP;
        this.msgType.msgId = (byte) 29;
        this.dataLen = 0;
    }

    public MsgAppTagDataReply(byte[] bArr) {
        this();
        if (bArr != null) {
            try {
                if (bArr.length <= 0) {
                    return;
                }
                BitBuffer bitBufferWrap = BitBuffer.wrap(bArr);
                bitBufferWrap.position(0);
                this.serialNumber = bitBufferWrap.getLongUnsigned(32);
            } catch (Exception unused) {
            }
        }
    }

    public long getSerialNumber() {
        return this.serialNumber;
    }

    public void setSerialNumber(long j) {
        this.serialNumber = j;
    }

    @Override // com.p013gg.reader.api.protocol.p014gx.Message
    public void pack() {
        try {
            BitBuffer bitBufferAllocateDynamic = BitBuffer.allocateDynamic();
            bitBufferAllocateDynamic.put(this.serialNumber, 32);
            this.cData = bitBufferAllocateDynamic.asByteArray();
            this.dataLen = this.cData.length;
        } catch (Exception unused) {
        }
    }

    @Override // com.p013gg.reader.api.protocol.p014gx.Message
    public void ackPack() {
        try {
            BitBuffer bitBufferAllocateDynamic = BitBuffer.allocateDynamic();
            bitBufferAllocateDynamic.put(this.serialNumber, 32);
            this.cData = bitBufferAllocateDynamic.asByteArray();
            this.dataLen = this.cData.length;
        } catch (Exception unused) {
        }
    }

    @Override // com.p013gg.reader.api.protocol.p014gx.Message
    public void ackUnpack() {
        BitBuffer bitBufferWrap = BitBuffer.wrap(this.cData);
        bitBufferWrap.position(0);
        this.serialNumber = bitBufferWrap.getLongUnsigned(32);
        setRtCode((byte) 0);
    }

    public String toString() {
        return "MsgAppTagDataReply{serialNumber=" + this.serialNumber + '}';
    }
}
