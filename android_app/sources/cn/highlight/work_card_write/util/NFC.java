package cn.highlight.work_card_write.util;

import android.content.Intent;
import android.nfc.Tag;
import android.nfc.tech.NfcA;
import android.util.Log;
import java.io.IOException;

/* loaded from: classes.dex */
public class NFC {
    public static final int ERROR = -1;

    /* renamed from: S0 */
    public static final int f126S0 = 0;

    /* renamed from: S1 */
    public static final int f127S1 = 256;

    /* renamed from: S2 */
    public static final int f128S2 = 512;

    /* renamed from: S4 */
    public static final int f129S4 = 1024;

    /* renamed from: S6 */
    public static final int f130S6 = 1536;

    /* renamed from: S7 */
    public static final int f131S7 = 1792;

    /* renamed from: S8 */
    public static final int f132S8 = 2048;
    public static final int SUCCESS = 0;
    public static final int W_END = 224;
    public static final int W_START = 7;

    public static String readUid(Intent intent) {
        return "android.nfc.action.TAG_DISCOVERED".equals(intent.getAction()) ? getUid(intent) : "";
    }

    public static boolean writeTag(Intent intent, byte[][] bArr) throws InterruptedException, IOException {
        if ("android.nfc.action.TAG_DISCOVERED".equals(intent.getAction())) {
            NfcA nfcA = NfcA.get((Tag) intent.getParcelableExtra("android.nfc.extra.TAG"));
            try {
                long jCurrentTimeMillis = System.currentTimeMillis();
                nfcA.connect();
                if (setStatus(nfcA, 0) == -1) {
                    nfcA.close();
                    return false;
                }
                if (readStatus(nfcA) == 0) {
                    int i = 0;
                    int i2 = 0;
                    while (i < bArr.length) {
                        i2++;
                        StringBuilder sb = new StringBuilder();
                        sb.append("第 ");
                        int i3 = i + 1;
                        sb.append(i3);
                        sb.append(" 次, 数组data的长度为 ");
                        sb.append(bArr[i].length);
                        Log.e("l循环", sb.toString());
                        int iSendCmd = sendCmd(nfcA, bArr[i], i3);
                        if (iSendCmd == 0) {
                            Log.e("l循环结果", "第 " + i3 + " 次操作成功");
                            i = i3;
                            i2 = 0;
                        } else if (i2 == 5) {
                            Log.e("l循环结果", "第 " + i3 + " 次操作失败" + i2);
                            nfcA.close();
                            return false;
                        }
                        if (i < bArr.length || iSendCmd == -1) {
                            Thread.sleep(1000L);
                        }
                    }
                    Log.e("NFC", "连接耗总耗时：" + (System.currentTimeMillis() - jCurrentTimeMillis));
                    nfcA.close();
                    return true;
                }
                nfcA.close();
            } catch (Exception e) {
                Log.e("writeTag", "ERROR:" + e.getMessage());
            }
        }
        return false;
    }

    /* renamed from: d */
    public static byte[] m44d(int i, byte b) {
        byte[] bArr = new byte[i];
        bArr[0] = (byte) (i >> 8);
        bArr[1] = (byte) (i & 255);
        bArr[2] = b;
        bArr[3] = 0;
        return bArr;
    }

    public static int sendCmd(NfcA nfcA, byte[] bArr, int i) throws IOException {
        try {
            long jCurrentTimeMillis = System.currentTimeMillis();
            int length = bArr.length;
            int i2 = length % 4 == 0 ? length / 4 : (length / 4) + 1;
            int i3 = 0;
            for (int i4 = 0; i4 < i2; i4++) {
                byte[] bArr2 = new byte[6];
                bArr2[0] = -94;
                bArr2[1] = (byte) (i4 + 7);
                int i5 = i4 * 4;
                bArr2[2] = bArr[i5];
                int i6 = i5 + 2;
                bArr2[3] = length < i6 ? (byte) 0 : bArr[i5 + 1];
                int i7 = i5 + 3;
                bArr2[4] = length < i7 ? (byte) 0 : bArr[i6];
                bArr2[5] = length < i5 + 4 ? (byte) 0 : bArr[i7];
                try {
                    nfcA.transceive(bArr2);
                } catch (Exception unused) {
                    i3 = -1;
                }
            }
            if (i3 == -1) {
                return i3;
            }
            Log.e("NFC", "发送成功" + i);
            if (setStatus(nfcA, 512) == -1) {
                return -1;
            }
            Log.e("NFC", "发送耗时" + i + "：" + (System.currentTimeMillis() - jCurrentTimeMillis));
            return i3;
        } catch (Exception e) {
            Log.e("writeTag", "ERROR:" + e.getMessage());
            return -1;
        }
    }

    private static int readStatus(NfcA nfcA) throws IOException {
        byte[] bArr = {48, 6};
        try {
            if (!nfcA.isConnected()) {
                nfcA.connect();
            }
            byte[] bArrTransceive = nfcA.transceive(bArr);
            return bArrTransceive[1] | (bArrTransceive[0] << 8);
        } catch (Exception unused) {
            return -1;
        }
    }

    private static int setStatus(NfcA nfcA, int i) throws IOException {
        try {
            nfcA.transceive(new byte[]{-94, 6, (byte) (i >> 8), (byte) (i & 255), 0, 0});
            return 0;
        } catch (Exception unused) {
            return -1;
        }
    }

    public static byte getCheck(byte[] bArr) {
        int i = 0;
        for (int i2 = 0; i2 < bArr.length - 1; i2++) {
            i ^= bArr[i2];
        }
        return (byte) i;
    }

    private static String getUid(Intent intent) {
        return getHex(intent.getByteArrayExtra("android.nfc.extra.ID"));
    }

    public static String getHex(byte[] bArr) {
        StringBuffer stringBuffer = new StringBuffer();
        for (byte b : bArr) {
            int i = b & 255;
            if (i < 16) {
                stringBuffer.append('0');
            }
            stringBuffer.append(Integer.toHexString(i));
        }
        return stringBuffer.toString().toUpperCase();
    }

    public static long getDec(byte[] bArr) {
        long j = 0;
        long j2 = 1;
        for (byte b : bArr) {
            j += (b & 255) * j2;
            j2 *= 256;
        }
        return j;
    }
}
