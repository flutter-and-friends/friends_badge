package com.uhf.api.cls;

import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;

/* loaded from: classes.dex */
public class R2000Command {
    private static int[] crcTable = {0, 4129, 8258, 12387, 16516, 20645, 24774, 28903, 33032, 37161, 41290, 45419, 49548, 53677, 57806, 61935};
    public static FileInputStream fis = null;
    public static final byte headerCode = -1;

    /* renamed from: is */
    public static InputStream f1099is;

    /* renamed from: os */
    public static OutputStream f1100os;
    public FileOutputStream fos;

    public enum R2000CmdCode {
        RFPwdSet(15),
        FrequencySelect(16),
        CustomFrequencySelect(17),
        SetSession(19),
        SingleTagInventry(33),
        MuliteTagInventry(34),
        WriteTagMem(36),
        ReadTagMem(40),
        FetchTag(41),
        GetRFPower(65),
        GetCurrentFrequency(66),
        GetCurrentSession(67),
        GetVersion(68),
        CarrytoProgram(4),
        LockTag(37),
        KillTag(38),
        SetIO(80),
        GetIOStatus(81),
        AntSet(20),
        AntGet(21),
        WriteFlash(1),
        ReadyWriteFlash(9),
        CheckFlash(8);

        private int value;

        public int Value() {
            return this.value;
        }

        R2000CmdCode(int i) {
            this.value = 0;
            this.value = i;
        }
    }

    public enum R2000CmdSatus {
        Non_Identifiability_CMD(136),
        OK(0),
        Error_Or_Failed(255),
        NonTag(1),
        RSSI_High(255),
        OptionCodeError(2),
        AntSetError(254),
        PWD_ERR_OR_TAG_NO_RESPONE(80),
        TagNonsupportedOrLowPwr(32),
        MemOverranging(33),
        TagLocked(34),
        TagOpFailed(48),
        PswZeroError(81),
        ModuleFatalError(238),
        Temperatrue_High(253);

        private int value;

        R2000CmdSatus(int i) {
            this.value = 0;
            this.value = i;
        }

        public static R2000CmdSatus valueOf(int i) {
            if (i == 0) {
                return OK;
            }
            if (i == 1) {
                return NonTag;
            }
            if (i == 2) {
                return OptionCodeError;
            }
            if (i == 48) {
                return TagOpFailed;
            }
            if (i == 136) {
                return Non_Identifiability_CMD;
            }
            if (i == 238) {
                return ModuleFatalError;
            }
            if (i == 251) {
                return Error_Or_Failed;
            }
            if (i == 80) {
                return PWD_ERR_OR_TAG_NO_RESPONE;
            }
            if (i == 81) {
                return PswZeroError;
            }
            switch (i) {
                case 32:
                    return TagNonsupportedOrLowPwr;
                case 33:
                    return MemOverranging;
                case 34:
                    return TagLocked;
                default:
                    switch (i) {
                        case 253:
                            return Temperatrue_High;
                        case 254:
                            return AntSetError;
                        case 255:
                            return RSSI_High;
                        default:
                            return OK;
                    }
            }
        }
    }

    public static byte[] Get_Build_ToOp_Cmds(R2000CmdCode r2000CmdCode) {
        byte[] bArr = new byte[5];
        bArr[0] = -1;
        bArr[1] = 0;
        bArr[2] = (byte) r2000CmdCode.value;
        byte[] bArrCalcCRC = calcCRC(bArr, 1, bArr[1] + 4);
        bArr[bArr.length - 2] = bArrCalcCRC[0];
        bArr[bArr.length - 1] = bArrCalcCRC[1];
        return bArr;
    }

    public static byte[] Get_Build_ToOp_Cmds(R2000CmdCode r2000CmdCode, byte[] bArr) {
        byte[] bArr2 = new byte[bArr.length + 5];
        bArr2[0] = -1;
        bArr2[1] = (byte) bArr.length;
        bArr2[2] = (byte) r2000CmdCode.value;
        for (int i = 0; i < bArr.length; i++) {
            bArr2[i + 3] = bArr[i];
        }
        byte[] bArrCalcCRC = calcCRC(bArr2, 1, bArr2[1] + 4);
        bArr2[bArr2.length - 2] = bArrCalcCRC[0];
        bArr2[bArr2.length - 1] = bArrCalcCRC[1];
        return bArr2;
    }

    public int getError(byte[] bArr) {
        byte b = bArr[3];
        byte b2 = bArr[1];
        byte b3 = bArr[2];
        return b;
    }

    public static byte[] calcCRC(byte[] bArr, int i, int i2) {
        int i3 = 65535;
        for (int i4 = i; i4 < i + i2; i4++) {
            int i5 = (i3 << 4) | ((bArr[i4] >> 4) & 15);
            int[] iArr = crcTable;
            int i6 = (iArr[i3 >> 12] ^ i5) & 65535;
            i3 = (iArr[i6 >> 12] ^ ((i6 << 4) | ((bArr[i4] >> 0) & 15))) & 65535;
        }
        short s = (short) i3;
        return new byte[]{(byte) ((65280 & s) >> 8), (byte) (s & 255)};
    }

    public static byte[] getResp(byte b) throws Exception {
        byte[] bArr = new byte[1000];
        int i = 0;
        while (f1099is.available() < 1) {
            Thread.sleep(20L);
            i++;
            if (i >= 250) {
                break;
            }
        }
        int i2 = f1099is.read(bArr, 0, 5);
        if (i2 < 5) {
            f1099is.read(bArr, 0 + i2, 5 - i2);
        }
        int i3 = 0;
        while (true) {
            if (i3 >= 3) {
                i3 = 0;
                break;
            }
            if (bArr[i3] == -1) {
                break;
            }
            i3++;
        }
        if (bArr[0] != -1) {
            Thread.sleep(1500L);
            throw new Exception("interal_Msg_Format_err");
        }
        int i4 = i3 + 2;
        if (bArr[i4] != b) {
            Thread.sleep(1500L);
            throw new Exception("opcode_err");
        }
        int i5 = 0;
        while (f1099is.available() < 1) {
            Thread.sleep(20L);
            i5++;
            if (i5 >= 250) {
                break;
            }
        }
        if (bArr[i4] != 2) {
            int i6 = 0;
            int i7 = 0;
            do {
                int i8 = i3 + 1;
                if (i6 >= bArr[i8] + 2) {
                    break;
                }
                i6 += f1099is.read(bArr, 5 + i6, (bArr[i8] + 2) - i6);
                i7++;
            } while (i7 < 5);
        } else {
            int i9 = 0;
            int i10 = 0;
            do {
                int i11 = i3 + 1;
                if (i9 >= (bArr[i11] * 4) + 2) {
                    break;
                }
                i9 += f1099is.read(bArr, 5 + i9, ((bArr[i11] * 4) + 2) - i9);
                i10++;
            } while (i10 < 5);
        }
        byte[] bArr2 = new byte[bArr[i3 + 1] + 7];
        System.arraycopy(bArr, i3, bArr2, 0, bArr2.length);
        byte[] bArr3 = new byte[bArr2.length - 2];
        System.arraycopy(bArr2, 0, bArr3, 0, bArr3.length);
        byte[] bArrCalcCRC = calcCRC(bArr3, 1, bArr3[1] + 4);
        if (bArr2[bArr2.length - 2] != bArrCalcCRC[0] || bArr2[bArr2.length - 1] != bArrCalcCRC[1]) {
            try {
                Thread.sleep(1500L);
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
            throw new Exception("MSG_CRC_ERROR");
        }
        int error = new R2000Command().getError(bArr2);
        if (error == 0) {
            return bArr2;
        }
        throw new Exception("ERROR:" + String.valueOf(error));
    }

    private static byte[] SendAndRecvSlMsg(byte[] bArr) throws Exception {
        f1100os.write(bArr, 0, bArr.length);
        return getResp(bArr[2]);
    }

    public static byte[] Build_ToOp_Cmds(R2000CmdCode r2000CmdCode) throws Exception {
        byte[] bArr = new byte[5];
        bArr[0] = -1;
        bArr[1] = 0;
        bArr[2] = (byte) r2000CmdCode.Value();
        byte[] bArrCalcCRC = calcCRC(bArr, 1, (bArr[1] & 255) + 2);
        bArr[bArr.length - 2] = bArrCalcCRC[0];
        bArr[bArr.length - 1] = bArrCalcCRC[1];
        return SendAndRecvSlMsg(bArr);
    }

    public static byte[] Build_ToOp_Cmds(R2000CmdCode r2000CmdCode, byte[] bArr) throws Exception {
        byte[] bArr2 = new byte[bArr.length + 5];
        bArr2[0] = -1;
        bArr2[1] = (byte) bArr.length;
        bArr2[2] = (byte) r2000CmdCode.Value();
        for (int i = 0; i < bArr.length; i++) {
            bArr2[i + 3] = bArr[i];
        }
        byte[] bArrCalcCRC = calcCRC(bArr2, 1, (bArr2[1] & 255) + 2);
        bArr2[bArr2.length - 2] = bArrCalcCRC[0];
        bArr2[bArr2.length - 1] = bArrCalcCRC[1];
        return SendAndRecvSlMsg(bArr2);
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x004b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static void Updatebyserial(java.lang.String r11) throws java.lang.Exception {
        /*
            Method dump skipped, instructions count: 331
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.uhf.api.cls.R2000Command.Updatebyserial(java.lang.String):void");
    }
}
