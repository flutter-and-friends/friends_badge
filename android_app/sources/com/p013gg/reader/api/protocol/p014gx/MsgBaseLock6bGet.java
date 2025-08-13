package com.p013gg.reader.api.protocol.p014gx;

import com.p013gg.reader.api.utils.BitBuffer;
import com.p013gg.reader.api.utils.HexUtils;
import com.p013gg.reader.api.utils.StringUtils;
import java.util.Hashtable;

/* loaded from: classes.dex */
public class MsgBaseLock6bGet extends Message {
    private Long antennaEnable;
    private byte[] bMatchTid;
    private String hexMatchTid;
    private int lockIndex;
    private int lockState;

    @Override // com.p013gg.reader.api.protocol.p014gx.Message
    public void ackPack() {
    }

    public MsgBaseLock6bGet() {
        try {
            this.msgType = new MsgType();
            this.msgType.mt_8_11 = EnumG.MSG_TYPE_BIT_BASE;
            this.msgType.msgId = (byte) 67;
            this.dataLen = 0;
        } catch (Exception unused) {
        }
    }

    public MsgBaseLock6bGet(byte[] bArr) {
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
                this.lockIndex = bitBufferWrap.getIntUnsigned(8);
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

    public int getLockIndex() {
        return this.lockIndex;
    }

    public void setLockIndex(int i) {
        this.lockIndex = i;
    }

    public int getLockState() {
        return this.lockState;
    }

    public void setLockState(int i) {
        this.lockState = i;
    }

    @Override // com.p013gg.reader.api.protocol.p014gx.Message
    public void pack() {
        try {
            BitBuffer bitBufferAllocateDynamic = BitBuffer.allocateDynamic();
            bitBufferAllocateDynamic.putLong(this.antennaEnable.longValue(), 32);
            if (this.bMatchTid != null && this.bMatchTid.length > 0) {
                bitBufferAllocateDynamic.put(this.bMatchTid);
            }
            bitBufferAllocateDynamic.putLong(this.lockIndex, 8);
            this.cData = bitBufferAllocateDynamic.asByteArray();
            this.dataLen = this.cData.length;
        } catch (Exception unused) {
        }
    }

    @Override // com.p013gg.reader.api.protocol.p014gx.Message
    public void ackUnpack() {
        Hashtable<Byte, String> hashtable = new Hashtable<Byte, String>() { // from class: com.gg.reader.api.protocol.gx.MsgBaseLock6bGet.1
            {
                put((byte) 0, "Success.");
                put((byte) 1, "Other error.");
            }
        };
        if (this.cData == null || this.cData.length <= 0) {
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
                this.lockState = bitBufferWrap.getIntUnsigned(8);
            }
        }
    }
}
