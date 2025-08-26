package com.p013gg.reader.api.protocol.p014gx;

import com.p013gg.reader.api.utils.BitBuffer;

/* loaded from: classes.dex */
public class MsgAppGetWhiteListAction extends Message {
    private int relay;
    private int relayCloseTime;

    @Override // com.p013gg.reader.api.protocol.p014gx.Message
    public void pack() {
    }

    public MsgAppGetWhiteListAction() {
        try {
            this.msgType = new MsgType();
            this.msgType.mt_8_11 = EnumG.MSG_TYPE_BIT_APP;
            this.msgType.msgId = (byte) 36;
            this.dataLen = 0;
        } catch (Exception unused) {
        }
    }

    public MsgAppGetWhiteListAction(byte[] bArr) {
        this();
        if (bArr != null) {
            try {
                if (bArr.length <= 0) {
                    return;
                }
                BitBuffer bitBufferWrap = BitBuffer.wrap(bArr);
                this.relay = bitBufferWrap.getIntUnsigned(8);
                this.relayCloseTime = bitBufferWrap.getIntUnsigned(16);
            } catch (Exception unused) {
            }
        }
    }

    public int getRelay() {
        return this.relay;
    }

    public void setRelay(int i) {
        this.relay = i;
    }

    public int getRelayCloseTime() {
        return this.relayCloseTime;
    }

    public void setRelayCloseTime(int i) {
        this.relayCloseTime = i;
    }

    @Override // com.p013gg.reader.api.protocol.p014gx.Message
    public void ackPack() {
        try {
            BitBuffer bitBufferAllocateDynamic = BitBuffer.allocateDynamic();
            bitBufferAllocateDynamic.putInt(this.relay, 8);
            bitBufferAllocateDynamic.putInt(this.relayCloseTime, 16);
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
        this.relay = bitBufferWrap.getIntUnsigned(8);
        this.relayCloseTime = bitBufferWrap.getIntUnsigned(16);
        setRtCode((byte) 0);
    }
}
