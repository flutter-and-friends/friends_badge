package com.p013gg.reader.api.utils;

import com.sun.crypto.provider.SunJCE;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.security.Security;
import javax.crypto.Cipher;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.spec.SecretKeySpec;

/* loaded from: classes.dex */
public class DesUtils {
    public static final String DES3_CBC = "DESede/CBC/NoPadding";
    public static final String DES3_ECB = "DESede/ECB/NoPadding";
    public static final String DES_CBC = "DES/CBC/NoPadding";
    public static final String DES_ECB = "DES/ECB/NoPadding";
    public static byte[] desDcbKey;

    static {
        Security.addProvider(new SunJCE());
        desDcbKey = new byte[]{103, 120, 119, 108, 105, 111, 116, 0};
    }

    public static byte[] encode(String str, byte[] bArr, byte[] bArr2) throws NoSuchPaddingException, NoSuchAlgorithmException, InvalidKeyException {
        if (bArr == null || bArr2 == null) {
            throw new IllegalArgumentException();
        }
        if (bArr.length % 8 != 0 || bArr2.length % 8 != 0) {
            throw new IllegalArgumentException();
        }
        if (16 == bArr.length) {
            byte[] bArr3 = new byte[24];
            System.arraycopy(bArr, 0, bArr3, 0, 16);
            System.arraycopy(bArr, 0, bArr3, 16, 8);
            bArr = bArr3;
        }
        try {
            int iIndexOf = str.indexOf(47);
            SecretKeySpec secretKeySpec = new SecretKeySpec(bArr, iIndexOf > 0 ? str.substring(0, iIndexOf) : str);
            Cipher cipher = Cipher.getInstance(str);
            cipher.init(1, secretKeySpec);
            return cipher.doFinal(bArr2);
        } catch (Exception unused) {
            return null;
        }
    }

    public static String encode(String str, String str2, String str3) {
        return HexUtils.bytes2HexString(encode(str, HexUtils.hexString2Bytes(str2), HexUtils.hexString2Bytes(str3)));
    }

    public static byte[] decode(String str, byte[] bArr, byte[] bArr2) throws NoSuchPaddingException, NoSuchAlgorithmException, InvalidKeyException {
        if (bArr == null || bArr2 == null) {
            throw new IllegalArgumentException();
        }
        if (bArr.length % 8 != 0 || bArr2.length % 8 != 0) {
            throw new IllegalArgumentException();
        }
        if (16 == bArr.length) {
            byte[] bArr3 = new byte[24];
            System.arraycopy(bArr, 0, bArr3, 0, 16);
            System.arraycopy(bArr, 0, bArr3, 16, 8);
            bArr = bArr3;
        }
        try {
            int iIndexOf = str.indexOf(47);
            SecretKeySpec secretKeySpec = new SecretKeySpec(bArr, iIndexOf > 0 ? str.substring(0, iIndexOf) : str);
            Cipher cipher = Cipher.getInstance(str);
            cipher.init(2, secretKeySpec);
            return cipher.doFinal(bArr2);
        } catch (Exception unused) {
            return null;
        }
    }

    public static String decode(String str, String str2, String str3) {
        return HexUtils.bytes2HexString(decode(str, HexUtils.hexString2Bytes(str2), HexUtils.hexString2Bytes(str3)));
    }

    public static byte[] encodeDES_ECB(byte[] bArr, byte[] bArr2) {
        return encode(DES_ECB, bArr, bArr2);
    }

    public static String encodeDES_ECB(String str, String str2) {
        return encode(DES_ECB, str, str2);
    }

    public static byte[] decodeDES_ECB(byte[] bArr, byte[] bArr2) {
        return decode(DES_ECB, bArr, bArr2);
    }

    public static String decodeDES_ECB(String str, String str2) {
        return decode(DES_ECB, str, str2);
    }
}
