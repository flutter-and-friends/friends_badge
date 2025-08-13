package com.p013gg.reader.api.protocol.p014gx;

import com.p013gg.reader.api.utils.BitBuffer;
import java.util.Hashtable;
import kotlin.jvm.internal.LongCompanionObject;

/* loaded from: classes.dex */
public class MsgAppSetWifiIp extends Message {
    private int autoIp;
    private String dns1;
    private String dns2;
    private String gateway;
    private Long hotId;

    /* renamed from: iP */
    private String f359iP;
    private String mask;

    public MsgAppSetWifiIp() {
        this.f359iP = "0.0.0.0";
        this.mask = "0.0.0.0";
        this.gateway = "0.0.0.0";
        this.dns1 = "0.0.0.0";
        this.dns2 = "0.0.0.0";
        this.hotId = Long.valueOf(LongCompanionObject.MAX_VALUE);
        try {
            this.msgType = new MsgType();
            this.msgType.mt_8_11 = EnumG.MSG_TYPE_BIT_APP;
            this.msgType.msgId = (byte) 53;
            this.dataLen = 0;
        } catch (Exception unused) {
        }
    }

    public MsgAppSetWifiIp(byte[] bArr) {
        this();
        if (bArr != null) {
            try {
                if (bArr.length <= 0) {
                    return;
                }
                BitBuffer bitBufferWrap = BitBuffer.wrap(bArr);
                bitBufferWrap.position(0);
                this.autoIp = bitBufferWrap.getIntUnsigned(8);
                while (bitBufferWrap.position() / 8 < bArr.length) {
                    switch (bitBufferWrap.getByte()) {
                        case 1:
                            this.f359iP = bitBufferWrap.getIntUnsigned(8) + "." + bitBufferWrap.getIntUnsigned(8) + "." + bitBufferWrap.getIntUnsigned(8) + "." + bitBufferWrap.getIntUnsigned(8);
                            break;
                        case 2:
                            this.mask = bitBufferWrap.getIntUnsigned(8) + "." + bitBufferWrap.getIntUnsigned(8) + "." + bitBufferWrap.getIntUnsigned(8) + "." + bitBufferWrap.getIntUnsigned(8);
                            break;
                        case 3:
                            this.gateway = bitBufferWrap.getIntUnsigned(8) + "." + bitBufferWrap.getIntUnsigned(8) + "." + bitBufferWrap.getIntUnsigned(8) + "." + bitBufferWrap.getIntUnsigned(8);
                            break;
                        case 4:
                            this.dns1 = bitBufferWrap.getIntUnsigned(8) + "." + bitBufferWrap.getIntUnsigned(8) + "." + bitBufferWrap.getIntUnsigned(8) + "." + bitBufferWrap.getIntUnsigned(8);
                            break;
                        case 5:
                            this.dns2 = bitBufferWrap.getIntUnsigned(8) + "." + bitBufferWrap.getIntUnsigned(8) + "." + bitBufferWrap.getIntUnsigned(8) + "." + bitBufferWrap.getIntUnsigned(8);
                            break;
                        case 6:
                            this.hotId = Long.valueOf(bitBufferWrap.getLongUnsigned(32));
                            break;
                    }
                }
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
        return this.f359iP;
    }

    public void setiP(String str) {
        this.f359iP = str;
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

    public Long getHotId() {
        return this.hotId;
    }

    public void setHotId(Long l) {
        this.hotId = l;
    }

    @Override // com.p013gg.reader.api.protocol.p014gx.Message
    public void pack() {
        BitBuffer bitBufferAllocateDynamic = BitBuffer.allocateDynamic();
        bitBufferAllocateDynamic.putLong(this.autoIp, 8);
        if (1 == this.autoIp) {
            bitBufferAllocateDynamic.putInt(1, 8);
            for (String str : this.f359iP.split("\\.")) {
                bitBufferAllocateDynamic.putInt(Integer.parseInt(str), 8);
            }
            bitBufferAllocateDynamic.putInt(2, 8);
            for (String str2 : this.mask.split("\\.")) {
                bitBufferAllocateDynamic.putInt(Integer.parseInt(str2), 8);
            }
            bitBufferAllocateDynamic.putInt(3, 8);
            for (String str3 : this.gateway.split("\\.")) {
                bitBufferAllocateDynamic.putInt(Integer.parseInt(str3), 8);
            }
            bitBufferAllocateDynamic.putInt(4, 8);
            for (String str4 : this.dns1.split("\\.")) {
                bitBufferAllocateDynamic.putInt(Integer.parseInt(str4), 8);
            }
            bitBufferAllocateDynamic.putInt(5, 8);
            for (String str5 : this.dns2.split("\\.")) {
                bitBufferAllocateDynamic.putInt(Integer.parseInt(str5), 8);
            }
        }
        if (LongCompanionObject.MAX_VALUE != this.hotId.longValue()) {
            bitBufferAllocateDynamic.putInt(6, 8);
            bitBufferAllocateDynamic.putLong(this.hotId.longValue(), 32);
        } else {
            bitBufferAllocateDynamic.put(6, 8);
            bitBufferAllocateDynamic.putLong(0L, 32);
        }
        this.cData = bitBufferAllocateDynamic.asByteArray();
        this.dataLen = this.cData.length;
    }

    @Override // com.p013gg.reader.api.protocol.p014gx.Message
    public void ackUnpack() {
        Hashtable<Byte, String> hashtable = new Hashtable<Byte, String>() { // from class: com.gg.reader.api.protocol.gx.MsgAppSetWifiIp.1
            {
                put((byte) 0, "Success.");
                put((byte) 1, "ReaderIp parameter error .");
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
