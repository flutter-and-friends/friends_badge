package com.tencent.bugly.proguard;

import java.io.UnsupportedEncodingException;

/* compiled from: BUGLY */
/* renamed from: com.tencent.bugly.proguard.aj */
/* loaded from: classes.dex */
public final class C1355aj extends AbstractC1373k implements Cloneable {

    /* renamed from: d */
    private static byte[] f849d;

    /* renamed from: a */
    private byte f850a;

    /* renamed from: b */
    private String f851b;

    /* renamed from: c */
    private byte[] f852c;

    @Override // com.tencent.bugly.proguard.AbstractC1373k
    /* renamed from: a */
    public final void mo618a(StringBuilder sb, int i) {
    }

    public C1355aj() {
        this.f850a = (byte) 0;
        this.f851b = "";
        this.f852c = null;
    }

    public C1355aj(byte b, String str, byte[] bArr) {
        this.f850a = (byte) 0;
        this.f851b = "";
        this.f852c = null;
        this.f850a = b;
        this.f851b = str;
        this.f852c = bArr;
    }

    @Override // com.tencent.bugly.proguard.AbstractC1373k
    /* renamed from: a */
    public final void mo617a(C1372j c1372j) throws UnsupportedEncodingException {
        c1372j.m668a(this.f850a, 0);
        c1372j.m673a(this.f851b, 1);
        byte[] bArr = this.f852c;
        if (bArr != null) {
            c1372j.m678a(bArr, 2);
        }
    }

    @Override // com.tencent.bugly.proguard.AbstractC1373k
    /* renamed from: a */
    public final void mo616a(C1371i c1371i) {
        this.f850a = c1371i.m652a(this.f850a, 0, true);
        this.f851b = c1371i.m662b(1, true);
        if (f849d == null) {
            f849d = new byte[]{0};
        }
        byte[] bArr = f849d;
        this.f852c = c1371i.m663c(2, false);
    }
}
