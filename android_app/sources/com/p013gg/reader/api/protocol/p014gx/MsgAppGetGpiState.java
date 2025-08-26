package com.p013gg.reader.api.protocol.p014gx;

import com.p013gg.reader.api.utils.BitBuffer;
import java.util.HashMap;
import java.util.Iterator;

/* loaded from: classes.dex */
public class MsgAppGetGpiState extends Message {
    private HashMap<Integer, Integer> hpGpiState;

    @Override // com.p013gg.reader.api.protocol.p014gx.Message
    public void pack() {
    }

    public MsgAppGetGpiState() {
        this.hpGpiState = new HashMap<>();
        try {
            this.msgType = new MsgType();
            this.msgType.mt_8_11 = EnumG.MSG_TYPE_BIT_APP;
            this.msgType.msgId = (byte) 10;
            this.dataLen = 0;
        } catch (Exception unused) {
        }
    }

    public MsgAppGetGpiState(byte[] bArr) {
        this();
        if (bArr != null) {
            try {
                if (bArr.length <= 0) {
                    return;
                }
                BitBuffer bitBufferWrap = BitBuffer.wrap(bArr);
                bitBufferWrap.position(0);
                for (int i = 0; i < bArr.length / 2; i++) {
                    this.hpGpiState.put(Integer.valueOf(bitBufferWrap.getIntUnsigned(8)), Integer.valueOf(bitBufferWrap.getIntUnsigned(8)));
                }
            } catch (Exception unused) {
            }
        }
    }

    public HashMap<Integer, Integer> getHpGpiState() {
        return this.hpGpiState;
    }

    public void setHpGpiState(HashMap<Integer, Integer> map) {
        this.hpGpiState = map;
    }

    @Override // com.p013gg.reader.api.protocol.p014gx.Message
    public void ackPack() {
        HashMap<Integer, Integer> map = this.hpGpiState;
        if (map == null || map.size() <= 0) {
            return;
        }
        BitBuffer bitBufferAllocateDynamic = BitBuffer.allocateDynamic();
        Iterator<Integer> it = this.hpGpiState.keySet().iterator();
        while (it.hasNext()) {
            int iIntValue = it.next().intValue();
            bitBufferAllocateDynamic.putInt(iIntValue, 8);
            bitBufferAllocateDynamic.putInt(this.hpGpiState.get(Integer.valueOf(iIntValue)).intValue(), 8);
        }
        this.cData = bitBufferAllocateDynamic.asByteArray();
        this.dataLen = this.cData.length;
    }

    @Override // com.p013gg.reader.api.protocol.p014gx.Message
    public void ackUnpack() {
        if (this.cData == null || this.cData.length <= 0) {
            return;
        }
        BitBuffer bitBufferWrap = BitBuffer.wrap(this.cData);
        bitBufferWrap.position(0);
        for (int i = 0; i < this.cData.length / 2; i++) {
            this.hpGpiState.put(Integer.valueOf(bitBufferWrap.getIntUnsigned(8)), Integer.valueOf(bitBufferWrap.getIntUnsigned(8)));
        }
        setRtCode((byte) 0);
    }

    public String toString() {
        return "MsgAppGetGpiState{hpGpiState=" + this.hpGpiState + '}';
    }
}
