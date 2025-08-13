package com.p013gg.reader.api.protocol.p014gx;

import com.p013gg.reader.api.utils.BitBuffer;
import com.p013gg.reader.api.utils.HexUtils;
import com.p013gg.reader.api.utils.StringUtils;
import java.util.Hashtable;

/* loaded from: classes.dex */
public class MsgBaseSafeCertification extends Message {
    private String key;
    private ParamEncipheredData paramEncipheredData;
    private int token1;
    private int token2result;

    public MsgBaseSafeCertification() {
        this.token1 = Integer.MAX_VALUE;
        this.token2result = Integer.MAX_VALUE;
        try {
            this.msgType = new MsgType();
            this.msgType.mt_8_11 = EnumG.MSG_TYPE_BIT_BASE;
            this.msgType.msgId = (byte) -16;
            this.dataLen = 0;
        } catch (Exception unused) {
        }
    }

    public MsgBaseSafeCertification(byte[] bArr) {
        this();
        if (bArr != null) {
            try {
                if (bArr.length <= 0) {
                    return;
                }
                BitBuffer bitBufferWrap = BitBuffer.wrap(bArr);
                bitBufferWrap.position(0);
                while (bitBufferWrap.position() / 8 < bArr.length) {
                    byte b = bitBufferWrap.getByte();
                    if (b == 1) {
                        int intUnsigned = bitBufferWrap.getIntUnsigned(64);
                        byte[] bArr2 = new byte[intUnsigned];
                        if (intUnsigned > 0) {
                            this.token1 = HexUtils.bytes2Int(bitBufferWrap.get(bArr2));
                        }
                    } else if (b == 2) {
                        this.token2result = bitBufferWrap.getIntUnsigned(8);
                    } else if (b == 3) {
                        byte[] bArr3 = new byte[2];
                        bitBufferWrap.get(bArr3);
                        this.paramEncipheredData = new ParamEncipheredData(bArr3);
                    } else if (b == 4) {
                        this.key = bitBufferWrap.getString(bitBufferWrap.getIntUnsigned(8) * 8);
                    }
                }
            } catch (Exception unused) {
            }
        }
    }

    public int getToken1() {
        return this.token1;
    }

    public void setToken1(int i) {
        this.token1 = i;
    }

    public int getToken2result() {
        return this.token2result;
    }

    public void setToken2result(int i) {
        this.token2result = i;
    }

    public ParamEncipheredData getParamEncipheredData() {
        return this.paramEncipheredData;
    }

    public void setParamEncipheredData(ParamEncipheredData paramEncipheredData) {
        this.paramEncipheredData = paramEncipheredData;
    }

    public String getKey() {
        return this.key;
    }

    public void setKey(String str) {
        this.key = str;
    }

    @Override // com.p013gg.reader.api.protocol.p014gx.Message
    public void pack() {
        try {
            BitBuffer bitBufferAllocateDynamic = BitBuffer.allocateDynamic();
            if (Integer.MAX_VALUE != this.token1) {
                bitBufferAllocateDynamic.putInt(1, 8);
                bitBufferAllocateDynamic.putInt(this.token1, 64);
            }
            if (Integer.MAX_VALUE != this.token2result) {
                bitBufferAllocateDynamic.putInt(2, 8);
                bitBufferAllocateDynamic.put(this.token2result, 8);
            }
            if (this.paramEncipheredData != null) {
                bitBufferAllocateDynamic.putInt(3, 8);
                bitBufferAllocateDynamic.put(this.paramEncipheredData.toBytes());
            }
            if (!StringUtils.isNullOfEmpty(this.key)) {
                bitBufferAllocateDynamic.putInt(4, 8);
                bitBufferAllocateDynamic.put(this.key.length(), 16);
                bitBufferAllocateDynamic.put(this.key);
            }
            this.cData = bitBufferAllocateDynamic.asByteArray();
            this.dataLen = this.cData.length;
        } catch (Exception unused) {
        }
    }

    @Override // com.p013gg.reader.api.protocol.p014gx.Message
    public void ackUnpack() {
        Hashtable<Byte, String> hashtable = new Hashtable<Byte, String>() { // from class: com.gg.reader.api.protocol.gx.MsgBaseSafeCertification.1
            {
                put((byte) 0, "Success.");
                put((byte) 1, "Failure.");
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
