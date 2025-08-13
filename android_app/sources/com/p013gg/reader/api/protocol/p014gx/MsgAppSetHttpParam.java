package com.p013gg.reader.api.protocol.p014gx;

import com.p013gg.reader.api.utils.BitBuffer;
import com.p013gg.reader.api.utils.StringUtils;
import java.util.Hashtable;

/* loaded from: classes.dex */
public class MsgAppSetHttpParam extends Message {
    private int format;
    private int onOrOff;
    private int openCache;
    private int period;
    private String reportAddress;
    private int timeout;

    public MsgAppSetHttpParam() {
        this.period = 0;
        this.format = 0;
        this.timeout = 0;
        this.openCache = 0;
        try {
            this.msgType = new MsgType();
            this.msgType.mt_8_11 = EnumG.MSG_TYPE_BIT_APP;
            this.msgType.msgId = (byte) 41;
            this.dataLen = 0;
        } catch (Exception unused) {
        }
    }

    public MsgAppSetHttpParam(byte[] bArr) {
        int intUnsigned;
        this();
        if (bArr != null) {
            try {
                if (bArr.length <= 0) {
                    return;
                }
                BitBuffer bitBufferWrap = BitBuffer.wrap(bArr);
                bitBufferWrap.position(0);
                this.onOrOff = bitBufferWrap.getIntUnsigned(8);
                this.period = bitBufferWrap.getIntUnsigned(16);
                this.format = bitBufferWrap.getIntUnsigned(8);
                this.timeout = bitBufferWrap.getIntUnsigned(16);
                this.openCache = bitBufferWrap.getIntUnsigned(8);
                while (bitBufferWrap.position() / 8 < bArr.length) {
                    if (bitBufferWrap.getByte() == 1 && (intUnsigned = bitBufferWrap.getIntUnsigned(16)) > 0) {
                        this.reportAddress = new String(bitBufferWrap.get(new byte[intUnsigned]), "ASCII");
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

    public int getPeriod() {
        return this.period;
    }

    public void setPeriod(int i) {
        this.period = i;
    }

    public int getFormat() {
        return this.format;
    }

    public void setFormat(int i) {
        this.format = i;
    }

    public int getTimeout() {
        return this.timeout;
    }

    public void setTimeout(int i) {
        this.timeout = i;
    }

    public int getOpenCache() {
        return this.openCache;
    }

    public void setOpenCache(int i) {
        this.openCache = i;
    }

    public String getReportAddress() {
        return this.reportAddress;
    }

    public void setReportAddress(String str) {
        this.reportAddress = str;
    }

    @Override // com.p013gg.reader.api.protocol.p014gx.Message
    public void pack() {
        BitBuffer bitBufferAllocateDynamic = BitBuffer.allocateDynamic();
        bitBufferAllocateDynamic.putInt(this.onOrOff, 8);
        bitBufferAllocateDynamic.putInt(this.period, 16);
        bitBufferAllocateDynamic.put(this.format, 8);
        bitBufferAllocateDynamic.put(this.timeout, 16);
        bitBufferAllocateDynamic.putInt(this.openCache, 8);
        if (!StringUtils.isNullOfEmpty(this.reportAddress)) {
            bitBufferAllocateDynamic.putInt(1, 8);
            bitBufferAllocateDynamic.putInt(this.reportAddress.length(), 16);
            bitBufferAllocateDynamic.put(this.reportAddress);
        }
        this.cData = bitBufferAllocateDynamic.asByteArray();
        this.dataLen = this.cData.length;
    }

    @Override // com.p013gg.reader.api.protocol.p014gx.Message
    public void ackUnpack() {
        Hashtable<Byte, String> hashtable = new Hashtable<Byte, String>() { // from class: com.gg.reader.api.protocol.gx.MsgAppSetHttpParam.1
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
