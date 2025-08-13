package com.p013gg.reader.api.protocol.p014gx;

import com.p013gg.reader.api.utils.BitBuffer;

/* loaded from: classes.dex */
public class MsgBaseGetResidenceTime extends Message {
    private Long antResidenceTime;
    private Long frqResidenceTime;

    @Override // com.p013gg.reader.api.protocol.p014gx.Message
    public void pack() {
    }

    public MsgBaseGetResidenceTime() {
        try {
            this.msgType = new MsgType();
            this.msgType.mt_8_11 = EnumG.MSG_TYPE_BIT_BASE;
            this.msgType.msgId = (byte) -31;
            this.dataLen = 0;
        } catch (Exception unused) {
        }
    }

    public MsgBaseGetResidenceTime(byte[] bArr) {
        this();
        if (bArr != null) {
            try {
                if (bArr.length <= 0) {
                    return;
                }
                BitBuffer bitBufferWrap = BitBuffer.wrap(bArr);
                bitBufferWrap.position(0);
                while (bitBufferWrap.position() / 8 < bArr.length) {
                    byte b = bitBufferWrap.getByte();
                    if (b == 1) {
                        this.antResidenceTime = Long.valueOf(bitBufferWrap.getLongUnsigned(16));
                    } else if (b == 2) {
                        this.frqResidenceTime = Long.valueOf(bitBufferWrap.getLongUnsigned(16));
                    }
                }
            } catch (Exception unused) {
            }
        }
    }

    public Long getAntResidenceTime() {
        return this.antResidenceTime;
    }

    public void setAntResidenceTime(Long l) {
        this.antResidenceTime = l;
    }

    public Long getFrqResidenceTime() {
        return this.frqResidenceTime;
    }

    public void setFrqResidenceTime(Long l) {
        this.frqResidenceTime = l;
    }

    @Override // com.p013gg.reader.api.protocol.p014gx.Message
    public void ackPack() {
        try {
            BitBuffer bitBufferAllocateDynamic = BitBuffer.allocateDynamic();
            bitBufferAllocateDynamic.put(1, 8);
            bitBufferAllocateDynamic.putLong(this.antResidenceTime.longValue(), 16);
            bitBufferAllocateDynamic.put(2, 8);
            bitBufferAllocateDynamic.putLong(this.frqResidenceTime.longValue(), 16);
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
        while (bitBufferWrap.position() / 8 < this.cData.length) {
            int intUnsigned = bitBufferWrap.getIntUnsigned(8);
            if (intUnsigned == 1) {
                this.antResidenceTime = Long.valueOf(bitBufferWrap.getLongUnsigned(16));
            } else if (intUnsigned == 2) {
                this.frqResidenceTime = Long.valueOf(bitBufferWrap.getLongUnsigned(16));
            }
        }
        setRtCode((byte) 0);
    }

    public String toString() {
        return "MsgBaseGetResidenceTime{antResidenceTime=" + this.antResidenceTime + ", frqResidenceTime=" + this.frqResidenceTime + '}';
    }
}
