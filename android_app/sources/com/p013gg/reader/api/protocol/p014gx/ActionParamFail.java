package com.p013gg.reader.api.protocol.p014gx;

import com.p013gg.reader.api.utils.BitBuffer;

/* loaded from: classes.dex */
public class ActionParamFail extends Parameter {
    private int gpo1;
    private int gpo2;
    private int gpo3;
    private int gpo4;
    private int keepTime;

    public ActionParamFail() {
        this.keepTime = 0;
        this.gpo1 = Integer.MAX_VALUE;
        this.gpo2 = Integer.MAX_VALUE;
        this.gpo3 = Integer.MAX_VALUE;
        this.gpo4 = Integer.MAX_VALUE;
    }

    public ActionParamFail(byte[] bArr) {
        this.keepTime = 0;
        this.gpo1 = Integer.MAX_VALUE;
        this.gpo2 = Integer.MAX_VALUE;
        this.gpo3 = Integer.MAX_VALUE;
        this.gpo4 = Integer.MAX_VALUE;
        if (bArr == null || bArr.length == 0) {
            return;
        }
        BitBuffer bitBufferWrap = BitBuffer.wrap(bArr);
        bitBufferWrap.position(0);
        this.keepTime = bitBufferWrap.getIntUnsigned(16);
        while (bitBufferWrap.position() / 8 < bArr.length) {
            int intUnsigned = bitBufferWrap.getIntUnsigned(8);
            if (intUnsigned == 1) {
                this.gpo1 = bitBufferWrap.getIntUnsigned(8);
            } else if (intUnsigned == 2) {
                this.gpo2 = bitBufferWrap.getIntUnsigned(8);
            } else if (intUnsigned == 3) {
                this.gpo3 = bitBufferWrap.getIntUnsigned(8);
            } else if (intUnsigned == 4) {
                this.gpo4 = bitBufferWrap.getIntUnsigned(8);
            }
        }
    }

    public int getKeepTime() {
        return this.keepTime;
    }

    public void setKeepTime(int i) {
        this.keepTime = i;
    }

    public int getGpo1() {
        return this.gpo1;
    }

    public void setGpo1(int i) {
        this.gpo1 = i;
    }

    public int getGpo2() {
        return this.gpo2;
    }

    public void setGpo2(int i) {
        this.gpo2 = i;
    }

    public int getGpo3() {
        return this.gpo3;
    }

    public void setGpo3(int i) {
        this.gpo3 = i;
    }

    public int getGpo4() {
        return this.gpo4;
    }

    public void setGpo4(int i) {
        this.gpo4 = i;
    }

    @Override // com.p013gg.reader.api.protocol.p014gx.Parameter
    public byte[] toBytes() {
        BitBuffer bitBufferAllocateDynamic = BitBuffer.allocateDynamic();
        bitBufferAllocateDynamic.putLong(this.keepTime, 16);
        if (Integer.MAX_VALUE != this.gpo1) {
            bitBufferAllocateDynamic.putInt(1, 8);
            bitBufferAllocateDynamic.putInt(this.gpo1, 8);
        }
        if (Integer.MAX_VALUE != this.gpo2) {
            bitBufferAllocateDynamic.putInt(2, 8);
            bitBufferAllocateDynamic.putInt(this.gpo2, 8);
        }
        if (Integer.MAX_VALUE != this.gpo3) {
            bitBufferAllocateDynamic.putInt(3, 8);
            bitBufferAllocateDynamic.putInt(this.gpo3, 8);
        }
        if (Integer.MAX_VALUE != this.gpo4) {
            bitBufferAllocateDynamic.putInt(4, 8);
            bitBufferAllocateDynamic.putInt(this.gpo4, 8);
        }
        return bitBufferAllocateDynamic.asByteArray();
    }

    public String toString() {
        return "ActionParamFail{keepTime=" + this.keepTime + ", gpo1=" + this.gpo1 + ", gpo2=" + this.gpo2 + ", gpo3=" + this.gpo3 + ", gpo4=" + this.gpo4 + '}';
    }
}
