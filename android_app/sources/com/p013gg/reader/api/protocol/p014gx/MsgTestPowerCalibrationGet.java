package com.p013gg.reader.api.protocol.p014gx;

import com.p013gg.reader.api.utils.BitBuffer;

/* loaded from: classes.dex */
public class MsgTestPowerCalibrationGet extends Message {
    private int childFreqRange;
    private int power;
    private int powerParam;

    public MsgTestPowerCalibrationGet() {
        try {
            this.msgType = new MsgType();
            this.msgType.mt_8_11 = EnumG.MSG_TYPE_BIT_TEST;
            this.msgType.msgId = (byte) 4;
            this.dataLen = 0;
        } catch (Exception unused) {
        }
    }

    public MsgTestPowerCalibrationGet(byte[] bArr) {
        this();
        if (bArr != null) {
            try {
                if (bArr.length <= 0) {
                    return;
                }
                BitBuffer bitBufferWrap = BitBuffer.wrap(bArr);
                bitBufferWrap.position(0);
                this.childFreqRange = bitBufferWrap.getIntUnsigned(8);
                this.power = bitBufferWrap.getIntUnsigned(8);
            } catch (Exception unused) {
            }
        }
    }

    public int getChildFreqRange() {
        return this.childFreqRange;
    }

    public void setChildFreqRange(int i) {
        this.childFreqRange = i;
    }

    public int getPower() {
        return this.power;
    }

    public void setPower(int i) {
        this.power = i;
    }

    public int getPowerParam() {
        return this.powerParam;
    }

    public void setPowerParam(int i) {
        this.powerParam = i;
    }

    @Override // com.p013gg.reader.api.protocol.p014gx.Message
    public void pack() {
        try {
            BitBuffer bitBufferAllocateDynamic = BitBuffer.allocateDynamic();
            bitBufferAllocateDynamic.putLong(this.childFreqRange, 8);
            bitBufferAllocateDynamic.putLong(this.power, 8);
            this.cData = bitBufferAllocateDynamic.asByteArray();
            this.dataLen = this.cData.length;
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // com.p013gg.reader.api.protocol.p014gx.Message
    public void ackPack() {
        try {
            BitBuffer bitBufferAllocateDynamic = BitBuffer.allocateDynamic();
            bitBufferAllocateDynamic.putLong(this.childFreqRange, 8);
            bitBufferAllocateDynamic.putLong(this.power, 8);
            bitBufferAllocateDynamic.putLong(this.powerParam, 8);
            this.cData = bitBufferAllocateDynamic.asByteArray();
            this.dataLen = this.cData.length;
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // com.p013gg.reader.api.protocol.p014gx.Message
    public void ackUnpack() {
        if (this.cData == null || this.cData.length <= 0) {
            return;
        }
        BitBuffer bitBufferWrap = BitBuffer.wrap(this.cData);
        bitBufferWrap.position(0);
        this.childFreqRange = bitBufferWrap.getIntUnsigned(8);
        this.power = bitBufferWrap.getIntUnsigned(8);
        this.powerParam = bitBufferWrap.getIntUnsigned(8);
        setRtCode((byte) 0);
    }

    public String toString() {
        return "MsgTestPowerCalibrationGet{childFreqRange=" + this.childFreqRange + ", power=" + this.power + ", powerParam=" + this.powerParam + '}';
    }
}
