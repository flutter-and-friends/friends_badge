package cn.manytag.rfidapi.uhf;

import cn.highlight.p004tx.app.CmdCenter;
import cn.manytag.rfidapi.uhf.util.HexUtil;

/* renamed from: cn.manytag.rfidapi.uhf.m */
/* loaded from: classes.dex */
public class C0711m {
    /* renamed from: a */
    public static byte[] m240a() {
        byte[] bArr = new byte[9];
        bArr[0] = 107;
        bArr[1] = 104;
        bArr[2] = 2;
        bArr[3] = 1;
        bArr[4] = 1;
        bArr[5] = 1;
        bArr[6] = m246b(bArr);
        bArr[7] = -74;
        bArr[8] = 22;
        return bArr;
    }

    /* renamed from: a */
    public static byte[] m241a(byte b) {
        byte[] bArr = new byte[9];
        bArr[0] = 107;
        bArr[1] = 104;
        bArr[2] = 34;
        bArr[3] = 1;
        bArr[4] = 1;
        bArr[5] = b;
        bArr[6] = m246b(bArr);
        bArr[7] = -74;
        bArr[8] = 22;
        return bArr;
    }

    /* renamed from: a */
    public static byte[] m242a(int i) {
        byte b = i == MST1126.SOOUND_OFF ? (byte) 8 : i == MST1126.SOOUND_ON ? (byte) 6 : (byte) 0;
        byte[] bArr = new byte[9];
        bArr[0] = 107;
        bArr[1] = 104;
        bArr[2] = CmdCenter.CMD_openMoreCabinet;
        bArr[3] = 1;
        bArr[4] = 1;
        bArr[5] = b;
        bArr[6] = m246b(bArr);
        bArr[7] = -74;
        bArr[8] = 22;
        return bArr;
    }

    /* renamed from: a */
    public static byte[] m243a(int i, int i2) {
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
        bArr[9] = m249c(bArr);
        bArr[10] = -74;
        bArr[11] = 22;
        return bArr;
    }

    /* renamed from: a */
    public static byte[] m244a(byte[] bArr) {
        byte[] bArr2 = new byte[10];
        bArr2[0] = 107;
        bArr2[1] = 104;
        bArr2[2] = 3;
        bArr2[3] = 1;
        bArr2[4] = 2;
        bArr2[5] = bArr[0];
        bArr2[6] = bArr[1];
        bArr2[7] = m252d(bArr2);
        bArr2[8] = -74;
        bArr2[9] = 22;
        return bArr2;
    }

    /* renamed from: a */
    public static byte[] m245a(byte[] bArr, int i) {
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
        bArr2[length - 3] = m249c(bArr2);
        bArr2[length - 2] = -74;
        bArr2[length - 1] = 22;
        return bArr2;
    }

    /* renamed from: b */
    private static byte m246b(byte[] bArr) {
        int i = 0;
        for (int i2 = 2; i2 <= 5; i2++) {
            i += bArr[i2];
        }
        return (byte) (i & 255);
    }

    /* renamed from: b */
    public static byte[] m247b() {
        byte[] bArr = new byte[9];
        bArr[0] = 107;
        bArr[1] = 104;
        bArr[2] = CmdCenter.CMD_getCabinetLockStatus;
        bArr[3] = 1;
        bArr[4] = 1;
        bArr[5] = 1;
        bArr[6] = m246b(bArr);
        bArr[7] = -74;
        bArr[8] = 22;
        return bArr;
    }

    /* renamed from: b */
    public static byte[] m248b(int i) {
        byte[] bArr = new byte[9];
        bArr[0] = 107;
        bArr[1] = 104;
        bArr[2] = 32;
        bArr[3] = 1;
        bArr[4] = 1;
        bArr[5] = HexUtil.IntToHex(Integer.valueOf(i));
        bArr[6] = m246b(bArr);
        bArr[7] = -74;
        bArr[8] = 22;
        return bArr;
    }

    /* renamed from: c */
    private static byte m249c(byte[] bArr) {
        byte b = 0;
        for (int i = 2; i < bArr.length; i++) {
            b = (byte) (b + bArr[i]);
        }
        return (byte) (b & 255);
    }

    /* renamed from: c */
    public static byte[] m250c() {
        byte[] bArr = new byte[9];
        bArr[0] = 107;
        bArr[1] = 104;
        bArr[2] = 68;
        bArr[3] = 1;
        bArr[4] = 1;
        bArr[5] = 0;
        bArr[6] = m246b(bArr);
        bArr[7] = -74;
        bArr[8] = 22;
        return bArr;
    }

    /* renamed from: c */
    public static byte[] m251c(int i) {
        byte[] bArr = new byte[9];
        bArr[0] = 107;
        bArr[1] = 104;
        bArr[2] = 48;
        bArr[3] = 1;
        bArr[4] = 1;
        bArr[5] = i != 0 ? (byte) 2 : (byte) 1;
        bArr[6] = m246b(bArr);
        bArr[7] = -74;
        bArr[8] = 22;
        return bArr;
    }

    /* renamed from: d */
    private static byte m252d(byte[] bArr) {
        int i = 0;
        for (int i2 = 2; i2 <= 6; i2++) {
            i += bArr[i2];
        }
        return (byte) (i & 255);
    }

    /* renamed from: d */
    public static byte[] m253d() {
        byte[] bArr = new byte[9];
        bArr[0] = 107;
        bArr[1] = 104;
        bArr[2] = 33;
        bArr[3] = 1;
        bArr[4] = 1;
        bArr[5] = 1;
        bArr[6] = m246b(bArr);
        bArr[7] = -74;
        bArr[8] = 22;
        return bArr;
    }

    /* renamed from: e */
    public static byte[] m254e() {
        byte[] bArr = new byte[9];
        bArr[0] = 107;
        bArr[1] = 104;
        bArr[2] = 64;
        bArr[3] = 1;
        bArr[4] = 1;
        bArr[5] = 1;
        bArr[6] = m246b(bArr);
        bArr[7] = -74;
        bArr[8] = 22;
        return bArr;
    }

    /* renamed from: f */
    public static byte[] m255f() {
        byte[] bArr = new byte[9];
        bArr[0] = 107;
        bArr[1] = 104;
        bArr[2] = 67;
        bArr[3] = 1;
        bArr[4] = 1;
        bArr[5] = 1;
        bArr[6] = m246b(bArr);
        bArr[7] = -74;
        bArr[8] = 22;
        return bArr;
    }

    /* renamed from: g */
    public static byte[] m256g() {
        byte[] bArr = new byte[9];
        bArr[0] = 107;
        bArr[1] = 104;
        bArr[2] = 49;
        bArr[3] = 1;
        bArr[4] = 1;
        bArr[5] = 1;
        bArr[6] = m246b(bArr);
        bArr[7] = -74;
        bArr[8] = 22;
        return bArr;
    }

    /* renamed from: h */
    public static byte[] m257h() {
        byte[] bArr = new byte[9];
        bArr[0] = 107;
        bArr[1] = 104;
        bArr[2] = 50;
        bArr[3] = 1;
        bArr[4] = 1;
        bArr[5] = 1;
        bArr[6] = m246b(bArr);
        bArr[7] = -74;
        bArr[8] = 22;
        return bArr;
    }

    /* renamed from: i */
    public static byte[] m258i() {
        byte[] bArr = new byte[9];
        bArr[0] = 107;
        bArr[1] = 104;
        bArr[2] = 50;
        bArr[3] = 1;
        bArr[4] = 1;
        bArr[5] = 2;
        bArr[6] = m246b(bArr);
        bArr[7] = -74;
        bArr[8] = 22;
        return bArr;
    }

    /* renamed from: j */
    public static byte[] m259j() {
        byte[] bArr = new byte[9];
        bArr[0] = 107;
        bArr[1] = 104;
        bArr[2] = 53;
        bArr[3] = 1;
        bArr[4] = 1;
        bArr[5] = 1;
        bArr[6] = m246b(bArr);
        bArr[7] = -74;
        bArr[8] = 22;
        return bArr;
    }

    /* renamed from: k */
    public static byte[] m260k() {
        byte[] bArr = new byte[9];
        bArr[0] = 107;
        bArr[1] = 104;
        bArr[2] = 35;
        bArr[3] = 1;
        bArr[4] = 1;
        bArr[5] = 1;
        bArr[6] = m246b(bArr);
        bArr[7] = -74;
        bArr[8] = 22;
        return bArr;
    }

    /* renamed from: l */
    public static byte[] m261l() {
        byte[] bArr = new byte[9];
        bArr[0] = 107;
        bArr[1] = 104;
        bArr[2] = -1;
        bArr[3] = 1;
        bArr[4] = 1;
        bArr[5] = 1;
        bArr[6] = m246b(bArr);
        bArr[7] = -74;
        bArr[8] = 22;
        return bArr;
    }

    /* renamed from: m */
    public static byte[] m262m() {
        byte[] bArr = new byte[9];
        bArr[0] = 107;
        bArr[1] = 104;
        bArr[2] = 64;
        bArr[3] = 1;
        bArr[4] = 1;
        bArr[5] = 0;
        bArr[6] = m246b(bArr);
        bArr[7] = -74;
        bArr[8] = 22;
        return bArr;
    }
}
