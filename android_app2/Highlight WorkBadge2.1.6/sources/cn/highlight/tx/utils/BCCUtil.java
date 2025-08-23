package cn.highlight.tx.utils;

/* loaded from: classes.dex */
public class BCCUtil {
    public static byte getXor(byte[] bArr) {
        if (bArr == null || bArr.length < 5) {
            return (byte) 0;
        }
        byte b = bArr[2];
        for (int i = 3; i < bArr.length - 3; i++) {
            b = (byte) (b ^ bArr[i]);
        }
        return b;
    }

    public static byte getXor2(byte[] bArr) {
        byte b = bArr[0];
        for (int i = 1; i < bArr.length - 1; i++) {
            b = (byte) (b ^ bArr[i]);
        }
        return b;
    }
}
