package jxl.biff;

import androidx.core.internal.view.SupportMenu;
import androidx.core.view.MotionEventCompat;

/* loaded from: classes2.dex */
public final class IntegerHelper {
    public static int getInt(byte b, byte b2) {
        return (b & 255) | ((b2 & 255) << 8);
    }

    public static short getShort(byte b, byte b2) {
        return (short) (((short) (b & 255)) | (((short) (b2 & 255)) << 8));
    }

    public static byte[] getTwoBytes(int i) {
        return new byte[]{(byte) (i & 255), (byte) ((i & MotionEventCompat.ACTION_POINTER_INDEX_MASK) >> 8)};
    }

    private IntegerHelper() {
    }

    public static int getInt(byte b, byte b2, byte b3, byte b4) {
        return getInt(b, b2) | (getInt(b3, b4) << 16);
    }

    public static byte[] getFourBytes(int i) {
        byte[] bArr = new byte[4];
        int i2 = 65535 & i;
        int i3 = (i & SupportMenu.CATEGORY_MASK) >> 16;
        getTwoBytes(i2, bArr, 0);
        getTwoBytes(i3, bArr, 2);
        return bArr;
    }

    public static void getTwoBytes(int i, byte[] bArr, int i2) {
        bArr[i2] = (byte) (i & 255);
        bArr[i2 + 1] = (byte) ((i & MotionEventCompat.ACTION_POINTER_INDEX_MASK) >> 8);
    }

    public static void getFourBytes(int i, byte[] bArr, int i2) {
        byte[] fourBytes = getFourBytes(i);
        bArr[i2] = fourBytes[0];
        bArr[i2 + 1] = fourBytes[1];
        bArr[i2 + 2] = fourBytes[2];
        bArr[i2 + 3] = fourBytes[3];
    }
}
