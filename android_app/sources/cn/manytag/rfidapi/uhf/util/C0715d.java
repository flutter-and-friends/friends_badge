package cn.manytag.rfidapi.uhf.util;

import java.nio.charset.Charset;

/* renamed from: cn.manytag.rfidapi.uhf.util.d */
/* loaded from: classes.dex */
public class C0715d {

    /* renamed from: a */
    public static final Charset f293a = C0712a.f288f;

    /* renamed from: b */
    private static final char[] f294b = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};

    /* renamed from: c */
    private static final char[] f295c = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};

    /* renamed from: d */
    private final Charset f296d;

    /* renamed from: a */
    protected static int m263a(char c, int i) throws C0714c {
        int iDigit = Character.digit(c, 16);
        if (iDigit != -1) {
            return iDigit;
        }
        throw new C0714c("Illegal hexadecimal character " + c + " at index " + i);
    }

    /* renamed from: a */
    public static byte[] m264a(char[] cArr) throws C0714c {
        int length = cArr.length;
        if ((length & 1) != 0) {
            throw new C0714c("Odd number of characters.");
        }
        byte[] bArr = new byte[length >> 1];
        int i = 0;
        int i2 = 0;
        while (i < length) {
            int iM263a = m263a(cArr[i], i) << 4;
            int i3 = i + 1;
            int iM263a2 = iM263a | m263a(cArr[i3], i3);
            i = i3 + 1;
            bArr[i2] = (byte) (iM263a2 & 255);
            i2++;
        }
        return bArr;
    }

    /* renamed from: a */
    public static char[] m265a(byte[] bArr) {
        return m266a(bArr, true);
    }

    /* renamed from: a */
    public static char[] m266a(byte[] bArr, boolean z) {
        return m267a(bArr, z ? f294b : f295c);
    }

    /* renamed from: a */
    protected static char[] m267a(byte[] bArr, char[] cArr) {
        int length = bArr.length;
        char[] cArr2 = new char[length << 1];
        int i = 0;
        for (int i2 = 0; i2 < length; i2++) {
            int i3 = i + 1;
            cArr2[i] = cArr[(bArr[i2] & 240) >>> 4];
            i = i3 + 1;
            cArr2[i3] = cArr[bArr[i2] & 15];
        }
        return cArr2;
    }

    /* renamed from: b */
    public static String m268b(byte[] bArr) {
        return new String(m265a(bArr));
    }

    public String toString() {
        return super.toString() + "[charsetName=" + this.f296d + "]";
    }
}
