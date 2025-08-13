package com.p013gg.reader.api.protocol.p014gx;

import com.p013gg.reader.api.utils.BitBuffer;
import com.p013gg.reader.api.utils.HexUtils;
import com.p013gg.reader.api.utils.StringUtils;
import java.util.Hashtable;

/* loaded from: classes.dex */
public class MsgBaseLockGb extends Message {
    private Long antennaEnable;
    private int area;
    private ParamEpcFilter filter;
    private String hexPassword;
    private int lockParam;
    private int safeCertificationFlag;

    public MsgBaseLockGb() {
        this.safeCertificationFlag = Integer.MAX_VALUE;
        try {
            this.msgType = new MsgType();
            this.msgType.mt_8_11 = EnumG.MSG_TYPE_BIT_BASE;
            this.msgType.msgId = (byte) 82;
            this.dataLen = 0;
        } catch (Exception unused) {
        }
    }

    public MsgBaseLockGb(byte[] bArr) {
        this();
        if (bArr != null) {
            try {
                if (bArr.length <= 0) {
                    return;
                }
                BitBuffer bitBufferWrap = BitBuffer.wrap(bArr);
                bitBufferWrap.position(0);
                this.antennaEnable = Long.valueOf(bitBufferWrap.getLongUnsigned(32));
                this.area = bitBufferWrap.getIntUnsigned(8);
                this.lockParam = bitBufferWrap.getIntUnsigned(8);
                while (bitBufferWrap.position() / 8 < bArr.length) {
                    byte b = bitBufferWrap.getByte();
                    if (b == 1) {
                        int intUnsigned = bitBufferWrap.getIntUnsigned(16);
                        byte[] bArr2 = new byte[intUnsigned];
                        if (intUnsigned > 0) {
                            bitBufferWrap.get(bArr2);
                            this.filter = new ParamEpcFilter(bArr2);
                        }
                    } else if (b == 2) {
                        byte[] bArr3 = new byte[4];
                        bitBufferWrap.get(bArr3);
                        this.hexPassword = HexUtils.bytes2HexString(bArr3);
                    } else if (b == 3) {
                        this.safeCertificationFlag = bitBufferWrap.getIntUnsigned(8);
                    }
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

    public int getArea() {
        return this.area;
    }

    public void setArea(int i) {
        this.area = i;
    }

    public int getLockParam() {
        return this.lockParam;
    }

    public void setLockParam(int i) {
        this.lockParam = i;
    }

    public ParamEpcFilter getFilter() {
        return this.filter;
    }

    public void setFilter(ParamEpcFilter paramEpcFilter) {
        this.filter = paramEpcFilter;
    }

    public String getHexPassword() {
        return this.hexPassword;
    }

    public void setHexPassword(String str) {
        this.hexPassword = str;
    }

    @Override // com.p013gg.reader.api.protocol.p014gx.Message
    public void pack() {
        BitBuffer bitBufferAllocateDynamic = BitBuffer.allocateDynamic();
        bitBufferAllocateDynamic.putLong(this.antennaEnable.longValue(), 32);
        bitBufferAllocateDynamic.putLong(this.area, 8);
        bitBufferAllocateDynamic.putLong(this.lockParam, 8);
        if (this.filter != null) {
            bitBufferAllocateDynamic.putInt(1, 8);
            byte[] bytes = this.filter.toBytes();
            bitBufferAllocateDynamic.putInt(bytes.length, 16);
            bitBufferAllocateDynamic.put(bytes);
        }
        if (!StringUtils.isNullOfEmpty(this.hexPassword)) {
            bitBufferAllocateDynamic.putInt(2, 8);
            bitBufferAllocateDynamic.put(HexUtils.hexString2Bytes(this.hexPassword));
        }
        if (Integer.MAX_VALUE != this.safeCertificationFlag) {
            bitBufferAllocateDynamic.put(3, 8);
            bitBufferAllocateDynamic.put(this.safeCertificationFlag, 8);
        }
        this.cData = bitBufferAllocateDynamic.asByteArray();
        this.dataLen = this.cData.length;
    }

    @Override // com.p013gg.reader.api.protocol.p014gx.Message
    public void ackUnpack() {
        Hashtable<Byte, String> hashtable = new Hashtable<Byte, String>() { // from class: com.gg.reader.api.protocol.gx.MsgBaseLockGb.1
            {
                put((byte) 0, "Success.");
                put((byte) 1, "Antenna port parameter error.");
                put((byte) 2, "Filter parameter error.");
                put((byte) 3, "Lock parameter error.");
                put((byte) 4, "CRC check error.");
                put((byte) 5, "Underpower error.");
                put((byte) 6, "Data area overflow.");
                put((byte) 7, "Data area is locked.");
                put((byte) 8, "Access password error.");
                put((byte) 9, "Permission denied.");
                put((byte) 10, "Identify failure.");
                put((byte) 11, "Other error.");
                put((byte) 12, "Label is missing.");
                put((byte) 13, "Send command error.");
            }
        };
        if (this.cData == null || this.cData.length <= 0) {
            return;
        }
        setRtCode(this.cData[0]);
        if (hashtable.containsKey(Byte.valueOf(this.cData[0]))) {
            setRtMsg(hashtable.get(Byte.valueOf(this.cData[0])));
        }
    }
}
