package com.p013gg.reader.api.utils;

/* loaded from: classes.dex */
public class DynamicBitBuffer extends SimpleBitBuffer {
    private static final int DEFAULT_CAPACITY = 256;
    private byte[] bytes;

    protected DynamicBitBuffer() {
        this.bytes = new byte[256];
    }

    protected DynamicBitBuffer(int i) {
        this.bytes = new byte[toBytes(i)];
    }

    private static int toBytes(int i) {
        return (i + (8 - (i % 8))) / 8;
    }

    @Override // com.p013gg.reader.api.utils.SimpleBitBuffer
    protected byte rawGet(int i) {
        if (i >= this.bytes.length) {
            ensureCapacity(i + 1);
        }
        return this.bytes[i];
    }

    private void ensureCapacity(int i) {
        byte[] bArr = new byte[i];
        byte[] bArr2 = this.bytes;
        System.arraycopy(bArr2, 0, bArr, 0, bArr2.length);
        this.bytes = bArr;
    }

    @Override // com.p013gg.reader.api.utils.SimpleBitBuffer
    protected void rawSet(int i, byte b) {
        if (i >= this.bytes.length) {
            ensureCapacity(i + 1);
        }
        this.bytes[i] = b;
    }

    @Override // com.p013gg.reader.api.utils.SimpleBitBuffer
    protected int rawLength() {
        return this.bytes.length * 8;
    }

    @Override // com.p013gg.reader.api.utils.BitBuffer
    public BitBuffer slice() {
        return new ArrayBitBuffer(this.bytes, size() - position(), position());
    }

    @Override // com.p013gg.reader.api.utils.BitBuffer
    public BitBuffer slice(int i, int i2) {
        return new ArrayBitBuffer(this.bytes, Math.min(i2, size() - i), i);
    }

    @Override // com.p013gg.reader.api.utils.BitBuffer
    public BitBuffer slice(int i) {
        return slice(i, size() - i);
    }
}
