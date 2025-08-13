package com.tencent.bugly.proguard;

import java.util.List;
import java.util.Map;

/* compiled from: BUGLY */
/* renamed from: com.tencent.bugly.proguard.h */
/* loaded from: classes.dex */
public final class C1370h {

    /* renamed from: a */
    private StringBuilder f973a;

    /* renamed from: b */
    private int f974b;

    /* renamed from: a */
    private void m627a(String str) {
        for (int i = 0; i < this.f974b; i++) {
            this.f973a.append('\t');
        }
        if (str != null) {
            StringBuilder sb = this.f973a;
            sb.append(str);
            sb.append(": ");
        }
    }

    public C1370h(StringBuilder sb, int i) {
        this.f974b = 0;
        this.f973a = sb;
        this.f974b = i;
    }

    /* renamed from: a */
    public final C1370h m635a(boolean z, String str) {
        m627a(str);
        StringBuilder sb = this.f973a;
        sb.append(z ? 'T' : 'F');
        sb.append('\n');
        return this;
    }

    /* renamed from: a */
    public final C1370h m628a(byte b, String str) {
        m627a(str);
        StringBuilder sb = this.f973a;
        sb.append((int) b);
        sb.append('\n');
        return this;
    }

    /* renamed from: a */
    public final C1370h m634a(short s, String str) {
        m627a(str);
        StringBuilder sb = this.f973a;
        sb.append((int) s);
        sb.append('\n');
        return this;
    }

    /* renamed from: a */
    public final C1370h m629a(int i, String str) {
        m627a(str);
        StringBuilder sb = this.f973a;
        sb.append(i);
        sb.append('\n');
        return this;
    }

    /* renamed from: a */
    public final C1370h m630a(long j, String str) {
        m627a(str);
        StringBuilder sb = this.f973a;
        sb.append(j);
        sb.append('\n');
        return this;
    }

    /* renamed from: a */
    public final C1370h m632a(String str, String str2) {
        m627a(str2);
        if (str == null) {
            this.f973a.append("null\n");
        } else {
            StringBuilder sb = this.f973a;
            sb.append(str);
            sb.append('\n');
        }
        return this;
    }

    /* renamed from: a */
    public final C1370h m636a(byte[] bArr, String str) {
        m627a(str);
        if (bArr == null) {
            this.f973a.append("null\n");
            return this;
        }
        if (bArr.length == 0) {
            StringBuilder sb = this.f973a;
            sb.append(bArr.length);
            sb.append(", []\n");
            return this;
        }
        StringBuilder sb2 = this.f973a;
        sb2.append(bArr.length);
        sb2.append(", [\n");
        C1370h c1370h = new C1370h(this.f973a, this.f974b + 1);
        for (byte b : bArr) {
            c1370h.m627a(null);
            StringBuilder sb3 = c1370h.f973a;
            sb3.append((int) b);
            sb3.append('\n');
        }
        m627a(null);
        StringBuilder sb4 = this.f973a;
        sb4.append(']');
        sb4.append('\n');
        return this;
    }

    /* renamed from: a */
    public final <K, V> C1370h m633a(Map<K, V> map, String str) {
        m627a(str);
        if (map == null) {
            this.f973a.append("null\n");
            return this;
        }
        if (map.isEmpty()) {
            StringBuilder sb = this.f973a;
            sb.append(map.size());
            sb.append(", {}\n");
            return this;
        }
        StringBuilder sb2 = this.f973a;
        sb2.append(map.size());
        sb2.append(", {\n");
        C1370h c1370h = new C1370h(this.f973a, this.f974b + 1);
        C1370h c1370h2 = new C1370h(this.f973a, this.f974b + 2);
        for (Map.Entry<K, V> entry : map.entrySet()) {
            c1370h.m627a(null);
            StringBuilder sb3 = c1370h.f973a;
            sb3.append('(');
            sb3.append('\n');
            c1370h2.m625a((C1370h) entry.getKey(), (String) null);
            c1370h2.m625a((C1370h) entry.getValue(), (String) null);
            c1370h.m627a(null);
            StringBuilder sb4 = c1370h.f973a;
            sb4.append(')');
            sb4.append('\n');
        }
        m627a(null);
        StringBuilder sb5 = this.f973a;
        sb5.append('}');
        sb5.append('\n');
        return this;
    }

    /* renamed from: a */
    private <T> C1370h m626a(T[] tArr, String str) {
        m627a(str);
        if (tArr == null) {
            this.f973a.append("null\n");
            return this;
        }
        if (tArr.length == 0) {
            StringBuilder sb = this.f973a;
            sb.append(tArr.length);
            sb.append(", []\n");
            return this;
        }
        StringBuilder sb2 = this.f973a;
        sb2.append(tArr.length);
        sb2.append(", [\n");
        C1370h c1370h = new C1370h(this.f973a, this.f974b + 1);
        for (T t : tArr) {
            c1370h.m625a((C1370h) t, (String) null);
        }
        m627a(null);
        StringBuilder sb3 = this.f973a;
        sb3.append(']');
        sb3.append('\n');
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    private <T> C1370h m625a(T t, String str) {
        if (t == 0) {
            this.f973a.append("null\n");
        } else if (t instanceof Byte) {
            byte bByteValue = ((Byte) t).byteValue();
            m627a(str);
            StringBuilder sb = this.f973a;
            sb.append((int) bByteValue);
            sb.append('\n');
        } else if (t instanceof Boolean) {
            boolean zBooleanValue = ((Boolean) t).booleanValue();
            m627a(str);
            StringBuilder sb2 = this.f973a;
            sb2.append(zBooleanValue ? 'T' : 'F');
            sb2.append('\n');
        } else if (t instanceof Short) {
            short sShortValue = ((Short) t).shortValue();
            m627a(str);
            StringBuilder sb3 = this.f973a;
            sb3.append((int) sShortValue);
            sb3.append('\n');
        } else if (t instanceof Integer) {
            int iIntValue = ((Integer) t).intValue();
            m627a(str);
            StringBuilder sb4 = this.f973a;
            sb4.append(iIntValue);
            sb4.append('\n');
        } else if (t instanceof Long) {
            long jLongValue = ((Long) t).longValue();
            m627a(str);
            StringBuilder sb5 = this.f973a;
            sb5.append(jLongValue);
            sb5.append('\n');
        } else if (t instanceof Float) {
            float fFloatValue = ((Float) t).floatValue();
            m627a(str);
            StringBuilder sb6 = this.f973a;
            sb6.append(fFloatValue);
            sb6.append('\n');
        } else if (t instanceof Double) {
            double dDoubleValue = ((Double) t).doubleValue();
            m627a(str);
            StringBuilder sb7 = this.f973a;
            sb7.append(dDoubleValue);
            sb7.append('\n');
        } else if (t instanceof String) {
            m632a((String) t, str);
        } else if (t instanceof Map) {
            m633a((Map) t, str);
        } else if (t instanceof List) {
            List list = (List) t;
            if (list == null) {
                m627a(str);
                this.f973a.append("null\t");
            } else {
                m626a(list.toArray(), str);
            }
        } else if (t instanceof AbstractC1373k) {
            m631a((AbstractC1373k) t, str);
        } else if (t instanceof byte[]) {
            m636a((byte[]) t, str);
        } else if (t instanceof boolean[]) {
            m625a((C1370h) t, str);
        } else {
            int i = 0;
            if (t instanceof short[]) {
                short[] sArr = (short[]) t;
                m627a(str);
                if (sArr == null) {
                    this.f973a.append("null\n");
                } else if (sArr.length == 0) {
                    StringBuilder sb8 = this.f973a;
                    sb8.append(sArr.length);
                    sb8.append(", []\n");
                } else {
                    StringBuilder sb9 = this.f973a;
                    sb9.append(sArr.length);
                    sb9.append(", [\n");
                    C1370h c1370h = new C1370h(this.f973a, this.f974b + 1);
                    int length = sArr.length;
                    while (i < length) {
                        short s = sArr[i];
                        c1370h.m627a(null);
                        StringBuilder sb10 = c1370h.f973a;
                        sb10.append((int) s);
                        sb10.append('\n');
                        i++;
                    }
                    m627a(null);
                    StringBuilder sb11 = this.f973a;
                    sb11.append(']');
                    sb11.append('\n');
                }
            } else if (t instanceof int[]) {
                int[] iArr = (int[]) t;
                m627a(str);
                if (iArr == null) {
                    this.f973a.append("null\n");
                } else if (iArr.length == 0) {
                    StringBuilder sb12 = this.f973a;
                    sb12.append(iArr.length);
                    sb12.append(", []\n");
                } else {
                    StringBuilder sb13 = this.f973a;
                    sb13.append(iArr.length);
                    sb13.append(", [\n");
                    C1370h c1370h2 = new C1370h(this.f973a, this.f974b + 1);
                    int length2 = iArr.length;
                    while (i < length2) {
                        int i2 = iArr[i];
                        c1370h2.m627a(null);
                        StringBuilder sb14 = c1370h2.f973a;
                        sb14.append(i2);
                        sb14.append('\n');
                        i++;
                    }
                    m627a(null);
                    StringBuilder sb15 = this.f973a;
                    sb15.append(']');
                    sb15.append('\n');
                }
            } else if (t instanceof long[]) {
                long[] jArr = (long[]) t;
                m627a(str);
                if (jArr == null) {
                    this.f973a.append("null\n");
                } else if (jArr.length == 0) {
                    StringBuilder sb16 = this.f973a;
                    sb16.append(jArr.length);
                    sb16.append(", []\n");
                } else {
                    StringBuilder sb17 = this.f973a;
                    sb17.append(jArr.length);
                    sb17.append(", [\n");
                    C1370h c1370h3 = new C1370h(this.f973a, this.f974b + 1);
                    int length3 = jArr.length;
                    while (i < length3) {
                        long j = jArr[i];
                        c1370h3.m627a(null);
                        StringBuilder sb18 = c1370h3.f973a;
                        sb18.append(j);
                        sb18.append('\n');
                        i++;
                    }
                    m627a(null);
                    StringBuilder sb19 = this.f973a;
                    sb19.append(']');
                    sb19.append('\n');
                }
            } else if (t instanceof float[]) {
                float[] fArr = (float[]) t;
                m627a(str);
                if (fArr == null) {
                    this.f973a.append("null\n");
                } else if (fArr.length == 0) {
                    StringBuilder sb20 = this.f973a;
                    sb20.append(fArr.length);
                    sb20.append(", []\n");
                } else {
                    StringBuilder sb21 = this.f973a;
                    sb21.append(fArr.length);
                    sb21.append(", [\n");
                    C1370h c1370h4 = new C1370h(this.f973a, this.f974b + 1);
                    int length4 = fArr.length;
                    while (i < length4) {
                        float f = fArr[i];
                        c1370h4.m627a(null);
                        StringBuilder sb22 = c1370h4.f973a;
                        sb22.append(f);
                        sb22.append('\n');
                        i++;
                    }
                    m627a(null);
                    StringBuilder sb23 = this.f973a;
                    sb23.append(']');
                    sb23.append('\n');
                }
            } else if (t instanceof double[]) {
                double[] dArr = (double[]) t;
                m627a(str);
                if (dArr == null) {
                    this.f973a.append("null\n");
                } else if (dArr.length == 0) {
                    StringBuilder sb24 = this.f973a;
                    sb24.append(dArr.length);
                    sb24.append(", []\n");
                } else {
                    StringBuilder sb25 = this.f973a;
                    sb25.append(dArr.length);
                    sb25.append(", [\n");
                    C1370h c1370h5 = new C1370h(this.f973a, this.f974b + 1);
                    int length5 = dArr.length;
                    while (i < length5) {
                        double d = dArr[i];
                        c1370h5.m627a(null);
                        StringBuilder sb26 = c1370h5.f973a;
                        sb26.append(d);
                        sb26.append('\n');
                        i++;
                    }
                    m627a(null);
                    StringBuilder sb27 = this.f973a;
                    sb27.append(']');
                    sb27.append('\n');
                }
            } else if (t.getClass().isArray()) {
                m626a((Object[]) t, str);
            } else {
                throw new C1364b("write object error: unsupport type.");
            }
        }
        return this;
    }

    /* renamed from: a */
    public final C1370h m631a(AbstractC1373k abstractC1373k, String str) {
        m627a(str);
        StringBuilder sb = this.f973a;
        sb.append('{');
        sb.append('\n');
        if (abstractC1373k == null) {
            StringBuilder sb2 = this.f973a;
            sb2.append('\t');
            sb2.append("null");
        } else {
            abstractC1373k.mo618a(this.f973a, this.f974b + 1);
        }
        m627a(null);
        StringBuilder sb3 = this.f973a;
        sb3.append('}');
        sb3.append('\n');
        return this;
    }
}
