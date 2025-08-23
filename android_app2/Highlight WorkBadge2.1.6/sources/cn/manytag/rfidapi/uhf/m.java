package cn.manytag.rfidapi.uhf;

import cn.highlight.tx.app.CmdCenter;
import cn.manytag.rfidapi.uhf.util.HexUtil;

/* loaded from: classes.dex */
public class m {
    public static byte[] a() {
        byte[] bArr = new byte[9];
        bArr[0] = 107;
        bArr[1] = 104;
        bArr[2] = 2;
        bArr[3] = 1;
        bArr[4] = 1;
        bArr[5] = 1;
        bArr[6] = b(bArr);
        bArr[7] = -74;
        bArr[8] = 22;
        return bArr;
    }

    public static byte[] a(byte b) {
        byte[] bArr = new byte[9];
        bArr[0] = 107;
        bArr[1] = 104;
        bArr[2] = 34;
        bArr[3] = 1;
        bArr[4] = 1;
        bArr[5] = b;
        bArr[6] = b(bArr);
        bArr[7] = -74;
        bArr[8] = 22;
        return bArr;
    }

    public static byte[] a(int i) {
        byte b = i == MST1126.SOOUND_OFF ? (byte) 8 : i == MST1126.SOOUND_ON ? (byte) 6 : (byte) 0;
        byte[] bArr = new byte[9];
        bArr[0] = 107;
        bArr[1] = 104;
        bArr[2] = CmdCenter.CMD_openMoreCabinet;
        bArr[3] = 1;
        bArr[4] = 1;
        bArr[5] = b;
        bArr[6] = b(bArr);
        bArr[7] = -74;
        bArr[8] = 22;
        return bArr;
    }

    public static byte[] a(int i, int i2) {
        byte[] bArr = new byte[12];
        bArr[0] = 107;
        bArr[1] = 104;
        bArr[2] = 52;
        bArr[3] = 1;
        bArr[4] = 4;
        bArr[5] = 0;
        bArr[6] = HexUtil.IntToHex(Integer.valueOf(i));
        bArr[7] = 0;
        bArr[8] = HexUtil.IntToHex(Integer.valueOf(i2));
        bArr[9] = c(bArr);
        bArr[10] = -74;
        bArr[11] = 22;
        return bArr;
    }

    public static byte[] a(byte[] bArr) {
        byte[] bArr2 = new byte[10];
        bArr2[0] = 107;
        bArr2[1] = 104;
        bArr2[2] = 3;
        bArr2[3] = 1;
        bArr2[4] = 2;
        bArr2[5] = bArr[0];
        bArr2[6] = bArr[1];
        bArr2[7] = d(bArr2);
        bArr2[8] = -74;
        bArr2[9] = 22;
        return bArr2;
    }

    public static byte[] a(byte[] bArr, int i) {
        int length = bArr.length + 11;
        byte[] bArr2 = new byte[length];
        bArr2[0] = 107;
        bArr2[1] = 104;
        bArr2[2] = 66;
        bArr2[3] = 1;
        bArr2[4] = HexUtil.IntToHex(Integer.valueOf(bArr.length + 3));
        bArr2[5] = 1;
        bArr2[6] = 0;
        bArr2[7] = HexUtil.IntToHex(Integer.valueOf(i));
        for (int i2 = 0; i2 < bArr.length; i2++) {
            bArr2[i2 + 8] = bArr[i2];
        }
        bArr2[length - 3] = c(bArr2);
        bArr2[length - 2] = -74;
        bArr2[length - 1] = 22;
        return bArr2;
    }

    private static byte b(byte[] bArr) {
        int i = 0;
        for (int i2 = 2; i2 <= 5; i2++) {
            i += bArr[i2];
        }
        return (byte) (i & 255);
    }

    public static byte[] b() {
        byte[] bArr = new byte[9];
        bArr[0] = 107;
        bArr[1] = 104;
        bArr[2] = CmdCenter.CMD_getCabinetLockStatus;
        bArr[3] = 1;
        bArr[4] = 1;
        bArr[5] = 1;
        bArr[6] = b(bArr);
        bArr[7] = -74;
        bArr[8] = 22;
        return bArr;
    }

    public static byte[] b(int i) {
        byte[] bArr = new byte[9];
        bArr[0] = 107;
        bArr[1] = 104;
        bArr[2] = 32;
        bArr[3] = 1;
        bArr[4] = 1;
        bArr[5] = HexUtil.IntToHex(Integer.valueOf(i));
        bArr[6] = b(bArr);
        bArr[7] = -74;
        bArr[8] = 22;
        return bArr;
    }

    private static byte c(byte[] bArr) {
        byte b = 0;
        for (int i = 2; i < bArr.length; i++) {
            b = (byte) (b + bArr[i]);
        }
        return (byte) (b & 255);
    }

    public static byte[] c() {
        byte[] bArr = new byte[9];
        bArr[0] = 107;
        bArr[1] = 104;
        bArr[2] = 68;
        bArr[3] = 1;
        bArr[4] = 1;
        bArr[5] = 0;
        bArr[6] = b(bArr);
        bArr[7] = -74;
        bArr[8] = 22;
        return bArr;
    }

    public static byte[] c(int i) {
        byte[] bArr = new byte[9];
        bArr[0] = 107;
        bArr[1] = 104;
        bArr[2] = 48;
        bArr[3] = 1;
        bArr[4] = 1;
        bArr[5] = i != 0 ? (byte) 2 : (byte) 1;
        bArr[6] = b(bArr);
        bArr[7] = -74;
        bArr[8] = 22;
        return bArr;
    }

    private static byte d(byte[] bArr) {
        int i = 0;
        for (int i2 = 2; i2 <= 6; i2++) {
            i += bArr[i2];
        }
        return (byte) (i & 255);
    }

    public static byte[] d() {
        byte[] bArr = new byte[9];
        bArr[0] = 107;
        bArr[1] = 104;
        bArr[2] = 33;
        bArr[3] = 1;
        bArr[4] = 1;
        bArr[5] = 1;
        bArr[6] = b(bArr);
        bArr[7] = -74;
        bArr[8] = 22;
        return bArr;
    }

    public static byte[] e() {
        byte[] bArr = new byte[9];
        bArr[0] = 107;
        bArr[1] = 104;
        bArr[2] = 64;
        bArr[3] = 1;
        bArr[4] = 1;
        bArr[5] = 1;
        bArr[6] = b(bArr);
        bArr[7] = -74;
        bArr[8] = 22;
        return bArr;
    }

    public static byte[] f() {
        byte[] bArr = new byte[9];
        bArr[0] = 107;
        bArr[1] = 104;
        bArr[2] = 67;
        bArr[3] = 1;
        bArr[4] = 1;
        bArr[5] = 1;
        bArr[6] = b(bArr);
        bArr[7] = -74;
        bArr[8] = 22;
        return bArr;
    }

    public static byte[] g() {
        byte[] bArr = new byte[9];
        bArr[0] = 107;
        bArr[1] = 104;
        bArr[2] = 49;
        bArr[3] = 1;
        bArr[4] = 1;
        bArr[5] = 1;
        bArr[6] = b(bArr);
        bArr[7] = -74;
        bArr[8] = 22;
        return bArr;
    }

    public static byte[] h() {
        byte[] bArr = new byte[9];
        bArr[0] = 107;
        bArr[1] = 104;
        bArr[2] = 50;
        bArr[3] = 1;
        bArr[4] = 1;
        bArr[5] = 1;
        bArr[6] = b(bArr);
        bArr[7] = -74;
        bArr[8] = 22;
        return bArr;
    }

    public static byte[] i() {
        byte[] bArr = new byte[9];
        bArr[0] = 107;
        bArr[1] = 104;
        bArr[2] = 50;
        bArr[3] = 1;
        bArr[4] = 1;
        bArr[5] = 2;
        bArr[6] = b(bArr);
        bArr[7] = -74;
        bArr[8] = 22;
        return bArr;
    }

    public static byte[] j() {
        byte[] bArr = new byte[9];
        bArr[0] = 107;
        bArr[1] = 104;
        bArr[2] = 53;
        bArr[3] = 1;
        bArr[4] = 1;
        bArr[5] = 1;
        bArr[6] = b(bArr);
        bArr[7] = -74;
        bArr[8] = 22;
        return bArr;
    }

    public static byte[] k() {
        byte[] bArr = new byte[9];
        bArr[0] = 107;
        bArr[1] = 104;
        bArr[2] = 35;
        bArr[3] = 1;
        bArr[4] = 1;
        bArr[5] = 1;
        bArr[6] = b(bArr);
        bArr[7] = -74;
        bArr[8] = 22;
        return bArr;
    }

    public static byte[] l() {
        byte[] bArr = new byte[9];
        bArr[0] = 107;
        bArr[1] = 104;
        bArr[2] = -1;
        bArr[3] = 1;
        bArr[4] = 1;
        bArr[5] = 1;
        bArr[6] = b(bArr);
        bArr[7] = -74;
        bArr[8] = 22;
        return bArr;
    }

    public static byte[] m() {
        byte[] bArr = new byte[9];
        bArr[0] = 107;
        bArr[1] = 104;
        bArr[2] = 64;
        bArr[3] = 1;
        bArr[4] = 1;
        bArr[5] = 0;
        bArr[6] = b(bArr);
        bArr[7] = -74;
        bArr[8] = 22;
        return bArr;
    }
}
