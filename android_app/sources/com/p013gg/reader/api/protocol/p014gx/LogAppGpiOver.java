package com.p013gg.reader.api.protocol.p014gx;

import com.p013gg.reader.api.utils.BitBuffer;
import com.p013gg.reader.api.utils.DateTimeUtils;
import java.util.Date;
import java.util.Formatter;
import java.util.TimeZone;

/* loaded from: classes.dex */
public class LogAppGpiOver extends Message {
    private int gpiPort;
    private int gpiPortLevel;
    private String readerSerialNumber;
    private Date systemTime = new Date();

    public LogAppGpiOver() {
        try {
            this.msgType = new MsgType();
            this.msgType.mt_8_11 = EnumG.MSG_TYPE_BIT_APP;
            this.msgType.msgId = (byte) 1;
            this.dataLen = 0;
        } catch (Exception unused) {
        }
    }

    public int getGpiPort() {
        return this.gpiPort;
    }

    public void setGpiPort(int i) {
        this.gpiPort = i;
    }

    public int getGpiPortLevel() {
        return this.gpiPortLevel;
    }

    public void setGpiPortLevel(int i) {
        this.gpiPortLevel = i;
    }

    public Date getSystemTime() {
        return this.systemTime;
    }

    public void setSystemTime(Date date) {
        this.systemTime = date;
    }

    public String getReaderSerialNumber() {
        return this.readerSerialNumber;
    }

    public void setReaderSerialNumber(String str) {
        this.readerSerialNumber = str;
    }

    @Override // com.p013gg.reader.api.protocol.p014gx.Message
    public void pack() {
        super.pack();
    }

    @Override // com.p013gg.reader.api.protocol.p014gx.Message
    public void ackPack() {
        BitBuffer bitBufferAllocateDynamic = BitBuffer.allocateDynamic();
        bitBufferAllocateDynamic.putLong(this.gpiPort, 8);
        bitBufferAllocateDynamic.putLong(this.gpiPortLevel, 8);
        String[] strArrSplit = new Formatter().format("%.3f", Double.valueOf(DateTimeUtils.UtcFromTimeZone(this.systemTime, TimeZone.getDefault()) / 1000.0d)).toString().split("\\.");
        bitBufferAllocateDynamic.putLong(Integer.parseInt(strArrSplit[0]), 32);
        bitBufferAllocateDynamic.putLong(Integer.parseInt(strArrSplit[1]) * 1000, 32);
        this.cData = bitBufferAllocateDynamic.asByteArray();
        this.dataLen = this.cData.length;
    }

    @Override // com.p013gg.reader.api.protocol.p014gx.Message
    public void ackUnpack() {
        if (this.cData == null || this.cData.length <= 0) {
            return;
        }
        BitBuffer bitBufferWrap = BitBuffer.wrap(this.cData);
        bitBufferWrap.position(0);
        this.gpiPort = bitBufferWrap.getIntUnsigned(8);
        this.gpiPortLevel = bitBufferWrap.getIntUnsigned(8);
        this.systemTime = DateTimeUtils.fromUtcToTimeZone((bitBufferWrap.getLong(32) * 1000) + (bitBufferWrap.getLong(32) / 1000), TimeZone.getDefault());
    }

    public String toString() {
        return "LogAppGpiOver{gpiPort=" + this.gpiPort + ", gpiPortLevel=" + this.gpiPortLevel + ", systemTime=" + this.systemTime + ", readerSerialNumber='" + this.readerSerialNumber + "'}";
    }
}
