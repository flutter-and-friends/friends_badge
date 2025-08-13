package com.p013gg.reader.api.protocol.p014gx;

import com.p013gg.reader.api.utils.BitBuffer;

/* loaded from: classes.dex */
public class ParamGbBaseSpeed extends Parameter {

    /* renamed from: LS */
    int f360LS;
    int RLC;
    int RLF;

    /* renamed from: Tc */
    int f361Tc;

    public ParamGbBaseSpeed() {
    }

    public ParamGbBaseSpeed(int i, int i2, int i3, int i4) {
        this.f361Tc = i;
        this.f360LS = i2;
        this.RLF = i3;
        this.RLC = i4;
    }

    public int getTc() {
        return this.f361Tc;
    }

    public void setTc(int i) {
        this.f361Tc = i;
    }

    public int getLS() {
        return this.f360LS;
    }

    public void setLS(int i) {
        this.f360LS = i;
    }

    public int getRLF() {
        return this.RLF;
    }

    public void setRLF(int i) {
        this.RLF = i;
    }

    public int getRLC() {
        return this.RLC;
    }

    public void setRLC(int i) {
        this.RLC = i;
    }

    public ParamGbBaseSpeed(byte[] bArr) {
        if (bArr == null) {
            return;
        }
        try {
            BitBuffer bitBufferWrap = BitBuffer.wrap(bArr);
            bitBufferWrap.position(0);
            this.f361Tc = bitBufferWrap.getIntUnsigned(1);
            this.f360LS = bitBufferWrap.getIntUnsigned(1);
            this.RLF = bitBufferWrap.getIntUnsigned(4);
            this.RLC = bitBufferWrap.getIntUnsigned(2);
        } catch (Exception unused) {
        }
    }

    @Override // com.p013gg.reader.api.protocol.p014gx.Parameter
    public byte[] toBytes() {
        BitBuffer bitBufferAllocateDynamic = BitBuffer.allocateDynamic();
        bitBufferAllocateDynamic.putLong(this.f361Tc, 1);
        bitBufferAllocateDynamic.putLong(this.f360LS, 1);
        bitBufferAllocateDynamic.putLong(this.RLF, 4);
        bitBufferAllocateDynamic.putLong(this.RLC, 2);
        return bitBufferAllocateDynamic.asByteArray();
    }

    public String toString() {
        return "ParamGbBaseSpeed{Tc=" + this.f361Tc + ", LS=" + this.f360LS + ", RLF=" + this.RLF + ", RLC=" + this.RLC + '}';
    }
}
