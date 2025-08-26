package cn.highlight.p004tx.app;

import cn.highlight.p004tx.utils.BCCUtil;

/* loaded from: classes.dex */
public class CmdCRT {
    private static String TAG = "CmdCRT";

    public static byte[] getCardSerial() {
        try {
            byte[] bArr = new byte[4];
            bArr[0] = 3;
            bArr[1] = 32;
            bArr[2] = 0;
            bArr[3] = BCCUtil.getXor2(bArr);
            return bArr;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public static byte[] getCardSerial2() {
        try {
            return new byte[]{0, 0, 3, 3, 0, 0};
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public static boolean isValid(byte[] bArr) {
        if (bArr == null || bArr.length < 2) {
            return false;
        }
        return BCCUtil.getXor2(bArr) == bArr[bArr.length - 1];
    }
}
