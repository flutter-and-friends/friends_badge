package com.p013gg.reader.api.protocol.p014gx;

import com.p013gg.reader.api.utils.BitBuffer;

/* loaded from: classes.dex */
public class MsgTestVSWRcheck extends Message {
    private int preValue;
    private int sufValue;

    public MsgTestVSWRcheck() {
        try {
            this.msgType = new MsgType();
            this.msgType.mt_8_11 = EnumG.MSG_TYPE_BIT_TEST;
            this.msgType.msgId = (byte) 5;
            this.dataLen = 0;
        } catch (Exception unused) {
        }
    }

    public MsgTestVSWRcheck(byte[] bArr) {
        this();
        if (bArr != null) {
            try {
                if (bArr.length <= 0) {
                    return;
                }
                BitBuffer bitBufferWrap = BitBuffer.wrap(bArr);
                bitBufferWrap.position(0);
                this.preValue = bitBufferWrap.getIntUnsigned(8);
                this.sufValue = bitBufferWrap.getIntUnsigned(8);
            } catch (Exception unused) {
            }
        }
    }

    public int getPreValue() {
        return this.preValue;
    }

    public void setPreValue(int i) {
        this.preValue = i;
    }

    public int getSufValue() {
        return this.sufValue;
    }

    public void setSufValue(int i) {
        this.sufValue = i;
    }

    @Override // com.p013gg.reader.api.protocol.p014gx.Message
    public void pack() {
        super.pack();
    }

    @Override // com.p013gg.reader.api.protocol.p014gx.Message
    public void ackUnpack() {
        if (this.cData == null || this.cData.length <= 0) {
            return;
        }
        BitBuffer bitBufferWrap = BitBuffer.wrap(this.cData);
        bitBufferWrap.position(0);
        this.preValue = bitBufferWrap.getIntUnsigned(8);
        this.sufValue = bitBufferWrap.getIntUnsigned(8);
        setRtCode((byte) 0);
    }
}
