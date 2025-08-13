package com.p013gg.reader.api.protocol.p014gx;

import com.p013gg.reader.api.utils.BitBuffer;
import java.util.Hashtable;

/* loaded from: classes.dex */
public class MsgBaseSetAutoDormancy extends Message {
    private int freeTime;
    private int onOff;

    public MsgBaseSetAutoDormancy() {
        this.freeTime = Integer.MIN_VALUE;
        try {
            this.msgType = new MsgType();
            this.msgType.mt_8_11 = EnumG.MSG_TYPE_BIT_BASE;
            this.msgType.msgId = (byte) 13;
            this.dataLen = 0;
        } catch (Exception unused) {
        }
    }

    public MsgBaseSetAutoDormancy(byte[] bArr) {
        this();
        if (bArr != null) {
            try {
                if (bArr.length <= 0) {
                    return;
                }
                BitBuffer bitBufferWrap = BitBuffer.wrap(bArr);
                bitBufferWrap.position(0);
                this.onOff = bitBufferWrap.getIntUnsigned(8);
                while (bitBufferWrap.position() / 8 < bArr.length) {
                    if (bitBufferWrap.getByte() == 1) {
                        this.freeTime = bitBufferWrap.getIntUnsigned(16);
                    }
                }
            } catch (Exception unused) {
            }
        }
    }

    public int getOnOff() {
        return this.onOff;
    }

    public void setOnOff(int i) {
        this.onOff = i;
    }

    public int getFreeTime() {
        return this.freeTime;
    }

    public void setFreeTime(int i) {
        this.freeTime = i;
    }

    @Override // com.p013gg.reader.api.protocol.p014gx.Message
    public void pack() {
        BitBuffer bitBufferAllocateDynamic = BitBuffer.allocateDynamic();
        bitBufferAllocateDynamic.putLong(this.onOff, 8);
        if (Integer.MIN_VALUE != this.freeTime) {
            bitBufferAllocateDynamic.putInt(1, 8);
            bitBufferAllocateDynamic.putInt(this.freeTime, 16);
        }
        this.cData = bitBufferAllocateDynamic.asByteArray();
        this.dataLen = this.cData.length;
    }

    @Override // com.p013gg.reader.api.protocol.p014gx.Message
    public void ackUnpack() {
        Hashtable<Byte, String> hashtable = new Hashtable<Byte, String>() { // from class: com.gg.reader.api.protocol.gx.MsgBaseSetAutoDormancy.1
            {
                put((byte) 0, "Success.");
                put((byte) 1, "Parameter error.");
                put((byte) 2, "Other error.");
                put((byte) 3, "Save failure.");
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
