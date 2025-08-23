package cn.manytag.rfidapi.uhf.util;

import java.nio.charset.Charset;

/* loaded from: classes.dex */
public class d {
    public static final Charset a = a.f;
    private static final char[] b = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};
    private static final char[] c = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};
    private final Charset d;

    protected static int a(char c2, int i) throws c {
        int iDigit = Character.digit(c2, 16);
        if (iDigit != -1) {
            return iDigit;
        }
        throw new c("Illegal hexadecimal character " + c2 + " at index " + i);
    }

    public static byte[] a(char[] cArr) throws c {
        int length = cArr.length;
        if ((length & 1) != 0) {
            throw new c("Odd number of characters.");
        }
        byte[] bArr = new byte[length >> 1];
        int i = 0;
        int i2 = 0;
        while (i < length) {
            int iA = a(cArr[i], i) << 4;
            int i3 = i + 1;
            int iA2 = iA | a(cArr[i3], i3);
            i = i3 + 1;
            bArr[i2] = (byte) (iA2 & 255);
            i2++;
        }
        return bArr;
    }

    public static char[] a(byte[] bArr) {
        return a(bArr, true);
    }

    public static char[] a(byte[] bArr, boolean z) {
        return a(bArr, z ? b : c);
    }

    protected static char[] a(byte[] bArr, char[] cArr) {
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

    public static String b(byte[] bArr) {
        return new String(a(bArr));
    }

    public String toString() {
        return super.toString() + "[charsetName=" + this.d + "]";
    }
}
