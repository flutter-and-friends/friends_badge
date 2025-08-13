package com.p013gg.reader.api.protocol.p014gx;

import com.p013gg.reader.api.utils.BitBuffer;

/* loaded from: classes.dex */
public class Param6bReadUserdata extends Parameter {
    private int len;
    private int start;

    public Param6bReadUserdata() {
    }

    public Param6bReadUserdata(int i, int i2) {
        this.start = i;
        this.len = i2;
    }

    public Param6bReadUserdata(byte[] bArr) {
        if (bArr == null || bArr.length == 0) {
            return;
        }
        this.start = bArr[0];
        this.len = bArr[1];
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
        bitBufferAllocateDynamic.putLong(this.start, 8);
        bitBufferAllocateDynamic.putLong(this.len, 8);
        return bitBufferAllocateDynamic.asByteArray();
    }
}
