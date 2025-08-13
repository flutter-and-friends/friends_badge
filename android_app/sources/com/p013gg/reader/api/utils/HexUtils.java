package com.p013gg.reader.api.utils;

import androidx.core.view.MotionEventCompat;
import androidx.core.view.ViewCompat;
import cn.highlight.p004tx.app.CmdCenter;
import com.p013gg.reader.api.protocol.p014gx.EnumG;

/* loaded from: classes.dex */
public class HexUtils {
    public static byte[] int2Bytes(int i) {
        return new byte[]{(byte) ((i >> 24) & 255), (byte) ((i >> 16) & 255), (byte) ((i >> 8) & 255), (byte) (i & 255)};
    }

    public static boolean isHexDigit(char c) {
        if (c >= '0' && c <= '9') {
            return true;
        }
        if (c < 'A' || c > 'F') {
            return c >= 'a' && c <= 'f';
        }
        return true;
    }

    public static byte[] long2Bytes(long j) {
        return new byte[]{(byte) ((j >> 56) & 255), (byte) ((j >> 48) & 255), (byte) ((j >> 40) & 255), (byte) ((j >> 32) & 255), (byte) ((j >> 24) & 255), (byte) ((j >> 16) & 255), (byte) ((j >> 8) & 255), (byte) (j & 255)};
    }

    public static byte[] short2Bytes(short s) {
        return new byte[]{(byte) ((s >> 8) & 255), (byte) (s & 255)};
    }

    public static boolean isHexString(String str) {
        for (int i = 0; i < str.length(); i++) {
            if (!isHexDigit(str.charAt(i))) {
                return false;
            }
        }
        return true;
    }

    public static byte charToByte(char c) {
        return (byte) "0123456789ABCDEF".indexOf(Character.toUpperCase(c));
    }

    public static byte hex2Byte(String str) {
        if (str.length() < 2) {
            str = "00" + str;
        }
        if (str.length() > 2) {
            str = str.substring(0, 2);
        }
        return (byte) (charToByte(str.charAt(1)) | (charToByte(str.charAt(0)) << 4));
    }

    public static short hex2Short(String str) {
        if (str.length() < 4) {
            str = EnumG.MSG_TYPE_BIT_ERROR + str;
        }
        if (str.length() > 4) {
            str = str.substring(0, 4);
        }
        return (short) (charToByte(str.charAt(3)) | (charToByte(str.charAt(0)) << 12) | (charToByte(str.charAt(1)) << 8) | (charToByte(str.charAt(2)) << 4));
    }

    public static int hex2Int(String str) {
        if (str.length() < 8) {
            str = "00000000" + str;
        }
        if (str.length() > 8) {
            str = str.substring(0, 8);
        }
        return charToByte(str.charAt(7)) | (charToByte(str.charAt(0)) << 28) | (charToByte(str.charAt(1)) << 24) | (charToByte(str.charAt(2)) << 20) | (charToByte(str.charAt(3)) << CmdCenter.CMD_openMoreCabinet) | (charToByte(str.charAt(4)) << 12) | (charToByte(str.charAt(5)) << 8) | (charToByte(str.charAt(6)) << 4);
    }

    public static long hex2Long(String str) {
        if (str.length() < 16) {
            str = "0000000000000000" + str;
        }
        if (str.length() > 16) {
            str = str.substring(0, 16);
        }
        return (((((((((((charToByte(str.charAt(0)) << 28) | (charToByte(str.charAt(1)) << 24)) | (charToByte(str.charAt(2)) << 20)) | (charToByte(str.charAt(3)) << CmdCenter.CMD_openMoreCabinet)) | (charToByte(str.charAt(4)) << 12)) | (charToByte(str.charAt(5)) << 8)) | (charToByte(str.charAt(6)) << 4)) | charToByte(str.charAt(7))) << 16) | ((((charToByte(str.charAt(8)) << 12) | (charToByte(str.charAt(9)) << 8)) | (charToByte(str.charAt(10)) << 4)) | charToByte(str.charAt(11)))) << 16) | charToByte(str.charAt(15)) | (charToByte(str.charAt(14)) << 4) | (charToByte(str.charAt(12)) << 12) | (charToByte(str.charAt(13)) << 8);
    }

    public static String byte2Hex(byte b) {
        try {
            String hexString = Integer.toHexString(b & 255);
            if (hexString.length() == 1) {
                hexString = '0' + hexString;
            }
            return hexString.toUpperCase();
        } catch (Exception unused) {
            return "";
        }
    }

    public static String short2Hex(short s) {
        return byte2Hex((byte) ((s >> 8) & 255)) + byte2Hex((byte) (s & 255));
    }

    public static String int2Hex(int i) {
        return short2Hex((short) ((i >> 16) & 65535)) + short2Hex((short) (i & 65535));
    }

    public static String long2Hex(long j) {
        return int2Hex((int) (j >> 32)) + int2Hex((int) j);
    }

    public static byte[] hexString2Bytes(String str) {
        if (str == null || str.isEmpty()) {
            throw new IllegalArgumentException();
        }
        int i = 0;
        String strSubstring = "";
        for (int i2 = 0; i2 < str.length(); i2++) {
            char cCharAt = str.charAt(i2);
            if (isHexDigit(cCharAt)) {
                strSubstring = strSubstring + cCharAt;
            }
        }
        if (strSubstring.length() % 2 != 0) {
            strSubstring = strSubstring.substring(0, strSubstring.length() - 1);
        }
        byte[] bArr = new byte[strSubstring.length() / 2];
        int i3 = 0;
        while (i < bArr.length) {
            int i4 = i3 + 2;
            bArr[i] = hex2Byte(strSubstring.substring(i3, i4));
            i++;
            i3 = i4;
        }
        return bArr;
    }

    public static String bytes2HexString(byte[] bArr, int i, int i2) {
        if (bArr == null || bArr.length <= 0) {
            throw new IllegalArgumentException();
        }
        int i3 = i + i2;
        if (i3 > bArr.length) {
            throw new IllegalArgumentException();
        }
        if (i < 0 || i2 < 0) {
            throw new IllegalArgumentException();
        }
        StringBuffer stringBuffer = new StringBuffer();
        while (i < i3) {
            stringBuffer.append(byte2Hex(bArr[i]));
            i++;
        }
        return stringBuffer.toString();
    }

    public static String bytes2HexString(byte[] bArr) {
        if (bArr == null || bArr.length <= 0) {
            throw new IllegalArgumentException();
        }
        return bytes2HexString(bArr, 0, bArr.length);
    }

    public static short bytes2Short(byte[] bArr, int i) {
        if (bArr == null || bArr.length < i + 2) {
            throw new IllegalArgumentException();
        }
        return (short) ((bArr[i + 1] & 255) | ((bArr[i] << 8) & MotionEventCompat.ACTION_POINTER_INDEX_MASK));
    }

    public static short bytes2Short(byte[] bArr) {
        return bytes2Short(bArr, 0);
    }

    public static int bytes2Int(byte[] bArr, int i) {
        if (bArr == null || bArr.length < i + 4) {
            throw new IllegalArgumentException();
        }
        return (bArr[i + 3] & 255) | ((bArr[i] << 24) & ViewCompat.MEASURED_STATE_MASK) | ((bArr[i + 1] << CmdCenter.CMD_openMoreCabinet) & 16711680) | ((bArr[i + 2] << 8) & MotionEventCompat.ACTION_POINTER_INDEX_MASK);
    }

    public static int bytes2Int(byte[] bArr) {
        return bytes2Int(bArr, 0);
    }
}
