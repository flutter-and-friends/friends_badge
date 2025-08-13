package com.p013gg.reader.api.protocol.p014gx;

import cn.highlight.p004tx.app.CmdCenter;
import com.p013gg.reader.api.utils.BitBuffer;
import com.p013gg.reader.api.utils.StringUtils;
import java.util.Hashtable;

/* loaded from: classes.dex */
public class MsgTestSerialNoSet extends Message {
    private String readerSerialNumber;
    private String tuYaAuthKey;
    private String tuYaPid;
    private String tuYaShortUrl;
    private String tuYaUuid;

    public MsgTestSerialNoSet() {
        try {
            this.msgType = new MsgType();
            this.msgType.mt_8_11 = EnumG.MSG_TYPE_BIT_TEST;
            this.msgType.msgId = CmdCenter.CMD_openMoreCabinet;
            this.dataLen = 0;
        } catch (Exception unused) {
        }
    }

    public MsgTestSerialNoSet(byte[] bArr) {
        this();
        if (bArr != null) {
            try {
                if (bArr.length <= 0) {
                    return;
                }
                BitBuffer bitBufferWrap = BitBuffer.wrap(bArr);
                bitBufferWrap.position(0);
                int intUnsigned = bitBufferWrap.getIntUnsigned(16);
                if (intUnsigned > 0) {
                    this.readerSerialNumber = new String(bitBufferWrap.get(new byte[intUnsigned]), "ASCII");
                }
            } catch (Exception unused) {
            }
        }
    }

    public String getReaderSerialNumber() {
        return this.readerSerialNumber;
    }

    public void setReaderSerialNumber(String str) {
        this.readerSerialNumber = str;
    }

    public String getTuYaPid() {
        return this.tuYaPid;
    }

    public void setTuYaPid(String str) {
        this.tuYaPid = str;
    }

    public String getTuYaUuid() {
        return this.tuYaUuid;
    }

    public void setTuYaUuid(String str) {
        this.tuYaUuid = str;
    }

    public String getTuYaAuthKey() {
        return this.tuYaAuthKey;
    }

    public void setTuYaAuthKey(String str) {
        this.tuYaAuthKey = str;
    }

    public String getTuYaShortUrl() {
        return this.tuYaShortUrl;
    }

    public void setTuYaShortUrl(String str) {
        this.tuYaShortUrl = str;
    }

    @Override // com.p013gg.reader.api.protocol.p014gx.Message
    public void pack() {
        BitBuffer bitBufferAllocateDynamic = BitBuffer.allocateDynamic();
        if (StringUtils.isNullOfEmpty(this.readerSerialNumber)) {
            return;
        }
        bitBufferAllocateDynamic.putInt(this.readerSerialNumber.length(), 16);
        bitBufferAllocateDynamic.put(this.readerSerialNumber);
        if (!StringUtils.isNullOfEmpty(this.tuYaPid)) {
            bitBufferAllocateDynamic.putInt(1, 8);
            bitBufferAllocateDynamic.putInt(this.tuYaPid.length(), 16);
            bitBufferAllocateDynamic.put(this.tuYaPid);
        }
        if (!StringUtils.isNullOfEmpty(this.tuYaUuid)) {
            bitBufferAllocateDynamic.putInt(2, 8);
            bitBufferAllocateDynamic.putInt(this.tuYaUuid.length(), 16);
            bitBufferAllocateDynamic.put(this.tuYaUuid);
        }
        if (!StringUtils.isNullOfEmpty(this.tuYaAuthKey)) {
            bitBufferAllocateDynamic.putInt(3, 8);
            bitBufferAllocateDynamic.putInt(this.tuYaAuthKey.length(), 16);
            bitBufferAllocateDynamic.put(this.tuYaAuthKey);
        }
        if (!StringUtils.isNullOfEmpty(this.tuYaShortUrl)) {
            bitBufferAllocateDynamic.putInt(4, 8);
            bitBufferAllocateDynamic.putInt(this.tuYaShortUrl.length(), 16);
            bitBufferAllocateDynamic.put(this.tuYaShortUrl);
        }
        this.cData = bitBufferAllocateDynamic.asByteArray();
        this.dataLen = this.cData.length;
    }

    @Override // com.p013gg.reader.api.protocol.p014gx.Message
    public void ackUnpack() {
        Hashtable<Byte, String> hashtable = new Hashtable<Byte, String>() { // from class: com.gg.reader.api.protocol.gx.MsgTestSerialNoSet.1
            {
                put((byte) 0, "Success.");
                put((byte) 1, "Other error.");
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
