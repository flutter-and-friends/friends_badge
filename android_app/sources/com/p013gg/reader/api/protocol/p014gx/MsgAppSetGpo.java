package com.p013gg.reader.api.protocol.p014gx;

import com.p013gg.reader.api.utils.BitBuffer;
import java.util.Hashtable;

/* loaded from: classes.dex */
public class MsgAppSetGpo extends Message {
    private int gpo1;
    private int gpo10;
    private int gpo11;
    private int gpo12;
    private int gpo13;
    private int gpo14;
    private int gpo15;
    private int gpo16;
    private int gpo17;
    private int gpo18;
    private int gpo19;
    private int gpo2;
    private int gpo20;
    private int gpo21;
    private int gpo22;
    private int gpo23;
    private int gpo24;
    private int gpo25;
    private int gpo26;
    private int gpo27;
    private int gpo28;
    private int gpo29;
    private int gpo3;
    private int gpo30;
    private int gpo31;
    private int gpo32;
    private int gpo4;
    private int gpo5;
    private int gpo6;
    private int gpo7;
    private int gpo8;
    private int gpo9;

    public MsgAppSetGpo() {
        this.gpo1 = Integer.MAX_VALUE;
        this.gpo2 = Integer.MAX_VALUE;
        this.gpo3 = Integer.MAX_VALUE;
        this.gpo4 = Integer.MAX_VALUE;
        this.gpo5 = Integer.MAX_VALUE;
        this.gpo6 = Integer.MAX_VALUE;
        this.gpo7 = Integer.MAX_VALUE;
        this.gpo8 = Integer.MAX_VALUE;
        this.gpo9 = Integer.MAX_VALUE;
        this.gpo10 = Integer.MAX_VALUE;
        this.gpo11 = Integer.MAX_VALUE;
        this.gpo12 = Integer.MAX_VALUE;
        this.gpo13 = Integer.MAX_VALUE;
        this.gpo14 = Integer.MAX_VALUE;
        this.gpo15 = Integer.MAX_VALUE;
        this.gpo16 = Integer.MAX_VALUE;
        this.gpo17 = Integer.MAX_VALUE;
        this.gpo18 = Integer.MAX_VALUE;
        this.gpo19 = Integer.MAX_VALUE;
        this.gpo20 = Integer.MAX_VALUE;
        this.gpo21 = Integer.MAX_VALUE;
        this.gpo22 = Integer.MAX_VALUE;
        this.gpo23 = Integer.MAX_VALUE;
        this.gpo24 = Integer.MAX_VALUE;
        this.gpo25 = Integer.MAX_VALUE;
        this.gpo26 = Integer.MAX_VALUE;
        this.gpo27 = Integer.MAX_VALUE;
        this.gpo28 = Integer.MAX_VALUE;
        this.gpo29 = Integer.MAX_VALUE;
        this.gpo30 = Integer.MAX_VALUE;
        this.gpo31 = Integer.MAX_VALUE;
        this.gpo32 = Integer.MAX_VALUE;
        try {
            this.msgType = new MsgType();
            this.msgType.mt_8_11 = EnumG.MSG_TYPE_BIT_APP;
            this.msgType.msgId = (byte) 9;
            this.dataLen = 0;
        } catch (Exception unused) {
        }
    }

    public MsgAppSetGpo(byte[] bArr) {
        this();
        if (bArr != null) {
            try {
                if (bArr.length <= 0) {
                    return;
                }
                BitBuffer bitBufferWrap = BitBuffer.wrap(bArr);
                bitBufferWrap.position(0);
                while (bitBufferWrap.position() / 8 < bArr.length) {
                    switch (bitBufferWrap.getIntUnsigned(8)) {
                        case 1:
                            this.gpo1 = bitBufferWrap.getIntUnsigned(8);
                            break;
                        case 2:
                            this.gpo2 = bitBufferWrap.getIntUnsigned(8);
                            break;
                        case 3:
                            this.gpo3 = bitBufferWrap.getIntUnsigned(8);
                            break;
                        case 4:
                            this.gpo4 = bitBufferWrap.getIntUnsigned(8);
                            break;
                        case 5:
                            this.gpo5 = bitBufferWrap.getIntUnsigned(8);
                            break;
                        case 6:
                            this.gpo6 = bitBufferWrap.getIntUnsigned(8);
                            break;
                        case 7:
                            this.gpo7 = bitBufferWrap.getIntUnsigned(8);
                            break;
                        case 8:
                            this.gpo8 = bitBufferWrap.getIntUnsigned(8);
                            break;
                        case 9:
                            this.gpo9 = bitBufferWrap.getIntUnsigned(8);
                            break;
                        case 10:
                            this.gpo10 = bitBufferWrap.getIntUnsigned(8);
                            break;
                        case 11:
                            this.gpo11 = bitBufferWrap.getIntUnsigned(8);
                            break;
                        case 12:
                            this.gpo12 = bitBufferWrap.getIntUnsigned(8);
                            break;
                        case 13:
                            this.gpo13 = bitBufferWrap.getIntUnsigned(8);
                            break;
                        case 14:
                            this.gpo14 = bitBufferWrap.getIntUnsigned(8);
                            break;
                        case 15:
                            this.gpo15 = bitBufferWrap.getIntUnsigned(8);
                            break;
                        case 16:
                            this.gpo16 = bitBufferWrap.getIntUnsigned(8);
                            break;
                        case 17:
                            this.gpo17 = bitBufferWrap.getIntUnsigned(8);
                            break;
                        case 18:
                            this.gpo18 = bitBufferWrap.getIntUnsigned(8);
                            break;
                        case 19:
                            this.gpo19 = bitBufferWrap.getIntUnsigned(8);
                            break;
                        case 20:
                            this.gpo20 = bitBufferWrap.getIntUnsigned(8);
                            break;
                        case 21:
                            this.gpo21 = bitBufferWrap.getIntUnsigned(8);
                            break;
                        case 22:
                            this.gpo22 = bitBufferWrap.getIntUnsigned(8);
                            break;
                        case 23:
                            this.gpo23 = bitBufferWrap.getIntUnsigned(8);
                            break;
                        case 24:
                            this.gpo24 = bitBufferWrap.getIntUnsigned(8);
                            break;
                        case 25:
                            this.gpo25 = bitBufferWrap.getIntUnsigned(8);
                            break;
                        case 26:
                            this.gpo26 = bitBufferWrap.getIntUnsigned(8);
                            break;
                        case 27:
                            this.gpo27 = bitBufferWrap.getIntUnsigned(8);
                            break;
                        case 28:
                            this.gpo28 = bitBufferWrap.getIntUnsigned(8);
                            break;
                        case 29:
                            this.gpo29 = bitBufferWrap.getIntUnsigned(8);
                            break;
                        case 30:
                            this.gpo30 = bitBufferWrap.getIntUnsigned(8);
                            break;
                        case 31:
                            this.gpo31 = bitBufferWrap.getIntUnsigned(8);
                            break;
                        case 32:
                            this.gpo32 = bitBufferWrap.getIntUnsigned(8);
                            break;
                    }
                }
            } catch (Exception unused) {
            }
        }
    }

    public int getGpo1() {
        return this.gpo1;
    }

    public void setGpo1(int i) {
        this.gpo1 = i;
    }

    public int getGpo2() {
        return this.gpo2;
    }

    public void setGpo2(int i) {
        this.gpo2 = i;
    }

    public int getGpo3() {
        return this.gpo3;
    }

    public void setGpo3(int i) {
        this.gpo3 = i;
    }

    public int getGpo4() {
        return this.gpo4;
    }

    public void setGpo4(int i) {
        this.gpo4 = i;
    }

    public int getGpo5() {
        return this.gpo5;
    }

    public void setGpo5(int i) {
        this.gpo5 = i;
    }

    public int getGpo6() {
        return this.gpo6;
    }

    public void setGpo6(int i) {
        this.gpo6 = i;
    }

    public int getGpo7() {
        return this.gpo7;
    }

    public void setGpo7(int i) {
        this.gpo7 = i;
    }

    public int getGpo8() {
        return this.gpo8;
    }

    public void setGpo8(int i) {
        this.gpo8 = i;
    }

    public int getGpo9() {
        return this.gpo9;
    }

    public void setGpo9(int i) {
        this.gpo9 = i;
    }

    public int getGpo10() {
        return this.gpo10;
    }

    public void setGpo10(int i) {
        this.gpo10 = i;
    }

    public int getGpo11() {
        return this.gpo11;
    }

    public void setGpo11(int i) {
        this.gpo11 = i;
    }

    public int getGpo12() {
        return this.gpo12;
    }

    public void setGpo12(int i) {
        this.gpo12 = i;
    }

    public int getGpo13() {
        return this.gpo13;
    }

    public void setGpo13(int i) {
        this.gpo13 = i;
    }

    public int getGpo14() {
        return this.gpo14;
    }

    public void setGpo14(int i) {
        this.gpo14 = i;
    }

    public int getGpo15() {
        return this.gpo15;
    }

    public void setGpo15(int i) {
        this.gpo15 = i;
    }

    public int getGpo16() {
        return this.gpo16;
    }

    public void setGpo16(int i) {
        this.gpo16 = i;
    }

    public int getGpo17() {
        return this.gpo17;
    }

    public void setGpo17(int i) {
        this.gpo17 = i;
    }

    public int getGpo18() {
        return this.gpo18;
    }

    public void setGpo18(int i) {
        this.gpo18 = i;
    }

    public int getGpo19() {
        return this.gpo19;
    }

    public void setGpo19(int i) {
        this.gpo19 = i;
    }

    public int getGpo20() {
        return this.gpo20;
    }

    public void setGpo20(int i) {
        this.gpo20 = i;
    }

    public int getGpo21() {
        return this.gpo21;
    }

    public void setGpo21(int i) {
        this.gpo21 = i;
    }

    public int getGpo22() {
        return this.gpo22;
    }

    public void setGpo22(int i) {
        this.gpo22 = i;
    }

    public int getGpo23() {
        return this.gpo23;
    }

    public void setGpo23(int i) {
        this.gpo23 = i;
    }

    public int getGpo24() {
        return this.gpo24;
    }

    public void setGpo24(int i) {
        this.gpo24 = i;
    }

    public int getGpo25() {
        return this.gpo25;
    }

    public void setGpo25(int i) {
        this.gpo25 = i;
    }

    public int getGpo26() {
        return this.gpo26;
    }

    public void setGpo26(int i) {
        this.gpo26 = i;
    }

    public int getGpo27() {
        return this.gpo27;
    }

    public void setGpo27(int i) {
        this.gpo27 = i;
    }

    public int getGpo28() {
        return this.gpo28;
    }

    public void setGpo28(int i) {
        this.gpo28 = i;
    }

    public int getGpo29() {
        return this.gpo29;
    }

    public void setGpo29(int i) {
        this.gpo29 = i;
    }

    public int getGpo30() {
        return this.gpo30;
    }

    public void setGpo30(int i) {
        this.gpo30 = i;
    }

    public int getGpo31() {
        return this.gpo31;
    }

    public void setGpo31(int i) {
        this.gpo31 = i;
    }

    public int getGpo32() {
        return this.gpo32;
    }

    public void setGpo32(int i) {
        this.gpo32 = i;
    }

    @Override // com.p013gg.reader.api.protocol.p014gx.Message
    public void pack() {
        BitBuffer bitBufferAllocateDynamic = BitBuffer.allocateDynamic();
        if (Integer.MAX_VALUE != this.gpo1) {
            bitBufferAllocateDynamic.putInt(1, 8);
            bitBufferAllocateDynamic.putLong(this.gpo1, 8);
        }
        if (Integer.MAX_VALUE != this.gpo2) {
            bitBufferAllocateDynamic.putInt(2, 8);
            bitBufferAllocateDynamic.putLong(this.gpo2, 8);
        }
        if (Integer.MAX_VALUE != this.gpo3) {
            bitBufferAllocateDynamic.putInt(3, 8);
            bitBufferAllocateDynamic.putLong(this.gpo3, 8);
        }
        if (Integer.MAX_VALUE != this.gpo4) {
            bitBufferAllocateDynamic.putInt(4, 8);
            bitBufferAllocateDynamic.putLong(this.gpo4, 8);
        }
        if (Integer.MAX_VALUE != this.gpo5) {
            bitBufferAllocateDynamic.putInt(5, 8);
            bitBufferAllocateDynamic.putLong(this.gpo5, 8);
        }
        if (Integer.MAX_VALUE != this.gpo6) {
            bitBufferAllocateDynamic.putInt(6, 8);
            bitBufferAllocateDynamic.putLong(this.gpo6, 8);
        }
        if (Integer.MAX_VALUE != this.gpo7) {
            bitBufferAllocateDynamic.putInt(7, 8);
            bitBufferAllocateDynamic.putLong(this.gpo7, 8);
        }
        if (Integer.MAX_VALUE != this.gpo8) {
            bitBufferAllocateDynamic.putInt(8, 8);
            bitBufferAllocateDynamic.putLong(this.gpo8, 8);
        }
        if (Integer.MAX_VALUE != this.gpo9) {
            bitBufferAllocateDynamic.putInt(9, 8);
            bitBufferAllocateDynamic.putLong(this.gpo9, 8);
        }
        if (Integer.MAX_VALUE != this.gpo10) {
            bitBufferAllocateDynamic.putInt(10, 8);
            bitBufferAllocateDynamic.putLong(this.gpo10, 8);
        }
        if (Integer.MAX_VALUE != this.gpo11) {
            bitBufferAllocateDynamic.putInt(11, 8);
            bitBufferAllocateDynamic.putLong(this.gpo11, 8);
        }
        if (Integer.MAX_VALUE != this.gpo12) {
            bitBufferAllocateDynamic.putInt(12, 8);
            bitBufferAllocateDynamic.putLong(this.gpo12, 8);
        }
        if (Integer.MAX_VALUE != this.gpo13) {
            bitBufferAllocateDynamic.putInt(13, 8);
            bitBufferAllocateDynamic.putLong(this.gpo13, 8);
        }
        if (Integer.MAX_VALUE != this.gpo14) {
            bitBufferAllocateDynamic.putInt(14, 8);
            bitBufferAllocateDynamic.putLong(this.gpo14, 8);
        }
        if (Integer.MAX_VALUE != this.gpo15) {
            bitBufferAllocateDynamic.putInt(15, 8);
            bitBufferAllocateDynamic.putLong(this.gpo15, 8);
        }
        if (Integer.MAX_VALUE != this.gpo16) {
            bitBufferAllocateDynamic.putInt(16, 8);
            bitBufferAllocateDynamic.putLong(this.gpo16, 8);
        }
        if (Integer.MAX_VALUE != this.gpo17) {
            bitBufferAllocateDynamic.putInt(17, 8);
            bitBufferAllocateDynamic.putLong(this.gpo17, 8);
        }
        if (Integer.MAX_VALUE != this.gpo18) {
            bitBufferAllocateDynamic.putInt(18, 8);
            bitBufferAllocateDynamic.putLong(this.gpo18, 8);
        }
        if (Integer.MAX_VALUE != this.gpo19) {
            bitBufferAllocateDynamic.putInt(19, 8);
            bitBufferAllocateDynamic.putLong(this.gpo19, 8);
        }
        if (Integer.MAX_VALUE != this.gpo20) {
            bitBufferAllocateDynamic.putInt(20, 8);
            bitBufferAllocateDynamic.putLong(this.gpo20, 8);
        }
        if (Integer.MAX_VALUE != this.gpo21) {
            bitBufferAllocateDynamic.putInt(21, 8);
            bitBufferAllocateDynamic.putLong(this.gpo21, 8);
        }
        if (Integer.MAX_VALUE != this.gpo22) {
            bitBufferAllocateDynamic.putInt(22, 8);
            bitBufferAllocateDynamic.putLong(this.gpo22, 8);
        }
        if (Integer.MAX_VALUE != this.gpo23) {
            bitBufferAllocateDynamic.putInt(23, 8);
            bitBufferAllocateDynamic.putLong(this.gpo23, 8);
        }
        if (Integer.MAX_VALUE != this.gpo24) {
            bitBufferAllocateDynamic.putInt(24, 8);
            bitBufferAllocateDynamic.putLong(this.gpo24, 8);
        }
        if (Integer.MAX_VALUE != this.gpo25) {
            bitBufferAllocateDynamic.putInt(25, 8);
            bitBufferAllocateDynamic.putLong(this.gpo25, 8);
        }
        if (Integer.MAX_VALUE != this.gpo26) {
            bitBufferAllocateDynamic.putInt(26, 8);
            bitBufferAllocateDynamic.putLong(this.gpo26, 8);
        }
        if (Integer.MAX_VALUE != this.gpo27) {
            bitBufferAllocateDynamic.putInt(27, 8);
            bitBufferAllocateDynamic.putLong(this.gpo27, 8);
        }
        if (Integer.MAX_VALUE != this.gpo28) {
            bitBufferAllocateDynamic.putInt(28, 8);
            bitBufferAllocateDynamic.putLong(this.gpo28, 8);
        }
        if (Integer.MAX_VALUE != this.gpo29) {
            bitBufferAllocateDynamic.putInt(29, 8);
            bitBufferAllocateDynamic.putLong(this.gpo29, 8);
        }
        if (Integer.MAX_VALUE != this.gpo30) {
            bitBufferAllocateDynamic.putInt(30, 8);
            bitBufferAllocateDynamic.putLong(this.gpo30, 8);
        }
        if (Integer.MAX_VALUE != this.gpo31) {
            bitBufferAllocateDynamic.putInt(31, 8);
            bitBufferAllocateDynamic.putLong(this.gpo31, 8);
        }
        if (Integer.MAX_VALUE != this.gpo32) {
            bitBufferAllocateDynamic.putInt(32, 8);
            bitBufferAllocateDynamic.putLong(this.gpo32, 8);
        }
        this.cData = bitBufferAllocateDynamic.asByteArray();
        this.dataLen = this.cData.length;
    }

    @Override // com.p013gg.reader.api.protocol.p014gx.Message
    public void ackUnpack() {
        Hashtable<Byte, String> hashtable = new Hashtable<Byte, String>() { // from class: com.gg.reader.api.protocol.gx.MsgAppSetGpo.1
            {
                put((byte) 0, "Success.");
                put((byte) 1, "Port parameter reader hardware is not supported .");
            }
        };
        if (this.cData == null || this.cData.length != 1) {
            return;
        }
        setRtCode(this.cData[0]);
        if (hashtable.containsKey(Byte.valueOf(this.cData[0]))) {
            setRtMsg(hashtable.get(Byte.valueOf(this.cData[0])));
        }
    }
}
