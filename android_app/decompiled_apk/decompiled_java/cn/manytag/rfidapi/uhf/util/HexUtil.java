package cn.manytag.rfidapi.uhf.util;

/* loaded from: classes.dex */
public class HexUtil {
    public static byte[] IntToByte(int i) {
        return new byte[]{(byte) ((i >> 8) & 255), (byte) (i & 255)};
    }

    public static byte IntToHex(Integer num) {
        try {
            String hexString = Integer.toHexString(num.intValue());
            if (hexString.length() % 2 != 0) {
                hexString = "0" + hexString;
            }
            return d.a(hexString.toCharArray())[0];
        } catch (Exception e) {
            e.printStackTrace();
            return (byte) 0;
        }
    }

    public static byte[] IntToHexS(Integer num) {
        try {
            String hexString = Integer.toHexString(num.intValue());
            if (hexString.length() % 2 != 0) {
                hexString = "0" + hexString;
            }
            return d.a(hexString.toCharArray());
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public static int hexTo10(byte b) {
        return hexTo10(new byte[]{b});
    }

    public static int hexTo10(byte[] bArr) {
        return Integer.decode("0x" + d.b(bArr)).intValue();
    }

    public static long hexTo10L(byte b) {
        return hexTo10L(new byte[]{b});
    }

    public static long hexTo10L(byte[] bArr) {
        return Long.decode("0x" + d.b(bArr)).longValue();
    }
}
