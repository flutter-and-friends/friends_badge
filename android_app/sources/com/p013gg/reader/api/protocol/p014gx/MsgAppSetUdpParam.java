package com.p013gg.reader.api.protocol.p014gx;

import com.p013gg.reader.api.utils.BitBuffer;
import com.p013gg.reader.api.utils.StringUtils;
import java.util.Hashtable;

/* loaded from: classes.dex */
public class MsgAppSetUdpParam extends Message {

    /* renamed from: ip */
    private String f358ip;
    private int onOrOff;
    private int period;
    private int port;

    public MsgAppSetUdpParam() {
        this.f358ip = "0.0.0.0";
        this.port = Integer.MAX_VALUE;
        this.period = Integer.MAX_VALUE;
        try {
            this.msgType = new MsgType();
            this.msgType.mt_8_11 = EnumG.MSG_TYPE_BIT_APP;
            this.msgType.msgId = (byte) 39;
            this.dataLen = 0;
        } catch (Exception unused) {
        }
    }

    public MsgAppSetUdpParam(byte[] bArr) {
        this();
        if (bArr != null) {
            try {
                if (bArr.length <= 0) {
                    return;
                }
                BitBuffer bitBufferWrap = BitBuffer.wrap(bArr);
                bitBufferWrap.position(0);
                this.onOrOff = bitBufferWrap.getIntUnsigned(8);
                while (bitBufferWrap.position() / 8 < bArr.length) {
                    byte b = bitBufferWrap.getByte();
                    if (b == 1) {
                        this.f358ip = bitBufferWrap.getIntUnsigned(8) + "." + bitBufferWrap.getIntUnsigned(8) + "." + bitBufferWrap.getIntUnsigned(8) + "." + bitBufferWrap.getIntUnsigned(8);
                    } else if (b == 2) {
                        this.port = bitBufferWrap.getIntUnsigned(16);
                    } else if (b == 3) {
                        this.period = bitBufferWrap.getIntUnsigned(16);
                    }
                }
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
        return this.f358ip;
    }

    public void setIp(String str) {
        this.f358ip = str;
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
    public void pack() {
        BitBuffer bitBufferAllocateDynamic = BitBuffer.allocateDynamic();
        bitBufferAllocateDynamic.putInt(this.onOrOff, 8);
        if (1 == this.onOrOff) {
            if (!StringUtils.isNullOfEmpty(this.f358ip)) {
                bitBufferAllocateDynamic.putInt(1, 8);
                for (String str : this.f358ip.split("\\.")) {
                    bitBufferAllocateDynamic.putInt(Integer.parseInt(str), 8);
                }
            }
            if (Integer.MAX_VALUE != this.port) {
                bitBufferAllocateDynamic.putInt(2, 8);
                bitBufferAllocateDynamic.put(this.port, 16);
            }
            if (Integer.MAX_VALUE != this.period) {
                bitBufferAllocateDynamic.putInt(3, 8);
                bitBufferAllocateDynamic.put(this.period, 16);
            }
        }
        this.cData = bitBufferAllocateDynamic.asByteArray();
        this.dataLen = this.cData.length;
    }

    @Override // com.p013gg.reader.api.protocol.p014gx.Message
    public void ackUnpack() {
        Hashtable<Byte, String> hashtable = new Hashtable<Byte, String>() { // from class: com.gg.reader.api.protocol.gx.MsgAppSetUdpParam.1
            {
                put((byte) 0, "Success.");
                put((byte) 1, "Fail");
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
