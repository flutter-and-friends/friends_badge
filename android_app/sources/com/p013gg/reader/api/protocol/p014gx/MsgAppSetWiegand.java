package com.p013gg.reader.api.protocol.p014gx;

import com.p013gg.reader.api.utils.BitBuffer;
import com.p013gg.reader.api.utils.HexUtils;
import java.util.Hashtable;

/* loaded from: classes.dex */
public class MsgAppSetWiegand extends Message {
    private int negativePulseWidth;
    private int pulseInterval;
    private int wiegandContent;
    private int wiegandFormat;
    private int wiegandSwitch;

    public MsgAppSetWiegand() {
        this.negativePulseWidth = Integer.MAX_VALUE;
        this.pulseInterval = Integer.MAX_VALUE;
        try {
            this.msgType = new MsgType();
            this.msgType.mt_8_11 = EnumG.MSG_TYPE_BIT_APP;
            this.msgType.msgId = (byte) 13;
            this.dataLen = 0;
        } catch (Exception unused) {
        }
    }

    public MsgAppSetWiegand(byte[] bArr) {
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
    public void pack() {
        BitBuffer bitBufferAllocateDynamic = BitBuffer.allocateDynamic();
        bitBufferAllocateDynamic.putLong(this.wiegandSwitch, 8);
        bitBufferAllocateDynamic.putLong(this.wiegandFormat, 8);
        bitBufferAllocateDynamic.putLong(this.wiegandContent, 8);
        if (Integer.MAX_VALUE != this.negativePulseWidth) {
            bitBufferAllocateDynamic.putInt(1, 8);
            bitBufferAllocateDynamic.put(this.negativePulseWidth, 16);
        }
        if (Integer.MAX_VALUE != this.pulseInterval) {
            bitBufferAllocateDynamic.putInt(2, 8);
            bitBufferAllocateDynamic.put(this.pulseInterval, 16);
        }
        this.cData = bitBufferAllocateDynamic.asByteArray();
        this.dataLen = this.cData.length;
    }

    @Override // com.p013gg.reader.api.protocol.p014gx.Message
    public void ackUnpack() {
        Hashtable<Byte, String> hashtable = new Hashtable<Byte, String>() { // from class: com.gg.reader.api.protocol.gx.MsgAppSetWiegand.1
            {
                put((byte) 0, "Success.");
                put((byte) 1, "Reader hardware is not supported Wigan port.");
                put((byte) 2, "Wiegand communication format not supported by reader .");
                put((byte) 3, "Data content not supported by the reader");
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
