package com.p013gg.reader.api.protocol.p014gx;

import com.p013gg.reader.api.utils.BitBuffer;

/* loaded from: classes.dex */
public class MsgAppGetUdpParam extends Message {

    /* renamed from: ip */
    private String f355ip;
    private int onOrOff;
    private int period;
    private int port;

    @Override // com.p013gg.reader.api.protocol.p014gx.Message
    public void pack() {
    }

    public MsgAppGetUdpParam() {
        this.f355ip = "0.0.0.0";
        this.port = Integer.MAX_VALUE;
        this.period = Integer.MAX_VALUE;
        try {
            this.msgType = new MsgType();
            this.msgType.mt_8_11 = EnumG.MSG_TYPE_BIT_APP;
            this.msgType.msgId = (byte) 40;
            this.dataLen = 0;
        } catch (Exception unused) {
        }
    }

    public MsgAppGetUdpParam(byte[] bArr) {
        this();
        if (bArr != null) {
            try {
                if (bArr.length <= 0) {
                    return;
                }
                BitBuffer bitBufferWrap = BitBuffer.wrap(bArr);
                bitBufferWrap.position(0);
                this.onOrOff = bitBufferWrap.getIntUnsigned(8);
                this.f355ip = bitBufferWrap.getIntUnsigned(8) + "." + bitBufferWrap.getIntUnsigned(8) + "." + bitBufferWrap.getIntUnsigned(8) + "." + bitBufferWrap.getIntUnsigned(8);
                this.port = bitBufferWrap.getIntUnsigned(16);
                this.period = bitBufferWrap.getIntUnsigned(16);
            } catch (Exception unused) {
            }
        }
    }

    public int getOnOrOff() {
        return this.onOrOff;
    }

    public void setOnOrOff(int i) {
        this.onOrOff = i;
    }

    public String getIp() {
        return this.f355ip;
    }

    public void setIp(String str) {
        this.f355ip = str;
    }

    public int getPort() {
        return this.port;
    }

    public void setPort(int i) {
        this.port = i;
    }

    public int getPeriod() {
        return this.period;
    }

    public void setPeriod(int i) {
        this.period = i;
    }

    @Override // com.p013gg.reader.api.protocol.p014gx.Message
    public void ackPack() {
        try {
            BitBuffer bitBufferAllocateDynamic = BitBuffer.allocateDynamic();
            bitBufferAllocateDynamic.putInt(this.onOrOff, 8);
            if (this.f355ip != null) {
                for (String str : this.f355ip.split("\\.")) {
                    bitBufferAllocateDynamic.putInt(Integer.parseInt(str), 8);
                }
            }
            if (Integer.MAX_VALUE != this.port) {
                bitBufferAllocateDynamic.put(this.port, 16);
            }
            if (Integer.MAX_VALUE != this.period) {
                bitBufferAllocateDynamic.put(this.period, 16);
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
        this.onOrOff = bitBufferWrap.getIntUnsigned(8);
        this.f355ip = bitBufferWrap.getIntUnsigned(8) + "." + bitBufferWrap.getIntUnsigned(8) + "." + bitBufferWrap.getIntUnsigned(8) + "." + bitBufferWrap.getIntUnsigned(8);
        this.port = bitBufferWrap.getIntUnsigned(16);
        this.period = bitBufferWrap.getIntUnsigned(16);
        setRtCode((byte) 0);
    }

    public String toString() {
        return "MsgAppGetUdpParam{onOrOff=" + this.onOrOff + ", ip='" + this.f355ip + "', port=" + this.port + ", period=" + this.period + '}';
    }
}
