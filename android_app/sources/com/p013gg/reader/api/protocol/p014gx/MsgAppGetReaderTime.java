package com.p013gg.reader.api.protocol.p014gx;

import cn.highlight.p004tx.app.CmdCenter;
import com.p013gg.reader.api.utils.BitBuffer;
import com.p013gg.reader.api.utils.DateTimeUtils;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Formatter;
import java.util.TimeZone;

/* loaded from: classes.dex */
public class MsgAppGetReaderTime extends Message {
    private Date systemTime;

    @Override // com.p013gg.reader.api.protocol.p014gx.Message
    public void pack() {
    }

    public MsgAppGetReaderTime() {
        try {
            this.msgType = new MsgType();
            this.msgType.mt_8_11 = EnumG.MSG_TYPE_BIT_APP;
            this.msgType.msgId = CmdCenter.CMD_getCabinetLockStatus;
            this.dataLen = 0;
        } catch (Exception unused) {
        }
    }

    public MsgAppGetReaderTime(byte[] bArr) {
        this();
        if (bArr != null) {
            try {
                if (bArr.length <= 0) {
                    return;
                }
                BitBuffer bitBufferWrap = BitBuffer.wrap(bArr);
                bitBufferWrap.position(0);
                this.systemTime = DateTimeUtils.fromUtcToTimeZone((bitBufferWrap.getLong(32) * 1000) + (bitBufferWrap.getLong(32) / 1000), TimeZone.getDefault());
            } catch (Exception unused) {
            }
        }
    }

    public Date getSystemTime() {
        return this.systemTime;
    }

    public void setSystemTime(Date date) {
        this.systemTime = date;
    }

    public String getFormatTime() {
        return new SimpleDateFormat("yyyy.MM.dd HH:mm:ss").format(getSystemTime());
    }

    @Override // com.p013gg.reader.api.protocol.p014gx.Message
    public void ackPack() {
        try {
            BitBuffer bitBufferAllocateDynamic = BitBuffer.allocateDynamic();
            String[] strArrSplit = new Formatter().format("%.3f", Double.valueOf(DateTimeUtils.UtcFromTimeZone(this.systemTime, TimeZone.getDefault()) / 1000.0d)).toString().split("\\.");
            bitBufferAllocateDynamic.putLong(Integer.parseInt(strArrSplit[0]), 32);
            bitBufferAllocateDynamic.putLong(Integer.parseInt(strArrSplit[1]) * 1000, 32);
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
        this.systemTime = DateTimeUtils.fromUtcToTimeZone((bitBufferWrap.getLong(32) * 1000) + (bitBufferWrap.getLong(32) / 1000), TimeZone.getDefault());
        setRtCode((byte) 0);
    }
}
