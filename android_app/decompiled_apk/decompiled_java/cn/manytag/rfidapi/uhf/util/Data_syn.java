package cn.manytag.rfidapi.uhf.util;

import java.math.BigDecimal;

/* loaded from: classes.dex */
public class Data_syn {
    public static String Bytes2HexString(byte[] bArr) {
        String str = "";
        for (byte b : bArr) {
            String hexString = Integer.toHexString(b & 255);
            if (hexString.length() == 1) {
                hexString = '0' + hexString;
            }
            str = str + hexString.toUpperCase();
        }
        return str;
    }

    public static String bytesToHexString(byte[] bArr, int i) {
        String str = "";
        for (int i2 = 0; i2 < i; i2++) {
            String hexString = Integer.toHexString(bArr[i2] & 255);
            if (hexString.length() == 1) {
                hexString = '0' + hexString;
            }
            str = str + hexString.toUpperCase();
        }
        return str;
    }

    public static float deciMal(int i, int i2) {
        return (float) new BigDecimal(i / i2).setScale(2, 4).doubleValue();
    }

    public static String decimalToHex(int i) {
        String str = "";
        while (i != 0) {
            str = toHexChar(i % 16) + str;
            i /= 16;
        }
        return str;
    }

    public static byte[] hexStr2Bytes(String str) {
        int length = str.length() / 2;
        byte[] bArr = new byte[length];
        for (int i = 0; i < length; i++) {
            int i2 = i * 2;
            int i3 = i2 + 1;
            bArr[i] = (byte) (Integer.decode("0x" + str.substring(i2, i3) + str.substring(i3, i3 + 1)).intValue() & 255);
        }
        return bArr;
    }

    public static String parseHex2Opposite(String str) {
        byte[] bArrHexStr2Bytes = hexStr2Bytes(str);
        byte[] bArr = new byte[bArrHexStr2Bytes.length];
        for (int i = 0; i < bArrHexStr2Bytes.length; i++) {
            bArr[i] = (byte) (~bArrHexStr2Bytes[i]);
        }
        String strBytes2HexString = Bytes2HexString(bArr);
        if (strBytes2HexString.length() >= 2) {
            return strBytes2HexString;
        }
        return "0" + strBytes2HexString;
    }

    public static char toHexChar(int i) {
        return (char) ((i > 9 || i < 0) ? (i - 10) + 65 : i + 48);
    }
}
