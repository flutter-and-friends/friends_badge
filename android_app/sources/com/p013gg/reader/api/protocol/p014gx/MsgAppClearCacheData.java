package com.p013gg.reader.api.protocol.p014gx;

import java.util.HashMap;

/* loaded from: classes.dex */
public class MsgAppClearCacheData extends Message {
    public MsgAppClearCacheData() {
        try {
            this.msgType = new MsgType();
            this.msgType.mt_8_11 = EnumG.MSG_TYPE_BIT_APP;
            this.msgType.msgId = (byte) 28;
            this.dataLen = 0;
        } catch (Exception unused) {
        }
    }

    public MsgAppClearCacheData(byte[] bArr) {
        this();
    }

    @Override // com.p013gg.reader.api.protocol.p014gx.Message
    public void pack() {
        super.pack();
    }

    @Override // com.p013gg.reader.api.protocol.p014gx.Message
    public void ackUnpack() {
        HashMap<Byte, String> map = new HashMap<Byte, String>() { // from class: com.gg.reader.api.protocol.gx.MsgAppClearCacheData.1
            {
                put((byte) 0, "Clear Success.");
                put((byte) 1, "Clear failure.");
            }
        };
        if (this.cData == null || this.cData.length <= 0) {
            return;
        }
        setRtCode(this.cData[0]);
        if (map.containsKey(Byte.valueOf(this.cData[0]))) {
            setRtMsg(map.get(Byte.valueOf(this.cData[0])));
        }
    }
}
