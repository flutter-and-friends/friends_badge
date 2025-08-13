package com.p013gg.reader.api.protocol.p014gx;

import com.p013gg.reader.api.utils.BitBuffer;
import com.p013gg.reader.api.utils.HexUtils;
import com.p013gg.reader.api.utils.StringUtils;

/* loaded from: classes.dex */
public class ParamEpcFilter extends Parameter {
    private int area;
    private byte[] bData;
    private int bitLength;
    private int bitStart;
    private String hexData;

    public ParamEpcFilter() {
    }

    public ParamEpcFilter(int i, int i2, int i3, String str) {
        this.area = i;
        this.bitStart = i2;
        this.bitLength = i3;
        this.hexData = str;
        if (StringUtils.isNullOfEmpty(str)) {
            return;
        }
        this.bData = HexUtils.hexString2Bytes(this.hexData);
    }

    public int getArea() {
        return this.area;
    }

    public void setArea(int i) {
        this.area = i;
    }

    public int getBitStart() {
        return this.bitStart;
    }

    public void setBitStart(int i) {
        this.bitStart = i;
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

    public ParamEpcFilter(byte[] bArr) {
        if (bArr == null) {
            return;
        }
        try {
            BitBuffer bitBufferWrap = BitBuffer.wrap(bArr);
            bitBufferWrap.position(0);
            this.area = bitBufferWrap.getIntUnsigned(8);
            this.bitStart = bitBufferWrap.getIntUnsigned(16);
            this.bitLength = bitBufferWrap.getIntUnsigned(8);
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
        bitBufferAllocateDynamic.putLong(this.area, 8);
        bitBufferAllocateDynamic.putLong(this.bitStart, 16);
        bitBufferAllocateDynamic.putLong(this.bitLength, 8);
        bitBufferAllocateDynamic.put(this.bData);
        return bitBufferAllocateDynamic.asByteArray();
    }
}
