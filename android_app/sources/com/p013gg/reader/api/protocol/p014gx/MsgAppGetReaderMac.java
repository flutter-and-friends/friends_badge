package com.p013gg.reader.api.protocol.p014gx;

import com.p013gg.reader.api.utils.BitBuffer;
import com.p013gg.reader.api.utils.StringUtils;

/* loaded from: classes.dex */
public class MsgAppGetReaderMac extends Message {
    private String mac;

    @Override // com.p013gg.reader.api.protocol.p014gx.Message
    public void pack() {
    }

    public MsgAppGetReaderMac() {
        try {
            this.msgType = new MsgType();
            this.msgType.mt_8_11 = EnumG.MSG_TYPE_BIT_APP;
            this.msgType.msgId = (byte) 6;
            this.dataLen = 0;
        } catch (Exception unused) {
        }
    }

    public MsgAppGetReaderMac(byte[] bArr) {
        this();
        if (bArr != null) {
            try {
                if (bArr.length <= 0) {
                    return;
                }
                BitBuffer bitBufferWrap = BitBuffer.wrap(bArr);
                bitBufferWrap.position(0);
                this.mac = String.format("%02x", Integer.valueOf(bitBufferWrap.getIntUnsigned(8))).toUpperCase() + "-" + String.format("%02x", Integer.valueOf(bitBufferWrap.getIntUnsigned(8))).toUpperCase() + "-" + String.format("%02x", Integer.valueOf(bitBufferWrap.getIntUnsigned(8))).toUpperCase() + "-" + String.format("%02x", Integer.valueOf(bitBufferWrap.getIntUnsigned(8))).toUpperCase() + "-" + String.format("%02x", Integer.valueOf(bitBufferWrap.getIntUnsigned(8))).toUpperCase() + "-" + String.format("%02x", Integer.valueOf(bitBufferWrap.getIntUnsigned(8))).toUpperCase();
            } catch (Exception unused) {
            }
        }
    }

    public String getMac() {
        return this.mac;
    }

    public void setMac(String str) {
        this.mac = str;
    }

    @Override // com.p013gg.reader.api.protocol.p014gx.Message
    public void ackPack() {
        try {
            BitBuffer bitBufferAllocateDynamic = BitBuffer.allocateDynamic();
            if (!StringUtils.isNullOfEmpty(this.mac)) {
                for (String str : this.mac.split("-")) {
                    bitBufferAllocateDynamic.putInt(Integer.parseInt(str, 16), 8);
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
        this.mac = String.format("%02x", Integer.valueOf(bitBufferWrap.getIntUnsigned(8))).toUpperCase() + "-" + String.format("%02x", Integer.valueOf(bitBufferWrap.getIntUnsigned(8))).toUpperCase() + "-" + String.format("%02x", Integer.valueOf(bitBufferWrap.getIntUnsigned(8))).toUpperCase() + "-" + String.format("%02x", Integer.valueOf(bitBufferWrap.getIntUnsigned(8))).toUpperCase() + "-" + String.format("%02x", Integer.valueOf(bitBufferWrap.getIntUnsigned(8))).toUpperCase() + "-" + String.format("%02x", Integer.valueOf(bitBufferWrap.getIntUnsigned(8))).toUpperCase();
        setRtCode((byte) 0);
    }

    public String toString() {
        return "MsgAppGetReaderMac{mac='" + this.mac + "'}";
    }
}
