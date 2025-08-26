package com.p013gg.reader.api.protocol.p014gx;

/* loaded from: classes.dex */
public class MsgAppReset extends Message {
    public MsgAppReset() {
        try {
            this.msgType = new MsgType();
            this.msgType.mt_8_11 = EnumG.MSG_TYPE_BIT_APP;
            this.msgType.msgId = (byte) 15;
            this.dataLen = 0;
        } catch (Exception unused) {
        }
    }

    public MsgAppReset(byte[] bArr) {
        this();
    }

    @Override // com.p013gg.reader.api.protocol.p014gx.Message
    public void pack() {
        super.pack();
    }

    @Override // com.p013gg.reader.api.protocol.p014gx.Message
    public void ackUnpack() {
        super.ackUnpack();
    }
}
