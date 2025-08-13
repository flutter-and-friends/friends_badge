package com.p013gg.reader.api.protocol.p014gx;

import com.p013gg.reader.api.utils.BitBuffer;

/* loaded from: classes.dex */
public class ParamGbReadUserdata extends Parameter {
    private int childArea;
    private int len;
    private int start;

    public ParamGbReadUserdata() {
    }

    public ParamGbReadUserdata(int i, int i2, int i3) {
        this.childArea = i;
        this.start = i2;
        this.len = i3;
    }

    public ParamGbReadUserdata(byte[] bArr) {
        if (bArr == null || bArr.length == 0) {
            return;
        }
        BitBuffer bitBufferWrap = BitBuffer.wrap(bArr);
        bitBufferWrap.position(0);
        this.childArea = bitBufferWrap.getIntUnsigned(8);
        this.start = bitBufferWrap.getIntUnsigned(16);
        this.len = bitBufferWrap.getIntUnsigned(8);
    }

    public int getChildArea() {
        return this.childArea;
    }

    public void setChildArea(int i) {
        this.childArea = i;
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
        bitBufferAllocateDynamic.putInt(this.childArea, 8);
        bitBufferAllocateDynamic.putInt(this.start, 16);
        bitBufferAllocateDynamic.putInt(this.len, 8);
        return bitBufferAllocateDynamic.asByteArray();
    }
}
