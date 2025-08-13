package com.p013gg.reader.api.protocol.p014gx;

import cn.highlight.p004tx.app.CmdCenter;
import com.p013gg.reader.api.utils.BitBuffer;
import com.p013gg.reader.api.utils.DateTimeUtils;
import java.util.Date;
import java.util.Formatter;
import java.util.Hashtable;
import java.util.TimeZone;

/* loaded from: classes.dex */
public class MsgAppSetReaderTime extends Message {
    private Date systemTime;

    public MsgAppSetReaderTime() {
        this.systemTime = new Date();
        try {
            this.msgType = new MsgType();
            this.msgType.mt_8_11 = EnumG.MSG_TYPE_BIT_APP;
            this.msgType.msgId = CmdCenter.CMD_openMoreCabinet;
            this.dataLen = 0;
        } catch (Exception unused) {
        }
    }

    public MsgAppSetReaderTime(byte[] bArr) {
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

    @Override // com.p013gg.reader.api.protocol.p014gx.Message
    public void pack() {
        BitBuffer bitBufferAllocateDynamic = BitBuffer.allocateDynamic();
        String[] strArrSplit = new Formatter().format("%.3f", Double.valueOf(DateTimeUtils.UtcFromTimeZone(this.systemTime, TimeZone.getDefault()) / 1000.0d)).toString().split("\\.");
        bitBufferAllocateDynamic.putLong(Integer.parseInt(strArrSplit[0]), 32);
        bitBufferAllocateDynamic.putLong(Integer.parseInt(strArrSplit[1]) * 1000, 32);
        this.cData = bitBufferAllocateDynamic.asByteArray();
        this.dataLen = this.cData.length;
    }

    @Override // com.p013gg.reader.api.protocol.p014gx.Message
    public void ackUnpack() {
        Hashtable<Byte, String> hashtable = new Hashtable<Byte, String>() { // from class: com.gg.reader.api.protocol.gx.MsgAppSetReaderTime.1
            {
                put((byte) 0, "Success.");
                put((byte) 1, "RTC setup failed.");
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
