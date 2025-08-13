package cn.highlight.p004tx.app;

import java.util.List;

/* loaded from: classes.dex */
public class CmdLock {
    public static final byte CMD_getAllCabinetLockStatus = -124;
    public static final byte CMD_getCabinetLockStatus = -125;
    public static final byte CMD_openAllCabinet = -122;
    public static final byte CMD_openMoreCabinet = -121;

    public static byte[] getAllCabinetLockStatus(byte b) {
        try {
            byte[] bArr = new byte[8];
            bArr[0] = 87;
            bArr[1] = 75;
            bArr[2] = 76;
            bArr[3] = 89;
            bArr[4] = 8;
            bArr[5] = b;
            bArr[6] = CMD_getAllCabinetLockStatus;
            bArr[7] = getCheck(bArr);
            return bArr;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public static byte[] getCabinetLockStatus(byte b, int i) {
        try {
            byte[] bArr = new byte[9];
            bArr[0] = 87;
            bArr[1] = 75;
            bArr[2] = 76;
            bArr[3] = 89;
            bArr[4] = 9;
            bArr[5] = b;
            bArr[6] = CMD_getCabinetLockStatus;
            bArr[7] = (byte) i;
            bArr[8] = getCheck(bArr);
            return bArr;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public static byte[] openAllCabinet(byte b) {
        try {
            byte[] bArr = new byte[8];
            bArr[0] = 87;
            bArr[1] = 75;
            bArr[2] = 76;
            bArr[3] = 89;
            bArr[4] = 8;
            bArr[5] = b;
            bArr[6] = CMD_openAllCabinet;
            bArr[7] = getCheck(bArr);
            return bArr;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public static byte[] openMoreCabinet(byte b, List<Integer> list) {
        if (list != null) {
            try {
                if (list.size() != 0) {
                    int size = list.size() + 9;
                    byte[] bArr = new byte[size];
                    bArr[0] = 87;
                    bArr[1] = 75;
                    bArr[2] = 76;
                    bArr[3] = 89;
                    bArr[4] = (byte) size;
                    bArr[5] = b;
                    bArr[6] = CMD_openMoreCabinet;
                    int i = 7;
                    bArr[7] = (byte) list.size();
                    for (int i2 = 0; i2 < list.size(); i2++) {
                        i++;
                        bArr[i] = (byte) list.get(i2).intValue();
                    }
                    bArr[i + 1] = getCheck(bArr);
                    return bArr;
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return null;
    }

    private static byte getCheck(byte[] bArr) {
        byte b = bArr[0];
        for (int i = 1; i < bArr.length - 1; i++) {
            b = (byte) (b ^ bArr[i]);
        }
        return b;
    }

    public static boolean isValid(byte[] bArr) {
        return bArr != null && bArr.length >= 8 && bArr[0] == 87 && bArr[1] == 75 && bArr[2] == 76 && bArr[3] == 89 && getCheck(bArr) == bArr[bArr.length - 1];
    }
}
