package com.p013gg.reader.api.protocol.p014gx;

import com.p013gg.reader.api.utils.BitBuffer;
import java.util.Hashtable;
import java.util.Iterator;

/* loaded from: classes.dex */
public class MsgBaseGetPower extends Message {
    private Hashtable<Integer, Integer> dicPower;

    @Override // com.p013gg.reader.api.protocol.p014gx.Message
    public void pack() {
    }

    public MsgBaseGetPower() {
        try {
            this.msgType = new MsgType();
            this.msgType.mt_8_11 = EnumG.MSG_TYPE_BIT_BASE;
            this.msgType.msgId = (byte) 2;
            this.dataLen = 0;
        } catch (Exception unused) {
        }
    }

    public MsgBaseGetPower(byte[] bArr) {
        this();
        if (bArr != null) {
            try {
                if (bArr.length <= 0) {
                    return;
                }
                BitBuffer bitBufferWrap = BitBuffer.wrap(bArr);
                bitBufferWrap.position(0);
                for (int i = 0; i < bArr.length / 2; i++) {
                    int intUnsigned = bitBufferWrap.getIntUnsigned(8);
                    int intUnsigned2 = bitBufferWrap.getIntUnsigned(8);
                    if (this.dicPower == null) {
                        this.dicPower = new Hashtable<>();
                    }
                    this.dicPower.put(Integer.valueOf(intUnsigned), Integer.valueOf(intUnsigned2));
                }
            } catch (Exception unused) {
            }
        }
    }

    public Hashtable<Integer, Integer> getDicPower() {
        return this.dicPower;
    }

    public void setDicPower(Hashtable<Integer, Integer> hashtable) {
        this.dicPower = hashtable;
    }

    @Override // com.p013gg.reader.api.protocol.p014gx.Message
    public void ackPack() {
        try {
            if (this.dicPower == null || this.dicPower.size() <= 0) {
                return;
            }
            BitBuffer bitBufferAllocateDynamic = BitBuffer.allocateDynamic();
            Iterator<Integer> it = this.dicPower.keySet().iterator();
            while (it.hasNext()) {
                bitBufferAllocateDynamic.putLong(it.next().intValue(), 8);
                bitBufferAllocateDynamic.putLong(this.dicPower.get(Integer.valueOf(r2)).intValue(), 8);
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
        for (int i = 0; i < this.cData.length / 2; i++) {
            int intUnsigned = bitBufferWrap.getIntUnsigned(8);
            int intUnsigned2 = bitBufferWrap.getIntUnsigned(8);
            if (this.dicPower == null) {
                this.dicPower = new Hashtable<>();
            }
            this.dicPower.put(Integer.valueOf(intUnsigned), Integer.valueOf(intUnsigned2));
        }
        setRtCode((byte) 0);
    }

    public String toString() {
        return "MsgBaseGetPower{dicPower=" + this.dicPower + '}';
    }
}
