package com.p013gg.reader.api.protocol.p014gx;

import com.p013gg.reader.api.utils.BitBuffer;

/* loaded from: classes.dex */
public class MsgAppGetBaseVersion extends Message {
    private String baseVersions;

    @Override // com.p013gg.reader.api.protocol.p014gx.Message
    public void pack() {
    }

    public MsgAppGetBaseVersion() {
        try {
            this.msgType = new MsgType();
            this.msgType.mt_8_11 = EnumG.MSG_TYPE_BIT_APP;
            this.msgType.msgId = (byte) 1;
            this.dataLen = 0;
        } catch (Exception unused) {
        }
    }

    public MsgAppGetBaseVersion(byte[] bArr) {
        this();
        if (bArr != null) {
            try {
                if (bArr.length <= 0) {
                    return;
                }
                BitBuffer bitBufferWrap = BitBuffer.wrap(bArr);
                bitBufferWrap.position(0);
                this.baseVersions = bitBufferWrap.getIntUnsigned(8) + "." + bitBufferWrap.getIntUnsigned(8) + "." + bitBufferWrap.getIntUnsigned(8) + "." + bitBufferWrap.getIntUnsigned(8);
            } catch (Exception unused) {
            }
        }
    }

    public String getBaseVersions() {
        return this.baseVersions;
    }

    public void setBaseVersions(String str) {
        this.baseVersions = str;
    }

    @Override // com.p013gg.reader.api.protocol.p014gx.Message
    public void ackPack() {
        try {
            BitBuffer bitBufferAllocateDynamic = BitBuffer.allocateDynamic();
            if (this.baseVersions != null) {
                for (String str : this.baseVersions.split("\\.")) {
                    bitBufferAllocateDynamic.putInt(Integer.parseInt(str), 8);
                }
            }
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
        this.baseVersions = bitBufferWrap.getIntUnsigned(8) + "." + bitBufferWrap.getIntUnsigned(8) + "." + bitBufferWrap.getIntUnsigned(8) + "." + bitBufferWrap.getIntUnsigned(8);
        setRtCode((byte) 0);
    }

    public String toString() {
        return "MsgAppGetBaseVersion{baseVersions='" + this.baseVersions + "'}";
    }
}
