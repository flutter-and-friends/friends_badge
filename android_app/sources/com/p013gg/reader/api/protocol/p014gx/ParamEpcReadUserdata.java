package com.p013gg.reader.api.protocol.p014gx;

import com.p013gg.reader.api.utils.BitBuffer;

/* loaded from: classes.dex */
public class ParamEpcReadUserdata extends Parameter {
    private int len;
    private int start;

    public ParamEpcReadUserdata() {
    }

    public ParamEpcReadUserdata(int i, int i2) {
        this.start = i;
        this.len = i2;
    }

    public ParamEpcReadUserdata(byte[] bArr) {
        if (bArr == null || bArr.length == 0) {
            return;
        }
        BitBuffer bitBufferWrap = BitBuffer.wrap(bArr);
        bitBufferWrap.position(0);
        this.start = bitBufferWrap.getIntUnsigned(16);
        this.len = bitBufferWrap.getIntUnsigned(8);
    }

    public int getStart() {
        return this.start;
    }

    public void setStart(int i) {
        this.start = i;
    }

    public int getLen() {
        return this.len;
    }

    public void setLen(int i) {
        this.len = i;
    }

    @Override // com.p013gg.reader.api.protocol.p014gx.Parameter
    public byte[] toBytes() {
        BitBuffer bitBufferAllocateDynamic = BitBuffer.allocateDynamic();
        bitBufferAllocateDynamic.putLong(this.start, 16);
        bitBufferAllocateDynamic.putLong(this.len, 8);
        return bitBufferAllocateDynamic.asByteArray();
    }
}
