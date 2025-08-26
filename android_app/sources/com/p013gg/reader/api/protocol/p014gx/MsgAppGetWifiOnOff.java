package com.p013gg.reader.api.protocol.p014gx;

import com.p013gg.reader.api.utils.BitBuffer;

/* loaded from: classes.dex */
public class MsgAppGetWifiOnOff extends Message {
    private int wifiSwitch;

    @Override // com.p013gg.reader.api.protocol.p014gx.Message
    public void pack() {
    }

    public MsgAppGetWifiOnOff() {
        this.wifiSwitch = Integer.MAX_VALUE;
        try {
            this.msgType = new MsgType();
            this.msgType.mt_8_11 = EnumG.MSG_TYPE_BIT_APP;
            this.msgType.msgId = (byte) 56;
            this.dataLen = 0;
        } catch (Exception unused) {
        }
    }

    public MsgAppGetWifiOnOff(byte[] bArr) {
        this();
        if (bArr != null) {
            try {
                if (bArr.length <= 0) {
                    return;
                }
                BitBuffer bitBufferWrap = BitBuffer.wrap(bArr);
                bitBufferWrap.position(0);
                this.wifiSwitch = bitBufferWrap.getIntUnsigned(8);
            } catch (Exception unused) {
            }
        }
    }

    public int getWifiSwitch() {
        return this.wifiSwitch;
    }

    public void setWifiSwitch(int i) {
        this.wifiSwitch = i;
    }

    @Override // com.p013gg.reader.api.protocol.p014gx.Message
    public void ackPack() {
        try {
            BitBuffer bitBufferAllocateDynamic = BitBuffer.allocateDynamic();
            if (Integer.MAX_VALUE != this.wifiSwitch) {
                bitBufferAllocateDynamic.putInt(this.wifiSwitch, 8);
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
        this.wifiSwitch = bitBufferWrap.getIntUnsigned(8);
        setRtCode((byte) 0);
    }

    public String toString() {
        return "MsgAppGetWifiOnOff{wifiSwitch=" + this.wifiSwitch + '}';
    }
}
