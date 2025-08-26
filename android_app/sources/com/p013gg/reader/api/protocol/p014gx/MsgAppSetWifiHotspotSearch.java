package com.p013gg.reader.api.protocol.p014gx;

import com.p013gg.reader.api.utils.BitBuffer;
import java.util.Hashtable;

/* loaded from: classes.dex */
public class MsgAppSetWifiHotspotSearch extends Message {
    public MsgAppSetWifiHotspotSearch() {
        try {
            this.msgType = new MsgType();
            this.msgType.mt_8_11 = EnumG.MSG_TYPE_BIT_APP;
            this.msgType.msgId = (byte) 49;
            this.dataLen = 0;
        } catch (Exception unused) {
        }
    }

    public MsgAppSetWifiHotspotSearch(byte[] bArr) {
        this();
        if (bArr != null) {
            try {
                if (bArr.length <= 0) {
                    return;
                }
                BitBuffer.wrap(bArr).position(0);
            } catch (Exception unused) {
            }
        }
    }

    @Override // com.p013gg.reader.api.protocol.p014gx.Message
    public void pack() {
        super.pack();
    }

    @Override // com.p013gg.reader.api.protocol.p014gx.Message
    public void ackUnpack() {
        Hashtable<Byte, String> hashtable = new Hashtable<Byte, String>() { // from class: com.gg.reader.api.protocol.gx.MsgAppSetWifiHotspotSearch.1
            {
                put((byte) 0, "Success.");
                put((byte) 1, "Reader is not supported.");
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
