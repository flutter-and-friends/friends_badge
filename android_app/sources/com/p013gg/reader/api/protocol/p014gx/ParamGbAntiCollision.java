package com.p013gg.reader.api.protocol.p014gx;

import com.p013gg.reader.api.utils.BitBuffer;

/* loaded from: classes.dex */
public class ParamGbAntiCollision extends Parameter {
    int CCN;
    int CIN;

    public ParamGbAntiCollision() {
    }

    public ParamGbAntiCollision(int i, int i2) {
        this.CIN = i;
        this.CCN = i2;
    }

    public int getCIN() {
        return this.CIN;
    }

    public void setCIN(int i) {
        this.CIN = i;
    }

    public int getCCN() {
        return this.CCN;
    }

    public void setCCN(int i) {
        this.CCN = i;
    }

    public ParamGbAntiCollision(byte[] bArr) {
        if (bArr == null) {
            return;
        }
        try {
            BitBuffer bitBufferWrap = BitBuffer.wrap(bArr);
            bitBufferWrap.position(0);
            this.CIN = bitBufferWrap.getIntUnsigned(4);
            this.CCN = bitBufferWrap.getIntUnsigned(4);
        } catch (Exception unused) {
        }
    }

    @Override // com.p013gg.reader.api.protocol.p014gx.Parameter
    public byte[] toBytes() {
        BitBuffer bitBufferAllocateDynamic = BitBuffer.allocateDynamic();
        bitBufferAllocateDynamic.putLong(this.CIN, 4);
        bitBufferAllocateDynamic.putLong(this.CCN, 4);
        return bitBufferAllocateDynamic.asByteArray();
    }

    public String toString() {
        return "ParamGbAntiCollision{CIN=" + this.CIN + ", CCN=" + this.CCN + '}';
    }
}
