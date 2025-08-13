package com.p013gg.reader.api.protocol.p014gx;

import com.p013gg.reader.api.utils.BitBuffer;

/* loaded from: classes.dex */
public class MsgAppGetEthernetIP extends Message {
    private int autoIp;
    private String dns1;
    private String dns2;
    private String gateway;

    /* renamed from: iP */
    private String f354iP;
    private String mask;

    @Override // com.p013gg.reader.api.protocol.p014gx.Message
    public void pack() {
    }

    public MsgAppGetEthernetIP() {
        try {
            this.msgType = new MsgType();
            this.msgType.mt_8_11 = EnumG.MSG_TYPE_BIT_APP;
            this.msgType.msgId = (byte) 5;
            this.dataLen = 0;
        } catch (Exception unused) {
        }
    }

    public MsgAppGetEthernetIP(byte[] bArr) {
        this();
        if (bArr != null) {
            try {
                if (bArr.length <= 0) {
                    return;
                }
                BitBuffer bitBufferWrap = BitBuffer.wrap(bArr);
                bitBufferWrap.position(0);
                this.autoIp = bitBufferWrap.getIntUnsigned(8);
                this.f354iP = bitBufferWrap.getIntUnsigned(8) + "." + bitBufferWrap.getIntUnsigned(8) + "." + bitBufferWrap.getIntUnsigned(8) + "." + bitBufferWrap.getIntUnsigned(8);
                this.mask = bitBufferWrap.getIntUnsigned(8) + "." + bitBufferWrap.getIntUnsigned(8) + "." + bitBufferWrap.getIntUnsigned(8) + "." + bitBufferWrap.getIntUnsigned(8);
                this.gateway = bitBufferWrap.getIntUnsigned(8) + "." + bitBufferWrap.getIntUnsigned(8) + "." + bitBufferWrap.getIntUnsigned(8) + "." + bitBufferWrap.getIntUnsigned(8);
                this.dns1 = bitBufferWrap.getIntUnsigned(8) + "." + bitBufferWrap.getIntUnsigned(8) + "." + bitBufferWrap.getIntUnsigned(8) + "." + bitBufferWrap.getIntUnsigned(8);
                this.dns2 = bitBufferWrap.getIntUnsigned(8) + "." + bitBufferWrap.getIntUnsigned(8) + "." + bitBufferWrap.getIntUnsigned(8) + "." + bitBufferWrap.getIntUnsigned(8);
            } catch (Exception unused) {
            }
        }
    }

    public int getAutoIp() {
        return this.autoIp;
    }

    public void setAutoIp(int i) {
        this.autoIp = i;
    }

    public String getiP() {
        return this.f354iP;
    }

    public void setiP(String str) {
        this.f354iP = str;
    }

    public String getMask() {
        return this.mask;
    }

    public void setMask(String str) {
        this.mask = str;
    }

    public String getGateway() {
        return this.gateway;
    }

    public void setGateway(String str) {
        this.gateway = str;
    }

    public String getDns1() {
        return this.dns1;
    }

    public void setDns1(String str) {
        this.dns1 = str;
    }

    public String getDns2() {
        return this.dns2;
    }

    public void setDns2(String str) {
        this.dns2 = str;
    }

    @Override // com.p013gg.reader.api.protocol.p014gx.Message
    public void ackPack() {
        try {
            BitBuffer bitBufferAllocateDynamic = BitBuffer.allocateDynamic();
            bitBufferAllocateDynamic.putLong(this.autoIp, 8);
            if (this.f354iP != null) {
                for (String str : this.f354iP.split("\\.")) {
                    bitBufferAllocateDynamic.putInt(Integer.parseInt(str), 8);
                }
            }
            if (this.mask != null) {
                for (String str2 : this.mask.split("\\.")) {
                    bitBufferAllocateDynamic.putInt(Integer.parseInt(str2), 8);
                }
            }
            if (this.gateway != null) {
                for (String str3 : this.gateway.split("\\.")) {
                    bitBufferAllocateDynamic.putInt(Integer.parseInt(str3), 8);
                }
            }
            if (this.dns1 != null) {
                for (String str4 : this.dns1.split("\\.")) {
                    bitBufferAllocateDynamic.putInt(Integer.parseInt(str4), 8);
                }
            }
            if (this.dns2 != null) {
                for (String str5 : this.dns2.split("\\.")) {
                    bitBufferAllocateDynamic.putInt(Integer.parseInt(str5), 8);
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
        this.autoIp = bitBufferWrap.getIntUnsigned(8);
        this.f354iP = bitBufferWrap.getIntUnsigned(8) + "." + bitBufferWrap.getIntUnsigned(8) + "." + bitBufferWrap.getIntUnsigned(8) + "." + bitBufferWrap.getIntUnsigned(8);
        this.mask = bitBufferWrap.getIntUnsigned(8) + "." + bitBufferWrap.getIntUnsigned(8) + "." + bitBufferWrap.getIntUnsigned(8) + "." + bitBufferWrap.getIntUnsigned(8);
        this.gateway = bitBufferWrap.getIntUnsigned(8) + "." + bitBufferWrap.getIntUnsigned(8) + "." + bitBufferWrap.getIntUnsigned(8) + "." + bitBufferWrap.getIntUnsigned(8);
        this.dns1 = bitBufferWrap.getIntUnsigned(8) + "." + bitBufferWrap.getIntUnsigned(8) + "." + bitBufferWrap.getIntUnsigned(8) + "." + bitBufferWrap.getIntUnsigned(8);
        this.dns2 = bitBufferWrap.getIntUnsigned(8) + "." + bitBufferWrap.getIntUnsigned(8) + "." + bitBufferWrap.getIntUnsigned(8) + "." + bitBufferWrap.getIntUnsigned(8);
        setRtCode((byte) 0);
    }

    public String toString() {
        return "MsgAppGetEthernetIP{autoIp=" + this.autoIp + ", iP='" + this.f354iP + "', mask='" + this.mask + "', gateway='" + this.gateway + "', dns1='" + this.dns1 + "', dns2='" + this.dns2 + "'}";
    }
}
