package cn.highlight.p004tx.app;

import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class CmdCenter {
    public static final byte CMD_getCabinetLockStatus = 17;
    public static final byte CMD_getRFIDArea = 4;
    public static final byte CMD_getRFIDConfig = 2;
    public static final byte CMD_getRFIDStatus = 6;
    public static final byte CMD_openMoreCabinet = 16;
    public static final byte CMD_setCabinetSensor = 18;
    public static final byte CMD_setRFIDArea = 3;
    public static final byte CMD_setRFIDConfig = 1;
    public static final byte CMD_startOrStopRFID = 5;
    public static final byte CMD_upRFIDData = 7;

    public static byte[] intToBytes(int i) {
        return new byte[]{(byte) ((i >> 8) & 255), (byte) (i & 255)};
    }

    public static byte[] getRFIDStatus() {
        try {
            byte[] bArr = new byte[7];
            bArr[0] = -69;
            bArr[1] = 0;
            bArr[2] = 6;
            bArr[3] = 0;
            bArr[4] = 0;
            bArr[5] = getCheck(bArr);
            bArr[6] = 126;
            return bArr;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public static byte[] setRfIdAnt(List<Integer> list) {
        if (list != null) {
            try {
                if (list.size() != 0) {
                    ArrayList arrayList = new ArrayList();
                    String str = "";
                    for (int i = 1; i <= 32; i++) {
                        str = list.contains(Integer.valueOf(i)) ? str + 1 : str + 0;
                        if (i % 8 == 0) {
                            arrayList.add(0, Byte.valueOf(bitToByte(charAtReverse(str))));
                        }
                    }
                    byte[] bArr = new byte[13];
                    bArr[0] = -69;
                    bArr[1] = 0;
                    bArr[2] = 1;
                    bArr[3] = 0;
                    bArr[4] = 6;
                    bArr[5] = 1;
                    bArr[6] = 2;
                    bArr[7] = ((Byte) arrayList.get(0)).byteValue();
                    bArr[8] = ((Byte) arrayList.get(1)).byteValue();
                    bArr[9] = ((Byte) arrayList.get(2)).byteValue();
                    bArr[10] = ((Byte) arrayList.get(3)).byteValue();
                    bArr[11] = getCheck(bArr);
                    bArr[12] = 126;
                    return bArr;
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return null;
    }

    public static byte[] setRfIdPower(List<AntPower> list) {
        if (list != null) {
            try {
                if (list.size() != 0) {
                    int size = (list.size() * 5) + 2;
                    byte[] bArr = new byte[size + 7];
                    bArr[0] = -69;
                    bArr[1] = 0;
                    bArr[2] = 1;
                    bArr[3] = 0;
                    bArr[4] = (byte) size;
                    bArr[5] = 1;
                    bArr[6] = 3;
                    int i = 6;
                    for (int i2 = 0; i2 < list.size(); i2++) {
                        int i3 = i + 1;
                        AntPower antPower = list.get(i2);
                        bArr[i3] = (byte) antPower.getAnt();
                        byte[] bArrIntToBytes = intToBytes(antPower.getPower() * 100);
                        int i4 = i3 + 1;
                        bArr[i4] = bArrIntToBytes[0];
                        int i5 = i4 + 1;
                        bArr[i5] = bArrIntToBytes[1];
                        int i6 = i5 + 1;
                        bArr[i6] = bArrIntToBytes[0];
                        i = i6 + 1;
                        bArr[i] = bArrIntToBytes[1];
                    }
                    int i7 = i + 1;
                    bArr[i7] = getCheck(bArr);
                    bArr[i7 + 1] = 126;
                    return bArr;
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return null;
    }

    public static byte[] getRFIDConfig(int i) {
        try {
            byte[] bArr = new byte[8];
            bArr[0] = -69;
            bArr[1] = 0;
            bArr[2] = 2;
            bArr[3] = 0;
            bArr[4] = 1;
            bArr[5] = (byte) i;
            bArr[6] = getCheck(bArr);
            bArr[7] = 126;
            return bArr;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public static byte[] setRFIDArea(int i) {
        try {
            byte[] bArr = new byte[9];
            bArr[0] = -69;
            bArr[1] = 0;
            bArr[2] = 3;
            bArr[3] = 0;
            bArr[4] = 2;
            bArr[5] = 1;
            bArr[6] = (byte) i;
            bArr[7] = getCheck(bArr);
            bArr[8] = 126;
            return bArr;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public static byte[] getRFIDArea() {
        try {
            byte[] bArr = new byte[7];
            bArr[0] = -69;
            bArr[1] = 0;
            bArr[2] = 4;
            bArr[3] = 0;
            bArr[4] = 0;
            bArr[5] = getCheck(bArr);
            bArr[6] = 126;
            return bArr;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public static byte[] startOrStopRFID(int i) {
        try {
            byte[] bArr = new byte[8];
            bArr[0] = -69;
            bArr[1] = 0;
            bArr[2] = 5;
            bArr[3] = 0;
            bArr[4] = 1;
            bArr[5] = (byte) i;
            bArr[6] = getCheck(bArr);
            bArr[7] = 126;
            return bArr;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public static byte[] openMoreCabinet(int i, List<Integer> list) {
        if (list != null) {
            try {
                if (list.size() != 0) {
                    int size = list.size() + 2;
                    byte[] bArr = new byte[size + 7];
                    bArr[0] = -69;
                    bArr[1] = 0;
                    bArr[2] = CMD_openMoreCabinet;
                    bArr[3] = 0;
                    bArr[4] = (byte) size;
                    bArr[5] = (byte) i;
                    int i2 = 6;
                    bArr[6] = (byte) list.size();
                    for (int i3 = 0; i3 < list.size(); i3++) {
                        i2++;
                        bArr[i2] = (byte) list.get(i3).intValue();
                    }
                    int i4 = i2 + 1;
                    bArr[i4] = getCheck(bArr);
                    bArr[i4 + 1] = 126;
                    return bArr;
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return null;
    }

    public static byte[] getCabinetLockStatus(int i, int i2) {
        try {
            byte[] bArr = new byte[9];
            bArr[0] = -69;
            bArr[1] = 0;
            bArr[2] = CMD_getCabinetLockStatus;
            bArr[3] = 0;
            bArr[4] = 2;
            bArr[5] = (byte) i;
            bArr[6] = (byte) i2;
            bArr[7] = getCheck(bArr);
            bArr[8] = 126;
            return bArr;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public static byte[] setCabinetSensor(int i, int i2, boolean z, boolean z2, boolean z3) {
        try {
            byte[] bArr = new byte[10];
            bArr[0] = -69;
            bArr[1] = 0;
            bArr[2] = CMD_setCabinetSensor;
            bArr[3] = 0;
            bArr[4] = 3;
            bArr[5] = (byte) i;
            bArr[6] = (byte) i2;
            StringBuilder sb = new StringBuilder();
            for (int i3 = 1; i3 <= 8; i3++) {
                if (1 == i3) {
                    if (z) {
                        sb.append(1);
                    } else {
                        sb.append(0);
                    }
                } else if (2 == i3) {
                    if (z2) {
                        sb.append(1);
                    } else {
                        sb.append(0);
                    }
                } else if (3 != i3) {
                    sb.append(0);
                } else if (z3) {
                    sb.append(1);
                } else {
                    sb.append(0);
                }
            }
            bArr[7] = bitToByte(charAtReverse(sb.toString()));
            bArr[8] = getCheck(bArr);
            bArr[9] = 126;
            return bArr;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    private static byte getCheck(byte[] bArr) {
        int i = 0;
        if (bArr != null && bArr.length > 3) {
            for (int i2 = 1; i2 < bArr.length - 2; i2++) {
                i += bArr[i2] & 255;
            }
        }
        return (byte) (i & 255);
    }

    public static boolean isValid(byte[] bArr) {
        return bArr != null && bArr.length >= 7 && bArr[0] == -69 && bArr[bArr.length - 1] == 126 && getCheck(bArr) == bArr[bArr.length + (-2)];
    }

    public static int byteToInt(byte b) {
        return Integer.parseInt(String.format("%02x", Integer.valueOf(b & 255)).toUpperCase(), 16);
    }

    public static String byteToBit(byte b) {
        StringBuilder sb = new StringBuilder();
        for (int i = 7; i >= 0; i--) {
            sb.append((b >> i) & 1);
        }
        return sb.toString();
    }

    public static byte bitToByte(String str) {
        int length = str.length();
        if (length != 8) {
            return (byte) 0;
        }
        byte b = 0;
        for (int i = 0; i < length; i++) {
            b = (byte) (b << 1);
            if (str.charAt(i) == '1') {
                b = (byte) (b | 1);
            }
        }
        return b;
    }

    public static String charAtReverse(String str) {
        int length = str.length();
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < length; i++) {
            sb.insert(0, str.charAt(i));
        }
        return sb.toString();
    }

    public static int bytesToInt(byte[] bArr, int i) {
        return (bArr[i + 1] & 255) | ((bArr[i] & 255) << 8);
    }

    public static String bytesToHexString(byte[] bArr, boolean z) {
        StringBuilder sb = new StringBuilder(bArr.length);
        for (byte b : bArr) {
            String hexString = Integer.toHexString(b & 255);
            if (hexString.length() < 2) {
                sb.append(0);
            }
            sb.append(hexString.toUpperCase());
            if (z) {
                sb.append(" ");
            }
        }
        return sb.toString();
    }

    public static class AntPower {
        private int ant;
        private int power;

        public AntPower(int i, int i2) {
            this.ant = i;
            this.power = i2;
        }

        public int getAnt() {
            return this.ant;
        }

        public void setAnt(int i) {
            this.ant = i;
        }

        public int getPower() {
            return this.power;
        }

        public void setPower(int i) {
            this.power = i;
        }
    }
}
