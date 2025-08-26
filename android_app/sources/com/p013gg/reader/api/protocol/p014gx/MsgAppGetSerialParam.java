package com.p013gg.reader.api.protocol.p014gx;

import com.p013gg.reader.api.utils.BitBuffer;

/* loaded from: classes.dex */
public class MsgAppGetSerialParam extends Message {
    private int serialBaudrate;

    @Override // com.p013gg.reader.api.protocol.p014gx.Message
    public void pack() {
    }

    public MsgAppGetSerialParam() {
        try {
            this.msgType = new MsgType();
            this.msgType.mt_8_11 = EnumG.MSG_TYPE_BIT_APP;
            this.msgType.msgId = (byte) 3;
            this.dataLen = 0;
        } catch (Exception unused) {
        }
    }

    public MsgAppGetSerialParam(byte[] bArr) {
        this();
        if (bArr != null) {
            try {
                if (bArr.length <= 0) {
                    return;
                }
                BitBuffer bitBufferWrap = BitBuffer.wrap(bArr);
                bitBufferWrap.position(0);
                this.serialBaudrate = bitBufferWrap.getIntUnsigned(8);
            } catch (Exception unused) {
            }
        }
    }

    public int getSerialBaudrate() {
        return this.serialBaudrate;
    }

    public void setSerialBaudrate(int i) {
        this.serialBaudrate = i;
    }

    @Override // com.p013gg.reader.api.protocol.p014gx.Message
    public void ackPack() {
        try {
            BitBuffer bitBufferAllocateDynamic = BitBuffer.allocateDynamic();
            bitBufferAllocateDynamic.putLong(this.serialBaudrate, 8);
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
        this.serialBaudrate = bitBufferWrap.getIntUnsigned(8);
        setRtCode((byte) 0);
    }

    public String toString() {
        return "MsgAppGetSerialParam{serialBaudrate=" + this.serialBaudrate + '}';
    }
}
