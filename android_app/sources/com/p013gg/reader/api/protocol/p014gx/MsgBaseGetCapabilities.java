package com.p013gg.reader.api.protocol.p014gx;

import com.p013gg.reader.api.utils.BitBuffer;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public class MsgBaseGetCapabilities extends Message {
    private int antennaCount;
    private List<Integer> frequencyArray;
    private int maxPower;
    private int minPower;
    private List<Integer> protocolArray;

    @Override // com.p013gg.reader.api.protocol.p014gx.Message
    public void pack() {
    }

    public MsgBaseGetCapabilities() {
        try {
            this.msgType = new MsgType();
            this.msgType.mt_8_11 = EnumG.MSG_TYPE_BIT_BASE;
            this.msgType.msgId = (byte) 0;
            this.dataLen = 0;
        } catch (Exception unused) {
        }
    }

    public MsgBaseGetCapabilities(byte[] bArr) {
        this();
        if (bArr != null) {
            try {
                if (bArr.length <= 0) {
                    return;
                }
                BitBuffer bitBufferWrap = BitBuffer.wrap(bArr);
                bitBufferWrap.position(0);
                this.minPower = bitBufferWrap.getIntUnsigned(8);
                this.maxPower = bitBufferWrap.getIntUnsigned(8);
                this.antennaCount = bitBufferWrap.getIntUnsigned(8);
                int intUnsigned = bitBufferWrap.getIntUnsigned(16);
                if (this.frequencyArray == null) {
                    this.frequencyArray = new ArrayList();
                }
                for (int i = 0; i < intUnsigned; i++) {
                    this.frequencyArray.add(Integer.valueOf(bitBufferWrap.getIntUnsigned(8)));
                }
                int intUnsigned2 = bitBufferWrap.getIntUnsigned(16);
                if (this.protocolArray == null) {
                    this.protocolArray = new ArrayList();
                }
                for (int i2 = 0; i2 < intUnsigned2; i2++) {
                    this.protocolArray.add(Integer.valueOf(bitBufferWrap.getIntUnsigned(8)));
                }
            } catch (Exception unused) {
            }
        }
    }

    public int getMaxPower() {
        return this.maxPower;
    }

    public void setMaxPower(int i) {
        this.maxPower = i;
    }

    public int getMinPower() {
        return this.minPower;
    }

    public void setMinPower(int i) {
        this.minPower = i;
    }

    public int getAntennaCount() {
        return this.antennaCount;
    }

    public void setAntennaCount(int i) {
        this.antennaCount = i;
    }

    public List<Integer> getFrequencyArray() {
        return this.frequencyArray;
    }

    public void setFrequencyArray(List<Integer> list) {
        this.frequencyArray = list;
    }

    public List<Integer> getProtocolArray() {
        return this.protocolArray;
    }

    public void setProtocolArray(List<Integer> list) {
        this.protocolArray = list;
    }

    @Override // com.p013gg.reader.api.protocol.p014gx.Message
    public void ackPack() {
        try {
            BitBuffer bitBufferAllocateDynamic = BitBuffer.allocateDynamic();
            bitBufferAllocateDynamic.putLong(this.minPower, 8);
            bitBufferAllocateDynamic.putLong(this.maxPower, 8);
            bitBufferAllocateDynamic.putLong(this.antennaCount, 8);
            if (this.frequencyArray != null && this.frequencyArray.size() > 0) {
                bitBufferAllocateDynamic.putInt(this.frequencyArray.size(), 16);
                Iterator<Integer> it = this.frequencyArray.iterator();
                while (it.hasNext()) {
                    bitBufferAllocateDynamic.putLong(it.next().intValue(), 8);
                }
            }
            if (this.protocolArray != null && this.protocolArray.size() > 0) {
                bitBufferAllocateDynamic.putInt(this.protocolArray.size(), 16);
                Iterator<Integer> it2 = this.protocolArray.iterator();
                while (it2.hasNext()) {
                    bitBufferAllocateDynamic.putLong(it2.next().intValue(), 8);
                }
            }
            this.cData = bitBufferAllocateDynamic.asByteArray();
            this.dataLen = this.cData.length;
        } catch (Exception unused) {
        }
    }

    @Override // com.p013gg.reader.api.protocol.p014gx.Message
    public void ackUnpack() {
        if (this.cData == null || this.cData.length <= 8) {
            return;
        }
        BitBuffer bitBufferWrap = BitBuffer.wrap(this.cData);
        bitBufferWrap.position(0);
        this.minPower = bitBufferWrap.getIntUnsigned(8);
        this.maxPower = bitBufferWrap.getIntUnsigned(8);
        this.antennaCount = bitBufferWrap.getIntUnsigned(8);
        int intUnsigned = bitBufferWrap.getIntUnsigned(16);
        if (this.frequencyArray == null) {
            this.frequencyArray = new ArrayList();
        }
        for (int i = 0; i < intUnsigned; i++) {
            this.frequencyArray.add(Integer.valueOf(bitBufferWrap.getIntUnsigned(8)));
        }
        int intUnsigned2 = bitBufferWrap.getIntUnsigned(16);
        if (this.protocolArray == null) {
            this.protocolArray = new ArrayList();
        }
        for (int i2 = 0; i2 < intUnsigned2; i2++) {
            this.protocolArray.add(Integer.valueOf(bitBufferWrap.getIntUnsigned(8)));
        }
        setRtCode((byte) 0);
    }

    public String toString() {
        return "MsgBaseGetCapabilities{minPower=" + this.minPower + ", maxPower=" + this.maxPower + ", antennaCount=" + this.antennaCount + ", frequencyArray=" + this.frequencyArray + ", protocolArray=" + this.protocolArray + '}';
    }
}
