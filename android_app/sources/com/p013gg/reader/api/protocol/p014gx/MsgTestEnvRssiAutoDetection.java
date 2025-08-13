package com.p013gg.reader.api.protocol.p014gx;

import com.p013gg.reader.api.utils.BitBuffer;
import java.util.Hashtable;

/* loaded from: classes.dex */
public class MsgTestEnvRssiAutoDetection extends Message {
    private Long antennaEnable;
    private int endFrequency;
    private int mode;
    private int startFrequency;

    public MsgTestEnvRssiAutoDetection() {
        try {
            this.msgType = new MsgType();
            this.msgType.mt_8_11 = EnumG.MSG_TYPE_BIT_TEST;
            this.msgType.msgId = (byte) 10;
            this.dataLen = 0;
        } catch (Exception unused) {
        }
    }

    public MsgTestEnvRssiAutoDetection(byte[] bArr) {
        this();
        if (bArr != null) {
            try {
                if (bArr.length <= 0) {
                    return;
                }
                BitBuffer bitBufferWrap = BitBuffer.wrap(bArr);
                bitBufferWrap.position(0);
                this.antennaEnable = Long.valueOf(bitBufferWrap.getLongUnsigned(32));
                this.startFrequency = bitBufferWrap.getIntUnsigned(16);
                this.endFrequency = bitBufferWrap.getIntUnsigned(16);
                this.mode = bitBufferWrap.getIntUnsigned(8);
            } catch (Exception unused) {
            }
        }
    }

    public Long getAntennaEnable() {
        return this.antennaEnable;
    }

    public void setAntennaEnable(Long l) {
        this.antennaEnable = l;
    }

    public int getStartFrequency() {
        return this.startFrequency;
    }

    public void setStartFrequency(int i) {
        this.startFrequency = i;
    }

    public int getEndFrequency() {
        return this.endFrequency;
    }

    public void setEndFrequency(int i) {
        this.endFrequency = i;
    }

    public int getMode() {
        return this.mode;
    }

    public void setMode(int i) {
        this.mode = i;
    }

    @Override // com.p013gg.reader.api.protocol.p014gx.Message
    public void pack() {
        BitBuffer bitBufferAllocateDynamic = BitBuffer.allocateDynamic();
        bitBufferAllocateDynamic.putLong(this.antennaEnable.longValue(), 32);
        bitBufferAllocateDynamic.putInt(this.startFrequency, 16);
        bitBufferAllocateDynamic.putInt(this.endFrequency, 16);
        bitBufferAllocateDynamic.putInt(this.mode, 8);
        this.cData = bitBufferAllocateDynamic.asByteArray();
        this.dataLen = this.cData.length;
    }

    @Override // com.p013gg.reader.api.protocol.p014gx.Message
    public void ackUnpack() {
        Hashtable<Byte, String> hashtable = new Hashtable<Byte, String>() { // from class: com.gg.reader.api.protocol.gx.MsgTestEnvRssiAutoDetection.1
            {
                put((byte) 0, "Start success.");
                put((byte) 1, "FrequencyPoint Param Reader Not Support.");
                put((byte) 2, "Port Param Reader Not Support.");
                put((byte) 3, "Phase-locked loop locking failed");
                put((byte) 4, "Other error");
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
