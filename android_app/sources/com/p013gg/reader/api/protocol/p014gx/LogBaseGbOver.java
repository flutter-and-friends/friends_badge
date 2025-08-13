package com.p013gg.reader.api.protocol.p014gx;

import java.util.Hashtable;

/* loaded from: classes.dex */
public class LogBaseGbOver extends Message {
    private String readerSerialNumber;

    public String getReaderSerialNumber() {
        return this.readerSerialNumber;
    }

    public void setReaderSerialNumber(String str) {
        this.readerSerialNumber = str;
    }

    @Override // com.p013gg.reader.api.protocol.p014gx.Message
    public void ackUnpack() {
        if (this.cData == null || this.cData.length <= 0) {
            return;
        }
        Hashtable<Byte, String> hashtable = new Hashtable<Byte, String>() { // from class: com.gg.reader.api.protocol.gx.LogBaseGbOver.1
            {
                put((byte) 0, "Single operation complete.");
                put((byte) 1, "Receive stop instruction.");
                put((byte) 2, "A hardware failure causes an interrupt.");
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

    public String toString() {
        return "LogBaseGbOver{readerSerialNumber='" + this.readerSerialNumber + "'}";
    }
}
