package com.p013gg.reader.api.protocol.p014gx;

import com.p013gg.reader.api.utils.BitBuffer;
import com.p013gg.reader.api.utils.HexUtils;

/* loaded from: classes.dex */
public class MsgAppGetWiegand extends Message {
    private int negativePulseWidth;
    private int pulseInterval;
    private int wiegandContent;
    private int wiegandFormat;
    private int wiegandSwitch;

    @Override // com.p013gg.reader.api.protocol.p014gx.Message
    public void pack() {
    }

    public MsgAppGetWiegand() {
        this.negativePulseWidth = Integer.MAX_VALUE;
        this.pulseInterval = Integer.MAX_VALUE;
        try {
            this.msgType = new MsgType();
            this.msgType.mt_8_11 = EnumG.MSG_TYPE_BIT_APP;
            this.msgType.msgId = (byte) 14;
            this.dataLen = 0;
        } catch (Exception unused) {
        }
    }

    public MsgAppGetWiegand(byte[] bArr) {
        this();
        if (bArr != null) {
            try {
                if (bArr.length <= 0) {
                    return;
                }
                BitBuffer bitBufferWrap = BitBuffer.wrap(bArr);
                bitBufferWrap.position(0);
                this.wiegandSwitch = bitBufferWrap.getIntUnsigned(8);
                this.wiegandFormat = bitBufferWrap.getIntUnsigned(8);
                this.wiegandContent = bitBufferWrap.getIntUnsigned(8);
                while (bitBufferWrap.position() / 8 < bArr.length) {
                    int intUnsigned = bitBufferWrap.getIntUnsigned(8);
                    if (intUnsigned == 1) {
                        byte[] bArr2 = new byte[2];
                        bitBufferWrap.get(bArr2);
                        this.negativePulseWidth = HexUtils.bytes2Int(bArr2);
                    } else if (intUnsigned == 2) {
                        byte[] bArr3 = new byte[2];
                        bitBufferWrap.get(bArr3);
                        this.pulseInterval = HexUtils.bytes2Int(bArr3);
                    }
                }
            } catch (Exception unused) {
            }
        }
    }

    public int getWiegandSwitch() {
        return this.wiegandSwitch;
    }

    public void setWiegandSwitch(int i) {
        this.wiegandSwitch = i;
    }

    public int getWiegandFormat() {
        return this.wiegandFormat;
    }

    public void setWiegandFormat(int i) {
        this.wiegandFormat = i;
    }

    public int getWiegandContent() {
        return this.wiegandContent;
    }

    public void setWiegandContent(int i) {
        this.wiegandContent = i;
    }

    public int getNegativePulseWidth() {
        return this.negativePulseWidth;
    }

    public void setNegativePulseWidth(int i) {
        this.negativePulseWidth = i;
    }

    public int getPulseInterval() {
        return this.pulseInterval;
    }

    public void setPulseInterval(int i) {
        this.pulseInterval = i;
    }

    @Override // com.p013gg.reader.api.protocol.p014gx.Message
    public void ackPack() {
        try {
            BitBuffer bitBufferAllocateDynamic = BitBuffer.allocateDynamic();
            bitBufferAllocateDynamic.putLong(this.wiegandSwitch, 8);
            bitBufferAllocateDynamic.putLong(this.wiegandFormat, 8);
            bitBufferAllocateDynamic.putLong(this.wiegandContent, 8);
            if (Integer.MAX_VALUE != this.negativePulseWidth) {
                bitBufferAllocateDynamic.putLong(1L);
                bitBufferAllocateDynamic.putLong(this.negativePulseWidth);
            }
            if (Integer.MAX_VALUE != this.pulseInterval) {
                bitBufferAllocateDynamic.putLong(2L);
                bitBufferAllocateDynamic.putLong(this.pulseInterval);
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
        this.wiegandSwitch = bitBufferWrap.getIntUnsigned(8);
        this.wiegandFormat = bitBufferWrap.getIntUnsigned(8);
        this.wiegandContent = bitBufferWrap.getIntUnsigned(8);
        while (bitBufferWrap.position() / 8 < this.cData.length) {
            int intUnsigned = bitBufferWrap.getIntUnsigned(8);
            if (intUnsigned == 1) {
                byte[] bArr = new byte[2];
                bitBufferWrap.get(bArr);
                this.negativePulseWidth = HexUtils.bytes2Int(bArr);
            } else if (intUnsigned == 2) {
                byte[] bArr2 = new byte[2];
                bitBufferWrap.get(bArr2);
                this.pulseInterval = HexUtils.bytes2Int(bArr2);
            }
        }
        setRtCode((byte) 0);
    }

    public String toString() {
        return "MsgAppGetWiegand{wiegandSwitch=" + this.wiegandSwitch + ", wiegandFormat=" + this.wiegandFormat + ", wiegandContent=" + this.wiegandContent + ", negativePulseWidth=" + this.negativePulseWidth + ", pulseInterval=" + this.pulseInterval + '}';
    }
}
