package com.p013gg.reader.api.utils;

/* loaded from: classes.dex */
public class ArrayBitBuffer extends SimpleBitBuffer {
    private byte[] bytes;

    protected ArrayBitBuffer(byte[] bArr, int i, int i2) {
        this.bytes = bArr;
        this.limit = i;
        this.offset = i2;
        this.size = i;
    }

    protected ArrayBitBuffer(int i) {
        long j = i;
        this.bytes = new byte[(int) ((j + (8 - (j % 8))) / 8)];
        this.limit = i;
        this.size = this.limit;
    }

    protected ArrayBitBuffer(byte[] bArr) {
        this.bytes = bArr;
        this.limit = bArr.length * 8;
        this.size = this.limit;
    }

    @Override // com.p013gg.reader.api.utils.SimpleBitBuffer
    protected byte rawGet(int i) {
        return this.bytes[i];
    }

    @Override // com.p013gg.reader.api.utils.SimpleBitBuffer
    protected void rawSet(int i, byte b) {
        this.bytes[i] = b;
    }

    @Override // com.p013gg.reader.api.utils.SimpleBitBuffer
    protected int rawLength() {
        return this.limit;
    }

    @Override // com.p013gg.reader.api.utils.SimpleBitBuffer, com.p013gg.reader.api.utils.BitBuffer
    public int limit() {
        return this.limit;
    }

    @Override // com.p013gg.reader.api.utils.BitBuffer
    public BitBuffer slice() {
        return new ArrayBitBuffer(this.bytes, size() - position(), this.offset + position());
    }

    @Override // com.p013gg.reader.api.utils.BitBuffer
    public BitBuffer slice(int i, int i2) {
        return new ArrayBitBuffer(this.bytes, Math.min(i2, size() - i), this.offset + i);
    }

    @Override // com.p013gg.reader.api.utils.BitBuffer
    public BitBuffer slice(int i) {
        return slice(i, size() - i);
    }
}
