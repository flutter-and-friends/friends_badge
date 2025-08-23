package cn.highlight.work_card_write.api;

import java.security.InvalidKeyException;
import java.security.KeyFactory;
import java.security.NoSuchAlgorithmException;
import java.security.PublicKey;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.X509EncodedKeySpec;
import java.util.List;
import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.Mac;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.spec.SecretKeySpec;

/* loaded from: classes.dex */
public class ApiTool {
    public static String encryption(String str, String str2) {
        try {
            return Base64Util.encode(encryptByPublicKey(str.getBytes(), Base64Util.decode(str2)));
        } catch (Exception e) {
            e.printStackTrace();
            return "";
        }
    }

    private static byte[] encryptByPublicKey(byte[] bArr, byte[] bArr2) throws BadPaddingException, InvalidKeySpecException, NoSuchPaddingException, IllegalBlockSizeException, NoSuchAlgorithmException, InvalidKeyException {
        try {
            PublicKey publicKeyGeneratePublic = KeyFactory.getInstance("RSA").generatePublic(new X509EncodedKeySpec(bArr2));
            try {
                Cipher cipher = Cipher.getInstance("RSA/ECB/PKCS1Padding");
                cipher.init(1, publicKeyGeneratePublic);
                return cipher.doFinal(bArr);
            } catch (NoSuchAlgorithmException e) {
                throw new RuntimeException(e);
            }
        } catch (NoSuchAlgorithmException e2) {
            throw new RuntimeException(e2);
        }
    }

    private static String hmacSha256(String str, String str2) throws NoSuchAlgorithmException, InvalidKeyException {
        try {
            Mac mac = Mac.getInstance("HmacSHA256");
            try {
                mac.init(new SecretKeySpec(str2.getBytes(), "HmacSHA256"));
            } catch (InvalidKeyException e) {
                e.printStackTrace();
            }
            return bytesToHexString(mac.doFinal(str.getBytes()));
        } catch (NoSuchAlgorithmException unused) {
            return null;
        }
    }

    private static byte[] hmacSha256(byte[] bArr, String str) throws NoSuchAlgorithmException, InvalidKeyException {
        try {
            Mac mac = Mac.getInstance("HmacSHA256");
            try {
                mac.init(new SecretKeySpec(str.getBytes(), "HmacSHA256"));
            } catch (InvalidKeyException e) {
                e.printStackTrace();
            }
            return mac.doFinal(bArr);
        } catch (NoSuchAlgorithmException unused) {
            return new byte[0];
        }
    }

    private static String bytesToHexString(byte[] bArr) {
        StringBuilder sb = new StringBuilder(bArr.length);
        for (byte b : bArr) {
            String hexString = Integer.toHexString(b & 255);
            if (hexString.length() < 2) {
                sb.append(0);
            }
            sb.append(hexString);
        }
        return sb.toString();
    }

    public static String list2CommaStr(List<String> list) {
        String str = "";
        for (String str2 : list) {
            if (str2 != null) {
                str = str + str2 + ",";
            }
        }
        return str.length() > 0 ? str.substring(0, str.length() - 1) : str;
    }
}
