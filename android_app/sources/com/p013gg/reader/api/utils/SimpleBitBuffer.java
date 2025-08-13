package com.p013gg.reader.api.utils;

import androidx.core.view.MotionEventCompat;

/* loaded from: classes.dex */
public abstract class SimpleBitBuffer extends BitBuffer {
    protected int limit;
    protected int offset;
    private int position;
    protected int size;

    protected abstract byte rawGet(int i);

    protected abstract int rawLength();

    protected abstract void rawSet(int i, byte b);

    protected void advance(int i, boolean z) {
        int i2;
        this.position += i;
        if (!z || (i2 = this.position) <= this.size) {
            return;
        }
        this.size = i2;
    }

    @Override // com.p013gg.reader.api.utils.BitBuffer
    public BitBuffer putBoolean(boolean z) {
        int i = this.offset + this.position;
        advance(1, true);
        int i2 = i / 8;
        int i3 = i % 8;
        rawSet(i2, (byte) ((rawGet(i2) & (~(128 >>> i3))) + ((z ? 128 : 0) >>> i3)));
        return this;
    }

    @Override // com.p013gg.reader.api.utils.BitBuffer
    public BitBuffer putByte(byte b) {
        int i = this.offset + this.position;
        advance(8, true);
        int i2 = i / 8;
        int i3 = i % 8;
        int i4 = b & 255;
        rawSet(i2, (byte) (((byte) (rawGet(i2) & ((byte) (~(255 >>> i3))))) | ((byte) (i4 >>> i3))));
        if (i3 > 0) {
            rawSet(i2 + 1, (byte) (i4 << (8 - i3)));
        }
        return this;
    }

    @Override // com.p013gg.reader.api.utils.BitBuffer
    public BitBuffer putByte(byte b, int i) {
        int i2 = this.offset + this.position;
        advance(i, true);
        int i3 = 8 - i;
        byte b2 = (byte) (((b & (255 >>> i3)) << i3) & 255);
        int i4 = i2 / 8;
        int i5 = i2 % 8;
        int i6 = 8 - i5;
        int i7 = b2 & 255;
        rawSet(i4, (byte) (((i7 >>> i5) | (rawGet(i4) & (255 << i6))) & 255));
        if (i6 < i) {
            rawSet(i4 + 1, (byte) ((i7 << i6) & 255));
        }
        return this;
    }

    @Override // com.p013gg.reader.api.utils.BitBuffer
    public boolean getBoolean() {
        int i = this.offset + this.position;
        advance(1, false);
        return ((128 >>> (i % 8)) & rawGet(i / 8)) > 0;
    }

    @Override // com.p013gg.reader.api.utils.BitBuffer
    public byte getByte() {
        int i = this.offset + this.position;
        advance(8, false);
        int i2 = i / 8;
        int i3 = i % 8;
        byte bRawGet = (byte) ((rawGet(i2) & (255 >>> i3)) << i3);
        return i3 > 0 ? (byte) (((rawGet(i2 + 1) & 255) >>> (8 - i3)) | bRawGet) : bRawGet;
    }

    @Override // com.p013gg.reader.api.utils.BitBuffer
    public byte getByte(int i) {
        int i2 = this.offset + this.position;
        advance(i, false);
        boolean z = (rawGet(i2 / 8) & (128 >>> (i2 % 8))) > 0;
        int i3 = i2 + 1;
        int i4 = i - 1;
        int i5 = 8 - i4;
        int i6 = i3 % 8;
        short s = (short) (((MotionEventCompat.ACTION_POINTER_INDEX_MASK << i5) & 65535) >>> i6);
        int i7 = i3 / 8;
        byte bRawGet = (byte) ((((65280 & s) >>> 8) & rawGet(i7)) << i6);
        if (8 - i6 < i4) {
            bRawGet = (byte) ((((rawGet(i7 + 1) & (s & 255)) & 255) >>> (i4 - ((i6 + i4) - 8))) | bRawGet);
        }
        int i8 = (byte) ((bRawGet & 255) >>> i5);
        if (z) {
            i8 |= (255 << i4) & 255;
        }
        return (byte) i8;
    }

    @Override // com.p013gg.reader.api.utils.BitBuffer
    public byte getByteUnsigned(int i) {
        int i2 = this.offset + this.position;
        advance(i, false);
        int i3 = 8 - i;
        int i4 = i2 % 8;
        short s = (short) (((MotionEventCompat.ACTION_POINTER_INDEX_MASK << i3) & 65535) >>> i4);
        int i5 = i2 / 8;
        byte bRawGet = (byte) ((((65280 & s) >>> 8) & rawGet(i5)) << i4);
        if (8 - i4 < i) {
            bRawGet = (byte) ((((rawGet(i5 + 1) & (s & 255)) & 255) >>> (i - ((i4 + i) - 8))) | bRawGet);
        }
        return (byte) ((bRawGet & 255) >>> i3);
    }

    @Override // com.p013gg.reader.api.utils.BitBuffer
    public int size() {
        return this.size;
    }

    @Override // com.p013gg.reader.api.utils.BitBuffer
    public BitBuffer size(int i) {
        this.size = i;
        return this;
    }

    @Override // com.p013gg.reader.api.utils.BitBuffer
    public int limit() {
        return rawLength();
    }

    @Override // com.p013gg.reader.api.utils.BitBuffer
    public int position() {
        return this.position;
    }

    @Override // com.p013gg.reader.api.utils.BitBuffer
    public int hashCode() {
        return 31 + size();
    }

    @Override // com.p013gg.reader.api.utils.BitBuffer
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof BitBuffer)) {
            return false;
        }
        BitBuffer bitBuffer = (BitBuffer) obj;
        int size = size();
        if (size() != bitBuffer.size()) {
            return false;
        }
        int iPosition = position();
        int iPosition2 = bitBuffer.position();
        int i = 0;
        while (i < size) {
            if (size - i > 7) {
                try {
                    if (getByte() != bitBuffer.getByte()) {
                        return false;
                    }
                    i += 7;
                } finally {
                    position(iPosition);
                    bitBuffer.position(iPosition2);
                }
            } else {
                i++;
                if (getBoolean() != bitBuffer.getBoolean()) {
                    return false;
                }
            }
        }
        return true;
    }

    @Override // com.p013gg.reader.api.utils.BitBuffer
    public BitBuffer position(int i) {
        this.position = i;
        return this;
    }

    public int offset() {
        return this.offset;
    }
}
