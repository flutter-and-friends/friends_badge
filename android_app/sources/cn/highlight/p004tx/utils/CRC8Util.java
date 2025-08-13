package cn.highlight.p004tx.utils;

import cn.highlight.p004tx.app.CmdCenter;
import cn.highlight.p004tx.app.CmdLock;
import com.p013gg.reader.api.protocol.p014gx.Message;
import kotlin.jvm.internal.ByteCompanionObject;

/* loaded from: classes.dex */
public class CRC8Util {
    static byte[] crc8_tab = {0, 94, -68, -30, 97, 63, -35, CmdLock.CMD_getCabinetLockStatus, -62, -100, 126, 32, -93, -3, 31, 65, -99, -61, 33, ByteCompanionObject.MAX_VALUE, -4, -94, 64, 30, 95, 1, -29, -67, 62, 96, -126, -36, 35, 125, -97, -63, 66, 28, -2, -96, -31, -65, 93, 3, ByteCompanionObject.MIN_VALUE, -34, 60, 98, -66, -32, 2, 92, -33, -127, 99, 61, 124, 34, -64, -98, 29, 67, -95, -1, 70, 24, -6, -92, 39, 121, -101, -59, CmdLock.CMD_getAllCabinetLockStatus, -38, 56, 102, -27, -69, 89, 7, -37, -123, 103, 57, -70, -28, 6, 88, 25, 71, -91, -5, 120, 38, -60, -102, 101, 59, -39, CmdLock.CMD_openMoreCabinet, 4, Message.HEAD, -72, -26, -89, -7, 27, 69, -58, -104, 122, 36, -8, -90, 68, 26, -103, -57, 37, 123, 58, 100, CmdLock.CMD_openAllCabinet, -40, 91, 5, -25, -71, -116, -46, 48, 110, -19, -77, 81, 15, 78, CmdCenter.CMD_openMoreCabinet, -14, -84, 47, 113, -109, -51, CmdCenter.CMD_getCabinetLockStatus, 79, -83, -13, 112, 46, -52, -110, -45, -115, 111, 49, -78, -20, 14, 80, -81, -15, 19, 77, -50, -112, 114, 44, 109, 51, -47, -113, 12, 82, -80, -18, 50, 108, -114, -48, 83, 13, -17, -79, -16, -82, 76, CmdCenter.CMD_setCabinetSensor, -111, -49, 45, 115, -54, -108, 118, 40, -85, -11, 23, 73, 8, 86, -76, -22, 105, 55, -43, -117, 87, 9, -21, -75, 54, 104, -118, -44, -107, -53, 41, 119, -12, -86, 72, 22, -23, -73, 85, 11, -120, -42, 52, 106, 43, 117, -105, -55, 74, 20, -10, -88, 116, 42, -56, -106, 21, 75, -87, -9, -74, -24, 10, 84, -41, -119, 107, 53};

    public static byte calcCrc8(byte[] bArr) {
        return calcCrc8(bArr, 0, bArr.length - 1, (byte) 0);
    }

    public static byte calcCrc82(byte[] bArr) {
        int i = 0;
        byte b = 0;
        while (i < bArr.length) {
            byte b2 = (byte) (b ^ bArr[i]);
            for (int i2 = 0; i2 < 8; i2++) {
                b2 = (byte) ((b2 & ByteCompanionObject.MIN_VALUE) != 0 ? ((byte) (b2 << 1)) ^ CmdCenter.CMD_upRFIDData : b2 << 1);
            }
            i++;
            b = b2;
        }
        return b;
    }

    public static byte calcCrc8(byte[] bArr, int i, int i2) {
        return calcCrc8(bArr, i, i2, (byte) 0);
    }

    public static byte calcCrc8(byte[] bArr, int i, int i2, byte b) {
        byte b2 = b;
        for (int i3 = i; i3 < i + i2; i3++) {
            b2 = crc8_tab[(b2 ^ bArr[i3]) & 255];
        }
        return b2;
    }
}
