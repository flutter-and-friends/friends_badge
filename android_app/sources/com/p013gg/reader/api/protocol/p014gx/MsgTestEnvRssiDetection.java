package com.p013gg.reader.api.protocol.p014gx;

import com.p013gg.reader.api.utils.BitBuffer;
import java.util.HashMap;

/* loaded from: classes.dex */
public class MsgTestEnvRssiDetection extends Message {
    private Long antennaEnable;
    private int currentRssi;
    private int frequencyPoint;
    private Long rssiFrequency;

    public MsgTestEnvRssiDetection() {
        try {
            this.msgType = new MsgType();
            this.msgType.mt_8_11 = EnumG.MSG_TYPE_BIT_TEST;
            this.msgType.msgId = (byte) 7;
            this.dataLen = 0;
        } catch (Exception unused) {
        }
    }

    public MsgTestEnvRssiDetection(byte[] bArr) {
        this();
        if (bArr != null) {
            try {
                if (bArr.length <= 0) {
                    return;
                }
                BitBuffer bitBufferWrap = BitBuffer.wrap(bArr);
                bitBufferWrap.position(0);
                this.antennaEnable = Long.valueOf(bitBufferWrap.getLongUnsigned(32));
                this.frequencyPoint = bitBufferWrap.getIntUnsigned(8);
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

    public int getFrequencyPoint() {
        return this.frequencyPoint;
    }

    public void setFrequencyPoint(int i) {
        this.frequencyPoint = i;
    }

    public Long getRssiFrequency() {
        return this.rssiFrequency;
    }

    public void setRssiFrequency(Long l) {
        this.rssiFrequency = l;
    }

    public int getCurrentRssi() {
        return this.currentRssi;
    }

    public void setCurrentRssi(int i) {
        this.currentRssi = i;
    }

    @Override // com.p013gg.reader.api.protocol.p014gx.Message
    public void pack() {
        try {
            BitBuffer bitBufferAllocateDynamic = BitBuffer.allocateDynamic();
            bitBufferAllocateDynamic.putLong(this.antennaEnable.longValue(), 32);
            bitBufferAllocateDynamic.putInt(this.frequencyPoint, 8);
            this.cData = bitBufferAllocateDynamic.asByteArray();
            this.dataLen = this.cData.length;
        } catch (Exception unused) {
        }
    }

    @Override // com.p013gg.reader.api.protocol.p014gx.Message
    public void ackPack() {
        try {
            BitBuffer bitBufferAllocateDynamic = BitBuffer.allocateDynamic();
            bitBufferAllocateDynamic.putLong(this.rssiFrequency.longValue(), 32);
            bitBufferAllocateDynamic.putInt(this.currentRssi, 8);
            this.cData = bitBufferAllocateDynamic.asByteArray();
            this.dataLen = this.cData.length;
        } catch (Exception unused) {
        }
    }

    @Override // com.p013gg.reader.api.protocol.p014gx.Message
    public void ackUnpack() {
        HashMap<Byte, String> map = new HashMap<Byte, String>() { // from class: com.gg.reader.api.protocol.gx.MsgTestEnvRssiDetection.1
            {
                put((byte) 0, "Success.");
                put((byte) 1, "FrequencyPoint Param Reader Not Support.");
                put((byte) 2, "Port Param Reader Not Support.");
                put((byte) 3, "Phase-locked loop locking failed");
                put((byte) 4, "Other error");
            }
        };
        if (this.cData == null || this.cData.length <= 0) {
            return;
        }
        setRtCode(this.cData[0]);
        if (map.containsKey(Byte.valueOf(this.cData[0]))) {
            setRtMsg(map.get(Byte.valueOf(this.cData[0])));
        }
        BitBuffer bitBufferWrap = BitBuffer.wrap(this.cData);
        bitBufferWrap.position(8);
        this.rssiFrequency = Long.valueOf(bitBufferWrap.getLongUnsigned(32));
        this.currentRssi = bitBufferWrap.getIntUnsigned(8);
    }

    public String toString() {
        return "MsgTestEnvRssiDetection{antennaEnable=" + this.antennaEnable + ", frequencyPoint=" + this.frequencyPoint + ", rssiFrequency=" + this.rssiFrequency + ", currentRssi=" + this.currentRssi + '}';
    }
}
