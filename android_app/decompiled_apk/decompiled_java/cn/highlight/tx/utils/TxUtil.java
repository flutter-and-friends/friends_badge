package cn.highlight.tx.utils;

import androidx.core.view.MotionEventCompat;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public class TxUtil {
    static final /* synthetic */ boolean $assertionsDisabled = false;

    public static byte[] intToBytes(int i) {
        return new byte[]{(byte) (i & 255), (byte) ((i >> 8) & 255), (byte) ((i >> 16) & 255), (byte) ((i >> 24) & 255)};
    }

    public static byte[] intToBytes2(int i) {
        return new byte[]{(byte) ((i >> 24) & 255), (byte) ((i >> 16) & 255), (byte) ((i >> 8) & 255), (byte) (i & 255)};
    }

    public static boolean isNull(String str) {
        if (str != null) {
            str = str.trim();
        }
        return str == null || "".equals(str) || "null".equalsIgnoreCase(str);
    }

    public static byte[][] splitBytes(byte[] bArr, int i) throws NumberFormatException {
        double d = Double.parseDouble(i + "");
        int iCeil = (int) Math.ceil(((double) bArr.length) / d);
        byte[][] bArr2 = new byte[iCeil][];
        for (int i2 = 0; i2 < iCeil; i2++) {
            int i3 = (int) (i2 * d);
            int length = (int) (i3 + d);
            if (length > bArr.length) {
                length = bArr.length;
            }
            bArr2[i2] = Arrays.copyOfRange(bArr, i3, length);
        }
        return bArr2;
    }

    public static int bytesToInt(byte[] bArr) {
        if (bArr.length >= 2) {
            return (bArr[1] & 255) | ((bArr[0] << 8) & MotionEventCompat.ACTION_POINTER_INDEX_MASK);
        }
        return 0;
    }

    public static int bytesToInt(byte[] bArr, int i) {
        return ((bArr[i + 3] & 255) << 24) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16);
    }

    public static int bytesToInt2(byte[] bArr, int i) {
        return (bArr[i + 3] & 255) | ((bArr[i] & 255) << 24) | ((bArr[i + 1] & 255) << 16) | ((bArr[i + 2] & 255) << 8);
    }

    public static int byteToInt(byte b) {
        try {
            return Integer.parseInt(String.format("%02x", Integer.valueOf(b & 255)).toUpperCase(), 16);
        } catch (NumberFormatException e) {
            e.printStackTrace();
            return 0;
        }
    }

    public static String byteToBit(byte b) {
        return "" + ((int) ((byte) ((b >> 7) & 1))) + ((int) ((byte) ((b >> 6) & 1))) + ((int) ((byte) ((b >> 5) & 1))) + ((int) ((byte) ((b >> 4) & 1))) + ((int) ((byte) ((b >> 3) & 1))) + ((int) ((byte) ((b >> 2) & 1))) + ((int) ((byte) ((b >> 1) & 1))) + ((int) ((byte) (b & 1)));
    }

    public static byte bitToByte(String str) throws NumberFormatException {
        int i;
        if (str == null) {
            return (byte) 0;
        }
        int length = str.length();
        if (length != 4 && length != 8) {
            return (byte) 0;
        }
        if (length != 8 || str.charAt(0) == '0') {
            i = Integer.parseInt(str, 2);
        } else {
            i = Integer.parseInt(str, 2) - 256;
        }
        return (byte) i;
    }

    public static String charAtReverse(String str) {
        int length = str.length();
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < length; i++) {
            sb.insert(0, str.charAt(i));
        }
        return sb.toString();
    }

    public static byte[] listToByte(List<Byte> list) {
        if (list != null) {
            try {
                if (list.size() != 0) {
                    byte[] bArr = new byte[list.size()];
                    int i = 0;
                    Iterator<Byte> it = list.iterator();
                    while (it.hasNext()) {
                        bArr[i] = it.next().byteValue();
                        i++;
                    }
                    return bArr;
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return null;
    }

    public static String bytesToHexString(byte[] bArr, boolean z) {
        StringBuilder sb = new StringBuilder(bArr.length);
        for (byte b : bArr) {
            String hexString = Integer.toHexString(b & 255);
            if (hexString.length() < 2) {
                sb.append(0);
            }
            sb.append(hexString.toUpperCase());
            if (z) {
                sb.append(" ");
            }
        }
        return sb.toString();
    }

    public static int qfJy(byte[] bArr) {
        try {
            return Integer.valueOf(parseHex2Opposite(bytesToHexString(bArr, false)), 16).intValue() + 1;
        } catch (NumberFormatException e) {
            e.printStackTrace();
            return 0;
        }
    }

    private static String parseHex2Opposite(String str) throws NumberFormatException {
        byte[] hexStr2Byte = parseHexStr2Byte(str);
        byte[] bArr = new byte[hexStr2Byte.length];
        for (int i = 0; i < hexStr2Byte.length; i++) {
            bArr[i] = (byte) (~hexStr2Byte[i]);
        }
        String byte2HexStr = parseByte2HexStr(bArr);
        if (byte2HexStr.length() >= 2) {
            return byte2HexStr;
        }
        return "0" + byte2HexStr;
    }

    private static byte[] parseHexStr2Byte(String str) throws NumberFormatException {
        if (str.length() < 1) {
            return null;
        }
        byte[] bArr = new byte[str.length() / 2];
        for (int i = 0; i < str.length() / 2; i++) {
            int i2 = i * 2;
            int i3 = i2 + 1;
            bArr[i] = (byte) ((Integer.parseInt(str.substring(i2, i3), 16) * 16) + Integer.parseInt(str.substring(i3, i2 + 2), 16));
        }
        return bArr;
    }

    private static String parseByte2HexStr(byte[] bArr) {
        StringBuilder sb = new StringBuilder();
        for (byte b : bArr) {
            String hexString = Integer.toHexString(b & 255);
            if (hexString.length() == 1) {
                hexString = '0' + hexString;
            }
            sb.append(hexString.toUpperCase());
        }
        return sb.toString();
    }
}
