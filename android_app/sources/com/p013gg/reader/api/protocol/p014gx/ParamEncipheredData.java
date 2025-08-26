package com.p013gg.reader.api.protocol.p014gx;

import com.p013gg.reader.api.utils.BitBuffer;
import com.p013gg.reader.api.utils.HexUtils;
import com.p013gg.reader.api.utils.StringUtils;

/* loaded from: classes.dex */
public class ParamEncipheredData extends Parameter {
    private byte[] bData;
    private int bitLength;
    private String hexData;

    public ParamEncipheredData() {
    }

    public ParamEncipheredData(int i, String str) {
        this.bitLength = i;
        this.hexData = str;
    }

    public int getBitLength() {
        return this.bitLength;
    }

    public void setBitLength(int i) {
        this.bitLength = i;
    }

    public String getHexData() {
        return this.hexData;
    }

    public void setHexData(String str) {
        if (StringUtils.isNullOfEmpty(str)) {
            return;
        }
        this.hexData = str;
        this.bData = HexUtils.hexString2Bytes(this.hexData);
    }

    public byte[] getbData() {
        return this.bData;
    }

    public void setbData(byte[] bArr) {
        this.bData = bArr;
    }

    public ParamEncipheredData(byte[] bArr) {
        if (bArr == null) {
            return;
        }
        try {
            BitBuffer bitBufferWrap = BitBuffer.wrap(bArr);
            bitBufferWrap.position(0);
            this.bitLength = bitBufferWrap.getIntUnsigned(16);
            int i = this.bitLength / 8;
            this.bData = new byte[i];
            if (i > 0) {
                this.bData = bitBufferWrap.get(this.bData);
                this.hexData = HexUtils.bytes2HexString(this.bData);
            }
        } catch (Exception unused) {
        }
    }

    @Override // com.p013gg.reader.api.protocol.p014gx.Parameter
    public byte[] toBytes() {
        BitBuffer bitBufferAllocateDynamic = BitBuffer.allocateDynamic();
        bitBufferAllocateDynamic.putLong(this.bitLength, 16);
        bitBufferAllocateDynamic.put(this.bData);
        return bitBufferAllocateDynamic.asByteArray();
    }
}
