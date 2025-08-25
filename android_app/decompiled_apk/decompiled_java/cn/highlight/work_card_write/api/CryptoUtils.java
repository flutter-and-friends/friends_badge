package cn.highlight.work_card_write.api;

import android.util.Base64;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import javax.crypto.Cipher;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.spec.SecretKeySpec;

/* loaded from: classes.dex */
public class CryptoUtils {
    private static final String AES_ALGORITHM = "AES";
    private static final String AES_KEY = "o7H8uIM2O5qv65l2";
    private static final String AES_TRANSFORMATION = "AES/ECB/PKCS5Padding";

    public static String encrypt(String str) throws NoSuchPaddingException, NoSuchAlgorithmException, InvalidKeyException {
        try {
            SecretKeySpec secretKeySpec = new SecretKeySpec(AES_KEY.getBytes(), AES_ALGORITHM);
            Cipher cipher = Cipher.getInstance(AES_TRANSFORMATION);
            cipher.init(1, secretKeySpec);
            return Base64.encodeToString(cipher.doFinal(str.getBytes()), 2);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public static String decrypt(String str) throws NoSuchPaddingException, NoSuchAlgorithmException, InvalidKeyException {
        try {
            SecretKeySpec secretKeySpec = new SecretKeySpec(AES_KEY.getBytes(), AES_ALGORITHM);
            Cipher cipher = Cipher.getInstance(AES_TRANSFORMATION);
            cipher.init(2, secretKeySpec);
            return new String(cipher.doFinal(Base64.decode(str, 2)));
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }
}
