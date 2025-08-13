package com.p013gg.reader.api.protocol.p014gx;

import com.p013gg.reader.api.utils.BitBuffer;

/* loaded from: classes.dex */
public class MsgAppGetWhiteList extends Message {
    private byte[] packetContent;
    private Long packetNumber;

    public MsgAppGetWhiteList() {
        try {
            this.msgType = new MsgType();
            this.msgType.mt_8_11 = EnumG.MSG_TYPE_BIT_APP;
            this.msgType.msgId = (byte) 32;
            this.dataLen = 0;
        } catch (Exception unused) {
        }
    }

    public MsgAppGetWhiteList(byte[] bArr) {
        this();
        if (bArr != null) {
            try {
                if (bArr.length <= 0) {
                    return;
                }
                BitBuffer bitBufferWrap = BitBuffer.wrap(bArr);
                bitBufferWrap.position(0);
                this.packetNumber = Long.valueOf(bitBufferWrap.getLongUnsigned(32));
                int intUnsigned = bitBufferWrap.getIntUnsigned(16);
                byte[] bArr2 = new byte[intUnsigned];
                if (intUnsigned > 0) {
                    this.packetContent = bitBufferWrap.get(bArr2);
                }
            } catch (Exception unused) {
            }
        }
    }

    public Long getPacketNumber() {
        return this.packetNumber;
    }

    public void setPacketNumber(Long l) {
        this.packetNumber = l;
    }

    public byte[] getPacketContent() {
        return this.packetContent;
    }

    public void setPacketContent(byte[] bArr) {
        this.packetContent = bArr;
    }

    @Override // com.p013gg.reader.api.protocol.p014gx.Message
    public void pack() {
        try {
            BitBuffer bitBufferAllocateDynamic = BitBuffer.allocateDynamic();
            bitBufferAllocateDynamic.put(this.packetNumber.longValue(), 32);
            this.cData = bitBufferAllocateDynamic.asByteArray();
            this.dataLen = this.cData.length;
        } catch (Exception unused) {
        }
    }

    @Override // com.p013gg.reader.api.protocol.p014gx.Message
    public void ackPack() {
        try {
            BitBuffer bitBufferAllocateDynamic = BitBuffer.allocateDynamic();
            bitBufferAllocateDynamic.put(this.packetNumber.longValue(), 32);
            if (this.packetContent != null && this.packetContent.length > 0) {
                bitBufferAllocateDynamic.putInt(this.packetContent.length, 16);
                bitBufferAllocateDynamic.put(this.packetContent, 8);
            } else {
                bitBufferAllocateDynamic.putInt(0, 16);
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
        this.packetNumber = Long.valueOf(bitBufferWrap.getLongUnsigned(32));
        int intUnsigned = bitBufferWrap.getIntUnsigned(16);
        byte[] bArr = new byte[intUnsigned];
        if (intUnsigned > 0) {
            this.packetContent = bitBufferWrap.get(bArr);
        }
        setRtCode((byte) 0);
    }
}
