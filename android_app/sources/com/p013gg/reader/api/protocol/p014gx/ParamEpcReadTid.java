package com.p013gg.reader.api.protocol.p014gx;

import com.p013gg.reader.api.utils.BitBuffer;

/* loaded from: classes.dex */
public class ParamEpcReadTid extends Parameter {
    private int len;
    private int mode;

    public ParamEpcReadTid() {
    }

    public ParamEpcReadTid(int i, int i2) {
        this.mode = i;
        this.len = i2;
    }

    public int getMode() {
        return this.mode;
    }

    public void setMode(int i) {
        this.mode = i;
    }

    public int getLen() {
        return this.len;
    }

    public void setLen(int i) {
        this.len = i;
    }

    public ParamEpcReadTid(byte[] bArr) {
        if (bArr == null || bArr.length == 0) {
            return;
        }
        this.mode = bArr[0];
        this.len = bArr[1];
    }

    @Override // com.p013gg.reader.api.protocol.p014gx.Parameter
    public byte[] toBytes() {
        BitBuffer bitBufferAllocateDynamic = BitBuffer.allocateDynamic();
        bitBufferAllocateDynamic.putLong(this.mode, 8);
        bitBufferAllocateDynamic.putLong(this.len, 8);
        return bitBufferAllocateDynamic.asByteArray();
    }
}
