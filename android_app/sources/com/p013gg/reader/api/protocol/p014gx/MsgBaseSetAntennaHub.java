package com.p013gg.reader.api.protocol.p014gx;

import com.p013gg.reader.api.utils.BitBuffer;
import java.util.Hashtable;
import java.util.Iterator;

/* loaded from: classes.dex */
public class MsgBaseSetAntennaHub extends Message {
    private Hashtable<Integer, Integer> dicHub;

    public MsgBaseSetAntennaHub() {
        try {
            this.msgType = new MsgType();
            this.msgType.mt_8_11 = EnumG.MSG_TYPE_BIT_BASE;
            this.msgType.msgId = (byte) 7;
            this.dataLen = 0;
        } catch (Exception unused) {
        }
    }

    public MsgBaseSetAntennaHub(byte[] bArr) {
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
    public void pack() {
        Hashtable<Integer, Integer> hashtable = this.dicHub;
        if (hashtable == null || hashtable.size() <= 0) {
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
    }

    @Override // com.p013gg.reader.api.protocol.p014gx.Message
    public void ackUnpack() {
        Hashtable<Byte, String> hashtable = new Hashtable<Byte, String>() { // from class: com.gg.reader.api.protocol.gx.MsgBaseSetAntennaHub.1
            {
                put((byte) 0, "Success.");
                put((byte) 1, "Antenna port parameter is not supported.");
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
