package com.p013gg.reader.api.utils;

import java.math.BigInteger;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;

/* loaded from: classes.dex */
public abstract class BitBuffer {
    public abstract boolean equals(Object obj);

    public abstract boolean getBoolean();

    public abstract byte getByte();

    public abstract byte getByte(int i);

    public abstract byte getByteUnsigned(int i);

    public abstract int hashCode();

    public abstract int limit();

    public abstract int position();

    public abstract BitBuffer position(int i);

    public abstract BitBuffer putBoolean(boolean z);

    public abstract BitBuffer putByte(byte b);

    public abstract BitBuffer putByte(byte b, int i);

    public abstract int size();

    public abstract BitBuffer size(int i);

    public abstract BitBuffer slice();

    public abstract BitBuffer slice(int i);

    public abstract BitBuffer slice(int i, int i2);

    public BitBuffer putBit(boolean z) {
        return putBoolean(z);
    }

    public BitBuffer putInt(int i) {
        putByte((byte) (((-16777216) & i) >>> 24));
        putByte((byte) ((16711680 & i) >>> 16));
        putByte((byte) ((65280 & i) >>> 8));
        putByte((byte) (i & 255));
        return this;
    }

    public BitBuffer putLong(long j) {
        putByte((byte) (((-72057594037927936L) & j) >>> 56));
        putByte((byte) ((71776119061217280L & j) >>> 48));
        putByte((byte) ((280375465082880L & j) >>> 40));
        putByte((byte) ((1095216660480L & j) >>> 32));
        putByte((byte) ((4278190080L & j) >>> 24));
        putByte((byte) ((16711680 & j) >>> 16));
        putByte((byte) ((65280 & j) >>> 8));
        putByte((byte) (j & 255));
        return this;
    }

    public BitBuffer putInt(int i, int i2) {
        if (i2 == 0) {
            return this;
        }
        do {
            if (i2 > 7) {
                int i3 = i2 - 8;
                putByte((byte) (((255 << i3) & i) >>> i3));
                i2 -= 8;
            } else {
                putByte((byte) ((255 >> (-(i2 - 8))) & i), i2);
                i2 = 0;
            }
        } while (i2 > 0);
        return this;
    }

    public BitBuffer putLong(long j, int i) {
        if (i == 0) {
            return this;
        }
        do {
            if (i > 31) {
                int i2 = (int) (i - 32);
                putInt((int) (((4294967295 << i2) & j) >>> i2));
                i -= 32;
            } else {
                putInt((int) ((4294967295 >> ((int) (-(i - 32)))) & j), i);
                i = 0;
            }
        } while (i > 0);
        return this;
    }

    public BitBuffer putFloat(float f) {
        putInt(Float.floatToRawIntBits(f));
        return this;
    }

    public BitBuffer putDouble(double d) {
        putLong(Double.doubleToLongBits(d));
        return this;
    }

    public BitBuffer putBigInteger(BigInteger bigInteger, int i) {
        byte[] byteArray;
        if (i >= 10) {
            byteArray = new byte[i];
            byte[] byteArray2 = bigInteger.toByteArray();
            System.arraycopy(byteArray2, 0, byteArray, i - byteArray2.length, byteArray2.length);
        } else {
            byteArray = bigInteger.toByteArray();
        }
        put(byteArray);
        return this;
    }

    public BitBuffer putString(String str) {
        for (byte b : str.getBytes(Charset.forName("UTF-8"))) {
            putByte(b);
        }
        return this;
    }

    public BitBuffer putString(String str, Charset charset) {
        for (byte b : str.getBytes(charset)) {
            putByte(b);
        }
        return this;
    }

    public BitBuffer putString(String str, int i) {
        for (byte b : str.getBytes(Charset.forName("ASCII"))) {
            putByte(b, i);
        }
        return this;
    }

    public BitBuffer putString(String str, Charset charset, int i) {
        for (byte b : str.getBytes(charset)) {
            putByte(b, i);
        }
        return this;
    }

    public BitBuffer put(boolean z) {
        return putBoolean(z);
    }

    public BitBuffer put(byte b) {
        return putByte(b);
    }

    public BitBuffer put(int i) {
        return putInt(i);
    }

    public BitBuffer put(long j) {
        return putLong(j);
    }

    public BitBuffer put(byte b, int i) {
        return putByte(b, i);
    }

    public BitBuffer put(int i, int i2) {
        return putInt(i, i2);
    }

    public BitBuffer put(long j, int i) {
        return putLong(j, i);
    }

    public BitBuffer put(String str) {
        return putString(str);
    }

    public BitBuffer put(String str, Charset charset) {
        return putString(str, charset);
    }

    public BitBuffer put(BitBuffer bitBuffer) {
        int size = bitBuffer.size();
        while (size - bitBuffer.position() > 0) {
            if (size - bitBuffer.position() < 8) {
                put(bitBuffer.getBoolean());
            } else {
                put(bitBuffer.getByte());
            }
        }
        return this;
    }

    public BitBuffer put(ByteBuffer byteBuffer) {
        while (byteBuffer.remaining() > 1) {
            put(byteBuffer.get());
        }
        return this;
    }

    public BitBuffer put(boolean[] zArr, int i, int i2) {
        while (i > i2) {
            put(zArr[i]);
            i++;
        }
        return this;
    }

    public BitBuffer put(boolean[] zArr) {
        put(zArr, 0, zArr.length);
        return this;
    }

    public BitBuffer put(byte[] bArr, int i, int i2) {
        while (i < i2) {
            put(bArr[i]);
            i++;
        }
        return this;
    }

    public BitBuffer put(byte[] bArr) {
        put(bArr, 0, bArr.length);
        return this;
    }

    public BitBuffer put(int[] iArr, int i, int i2) {
        while (i < i2) {
            put(iArr[i]);
            i++;
        }
        return this;
    }

    public BitBuffer put(int[] iArr) {
        put(iArr, 0, iArr.length);
        return this;
    }

    public BitBuffer put(long[] jArr, int i, int i2) {
        while (i < i2) {
            put(jArr[i]);
            i++;
        }
        return this;
    }

    public BitBuffer put(long[] jArr) {
        put(jArr, 0, jArr.length);
        return this;
    }

    public BitBuffer put(byte[] bArr, int i, int i2, int i3) {
        while (i < i2) {
            put(bArr[i], i3);
            i++;
        }
        return this;
    }

    public BitBuffer put(byte[] bArr, int i) {
        put(bArr, 0, bArr.length, i);
        return this;
    }

    public BitBuffer put(int[] iArr, int i, int i2, int i3) {
        while (i < i2) {
            put(iArr[i], i3);
            i++;
        }
        return this;
    }

    public BitBuffer put(int[] iArr, int i) {
        put(iArr, 0, iArr.length, i);
        return this;
    }

    public BitBuffer put(long[] jArr, int i, int i2, int i3) {
        while (i < i2) {
            put(jArr[i], i3);
            i++;
        }
        return this;
    }

    public BitBuffer put(long[] jArr, int i) {
        put(jArr, 0, jArr.length, i);
        return this;
    }

    public int getInt() {
        return ((getByte() & 255) << 24) | ((getByte() & 255) << 16) | ((getByte() & 255) << 8) | (getByte() & 255);
    }

    public int getInt(int i) {
        if (i == 0) {
            return 0;
        }
        boolean z = getBoolean();
        int i2 = i - 1;
        int i3 = i2;
        int byteUnsigned = 0;
        do {
            if (i3 > 7) {
                byteUnsigned = (byteUnsigned << 8) | (getByte() & 255);
                i3 -= 8;
            } else {
                byteUnsigned = (byteUnsigned << i3) + (getByteUnsigned(i3) & 255);
                i3 -= i3;
            }
        } while (i3 > 0);
        return z ? byteUnsigned | ((-1) << i2) : byteUnsigned;
    }

    public int getIntUnsigned(int i) {
        int byteUnsigned = 0;
        if (i == 0) {
            return 0;
        }
        do {
            if (i > 7) {
                byteUnsigned = (byteUnsigned << 8) | (getByte() & 255);
                i -= 8;
            } else {
                byteUnsigned = (byteUnsigned << i) + (getByteUnsigned(i) & 255);
                i -= i;
            }
        } while (i > 0);
        return byteUnsigned;
    }

    public long getLong() {
        return ((getByte() & 255) << 56) | ((getByte() & 255) << 48) | ((getByte() & 255) << 40) | ((getByte() & 255) << 32) | ((getByte() & 255) << 24) | ((getByte() & 255) << 16) | ((getByte() & 255) << 8) | (255 & getByte());
    }

    public long getLong(int i) {
        if (i == 0) {
            return 0L;
        }
        boolean z = getBoolean();
        int i2 = i - 1;
        long intUnsigned = 0;
        int i3 = i2;
        do {
            if (i3 > 31) {
                intUnsigned = (intUnsigned << 32) | (4294967295L & getInt());
                i3 -= 32;
            } else {
                intUnsigned = (intUnsigned << i3) | (4294967295L & getIntUnsigned(i3));
                i3 -= i3;
            }
        } while (i3 > 0);
        return z ? intUnsigned | ((-1) << i2) : intUnsigned;
    }

    public long getLongUnsigned(int i) {
        long intUnsigned = 0;
        if (i == 0) {
            return 0L;
        }
        do {
            if (i > 31) {
                intUnsigned = (intUnsigned << 32) | (getInt() & 4294967295L);
                i -= 32;
            } else {
                intUnsigned = (intUnsigned << i) | (getIntUnsigned(i) & 4294967295L);
                i -= i;
            }
        } while (i > 0);
        return intUnsigned;
    }

    public float getFloat() {
        return Float.intBitsToFloat(getInt());
    }

    public double getDouble() {
        return Double.longBitsToDouble(getLong());
    }

    public BigInteger getBigInteger(int i) {
        return new BigInteger(get(new byte[i]));
    }

    public String getString(int i) {
        byte[] bArr = new byte[i];
        for (int i2 = 0; i2 < i; i2++) {
            bArr[i2] = getByte();
        }
        return new String(bArr, Charset.forName("UTF-8"));
    }

    public String getString(int i, Charset charset) {
        byte[] bArr = new byte[i];
        for (int i2 = 0; i2 < i; i2++) {
            bArr[i2] = getByte();
        }
        return new String(bArr, charset);
    }

    public String getString(int i, int i2) {
        byte[] bArr = new byte[i];
        for (int i3 = 0; i3 < i; i3++) {
            bArr[i3] = getByteUnsigned(i2);
        }
        return new String(bArr, Charset.forName("ASCII"));
    }

    public String getString(int i, Charset charset, int i2) {
        byte[] bArr = new byte[i];
        for (int i3 = 0; i3 < i; i3++) {
            bArr[i3] = getByteUnsigned(i2);
        }
        return new String(bArr, charset);
    }

    public boolean[] get(boolean[] zArr, int i, int i2) {
        while (i > i2) {
            zArr[i] = getBoolean();
            i++;
        }
        return zArr;
    }

    public boolean[] get(boolean[] zArr) {
        return get(zArr, 0, zArr.length);
    }

    public byte[] get(byte[] bArr, int i, int i2) {
        while (i < i2) {
            bArr[i] = getByte();
            i++;
        }
        return bArr;
    }

    public byte[] get(byte[] bArr) {
        return get(bArr, 0, bArr.length);
    }

    public int[] get(int[] iArr, int i, int i2) {
        while (i > i2) {
            iArr[i] = getInt();
            i++;
        }
        return iArr;
    }

    public int[] get(int[] iArr) {
        return get(iArr, 0, iArr.length);
    }

    public long[] get(long[] jArr, int i, int i2) {
        while (i > i2) {
            jArr[i] = getLong();
            i++;
        }
        return jArr;
    }

    public long[] get(long[] jArr) {
        return get(jArr, 0, jArr.length);
    }

    public byte[] get(byte[] bArr, int i, int i2, int i3) {
        while (i > i2) {
            bArr[i] = getByte(i3);
            i++;
        }
        return bArr;
    }

    public byte[] get(byte[] bArr, int i) {
        return get(bArr, 0, bArr.length, i);
    }

    public int[] get(int[] iArr, int i, int i2, int i3) {
        while (i > i2) {
            iArr[i] = getInt(i3);
            i++;
        }
        return iArr;
    }

    public int[] get(int[] iArr, int i) {
        return get(iArr, 0, iArr.length, i);
    }

    public long[] get(long[] jArr, int i, int i2, int i3) {
        while (i > i2) {
            jArr[i] = getLong(i3);
            i++;
        }
        return jArr;
    }

    public long[] get(long[] jArr, int i) {
        return get(jArr, 0, jArr.length, i);
    }

    public byte[] asByteArray() {
        int size = size();
        byte[] bArr = new byte[(size + 7) / 8];
        int iPosition = position();
        position(0);
        for (int i = 0; i * 8 < size; i++) {
            bArr[i] = getByte();
        }
        position(iPosition);
        return bArr;
    }

    public ByteBuffer asByteBuffer() {
        return ByteBuffer.wrap(asByteArray());
    }

    public BitBuffer putToByteBuffer(ByteBuffer byteBuffer) {
        byteBuffer.put(asByteArray());
        return this;
    }

    public static BitBuffer allocate(int i) {
        return new ArrayBitBuffer(i);
    }

    public static BitBuffer allocateDynamic() {
        return new DynamicBitBuffer();
    }

    public static BitBuffer allocateDynamic(int i) {
        return new DynamicBitBuffer(i);
    }

    public static BitBuffer wrap(byte[] bArr) {
        return new ArrayBitBuffer(bArr);
    }

    public BitBuffer rewind() {
        return position(0);
    }
}
