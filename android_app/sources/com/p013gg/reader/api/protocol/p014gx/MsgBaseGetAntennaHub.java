package com.p013gg.reader.api.protocol.p014gx;

import com.p013gg.reader.api.utils.BitBuffer;
import java.util.Hashtable;
import java.util.Iterator;

/* loaded from: classes.dex */
public class MsgBaseGetAntennaHub extends Message {
    private Hashtable<Integer, Integer> dicHub;

    @Override // com.p013gg.reader.api.protocol.p014gx.Message
    public void pack() {
    }

    public MsgBaseGetAntennaHub() {
        try {
            this.msgType = new MsgType();
            this.msgType.mt_8_11 = EnumG.MSG_TYPE_BIT_BASE;
            this.msgType.msgId = (byte) 8;
            this.dataLen = 0;
        } catch (Exception unused) {
        }
    }

    public MsgBaseGetAntennaHub(byte[] bArr) {
        this();
        if (bArr != null) {
            try {
                if (bArr.length <= 0) {
                    return;
                }
                BitBuffer bitBufferWrap = BitBuffer.wrap(bArr);
                bitBufferWrap.position(0);
                for (int i = 0; i < bArr.length / 3; i++) {
                    int intUnsigned = bitBufferWrap.getIntUnsigned(8);
                    int intUnsigned2 = bitBufferWrap.getIntUnsigned(16);
                    if (this.dicHub == null) {
                        this.dicHub = new Hashtable<>();
                    }
                    this.dicHub.put(Integer.valueOf(intUnsigned), Integer.valueOf(intUnsigned2));
                }
            } catch (Exception unused) {
            }
        }
    }

    public Hashtable<Integer, Integer> getDicHub() {
        return this.dicHub;
    }

    public void setDicHub(Hashtable<Integer, Integer> hashtable) {
        this.dicHub = hashtable;
    }

    @Override // com.p013gg.reader.api.protocol.p014gx.Message
    public void ackPack() {
        try {
            if (this.dicHub == null || this.dicHub.size() <= 0) {
                return;
            }
            BitBuffer bitBufferAllocateDynamic = BitBuffer.allocateDynamic();
            Iterator<Integer> it = this.dicHub.keySet().iterator();
            while (it.hasNext()) {
                bitBufferAllocateDynamic.putLong(it.next().intValue(), 8);
                bitBufferAllocateDynamic.putLong(this.dicHub.get(Integer.valueOf(r2)).intValue(), 16);
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
        int length = this.cData.length / 3;
        for (int i = 0; i < length; i++) {
            int intUnsigned = bitBufferWrap.getIntUnsigned(8);
            int intUnsigned2 = bitBufferWrap.getIntUnsigned(16);
            if (this.dicHub == null) {
                this.dicHub = new Hashtable<>();
            }
            this.dicHub.put(Integer.valueOf(intUnsigned), Integer.valueOf(intUnsigned2));
        }
        setRtCode((byte) 0);
    }

    public String toString() {
        return "MsgBaseGetAntennaHub{dicHub=" + this.dicHub + '}';
    }
}
