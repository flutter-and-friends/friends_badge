package com.tencent.bugly.proguard;

import cn.highlight.core.utils.ExcelUtils;
import java.io.UnsupportedEncodingException;
import java.lang.reflect.Array;
import java.nio.BufferUnderflowException;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* compiled from: BUGLY */
/* renamed from: com.tencent.bugly.proguard.i */
/* loaded from: classes.dex */
public final class C1371i {

    /* renamed from: a */
    private ByteBuffer f975a;

    /* renamed from: b */
    private String f976b = ExcelUtils.GBK_ENCODING;

    /* compiled from: BUGLY */
    /* renamed from: com.tencent.bugly.proguard.i$a */
    public static class a {

        /* renamed from: a */
        public byte f977a;

        /* renamed from: b */
        public int f978b;
    }

    public C1371i() {
    }

    public C1371i(byte[] bArr) {
        this.f975a = ByteBuffer.wrap(bArr);
    }

    public C1371i(byte[] bArr, int i) {
        this.f975a = ByteBuffer.wrap(bArr);
        this.f975a.position(4);
    }

    /* renamed from: a */
    public final void m660a(byte[] bArr) {
        ByteBuffer byteBuffer = this.f975a;
        if (byteBuffer != null) {
            byteBuffer.clear();
        }
        this.f975a = ByteBuffer.wrap(bArr);
    }

    /* renamed from: a */
    private static int m639a(a aVar, ByteBuffer byteBuffer) {
        byte b = byteBuffer.get();
        aVar.f977a = (byte) (b & 15);
        aVar.f978b = (b & 240) >> 4;
        if (aVar.f978b != 15) {
            return 1;
        }
        aVar.f978b = byteBuffer.get();
        return 2;
    }

    /* renamed from: a */
    private boolean m643a(int i) {
        a aVar;
        try {
            aVar = new a();
            while (true) {
                int iM639a = m639a(aVar, this.f975a.duplicate());
                if (i <= aVar.f978b || aVar.f977a == 11) {
                    break;
                }
                this.f975a.position(this.f975a.position() + iM639a);
                m642a(aVar.f977a);
            }
        } catch (C1369g | BufferUnderflowException unused) {
        }
        return i == aVar.f978b;
    }

    /* renamed from: a */
    private void m641a() {
        a aVar = new a();
        do {
            m639a(aVar, this.f975a);
            m642a(aVar.f977a);
        } while (aVar.f977a != 11);
    }

    /* renamed from: a */
    private void m642a(byte b) {
        int i = 0;
        switch (b) {
            case 0:
                ByteBuffer byteBuffer = this.f975a;
                byteBuffer.position(byteBuffer.position() + 1);
                return;
            case 1:
                ByteBuffer byteBuffer2 = this.f975a;
                byteBuffer2.position(byteBuffer2.position() + 2);
                return;
            case 2:
                ByteBuffer byteBuffer3 = this.f975a;
                byteBuffer3.position(byteBuffer3.position() + 4);
                return;
            case 3:
                ByteBuffer byteBuffer4 = this.f975a;
                byteBuffer4.position(byteBuffer4.position() + 8);
                return;
            case 4:
                ByteBuffer byteBuffer5 = this.f975a;
                byteBuffer5.position(byteBuffer5.position() + 4);
                return;
            case 5:
                ByteBuffer byteBuffer6 = this.f975a;
                byteBuffer6.position(byteBuffer6.position() + 8);
                return;
            case 6:
                int i2 = this.f975a.get();
                if (i2 < 0) {
                    i2 += 256;
                }
                ByteBuffer byteBuffer7 = this.f975a;
                byteBuffer7.position(byteBuffer7.position() + i2);
                return;
            case 7:
                int i3 = this.f975a.getInt();
                ByteBuffer byteBuffer8 = this.f975a;
                byteBuffer8.position(byteBuffer8.position() + i3);
                return;
            case 8:
                int iM653a = m653a(0, 0, true);
                while (i < (iM653a << 1)) {
                    a aVar = new a();
                    m639a(aVar, this.f975a);
                    m642a(aVar.f977a);
                    i++;
                }
                return;
            case 9:
                int iM653a2 = m653a(0, 0, true);
                while (i < iM653a2) {
                    a aVar2 = new a();
                    m639a(aVar2, this.f975a);
                    m642a(aVar2.f977a);
                    i++;
                }
                return;
            case 10:
                m641a();
                return;
            case 11:
            case 12:
                return;
            case 13:
                a aVar3 = new a();
                m639a(aVar3, this.f975a);
                if (aVar3.f977a != 0) {
                    throw new C1369g("skipField with invalid type, type value: " + ((int) b) + ", " + ((int) aVar3.f977a));
                }
                int iM653a3 = m653a(0, 0, true);
                ByteBuffer byteBuffer9 = this.f975a;
                byteBuffer9.position(byteBuffer9.position() + iM653a3);
                return;
            default:
                throw new C1369g("invalid type.");
        }
    }

    /* renamed from: a */
    public final boolean m661a(int i, boolean z) {
        return m652a((byte) 0, i, z) != 0;
    }

    /* renamed from: a */
    public final byte m652a(byte b, int i, boolean z) {
        if (!m643a(i)) {
            if (z) {
                throw new C1369g("require field not exist.");
            }
            return b;
        }
        a aVar = new a();
        m639a(aVar, this.f975a);
        byte b2 = aVar.f977a;
        if (b2 == 0) {
            return this.f975a.get();
        }
        if (b2 == 12) {
            return (byte) 0;
        }
        throw new C1369g("type mismatch.");
    }

    /* renamed from: a */
    public final short m659a(short s, int i, boolean z) {
        if (!m643a(i)) {
            if (z) {
                throw new C1369g("require field not exist.");
            }
            return s;
        }
        a aVar = new a();
        m639a(aVar, this.f975a);
        byte b = aVar.f977a;
        if (b == 0) {
            return this.f975a.get();
        }
        if (b == 1) {
            return this.f975a.getShort();
        }
        if (b == 12) {
            return (short) 0;
        }
        throw new C1369g("type mismatch.");
    }

    /* renamed from: a */
    public final int m653a(int i, int i2, boolean z) {
        if (!m643a(i2)) {
            if (z) {
                throw new C1369g("require field not exist.");
            }
            return i;
        }
        a aVar = new a();
        m639a(aVar, this.f975a);
        byte b = aVar.f977a;
        if (b == 0) {
            return this.f975a.get();
        }
        if (b == 1) {
            return this.f975a.getShort();
        }
        if (b == 2) {
            return this.f975a.getInt();
        }
        if (b == 12) {
            return 0;
        }
        throw new C1369g("type mismatch.");
    }

    /* renamed from: a */
    public final long m655a(long j, int i, boolean z) {
        int i2;
        if (!m643a(i)) {
            if (z) {
                throw new C1369g("require field not exist.");
            }
            return j;
        }
        a aVar = new a();
        m639a(aVar, this.f975a);
        byte b = aVar.f977a;
        if (b == 0) {
            i2 = this.f975a.get();
        } else if (b == 1) {
            i2 = this.f975a.getShort();
        } else {
            if (b != 2) {
                if (b == 3) {
                    return this.f975a.getLong();
                }
                if (b == 12) {
                    return 0L;
                }
                throw new C1369g("type mismatch.");
            }
            i2 = this.f975a.getInt();
        }
        return i2;
    }

    /* renamed from: a */
    private float m638a(float f, int i, boolean z) {
        if (!m643a(i)) {
            if (z) {
                throw new C1369g("require field not exist.");
            }
            return f;
        }
        a aVar = new a();
        m639a(aVar, this.f975a);
        byte b = aVar.f977a;
        if (b == 4) {
            return this.f975a.getFloat();
        }
        if (b == 12) {
            return 0.0f;
        }
        throw new C1369g("type mismatch.");
    }

    /* renamed from: a */
    private double m637a(double d, int i, boolean z) {
        if (!m643a(i)) {
            if (z) {
                throw new C1369g("require field not exist.");
            }
            return d;
        }
        a aVar = new a();
        m639a(aVar, this.f975a);
        byte b = aVar.f977a;
        if (b == 4) {
            return this.f975a.getFloat();
        }
        if (b == 5) {
            return this.f975a.getDouble();
        }
        if (b == 12) {
            return 0.0d;
        }
        throw new C1369g("type mismatch.");
    }

    /* renamed from: b */
    public final String m662b(int i, boolean z) {
        if (!m643a(i)) {
            if (z) {
                throw new C1369g("require field not exist.");
            }
            return null;
        }
        a aVar = new a();
        m639a(aVar, this.f975a);
        byte b = aVar.f977a;
        if (b == 6) {
            int i2 = this.f975a.get();
            if (i2 < 0) {
                i2 += 256;
            }
            byte[] bArr = new byte[i2];
            this.f975a.get(bArr);
            try {
                return new String(bArr, this.f976b);
            } catch (UnsupportedEncodingException unused) {
                return new String(bArr);
            }
        }
        if (b == 7) {
            int i3 = this.f975a.getInt();
            if (i3 > 104857600 || i3 < 0) {
                throw new C1369g("String too long: " + i3);
            }
            byte[] bArr2 = new byte[i3];
            this.f975a.get(bArr2);
            try {
                return new String(bArr2, this.f976b);
            } catch (UnsupportedEncodingException unused2) {
                return new String(bArr2);
            }
        }
        throw new C1369g("type mismatch.");
    }

    /* renamed from: a */
    public final <K, V> HashMap<K, V> m658a(Map<K, V> map, int i, boolean z) {
        return (HashMap) m640a(new HashMap(), map, i, z);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    private <K, V> Map<K, V> m640a(Map<K, V> map, Map<K, V> map2, int i, boolean z) {
        if (map2 == null || map2.isEmpty()) {
            return new HashMap();
        }
        Map.Entry<K, V> next = map2.entrySet().iterator().next();
        K key = next.getKey();
        V value = next.getValue();
        if (m643a(i)) {
            a aVar = new a();
            m639a(aVar, this.f975a);
            if (aVar.f977a == 8) {
                int iM653a = m653a(0, 0, true);
                if (iM653a < 0) {
                    throw new C1369g("size invalid: " + iM653a);
                }
                for (int i2 = 0; i2 < iM653a; i2++) {
                    map.put(m657a((C1371i) key, 0, true), m657a((C1371i) value, 1, true));
                }
            } else {
                throw new C1369g("type mismatch.");
            }
        } else if (z) {
            throw new C1369g("require field not exist.");
        }
        return map;
    }

    /* renamed from: d */
    private boolean[] m646d(int i, boolean z) {
        if (!m643a(i)) {
            if (z) {
                throw new C1369g("require field not exist.");
            }
            return null;
        }
        a aVar = new a();
        m639a(aVar, this.f975a);
        if (aVar.f977a == 9) {
            int iM653a = m653a(0, 0, true);
            if (iM653a < 0) {
                throw new C1369g("size invalid: " + iM653a);
            }
            boolean[] zArr = new boolean[iM653a];
            for (int i2 = 0; i2 < iM653a; i2++) {
                zArr[i2] = m652a((byte) 0, 0, true) != 0;
            }
            return zArr;
        }
        throw new C1369g("type mismatch.");
    }

    /* renamed from: c */
    public final byte[] m663c(int i, boolean z) {
        if (!m643a(i)) {
            if (z) {
                throw new C1369g("require field not exist.");
            }
            return null;
        }
        a aVar = new a();
        m639a(aVar, this.f975a);
        byte b = aVar.f977a;
        if (b == 9) {
            int iM653a = m653a(0, 0, true);
            if (iM653a < 0) {
                throw new C1369g("size invalid: " + iM653a);
            }
            byte[] bArr = new byte[iM653a];
            for (int i2 = 0; i2 < iM653a; i2++) {
                bArr[i2] = m652a(bArr[0], 0, true);
            }
            return bArr;
        }
        if (b == 13) {
            a aVar2 = new a();
            m639a(aVar2, this.f975a);
            if (aVar2.f977a != 0) {
                throw new C1369g("type mismatch, tag: " + i + ", type: " + ((int) aVar.f977a) + ", " + ((int) aVar2.f977a));
            }
            int iM653a2 = m653a(0, 0, true);
            if (iM653a2 < 0) {
                throw new C1369g("invalid size, tag: " + i + ", type: " + ((int) aVar.f977a) + ", " + ((int) aVar2.f977a) + ", size: " + iM653a2);
            }
            byte[] bArr2 = new byte[iM653a2];
            this.f975a.get(bArr2);
            return bArr2;
        }
        throw new C1369g("type mismatch.");
    }

    /* renamed from: e */
    private short[] m647e(int i, boolean z) {
        if (!m643a(i)) {
            if (z) {
                throw new C1369g("require field not exist.");
            }
            return null;
        }
        a aVar = new a();
        m639a(aVar, this.f975a);
        if (aVar.f977a == 9) {
            int iM653a = m653a(0, 0, true);
            if (iM653a < 0) {
                throw new C1369g("size invalid: " + iM653a);
            }
            short[] sArr = new short[iM653a];
            for (int i2 = 0; i2 < iM653a; i2++) {
                sArr[i2] = m659a(sArr[0], 0, true);
            }
            return sArr;
        }
        throw new C1369g("type mismatch.");
    }

    /* renamed from: f */
    private int[] m648f(int i, boolean z) {
        if (!m643a(i)) {
            if (z) {
                throw new C1369g("require field not exist.");
            }
            return null;
        }
        a aVar = new a();
        m639a(aVar, this.f975a);
        if (aVar.f977a == 9) {
            int iM653a = m653a(0, 0, true);
            if (iM653a < 0) {
                throw new C1369g("size invalid: " + iM653a);
            }
            int[] iArr = new int[iM653a];
            for (int i2 = 0; i2 < iM653a; i2++) {
                iArr[i2] = m653a(iArr[0], 0, true);
            }
            return iArr;
        }
        throw new C1369g("type mismatch.");
    }

    /* renamed from: g */
    private long[] m649g(int i, boolean z) {
        if (!m643a(i)) {
            if (z) {
                throw new C1369g("require field not exist.");
            }
            return null;
        }
        a aVar = new a();
        m639a(aVar, this.f975a);
        if (aVar.f977a == 9) {
            int iM653a = m653a(0, 0, true);
            if (iM653a < 0) {
                throw new C1369g("size invalid: " + iM653a);
            }
            long[] jArr = new long[iM653a];
            for (int i2 = 0; i2 < iM653a; i2++) {
                jArr[i2] = m655a(jArr[0], 0, true);
            }
            return jArr;
        }
        throw new C1369g("type mismatch.");
    }

    /* renamed from: h */
    private float[] m650h(int i, boolean z) {
        if (!m643a(i)) {
            if (z) {
                throw new C1369g("require field not exist.");
            }
            return null;
        }
        a aVar = new a();
        m639a(aVar, this.f975a);
        if (aVar.f977a == 9) {
            int iM653a = m653a(0, 0, true);
            if (iM653a < 0) {
                throw new C1369g("size invalid: " + iM653a);
            }
            float[] fArr = new float[iM653a];
            for (int i2 = 0; i2 < iM653a; i2++) {
                fArr[i2] = m638a(fArr[0], 0, true);
            }
            return fArr;
        }
        throw new C1369g("type mismatch.");
    }

    /* renamed from: i */
    private double[] m651i(int i, boolean z) {
        if (!m643a(i)) {
            if (z) {
                throw new C1369g("require field not exist.");
            }
            return null;
        }
        a aVar = new a();
        m639a(aVar, this.f975a);
        if (aVar.f977a == 9) {
            int iM653a = m653a(0, 0, true);
            if (iM653a < 0) {
                throw new C1369g("size invalid: " + iM653a);
            }
            double[] dArr = new double[iM653a];
            for (int i2 = 0; i2 < iM653a; i2++) {
                dArr[i2] = m637a(dArr[0], 0, true);
            }
            return dArr;
        }
        throw new C1369g("type mismatch.");
    }

    /* renamed from: a */
    private <T> T[] m644a(T[] tArr, int i, boolean z) {
        if (tArr == null || tArr.length == 0) {
            throw new C1369g("unable to get type of key and value.");
        }
        return (T[]) m645b(tArr[0], i, z);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: b */
    private <T> T[] m645b(T t, int i, boolean z) {
        if (!m643a(i)) {
            if (z) {
                throw new C1369g("require field not exist.");
            }
            return null;
        }
        a aVar = new a();
        m639a(aVar, this.f975a);
        if (aVar.f977a == 9) {
            int iM653a = m653a(0, 0, true);
            if (iM653a < 0) {
                throw new C1369g("size invalid: " + iM653a);
            }
            T[] tArr = (T[]) ((Object[]) Array.newInstance(t.getClass(), iM653a));
            for (int i2 = 0; i2 < iM653a; i2++) {
                tArr[i2] = m657a((C1371i) t, 0, true);
            }
            return tArr;
        }
        throw new C1369g("type mismatch.");
    }

    /* renamed from: a */
    public final AbstractC1373k m656a(AbstractC1373k abstractC1373k, int i, boolean z) {
        if (!m643a(i)) {
            if (z) {
                throw new C1369g("require field not exist.");
            }
            return null;
        }
        try {
            AbstractC1373k abstractC1373k2 = (AbstractC1373k) abstractC1373k.getClass().newInstance();
            a aVar = new a();
            m639a(aVar, this.f975a);
            if (aVar.f977a != 10) {
                throw new C1369g("type mismatch.");
            }
            abstractC1373k2.mo616a(this);
            m641a();
            return abstractC1373k2;
        } catch (Exception e) {
            throw new C1369g(e.getMessage());
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    public final <T> Object m657a(T t, int i, boolean z) {
        if (t instanceof Byte) {
            return Byte.valueOf(m652a((byte) 0, i, z));
        }
        if (t instanceof Boolean) {
            return Boolean.valueOf(m652a((byte) 0, i, z) != 0);
        }
        if (t instanceof Short) {
            return Short.valueOf(m659a((short) 0, i, z));
        }
        if (t instanceof Integer) {
            return Integer.valueOf(m653a(0, i, z));
        }
        if (t instanceof Long) {
            return Long.valueOf(m655a(0L, i, z));
        }
        if (t instanceof Float) {
            return Float.valueOf(m638a(0.0f, i, z));
        }
        if (t instanceof Double) {
            return Double.valueOf(m637a(0.0d, i, z));
        }
        if (t instanceof String) {
            return String.valueOf(m662b(i, z));
        }
        if (t instanceof Map) {
            return (HashMap) m640a(new HashMap(), (Map) t, i, z);
        }
        if (t instanceof List) {
            List list = (List) t;
            if (list == null || list.isEmpty()) {
                return new ArrayList();
            }
            Object[] objArrM645b = m645b(list.get(0), i, z);
            if (objArrM645b == null) {
                return null;
            }
            ArrayList arrayList = new ArrayList();
            for (Object obj : objArrM645b) {
                arrayList.add(obj);
            }
            return arrayList;
        }
        if (t instanceof AbstractC1373k) {
            return m656a((AbstractC1373k) t, i, z);
        }
        if (t.getClass().isArray()) {
            if ((t instanceof byte[]) || (t instanceof Byte[])) {
                return m663c(i, z);
            }
            if (t instanceof boolean[]) {
                return m646d(i, z);
            }
            if (t instanceof short[]) {
                return m647e(i, z);
            }
            if (t instanceof int[]) {
                return m648f(i, z);
            }
            if (t instanceof long[]) {
                return m649g(i, z);
            }
            if (t instanceof float[]) {
                return m650h(i, z);
            }
            if (t instanceof double[]) {
                return m651i(i, z);
            }
            return m644a((Object[]) t, i, z);
        }
        throw new C1369g("read object error: unsupport type.");
    }

    /* renamed from: a */
    public final int m654a(String str) {
        this.f976b = str;
        return 0;
    }
}
