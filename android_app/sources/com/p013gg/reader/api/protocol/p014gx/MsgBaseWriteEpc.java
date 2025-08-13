package com.p013gg.reader.api.protocol.p014gx;

import cn.highlight.p004tx.app.CmdCenter;
import com.p013gg.reader.api.utils.BitBuffer;
import com.p013gg.reader.api.utils.HexUtils;
import com.p013gg.reader.api.utils.StringUtils;
import java.util.Hashtable;

/* loaded from: classes.dex */
public class MsgBaseWriteEpc extends Message {
    private Long antennaEnable;
    private int area;
    private int block;
    private byte[] bwriteData;
    private int eBookFlag;
    private int errorIndex;
    private ParamEpcFilter filter;
    private String hexPassword;
    private String hexWriteData;
    private int start;
    private int stayCarrierWave;

    public MsgBaseWriteEpc() {
        this.block = 0;
        this.stayCarrierWave = Integer.MAX_VALUE;
        this.eBookFlag = Integer.MAX_VALUE;
        try {
            this.msgType = new MsgType();
            this.msgType.mt_8_11 = EnumG.MSG_TYPE_BIT_BASE;
            this.msgType.msgId = CmdCenter.CMD_getCabinetLockStatus;
            this.dataLen = 0;
        } catch (Exception unused) {
        }
    }

    public MsgBaseWriteEpc(byte[] bArr) {
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
                this.start = bitBufferWrap.getIntUnsigned(16);
                int intUnsigned = bitBufferWrap.getIntUnsigned(16);
                if (intUnsigned > 0) {
                    this.bwriteData = bitBufferWrap.get(new byte[intUnsigned]);
                    this.hexWriteData = HexUtils.bytes2HexString(this.bwriteData);
                }
                while (bitBufferWrap.position() / 8 < bArr.length) {
                    byte b = bitBufferWrap.getByte();
                    if (b == 1) {
                        int intUnsigned2 = bitBufferWrap.getIntUnsigned(16);
                        byte[] bArr2 = new byte[intUnsigned2];
                        if (intUnsigned2 > 0) {
                            bitBufferWrap.get(bArr2);
                            this.filter = new ParamEpcFilter(bArr2);
                        }
                    } else if (b == 2) {
                        byte[] bArr3 = new byte[4];
                        bitBufferWrap.get(bArr3);
                        this.hexPassword = HexUtils.bytes2HexString(bArr3);
                    } else if (b == 3) {
                        this.block = bitBufferWrap.getIntUnsigned(8);
                    } else if (b == 4) {
                        this.stayCarrierWave = bitBufferWrap.getIntUnsigned(8);
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

    public int getBlock() {
        return this.block;
    }

    public void setBlock(int i) {
        this.block = i;
    }

    public int getStayCarrierWave() {
        return this.stayCarrierWave;
    }

    public void setStayCarrierWave(int i) {
        this.stayCarrierWave = i;
    }

    public int geteBookFlag() {
        return this.eBookFlag;
    }

    public void seteBookFlag(int i) {
        this.eBookFlag = i;
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
        bitBufferAllocateDynamic.putLong(this.area, 8);
        bitBufferAllocateDynamic.putLong(this.start, 16);
        byte[] bArr = this.bwriteData;
        if (bArr != null && bArr.length > 0) {
            bitBufferAllocateDynamic.putInt(bArr.length, 16);
            bitBufferAllocateDynamic.put(this.bwriteData);
        }
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
        if (this.block != 0) {
            bitBufferAllocateDynamic.putInt(3, 8);
            bitBufferAllocateDynamic.putLong(this.block, 8);
        }
        if (Integer.MAX_VALUE != this.stayCarrierWave) {
            bitBufferAllocateDynamic.putInt(4, 8);
            bitBufferAllocateDynamic.putInt(this.stayCarrierWave, 8);
        }
        if (Integer.MAX_VALUE != this.eBookFlag) {
            bitBufferAllocateDynamic.putInt(5, 8);
            bitBufferAllocateDynamic.putInt(this.eBookFlag, 8);
        }
        this.cData = bitBufferAllocateDynamic.asByteArray();
        this.dataLen = this.cData.length;
    }

    @Override // com.p013gg.reader.api.protocol.p014gx.Message
    public void ackUnpack() {
        Hashtable<Byte, String> hashtable = new Hashtable<Byte, String>() { // from class: com.gg.reader.api.protocol.gx.MsgBaseWriteEpc.1
            {
                put((byte) 0, "Success.");
                put((byte) 1, "Antenna port parameter error.");
                put((byte) 2, "Filter parameter error.");
                put((byte) 3, "Write parameter error.");
                put((byte) 4, "CRC check error.");
                put((byte) 5, "Underpower error.");
                put((byte) 6, "Data area overflow.");
                put((byte) 7, "Data area locked.");
                put((byte) 8, "Access password error.");
                put((byte) 9, "Other error.");
                put((byte) 10, "Label is missing.");
                put((byte) 11, "Send command error.");
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
                this.errorIndex = bitBufferWrap.getIntUnsigned(16);
            }
        }
    }
}
