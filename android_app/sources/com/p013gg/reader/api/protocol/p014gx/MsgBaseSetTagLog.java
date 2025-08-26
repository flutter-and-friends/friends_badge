package com.p013gg.reader.api.protocol.p014gx;

import com.p013gg.reader.api.utils.BitBuffer;
import java.util.Hashtable;

/* loaded from: classes.dex */
public class MsgBaseSetTagLog extends Message {
    private int repeatedTime;
    private int rssiTV;

    public MsgBaseSetTagLog() {
        this.repeatedTime = Integer.MAX_VALUE;
        this.rssiTV = Integer.MAX_VALUE;
        try {
            this.msgType = new MsgType();
            this.msgType.mt_8_11 = EnumG.MSG_TYPE_BIT_BASE;
            this.msgType.msgId = (byte) 9;
            this.dataLen = 0;
        } catch (Exception unused) {
        }
    }

    public MsgBaseSetTagLog(byte[] bArr) {
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
                        this.repeatedTime = bitBufferWrap.getIntUnsigned(16);
                    } else if (b == 2) {
                        this.rssiTV = bitBufferWrap.getIntUnsigned(8);
                    }
                }
            } catch (Exception unused) {
            }
        }
    }

    public int getRepeatedTime() {
        return this.repeatedTime;
    }

    public void setRepeatedTime(int i) {
        this.repeatedTime = i;
    }

    public int getRssiTV() {
        return this.rssiTV;
    }

    public void setRssiTV(int i) {
        this.rssiTV = i;
    }

    @Override // com.p013gg.reader.api.protocol.p014gx.Message
    public void pack() {
        BitBuffer bitBufferAllocateDynamic = BitBuffer.allocateDynamic();
        if (Integer.MAX_VALUE != this.repeatedTime) {
            bitBufferAllocateDynamic.putInt(1, 8);
            bitBufferAllocateDynamic.put(this.repeatedTime, 16);
        }
        if (Integer.MAX_VALUE != this.rssiTV) {
            bitBufferAllocateDynamic.putInt(2, 8);
            bitBufferAllocateDynamic.put(this.rssiTV, 8);
        }
        this.cData = bitBufferAllocateDynamic.asByteArray();
        this.dataLen = this.cData.length;
    }

    @Override // com.p013gg.reader.api.protocol.p014gx.Message
    public void ackUnpack() {
        Hashtable<Byte, String> hashtable = new Hashtable<Byte, String>() { // from class: com.gg.reader.api.protocol.gx.MsgBaseSetTagLog.1
            {
                put((byte) 0, "Success.");
                put((byte) 1, "Parameter error.");
                put((byte) 2, "Save failure.");
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
