package cn.pda.serialport;

import androidx.core.view.MotionEventCompat;
import androidx.core.view.ViewCompat;
import cn.highlight.p004tx.app.CmdCenter;
import java.text.SimpleDateFormat;
import java.util.Date;

/* loaded from: classes.dex */
public class Tools {
    public static byte[] intToByte(int i) {
        return new byte[]{(byte) (i & 255), (byte) ((65280 & i) >> 8), (byte) ((16711680 & i) >> 16), (byte) ((i & ViewCompat.MEASURED_STATE_MASK) >> 24)};
    }

    public static String Bytes2HexString(byte[] bArr, int i) {
        String str = "";
        for (int i2 = 0; i2 < i; i2++) {
            String hexString = Integer.toHexString(bArr[i2] & 255);
            if (hexString.length() == 1) {
                hexString = "0" + hexString;
            }
            str = str + hexString.toUpperCase();
        }
        return str;
    }

    public static byte uniteBytes(byte b, byte b2) {
        return (byte) (((byte) (Byte.decode("0x" + new String(new byte[]{b})).byteValue() << 4)) ^ Byte.decode("0x" + new String(new byte[]{b2})).byteValue());
    }

    public static byte[] HexString2Bytes(String str) {
        int length = str.length() / 2;
        byte[] bArr = new byte[length];
        byte[] bytes = str.getBytes();
        for (int i = 0; i < length; i++) {
            int i2 = i * 2;
            bArr[i] = uniteBytes(bytes[i2], bytes[i2 + 1]);
        }
        return bArr;
    }

    public static int bytesToInt(byte[] bArr) {
        return ((bArr[3] << 25) & ViewCompat.MEASURED_STATE_MASK) | (bArr[0] & 255) | ((bArr[1] << 8) & MotionEventCompat.ACTION_POINTER_INDEX_MASK) | ((bArr[2] << CmdCenter.CMD_openMoreCabinet) & 16711680);
    }

    public static String getmyTime() {
        return new SimpleDateFormat("yyyy-MM-dd hh:mm:ss").format(new Date());
    }
}
