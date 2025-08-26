package com.p013gg.reader.api.protocol.p014gx;

import com.p013gg.reader.api.utils.BitBuffer;

/* loaded from: classes.dex */
public class MsgBaseGetFreqRange extends Message {
    private int freqRangeIndex;

    @Override // com.p013gg.reader.api.protocol.p014gx.Message
    public void pack() {
    }

    public MsgBaseGetFreqRange() {
        this.freqRangeIndex = Integer.MAX_VALUE;
        try {
            this.msgType = new MsgType();
            this.msgType.mt_8_11 = EnumG.MSG_TYPE_BIT_BASE;
            this.msgType.msgId = (byte) 4;
            this.dataLen = 0;
        } catch (Exception unused) {
        }
    }

    public MsgBaseGetFreqRange(byte[] bArr) {
        this();
        if (bArr != null) {
            try {
                if (bArr.length <= 0) {
                    return;
                }
                BitBuffer bitBufferWrap = BitBuffer.wrap(bArr);
                bitBufferWrap.position(0);
                this.freqRangeIndex = bitBufferWrap.getIntUnsigned(8);
            } catch (Exception unused) {
            }
        }
    }

    public int getFreqRangeIndex() {
        return this.freqRangeIndex;
    }

    public void setFreqRangeIndex(int i) {
        this.freqRangeIndex = i;
    }

    @Override // com.p013gg.reader.api.protocol.p014gx.Message
    public void ackPack() {
        try {
            BitBuffer bitBufferAllocateDynamic = BitBuffer.allocateDynamic();
            bitBufferAllocateDynamic.putLong(this.freqRangeIndex, 8);
            this.cData = bitBufferAllocateDynamic.asByteArray();
            this.dataLen = this.cData.length;
        } catch (Exception unused) {
        }
    }

    @Override // com.p013gg.reader.api.protocol.p014gx.Message
    public void ackUnpack() {
        if (this.cData == null || this.cData.length != 1) {
            return;
        }
        this.freqRangeIndex = this.cData[0];
        setRtCode((byte) 0);
    }

    public String toString() {
        return "MsgBaseGetFreqRange{freqRangeIndex=" + this.freqRangeIndex + '}';
    }
}
