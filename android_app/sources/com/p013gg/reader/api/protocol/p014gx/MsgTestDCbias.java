package com.p013gg.reader.api.protocol.p014gx;

import com.p013gg.reader.api.utils.BitBuffer;
import java.util.HashMap;

/* loaded from: classes.dex */
public class MsgTestDCbias extends Message {
    private int optionType;
    private int param;

    public MsgTestDCbias() {
        try {
            this.msgType = new MsgType();
            this.msgType.mt_8_11 = EnumG.MSG_TYPE_BIT_TEST;
            this.msgType.msgId = (byte) 1;
            this.dataLen = 0;
        } catch (Exception unused) {
        }
    }

    public MsgTestDCbias(byte[] bArr) {
        this();
        if (bArr != null) {
            try {
                if (bArr.length <= 0) {
                    return;
                }
                BitBuffer bitBufferWrap = BitBuffer.wrap(bArr);
                bitBufferWrap.position(0);
                this.param = bitBufferWrap.getInt(8);
                this.optionType = bitBufferWrap.getIntUnsigned(8);
            } catch (Exception unused) {
            }
        }
    }

    public int getParam() {
        return this.param;
    }

    public void setParam(int i) {
        this.param = i;
    }

    public int getOptionType() {
        return this.optionType;
    }

    public void setOptionType(int i) {
        this.optionType = i;
    }

    @Override // com.p013gg.reader.api.protocol.p014gx.Message
    public void pack() {
        BitBuffer bitBufferAllocateDynamic = BitBuffer.allocateDynamic();
        bitBufferAllocateDynamic.putLong(this.param, 8);
        bitBufferAllocateDynamic.putLong(this.optionType, 8);
        this.cData = bitBufferAllocateDynamic.asByteArray();
        this.dataLen = this.cData.length;
    }

    @Override // com.p013gg.reader.api.protocol.p014gx.Message
    public void ackUnpack() {
        HashMap<Byte, String> map = new HashMap<Byte, String>() { // from class: com.gg.reader.api.protocol.gx.MsgTestDCbias.1
            {
                put((byte) 0, "Success.");
                put((byte) 1, "Save failure.");
                put((byte) 2, "Other error.");
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
