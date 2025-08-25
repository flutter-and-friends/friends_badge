package cn.manytag.rfidapi.uhf;

import android.util.Log;
import cn.manytag.rfidapi.uhf.util.Data_syn;
import cn.manytag.rfidapi.uhf.util.HexUtil;
import java.util.Arrays;

/* loaded from: classes.dex */
public class MST1126 {
    public static final String BARCODE = "BARCODE";
    public static final String CHINA1 = "China1(840MHz-845MHz)";
    public static final String CHINA2 = "China2(920MHz-925MHz)";
    public static final String EUROPE = "Europe(865MHz-868MHz)";
    public static final String FREE = "FREE";
    public static final String JAPAN = "Japan(952MHz-953MHz)";
    public static final String KOREA = "Korea(917MHz-923MHz)";
    public static int MAX_POWER = 28;
    public static final String RFID = "RFID";
    public static int SOOUND_OFF = 8;
    public static int SOOUND_ON = 6;
    public static final String USA = "USA(902MHz-928MHz)";

    public static boolean CheckDataLength(String str) {
        byte[] bArrHexStr2Bytes = Data_syn.hexStr2Bytes(str);
        Log.e("CheckDataLength", "原始数据" + str);
        byte[] bArrCopyOfRange = Arrays.copyOfRange(bArrHexStr2Bytes, 5, bArrHexStr2Bytes.length + (-3));
        Log.e("CheckDataLength", "复制的数据" + Data_syn.Bytes2HexString(bArrCopyOfRange));
        int iHexTo10 = HexUtil.hexTo10(bArrHexStr2Bytes[4]);
        Log.e("CheckDataLength", "获取长度" + iHexTo10 + "计算长度" + bArrCopyOfRange.length);
        return iHexTo10 == bArrCopyOfRange.length;
    }

    public static boolean CheckDataLength(byte[] bArr) {
        Log.e("CheckDataLength", "原始数据" + bArr);
        byte[] bArrCopyOfRange = Arrays.copyOfRange(bArr, 5, bArr.length + (-3));
        Log.e("CheckDataLength", "复制的数据" + Data_syn.Bytes2HexString(bArrCopyOfRange));
        int iHexTo10 = HexUtil.hexTo10(bArr[4]);
        Log.e("CheckDataLength", "获取长度" + iHexTo10 + "计算长度" + bArrCopyOfRange.length);
        return iHexTo10 == bArrCopyOfRange.length;
    }
}
