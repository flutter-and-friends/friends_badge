package com.p013gg.reader.api.protocol.p014gx;

import com.p013gg.reader.api.utils.BitBuffer;
import com.p013gg.reader.api.utils.HexUtils;
import com.p013gg.reader.api.utils.StringUtils;
import java.util.Hashtable;

/* loaded from: classes.dex */
public class MsgBaseWrite6b extends Message {
    private Long antennaEnable;
    private byte[] bMatchTid;
    private byte[] bwriteData;
    private int errorIndex;
    private String hexMatchTid;
    private String hexWriteData;
    private int start;

    public MsgBaseWrite6b() {
        try {
            this.msgType = new MsgType();
            this.msgType.mt_8_11 = EnumG.MSG_TYPE_BIT_BASE;
            this.msgType.msgId = (byte) 65;
            this.dataLen = 0;
        } catch (Exception unused) {
        }
    }

    public MsgBaseWrite6b(byte[] bArr) {
        this();
        if (bArr != null) {
            try {
                if (bArr.length <= 0) {
                    return;
                }
                BitBuffer bitBufferWrap = BitBuffer.wrap(bArr);
                bitBufferWrap.position(0);
                this.antennaEnable = Long.valueOf(bitBufferWrap.getLongUnsigned(32));
                this.bMatchTid = bitBufferWrap.get(new byte[8]);
                this.hexMatchTid = HexUtils.bytes2HexString(this.bMatchTid);
                this.start = bitBufferWrap.getIntUnsigned(8);
                int intUnsigned = bitBufferWrap.getIntUnsigned(16);
                if (intUnsigned > 0) {
                    this.bwriteData = bitBufferWrap.get(new byte[intUnsigned]);
                    this.hexWriteData = HexUtils.bytes2HexString(this.bwriteData);
                }
            } catch (Exception unused) {
            }
        }
    }

    public Long getAntennaEnable() {
        return this.antennaEnable;
    }

    public void setAntennaEnable(Long l) {
        this.antennaEnable = l;
    }

    public String getHexMatchTid() {
        return this.hexMatchTid;
    }

    public void setHexMatchTid(String str) {
        if (StringUtils.isNullOfEmpty(str)) {
            return;
        }
        this.hexMatchTid = str;
        this.bMatchTid = HexUtils.hexString2Bytes(this.hexMatchTid);
    }

    public byte[] getbMatchTid() {
        return this.bMatchTid;
    }

    public void setbMatchTid(byte[] bArr) {
        this.bMatchTid = bArr;
    }

    public int getStart() {
        return this.start;
    }

    public void setStart(int i) {
        this.start = i;
    }

    public String getHexWriteData() {
        return this.hexWriteData;
    }

    public void setHexWriteData(String str) {
        if (StringUtils.isNullOfEmpty(str)) {
            return;
        }
        this.hexWriteData = str;
        this.bwriteData = HexUtils.hexString2Bytes(this.hexWriteData);
    }

    public byte[] getBwriteData() {
        return this.bwriteData;
    }

    public void setBwriteData(byte[] bArr) {
        this.bwriteData = bArr;
    }

    public int getErrorIndex() {
        return this.errorIndex;
    }

    public void setErrorIndex(int i) {
        this.errorIndex = i;
    }

    @Override // com.p013gg.reader.api.protocol.p014gx.Message
    public void pack() {
        BitBuffer bitBufferAllocateDynamic = BitBuffer.allocateDynamic();
        bitBufferAllocateDynamic.putLong(this.antennaEnable.longValue(), 32);
        bitBufferAllocateDynamic.put(this.bMatchTid);
        bitBufferAllocateDynamic.putLong(this.start, 8);
        byte[] bArr = this.bwriteData;
        if (bArr != null && bArr.length > 0) {
            bitBufferAllocateDynamic.putInt(bArr.length, 16);
            bitBufferAllocateDynamic.put(this.bwriteData);
        }
        this.cData = bitBufferAllocateDynamic.asByteArray();
        this.dataLen = this.cData.length;
    }

    @Override // com.p013gg.reader.api.protocol.p014gx.Message
    public void ackUnpack() {
        Hashtable<Byte, String> hashtable = new Hashtable<Byte, String>() { // from class: com.gg.reader.api.protocol.gx.MsgBaseWrite6b.1
            {
                put((byte) 0, "Success.");
                put((byte) 1, "Antenna port parameter error.");
                put((byte) 2, "Write parameter error.");
                put((byte) 3, "Other error.");
            }
        };
        if (this.cData == null || this.cData.length < 1) {
            return;
        }
        setRtCode(this.cData[0]);
        if (hashtable.containsKey(Byte.valueOf(this.cData[0]))) {
            setRtMsg(hashtable.get(Byte.valueOf(this.cData[0])));
        }
        if (this.cData.length > 1) {
            BitBuffer bitBufferWrap = BitBuffer.wrap(this.cData);
            bitBufferWrap.position(8);
            if (bitBufferWrap.getIntUnsigned(8) == 1) {
                this.errorIndex = bitBufferWrap.getIntUnsigned(8);
            }
        }
    }
}
