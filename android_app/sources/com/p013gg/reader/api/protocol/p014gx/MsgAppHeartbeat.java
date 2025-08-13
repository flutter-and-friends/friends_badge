package com.p013gg.reader.api.protocol.p014gx;

import cn.highlight.p004tx.app.CmdCenter;
import com.p013gg.reader.api.utils.BitBuffer;

/* loaded from: classes.dex */
public class MsgAppHeartbeat extends Message {
    private long param;

    public MsgAppHeartbeat() {
        this.param = 0L;
        this.msgType = new MsgType();
        this.msgType.mt_8_11 = EnumG.MSG_TYPE_BIT_APP;
        this.msgType.msgId = CmdCenter.CMD_setCabinetSensor;
        this.dataLen = 0;
    }

    public MsgAppHeartbeat(byte[] bArr) {
        this();
        if (bArr != null) {
            try {
                if (bArr.length <= 0) {
                    return;
                }
                BitBuffer bitBufferWrap = BitBuffer.wrap(bArr);
                bitBufferWrap.position(0);
                this.param = bitBufferWrap.getLongUnsigned(32);
            } catch (Exception unused) {
            }
        }
    }

    public long getParam() {
        return this.param;
    }

    public void setParam(long j) {
        this.param = j;
    }

    @Override // com.p013gg.reader.api.protocol.p014gx.Message
    public void pack() {
        try {
            BitBuffer bitBufferAllocateDynamic = BitBuffer.allocateDynamic();
            bitBufferAllocateDynamic.put(this.param, 32);
            this.cData = bitBufferAllocateDynamic.asByteArray();
            this.dataLen = this.cData.length;
        } catch (Exception unused) {
        }
    }

    @Override // com.p013gg.reader.api.protocol.p014gx.Message
    public void ackPack() {
        try {
            BitBuffer bitBufferAllocateDynamic = BitBuffer.allocateDynamic();
            bitBufferAllocateDynamic.put(this.param, 32);
            this.cData = bitBufferAllocateDynamic.asByteArray();
            this.dataLen = this.cData.length;
        } catch (Exception unused) {
        }
    }

    @Override // com.p013gg.reader.api.protocol.p014gx.Message
    public void ackUnpack() {
        BitBuffer bitBufferWrap = BitBuffer.wrap(this.cData);
        bitBufferWrap.position(0);
        this.param = bitBufferWrap.getLongUnsigned(32);
        setRtCode((byte) 0);
    }

    public String toString() {
        return "MsgAppHeartbeat{param=" + this.param + '}';
    }
}
