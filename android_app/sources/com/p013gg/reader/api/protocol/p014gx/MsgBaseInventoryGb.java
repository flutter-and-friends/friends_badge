package com.p013gg.reader.api.protocol.p014gx;

import com.p013gg.reader.api.utils.BitBuffer;
import com.p013gg.reader.api.utils.HexUtils;
import com.p013gg.reader.api.utils.StringUtils;
import java.util.Hashtable;

/* loaded from: classes.dex */
public class MsgBaseInventoryGb extends Message {
    private Long antennaEnable;
    private ParamEpcFilter filter;
    private String hexPassword;
    private int inventoryMode;
    private ParamEpcReadTid readTid;
    private ParamGbReadUserdata readUserdata;
    private int safeCertificationFlag;

    public MsgBaseInventoryGb() {
        this.safeCertificationFlag = Integer.MAX_VALUE;
        try {
            this.msgType = new MsgType();
            this.msgType.mt_8_11 = EnumG.MSG_TYPE_BIT_BASE;
            this.msgType.msgId = (byte) 80;
            this.dataLen = 0;
        } catch (Exception unused) {
        }
    }

    public MsgBaseInventoryGb(byte[] bArr) {
        this();
        if (bArr != null) {
            try {
                if (bArr.length <= 0) {
                    return;
                }
                BitBuffer bitBufferWrap = BitBuffer.wrap(bArr);
                bitBufferWrap.position(0);
                this.antennaEnable = Long.valueOf(bitBufferWrap.getLongUnsigned(32));
                this.inventoryMode = bitBufferWrap.getIntUnsigned(8);
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
                        byte[] bArr3 = new byte[2];
                        bitBufferWrap.get(bArr3);
                        this.readTid = new ParamEpcReadTid(bArr3);
                    } else if (b == 3) {
                        byte[] bArr4 = new byte[4];
                        bitBufferWrap.get(bArr4);
                        this.readUserdata = new ParamGbReadUserdata(bArr4);
                    } else if (b == 5) {
                        byte[] bArr5 = new byte[4];
                        bitBufferWrap.get(bArr5);
                        this.hexPassword = HexUtils.bytes2HexString(bArr5);
                    } else if (b == 6) {
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

    public int getInventoryMode() {
        return this.inventoryMode;
    }

    public void setInventoryMode(int i) {
        this.inventoryMode = i;
    }

    public ParamEpcFilter getFilter() {
        return this.filter;
    }

    public void setFilter(ParamEpcFilter paramEpcFilter) {
        this.filter = paramEpcFilter;
    }

    public ParamEpcReadTid getReadTid() {
        return this.readTid;
    }

    public void setReadTid(ParamEpcReadTid paramEpcReadTid) {
        this.readTid = paramEpcReadTid;
    }

    public ParamGbReadUserdata getReadUserdata() {
        return this.readUserdata;
    }

    public void setReadUserdata(ParamGbReadUserdata paramGbReadUserdata) {
        this.readUserdata = paramGbReadUserdata;
    }

    public String getHexPassword() {
        return this.hexPassword;
    }

    public void setHexPassword(String str) {
        this.hexPassword = str;
    }

    public int getSafeCertificationFlag() {
        return this.safeCertificationFlag;
    }

    public void setSafeCertificationFlag(int i) {
        this.safeCertificationFlag = i;
    }

    @Override // com.p013gg.reader.api.protocol.p014gx.Message
    public void pack() {
        BitBuffer bitBufferAllocateDynamic = BitBuffer.allocateDynamic();
        bitBufferAllocateDynamic.putLong(this.antennaEnable.longValue(), 32);
        bitBufferAllocateDynamic.putLong(this.inventoryMode, 8);
        if (this.filter != null) {
            bitBufferAllocateDynamic.putInt(1, 8);
            byte[] bytes = this.filter.toBytes();
            bitBufferAllocateDynamic.putInt(bytes.length, 16);
            bitBufferAllocateDynamic.put(bytes);
        }
        if (this.readTid != null) {
            bitBufferAllocateDynamic.putInt(2, 8);
            bitBufferAllocateDynamic.put(this.readTid.toBytes());
        }
        if (this.readUserdata != null) {
            bitBufferAllocateDynamic.putInt(3, 8);
            bitBufferAllocateDynamic.put(this.readUserdata.toBytes());
        }
        if (!StringUtils.isNullOfEmpty(this.hexPassword)) {
            bitBufferAllocateDynamic.putInt(5, 8);
            bitBufferAllocateDynamic.put(HexUtils.hexString2Bytes(this.hexPassword));
        }
        if (Integer.MAX_VALUE != this.safeCertificationFlag) {
            bitBufferAllocateDynamic.put(6, 8);
            bitBufferAllocateDynamic.put(this.safeCertificationFlag, 8);
        }
        this.cData = bitBufferAllocateDynamic.asByteArray();
        this.dataLen = this.cData.length;
    }

    @Override // com.p013gg.reader.api.protocol.p014gx.Message
    public void ackUnpack() {
        Hashtable<Byte, String> hashtable = new Hashtable<Byte, String>() { // from class: com.gg.reader.api.protocol.gx.MsgBaseInventoryGb.1
            {
                put((byte) 0, "Success.");
                put((byte) 1, "Antenna port parameter error.");
                put((byte) 2, "Filter parameter error.");
                put((byte) 3, "Tid parameter error.");
                put((byte) 4, "Userdata parameter error.");
                put((byte) 5, "Other error.");
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

    public String toString() {
        return "MsgBaseInventoryGb{antennaEnable=" + this.antennaEnable + ", inventoryMode=" + this.inventoryMode + ", filter=" + this.filter + ", readTid=" + this.readTid + ", readUserdata=" + this.readUserdata + ", hexPassword='" + this.hexPassword + "', safeCertificationFlag=" + this.safeCertificationFlag + '}';
    }
}
