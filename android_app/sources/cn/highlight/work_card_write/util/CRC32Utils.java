package cn.highlight.work_card_write.util;

/* loaded from: classes.dex */
public class CRC32Utils {
    private static final int POLY = -306674912;
    private static final int TABLE_SIZE = 256;
    private static final int[] table = new int[256];

    public static byte[] toByteArray(int i) {
        return new byte[]{(byte) ((i >> 24) & 255), (byte) ((i >> 16) & 255), (byte) ((i >> 8) & 255), (byte) (i & 255)};
    }

    static {
        for (int i = 0; i < 256; i++) {
            int i2 = i << 24;
            for (int i3 = 0; i3 < 8; i3++) {
                i2 = (Integer.MIN_VALUE & i2) != 0 ? (i2 << 1) ^ POLY : i2 << 1;
            }
            table[i] = i2;
        }
    }

    public static int crc32(byte[] bArr) {
        int i = 0;
        for (byte b : bArr) {
            i = (i << 8) ^ table[(b ^ (i >> 24)) & 255];
        }
        return i;
    }

    public static int crc32(byte[] bArr, int i) {
        for (int i2 : bArr) {
            i = (i << 8) ^ table[(i2 ^ (i >> 24)) & 255];
        }
        return i;
    }
}
