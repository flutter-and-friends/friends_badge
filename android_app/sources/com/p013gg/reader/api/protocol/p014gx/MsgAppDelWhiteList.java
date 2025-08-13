package com.p013gg.reader.api.protocol.p014gx;

import java.util.Hashtable;

/* loaded from: classes.dex */
public class MsgAppDelWhiteList extends Message {
    public MsgAppDelWhiteList() {
        try {
            this.msgType = new MsgType();
            this.msgType.mt_8_11 = EnumG.MSG_TYPE_BIT_APP;
            this.msgType.msgId = (byte) 34;
            this.dataLen = 0;
        } catch (Exception unused) {
        }
    }

    public MsgAppDelWhiteList(byte[] bArr) {
        this();
    }

    @Override // com.p013gg.reader.api.protocol.p014gx.Message
    public void pack() {
        super.pack();
    }

    @Override // com.p013gg.reader.api.protocol.p014gx.Message
    public void ackUnpack() {
        Hashtable<Byte, String> hashtable = new Hashtable<Byte, String>() { // from class: com.gg.reader.api.protocol.gx.MsgAppDelWhiteList.1
            {
                put((byte) 0, "Success.");
                put((byte) 1, "Delete Failure.");
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
