package com.p013gg.reader.api.protocol.p014gx;

import com.p013gg.reader.api.utils.BitBuffer;

/* loaded from: classes.dex */
public class MsgAppGetRs485 extends Message {
    private int address;
    private int baudRate;

    @Override // com.p013gg.reader.api.protocol.p014gx.Message
    public void pack() {
    }

    public MsgAppGetRs485() {
        this.baudRate = Integer.MAX_VALUE;
        try {
            this.msgType = new MsgType();
            this.msgType.mt_8_11 = EnumG.MSG_TYPE_BIT_APP;
            this.msgType.msgId = (byte) 22;
            this.dataLen = 0;
        } catch (Exception unused) {
        }
    }

    public MsgAppGetRs485(byte[] bArr) {
        this();
        if (bArr != null) {
            try {
                if (bArr.length <= 0) {
                    return;
                }
                BitBuffer bitBufferWrap = BitBuffer.wrap(bArr);
                bitBufferWrap.position(0);
                this.address = bitBufferWrap.getIntUnsigned(8);
                this.baudRate = bitBufferWrap.getIntUnsigned(8);
            } catch (Exception unused) {
            }
        }
    }

    public int getAddress() {
        return this.address;
    }

    public void setAddress(int i) {
        this.address = i;
    }

    public int getBaudRate() {
        return this.baudRate;
    }

    public void setBaudRate(int i) {
        this.baudRate = i;
    }

    @Override // com.p013gg.reader.api.protocol.p014gx.Message
    public void ackPack() {
        try {
            BitBuffer bitBufferAllocateDynamic = BitBuffer.allocateDynamic();
            bitBufferAllocateDynamic.putInt(this.address, 8);
            if (Integer.MAX_VALUE != this.baudRate) {
                bitBufferAllocateDynamic.putLong(this.baudRate, 8);
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
        this.address = bitBufferWrap.getIntUnsigned(8);
        this.baudRate = bitBufferWrap.getIntUnsigned(8);
        setRtCode((byte) 0);
    }

    public String toString() {
        return "MsgAppGetRs485{address=" + this.address + ", baudRate=" + this.baudRate + '}';
    }
}
