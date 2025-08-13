package com.p013gg.reader.api.protocol.p014gx;

import com.p013gg.reader.api.utils.BitBuffer;
import java.util.Hashtable;
import kotlin.jvm.internal.LongCompanionObject;

/* loaded from: classes.dex */
public class MsgBaseSetResidenceTime extends Message {
    private Long antResidenceTime;
    private Long frqResidenceTime;

    public MsgBaseSetResidenceTime() {
        Long lValueOf = Long.valueOf(LongCompanionObject.MAX_VALUE);
        this.antResidenceTime = lValueOf;
        this.frqResidenceTime = lValueOf;
        try {
            this.msgType = new MsgType();
            this.msgType.mt_8_11 = EnumG.MSG_TYPE_BIT_BASE;
            this.msgType.msgId = (byte) -32;
            this.dataLen = 0;
        } catch (Exception unused) {
        }
    }

    public MsgBaseSetResidenceTime(byte[] bArr) {
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
    public void pack() {
        BitBuffer bitBufferAllocateDynamic = BitBuffer.allocateDynamic();
        if (2147483647L != this.antResidenceTime.longValue()) {
            bitBufferAllocateDynamic.putInt(1, 8);
            bitBufferAllocateDynamic.putLong(this.antResidenceTime.longValue(), 16);
        }
        if (2147483647L != this.frqResidenceTime.longValue()) {
            bitBufferAllocateDynamic.putInt(2, 8);
            bitBufferAllocateDynamic.putLong(this.frqResidenceTime.longValue(), 16);
        }
        this.cData = bitBufferAllocateDynamic.asByteArray();
        this.dataLen = this.cData.length;
    }

    @Override // com.p013gg.reader.api.protocol.p014gx.Message
    public void ackUnpack() {
        Hashtable<Byte, String> hashtable = new Hashtable<Byte, String>() { // from class: com.gg.reader.api.protocol.gx.MsgBaseSetResidenceTime.1
            {
                put((byte) 0, "Success.");
                put((byte) 1, "Mode parameter error.");
                put((byte) 2, "Other parameter error.");
                put((byte) 3, "Save Failure.");
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
