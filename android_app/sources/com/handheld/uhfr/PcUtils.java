package com.handheld.uhfr;

import com.p013gg.reader.api.utils.BitBuffer;
import com.p013gg.reader.api.utils.HexUtils;

/* loaded from: classes.dex */
public class PcUtils {
    public static int getValueLen(String str) {
        if (str.length() % 4 == 0) {
            return str.length() / 4;
        }
        return (str.length() / 4) + 1;
    }

    public static int getValueLen(byte[] bArr) {
        if (bArr.length % 2 == 0) {
            return bArr.length / 2;
        }
        return (bArr.length / 2) + 1;
    }

    public static int getValueLen(int i) {
        if (i % 2 == 0) {
            return i / 2;
        }
        return (i / 2) + 1;
    }

    public static String getPc(int i) {
        BitBuffer bitBufferAllocateDynamic = BitBuffer.allocateDynamic();
        bitBufferAllocateDynamic.put(i << 11);
        bitBufferAllocateDynamic.position(16);
        byte[] bArr = new byte[2];
        bitBufferAllocateDynamic.get(bArr);
        return HexUtils.bytes2HexString(bArr);
    }

    public static String padRight(String str, int i, char c) {
        if (i - str.length() <= 0) {
            return str;
        }
        char[] cArr = new char[i];
        System.arraycopy(str.toCharArray(), 0, cArr, 0, str.length());
        for (int length = str.length(); length < i; length++) {
            cArr[length] = c;
        }
        return new String(cArr);
    }
}
