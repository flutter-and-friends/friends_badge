package com.p013gg.reader.api.protocol.p014gx;

import com.p013gg.reader.api.utils.BitBuffer;

/* loaded from: classes.dex */
public class MsgBaseGetAutoDormancy extends Message {
    private int freeTime;
    private int onOff;

    @Override // com.p013gg.reader.api.protocol.p014gx.Message
    public void pack() {
    }

    public MsgBaseGetAutoDormancy() {
        this.freeTime = Integer.MAX_VALUE;
        try {
            this.msgType = new MsgType();
            this.msgType.mt_8_11 = EnumG.MSG_TYPE_BIT_BASE;
            this.msgType.msgId = (byte) 14;
            this.dataLen = 0;
        } catch (Exception unused) {
        }
    }

    public MsgBaseGetAutoDormancy(byte[] bArr) {
        this();
        if (bArr != null) {
            try {
                if (bArr.length <= 0) {
                    return;
                }
                BitBuffer bitBufferWrap = BitBuffer.wrap(bArr);
                bitBufferWrap.position(0);
                this.onOff = bitBufferWrap.getIntUnsigned(8);
                this.freeTime = bitBufferWrap.getIntUnsigned(16);
            } catch (Exception unused) {
            }
        }
    }

    public int getOnOff() {
        return this.onOff;
    }

    public void setOnOff(int i) {
        this.onOff = i;
    }

    public int getFreeTime() {
        return this.freeTime;
    }

    public void setFreeTime(int i) {
        this.freeTime = i;
    }

    @Override // com.p013gg.reader.api.protocol.p014gx.Message
    public void ackPack() {
        try {
            BitBuffer bitBufferAllocateDynamic = BitBuffer.allocateDynamic();
            bitBufferAllocateDynamic.putLong(this.onOff, 8);
            if (Integer.MAX_VALUE != this.freeTime) {
                bitBufferAllocateDynamic.put(this.freeTime, 16);
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
        this.onOff = bitBufferWrap.getIntUnsigned(8);
        this.freeTime = bitBufferWrap.getIntUnsigned(16);
        setRtCode((byte) 0);
    }

    public String toString() {
        return "MsgBaseGetAutoDormancy{onOff=" + this.onOff + ", freeTime=" + this.freeTime + '}';
    }
}
