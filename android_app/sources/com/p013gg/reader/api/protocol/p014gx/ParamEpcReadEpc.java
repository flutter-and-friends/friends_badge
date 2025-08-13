package com.p013gg.reader.api.protocol.p014gx;

import com.p013gg.reader.api.utils.BitBuffer;

/* loaded from: classes.dex */
public class ParamEpcReadEpc extends Parameter {
    private int len;
    private int start;

    public ParamEpcReadEpc() {
    }

    public ParamEpcReadEpc(int i, int i2) {
        this.start = i;
        this.len = i2;
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

    public ParamEpcReadEpc(byte[] bArr) {
        if (bArr == null || bArr.length == 0) {
            return;
        }
        BitBuffer bitBufferWrap = BitBuffer.wrap(bArr);
        bitBufferWrap.position(0);
        this.start = bitBufferWrap.getIntUnsigned(16);
        this.len = bitBufferWrap.getIntUnsigned(8);
    }

    @Override // com.p013gg.reader.api.protocol.p014gx.Parameter
    public byte[] toBytes() {
        BitBuffer bitBufferAllocateDynamic = BitBuffer.allocateDynamic();
        bitBufferAllocateDynamic.putLong(this.start, 16);
        bitBufferAllocateDynamic.putLong(this.len, 8);
        return bitBufferAllocateDynamic.asByteArray();
    }
}
