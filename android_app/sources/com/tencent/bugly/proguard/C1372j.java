package com.tencent.bugly.proguard;

import cn.highlight.core.utils.ExcelUtils;
import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* compiled from: BUGLY */
/* renamed from: com.tencent.bugly.proguard.j */
/* loaded from: classes.dex */
public final class C1372j {

    /* renamed from: a */
    private ByteBuffer f979a;

    /* renamed from: b */
    private String f980b;

    public C1372j(int i) {
        this.f980b = ExcelUtils.GBK_ENCODING;
        this.f979a = ByteBuffer.allocate(i);
    }

    public C1372j() {
        this(128);
    }

    /* renamed from: a */
    public final ByteBuffer m667a() {
        return this.f979a;
    }

    /* renamed from: b */
    public final byte[] m679b() {
        byte[] bArr = new byte[this.f979a.position()];
        System.arraycopy(this.f979a.array(), 0, bArr, 0, this.f979a.position());
        return bArr;
    }

    /* renamed from: a */
    private void m664a(int i) {
        if (this.f979a.remaining() < i) {
            ByteBuffer byteBufferAllocate = ByteBuffer.allocate((this.f979a.capacity() + i) << 1);
            byteBufferAllocate.put(this.f979a.array(), 0, this.f979a.position());
            this.f979a = byteBufferAllocate;
        }
    }

    /* renamed from: b */
    private void m665b(byte b, int i) {
        if (i < 15) {
            this.f979a.put((byte) (b | (i << 4)));
        } else if (i < 256) {
            this.f979a.put((byte) (b | 240));
            this.f979a.put((byte) i);
        } else {
            throw new C1364b("tag is too large: " + i);
        }
    }

    /* renamed from: a */
    public final void m677a(boolean z, int i) {
        m668a(z ? (byte) 1 : (byte) 0, i);
    }

    /* renamed from: a */
    public final void m668a(byte b, int i) {
        m664a(3);
        if (b == 0) {
            m665b((byte) 12, i);
        } else {
            m665b((byte) 0, i);
            this.f979a.put(b);
        }
    }

    /* renamed from: a */
    public final void m676a(short s, int i) {
        m664a(4);
        if (s >= -128 && s <= 127) {
            m668a((byte) s, i);
        } else {
            m665b((byte) 1, i);
            this.f979a.putShort(s);
        }
    }

    /* renamed from: a */
    public final void m669a(int i, int i2) {
        m664a(6);
        if (i >= -32768 && i <= 32767) {
            m676a((short) i, i2);
        } else {
            m665b((byte) 2, i2);
            this.f979a.putInt(i);
        }
    }

    /* renamed from: a */
    public final void m670a(long j, int i) {
        m664a(10);
        if (j >= -2147483648L && j <= 2147483647L) {
            m669a((int) j, i);
        } else {
            m665b((byte) 3, i);
            this.f979a.putLong(j);
        }
    }

    /* renamed from: a */
    public final void m673a(String str, int i) throws UnsupportedEncodingException {
        byte[] bytes;
        try {
            bytes = str.getBytes(this.f980b);
        } catch (UnsupportedEncodingException unused) {
            bytes = str.getBytes();
        }
        m664a(bytes.length + 10);
        if (bytes.length > 255) {
            m665b((byte) 7, i);
            this.f979a.putInt(bytes.length);
            this.f979a.put(bytes);
        } else {
            m665b((byte) 6, i);
            this.f979a.put((byte) bytes.length);
            this.f979a.put(bytes);
        }
    }

    /* renamed from: a */
    public final <K, V> void m675a(Map<K, V> map, int i) throws UnsupportedEncodingException {
        m664a(8);
        m665b((byte) 8, i);
        m669a(map == null ? 0 : map.size(), 0);
        if (map != null) {
            for (Map.Entry<K, V> entry : map.entrySet()) {
                m672a(entry.getKey(), 0);
                m672a(entry.getValue(), 1);
            }
        }
    }

    /* renamed from: a */
    public final void m678a(byte[] bArr, int i) {
        m664a(bArr.length + 8);
        m665b((byte) 13, i);
        m665b((byte) 0, 0);
        m669a(bArr.length, 0);
        this.f979a.put(bArr);
    }

    /* renamed from: a */
    public final <T> void m674a(Collection<T> collection, int i) throws UnsupportedEncodingException {
        m664a(8);
        m665b((byte) 9, i);
        m669a(collection == null ? 0 : collection.size(), 0);
        if (collection != null) {
            Iterator<T> it = collection.iterator();
            while (it.hasNext()) {
                m672a(it.next(), 0);
            }
        }
    }

    /* renamed from: a */
    public final void m671a(AbstractC1373k abstractC1373k, int i) {
        m664a(2);
        m665b((byte) 10, i);
        abstractC1373k.mo617a(this);
        m664a(2);
        m665b((byte) 11, 0);
    }

    /* renamed from: a */
    public final void m672a(Object obj, int i) throws UnsupportedEncodingException {
        if (obj instanceof Byte) {
            m668a(((Byte) obj).byteValue(), i);
            return;
        }
        if (obj instanceof Boolean) {
            m668a(((Boolean) obj).booleanValue() ? (byte) 1 : (byte) 0, i);
            return;
        }
        if (obj instanceof Short) {
            m676a(((Short) obj).shortValue(), i);
            return;
        }
        if (obj instanceof Integer) {
            m669a(((Integer) obj).intValue(), i);
            return;
        }
        if (obj instanceof Long) {
            m670a(((Long) obj).longValue(), i);
            return;
        }
        if (obj instanceof Float) {
            float fFloatValue = ((Float) obj).floatValue();
            m664a(6);
            m665b((byte) 4, i);
            this.f979a.putFloat(fFloatValue);
            return;
        }
        if (obj instanceof Double) {
            double dDoubleValue = ((Double) obj).doubleValue();
            m664a(10);
            m665b((byte) 5, i);
            this.f979a.putDouble(dDoubleValue);
            return;
        }
        if (obj instanceof String) {
            m673a((String) obj, i);
            return;
        }
        if (obj instanceof Map) {
            m675a((Map) obj, i);
            return;
        }
        if (obj instanceof List) {
            m674a((Collection) obj, i);
            return;
        }
        if (obj instanceof AbstractC1373k) {
            m664a(2);
            m665b((byte) 10, i);
            ((AbstractC1373k) obj).mo617a(this);
            m664a(2);
            m665b((byte) 11, 0);
            return;
        }
        if (obj instanceof byte[]) {
            m678a((byte[]) obj, i);
            return;
        }
        if (obj instanceof boolean[]) {
            boolean[] zArr = (boolean[]) obj;
            m664a(8);
            m665b((byte) 9, i);
            m669a(zArr.length, 0);
            for (boolean z : zArr) {
                m668a(z ? (byte) 1 : (byte) 0, 0);
            }
            return;
        }
        if (obj instanceof short[]) {
            short[] sArr = (short[]) obj;
            m664a(8);
            m665b((byte) 9, i);
            m669a(sArr.length, 0);
            for (short s : sArr) {
                m676a(s, 0);
            }
            return;
        }
        if (obj instanceof int[]) {
            int[] iArr = (int[]) obj;
            m664a(8);
            m665b((byte) 9, i);
            m669a(iArr.length, 0);
            for (int i2 : iArr) {
                m669a(i2, 0);
            }
            return;
        }
        if (obj instanceof long[]) {
            long[] jArr = (long[]) obj;
            m664a(8);
            m665b((byte) 9, i);
            m669a(jArr.length, 0);
            for (long j : jArr) {
                m670a(j, 0);
            }
            return;
        }
        if (obj instanceof float[]) {
            float[] fArr = (float[]) obj;
            m664a(8);
            m665b((byte) 9, i);
            m669a(fArr.length, 0);
            for (float f : fArr) {
                m664a(6);
                m665b((byte) 4, 0);
                this.f979a.putFloat(f);
            }
            return;
        }
        if (obj instanceof double[]) {
            double[] dArr = (double[]) obj;
            m664a(8);
            m665b((byte) 9, i);
            m669a(dArr.length, 0);
            for (double d : dArr) {
                m664a(10);
                m665b((byte) 5, 0);
                this.f979a.putDouble(d);
            }
            return;
        }
        if (obj.getClass().isArray()) {
            Object[] objArr = (Object[]) obj;
            m664a(8);
            m665b((byte) 9, i);
            m669a(objArr.length, 0);
            for (Object obj2 : objArr) {
                m672a(obj2, 0);
            }
            return;
        }
        if (obj instanceof Collection) {
            m674a((Collection) obj, i);
        } else {
            throw new C1364b("write object error: unsupport type. " + obj.getClass());
        }
    }

    /* renamed from: a */
    public final int m666a(String str) {
        this.f980b = str;
        return 0;
    }
}
