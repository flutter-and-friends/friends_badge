package jxl.biff;

/* loaded from: classes2.dex */
public class DoubleHelper {
    private DoubleHelper() {
    }

    public static double getIEEEDouble(byte[] bArr, int i) {
        int i2 = IntegerHelper.getInt(bArr[i], bArr[i + 1], bArr[i + 2], bArr[i + 3]);
        boolean z = (Integer.MIN_VALUE & IntegerHelper.getInt(bArr[i + 4], bArr[i + 5], bArr[i + 6], bArr[i + 7])) != 0;
        long j = (r7 & Integer.MAX_VALUE) * 4294967296L;
        long j2 = i2;
        if (i2 < 0) {
            j2 += 4294967296L;
        }
        double dLongBitsToDouble = Double.longBitsToDouble(j + j2);
        return z ? -dLongBitsToDouble : dLongBitsToDouble;
    }

    public static void getIEEEBytes(double d, byte[] bArr, int i) {
        long jDoubleToLongBits = Double.doubleToLongBits(d);
        bArr[i] = (byte) (255 & jDoubleToLongBits);
        bArr[i + 1] = (byte) ((65280 & jDoubleToLongBits) >> 8);
        bArr[i + 2] = (byte) ((16711680 & jDoubleToLongBits) >> 16);
        bArr[i + 3] = (byte) (((-16777216) & jDoubleToLongBits) >> 24);
        bArr[i + 4] = (byte) ((1095216660480L & jDoubleToLongBits) >> 32);
        bArr[i + 5] = (byte) ((280375465082880L & jDoubleToLongBits) >> 40);
        bArr[i + 6] = (byte) ((71776119061217280L & jDoubleToLongBits) >> 48);
        bArr[i + 7] = (byte) ((jDoubleToLongBits & (-72057594037927936L)) >> 56);
    }
}
