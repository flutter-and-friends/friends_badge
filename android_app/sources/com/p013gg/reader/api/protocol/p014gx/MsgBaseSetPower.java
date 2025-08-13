package com.p013gg.reader.api.protocol.p014gx;

import com.p013gg.reader.api.utils.BitBuffer;
import java.util.Hashtable;
import java.util.Iterator;

/* loaded from: classes.dex */
public class MsgBaseSetPower extends Message {
    private Hashtable<Integer, Integer> dicPower;
    private int powerDownSave;

    public MsgBaseSetPower() {
        this.powerDownSave = Integer.MAX_VALUE;
        try {
            this.msgType = new MsgType();
            this.msgType.mt_8_11 = EnumG.MSG_TYPE_BIT_BASE;
            this.msgType.msgId = (byte) 1;
            this.dataLen = 0;
        } catch (Exception unused) {
        }
    }

    public MsgBaseSetPower(byte[] bArr) {
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
                    if (intUnsigned == 255) {
                        this.powerDownSave = bitBufferWrap.getIntUnsigned(8);
                    } else {
                        int intUnsigned2 = bitBufferWrap.getIntUnsigned(8);
                        if (this.dicPower == null) {
                            this.dicPower = new Hashtable<>();
                        }
                        this.dicPower.put(Integer.valueOf(intUnsigned), Integer.valueOf(intUnsigned2));
                    }
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

    public int getPowerDownSave() {
        return this.powerDownSave;
    }

    public void setPowerDownSave(int i) {
        this.powerDownSave = i;
    }

    @Override // com.p013gg.reader.api.protocol.p014gx.Message
    public void pack() {
        Hashtable<Integer, Integer> hashtable = this.dicPower;
        if (hashtable == null || hashtable.size() <= 0) {
            return;
        }
        BitBuffer bitBufferAllocateDynamic = BitBuffer.allocateDynamic();
        Iterator<Integer> it = this.dicPower.keySet().iterator();
        while (it.hasNext()) {
            bitBufferAllocateDynamic.putLong(it.next().intValue(), 8);
            bitBufferAllocateDynamic.putLong(this.dicPower.get(Integer.valueOf(r2)).intValue(), 8);
        }
        if (Integer.MAX_VALUE != this.powerDownSave) {
            bitBufferAllocateDynamic.putInt(255, 8);
            bitBufferAllocateDynamic.putInt(this.powerDownSave, 8);
        }
        this.cData = bitBufferAllocateDynamic.asByteArray();
        this.dataLen = this.cData.length;
    }

    @Override // com.p013gg.reader.api.protocol.p014gx.Message
    public void ackUnpack() {
        Hashtable<Byte, String> hashtable = new Hashtable<Byte, String>() { // from class: com.gg.reader.api.protocol.gx.MsgBaseSetPower.1
            {
                put((byte) 0, "Success.");
                put((byte) 1, "Antenna port parameter not supported.");
                put((byte) 2, "Power parameter not supported.");
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
