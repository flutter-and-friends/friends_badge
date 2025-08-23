package cn.highlight.tx.utils;

/* loaded from: classes.dex */
public class CRC16Util {
    private static byte[] intToBytes(int i) {
        return new byte[]{(byte) (i & 255), (byte) ((i >> 8) & 255)};
    }

    public static byte[] appendCrc16(String... strArr) {
        byte[] bArr = new byte[0];
        int i = 0;
        while (i < strArr.length) {
            byte b = (byte) Integer.parseInt(strArr[i], 16);
            byte[] bArr2 = new byte[bArr.length + 1];
            byte[] bArr3 = {b};
            System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
            System.arraycopy(bArr3, 0, bArr2, bArr.length, bArr3.length);
            i++;
            bArr = bArr2;
        }
        return appendCrc16(bArr);
    }

    public static byte[] appendCrc16(byte[] bArr) {
        byte[] crc16 = getCrc16(bArr, 0, bArr.length);
        byte[] bArr2 = new byte[bArr.length + crc16.length];
        System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
        System.arraycopy(crc16, 0, bArr2, bArr.length, crc16.length);
        return bArr2;
    }

    public static byte[] getCrc16(byte[] bArr, int i, int i2) {
        int i3 = i2 + i;
        int i4 = 65535;
        while (i < i3) {
            i4 = ((i4 & 255) ^ (bArr[i] & 255)) | (65280 & i4);
            for (int i5 = 0; i5 < 8; i5++) {
                i4 = (i4 & 1) > 0 ? (i4 >> 1) ^ 40961 : i4 >> 1;
            }
            i++;
        }
        return intToBytes(i4);
    }
}
