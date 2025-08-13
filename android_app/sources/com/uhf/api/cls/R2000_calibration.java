package com.uhf.api.cls;

import androidx.core.view.MotionEventCompat;
import cn.highlight.p004tx.app.CmdCenter;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class R2000_calibration {
    private static int[] crcTable = {0, 4129, 8258, 12387, 16516, 20645, 24774, 28903, 33032, 37161, 41290, 45419, 49548, 53677, 57806, 61935};
    private byte[] cmdname;
    final short TAG_METADATA_NONE = 0;
    final short TAG_METADATA_READCOUNT = 1;
    final short TAG_METADATA_RSSI = 2;
    final short TAG_METADATA_ANTENNAID = 4;
    final short TAG_METADATA_FREQUENCY = 8;
    final short TAG_METADATA_TIMESTAMP = 16;
    final short TAG_METADATA_PHASE = 32;
    final short TAG_METADATA_PROTOCOL = 64;
    final short TAG_EMBEDED_DATA = 128;
    private final byte HeaderC = -1;

    /* renamed from: AA */
    private final byte f1102AA = -86;

    /* renamed from: bb */
    private final byte f1103bb = -69;

    public static byte[] intTobytes(int i) {
        return new byte[]{(byte) (((-16777216) & i) >> 24), (byte) ((16711680 & i) >> 16), (byte) ((65280 & i) >> 8), (byte) (i & 255)};
    }

    public static byte[] shortTobytes(short s) {
        return new byte[]{(byte) ((65280 & s) >> 8), (byte) (s & 255)};
    }

    public R2000_calibration() {
        this.cmdname = null;
        this.cmdname = new byte[]{77, 111, 100, 117, 108, 101, 116, 101, 99, 104};
    }

    public enum Region {
        UNSPEC(0),
        NA(1),
        EU(2),
        KR(3),
        IN(4),
        JP(5),
        PRC(6),
        EU2(7),
        EU3(8),
        KR2(9),
        PRC2(10),
        OPEN(255);

        private int value;

        Region(int i) {
            this.value = 0;
            this.value = i;
        }
    }

    public enum R2000cmd {
        OEMformat(43562),
        OEMwrite(43522),
        OEMread(43523),
        ENGTEST(43524),
        GROSSGAINSCAL(43547),
        DCOFFSETCAL(43556),
        SetTestFre(43559),
        PABIASCAL(43564),
        writeMAC(43566),
        readMAC(43567),
        carrier(43569),
        ReturnLossTest(43594),
        Regop(43595),
        S2TA(43597);

        private int value;

        R2000cmd(int i) {
            this.value = 0;
            this.value = i;
        }
    }

    public static byte[] calcCrc(byte[] bArr, int i, int i2) {
        int i3 = 65535;
        for (int i4 = i; i4 < i + i2; i4++) {
            int i5 = (i3 << 4) | ((bArr[i4] >> 4) & 15);
            int[] iArr = crcTable;
            int i6 = (iArr[i3 >> 12] ^ i5) & 65535;
            i3 = (iArr[i6 >> 12] ^ ((i6 << 4) | ((bArr[i4] >> 0) & 15))) & 65535;
        }
        return new byte[]{(byte) ((65280 & i3) >> 8), (byte) (i3 & 255)};
    }

    public static short calcCrc_short(byte[] bArr) {
        int i = 65535;
        for (int i2 = 0; i2 < bArr.length; i2++) {
            int i3 = (i << 4) | ((bArr[i2] >> 4) & 15);
            int[] iArr = crcTable;
            int i4 = (iArr[i >> 12] ^ i3) & 65535;
            i = (iArr[i4 >> 12] ^ ((i4 << 4) | ((bArr[i2] >> 0) & 15))) & 65535;
        }
        return (short) i;
    }

    public static byte[] ListBtobytes(List<Byte> list) {
        Byte[] bArr = new Byte[list.size()];
        byte[] bArr2 = new byte[list.size()];
        list.toArray(bArr);
        for (int i = 0; i < bArr2.length; i++) {
            bArr2[i] = bArr[i].byteValue();
        }
        return bArr2;
    }

    public static List<Byte> shortTolistbytes(short s) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(Byte.valueOf((byte) ((65280 & s) >> 8)));
        arrayList.add(Byte.valueOf((byte) (s & 255)));
        return arrayList;
    }

    public static List<Byte> intTolistbytes(int i) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(Byte.valueOf((byte) (((-16777216) & i) >> 24)));
        arrayList.add(Byte.valueOf((byte) ((16711680 & i) >> 16)));
        arrayList.add(Byte.valueOf((byte) ((65280 & i) >> 8)));
        arrayList.add(Byte.valueOf((byte) (i & 255)));
        return arrayList;
    }

    public static List<Byte> bytesTolistbytes(byte[] bArr) {
        ArrayList arrayList = new ArrayList();
        for (byte b : bArr) {
            arrayList.add(Byte.valueOf(b));
        }
        return arrayList;
    }

    public static List<Integer> intsTolistints(int[] iArr) {
        ArrayList arrayList = new ArrayList();
        for (int i : iArr) {
            arrayList.add(Integer.valueOf(i));
        }
        return arrayList;
    }

    public static short bytesToshort(byte[] bArr) {
        return (short) (((bArr[0] & 255) << 0) | ((bArr[1] & 255) << 8));
    }

    public static int bytesToint(byte[] bArr) {
        return ((bArr[0] & 255) << 0) | ((bArr[3] & 255) << 24) | ((bArr[2] & 255) << 16) | ((bArr[1] & 255) << 8);
    }

    public static int bytesToint(byte[] bArr, int i) {
        return ((bArr[i] & 255) << 0) | ((bArr[i + 3] & 255) << 24) | ((bArr[i + 2] & 255) << 16) | ((bArr[i + 1] & 255) << 8);
    }

    public class OEM_DATA {

        /* renamed from: La */
        List<Adpair> f1104La;
        List<Short> Lad;

        public class Adpair {
            public short addr;
            public int val;

            public Adpair() {
            }
        }

        public Adpair[] GetAddr() {
            List<Adpair> list = this.f1104La;
            return list != null ? (Adpair[]) list.toArray(new Adpair[list.size()]) : new Adpair[0];
        }

        public OEM_DATA(short s, int i) {
            this.f1104La = new ArrayList();
            Adpair adpair = new Adpair();
            adpair.addr = s;
            adpair.val = i;
            this.f1104La.add(adpair);
        }

        public OEM_DATA(short s) {
            this.Lad = new ArrayList();
            this.Lad.add(Short.valueOf(s));
        }

        public OEM_DATA(byte[] bArr) {
            int length = bArr.length / 6;
            this.f1104La = new ArrayList();
            int i = 0;
            for (int i2 = 0; i2 < length; i2++) {
                byte[] bArr2 = new byte[2];
                byte[] bArr3 = new byte[4];
                System.arraycopy(bArr, i, bArr2, 0, 2);
                int i3 = i + 2;
                System.arraycopy(bArr, i3, bArr3, 0, 4);
                i = i3 + 4;
                Adpair adpair = new Adpair();
                adpair.addr = (short) (((bArr2[1] & 255) << 0) | ((bArr2[0] & 255) << 8));
                adpair.val = ((bArr3[2] & 255) << 8) | ((bArr3[0] & 255) << 24) | ((bArr3[1] & 255) << 16) | ((bArr3[3] & 255) << 0);
                this.f1104La.add(adpair);
            }
        }

        public void AddTo(short s, int i) {
            if (this.f1104La != null) {
                Adpair adpair = new Adpair();
                adpair.addr = s;
                adpair.val = i;
                this.f1104La.add(adpair);
                return;
            }
            List<Short> list = this.Lad;
            if (list != null) {
                list.add(Short.valueOf(s));
            }
        }

        public byte[] ToByteData() {
            ArrayList arrayList = new ArrayList();
            if (this.f1104La != null) {
                for (int i = 0; i < this.f1104La.size(); i++) {
                    arrayList.addAll(R2000_calibration.shortTolistbytes(this.f1104La.get(i).addr));
                    arrayList.addAll(R2000_calibration.intTolistbytes(this.f1104La.get(i).val));
                }
            }
            if (this.Lad != null) {
                for (int i2 = 0; i2 < this.Lad.size(); i2++) {
                    arrayList.addAll(R2000_calibration.shortTolistbytes(this.Lad.get(i2).shortValue()));
                }
            }
            return R2000_calibration.ListBtobytes(arrayList);
        }
    }

    public class MAC_DATA extends OEM_DATA {
        public MAC_DATA(short s, int i) {
            super(s, i);
        }

        public MAC_DATA(short s) {
            super(s);
        }

        public MAC_DATA(byte[] bArr) {
            super(bArr);
        }
    }

    public class TestFre_DATA {
        int freq;
        int reserved;

        public TestFre_DATA(int i, int i2) {
            this.reserved = i;
            this.freq = i2;
        }

        public byte[] ToByteData() {
            ArrayList arrayList = new ArrayList();
            arrayList.addAll(R2000_calibration.intTolistbytes(this.reserved));
            arrayList.addAll(R2000_calibration.intTolistbytes(this.freq));
            return R2000_calibration.ListBtobytes(arrayList);
        }
    }

    public class VSWRReturnloss_DATA {
        List<Integer> ants;
        List<Integer> lifre;
        List<Byte> lires;
        int power;
        Region regb;

        public List<Integer> LiFre() {
            return this.lifre;
        }

        public List<Byte> Lires() {
            return this.lires;
        }

        public List<Integer> Ants() {
            return this.ants;
        }

        public Region Regb() {
            return this.regb;
        }

        public int Power() {
            return this.power;
        }

        public VSWRReturnloss_DATA(int i, int[] iArr, int[] iArr2, Region region) {
            this.lifre = new ArrayList();
            this.ants = new ArrayList();
            this.lifre.addAll(R2000_calibration.intsTolistints(iArr));
            this.ants.addAll(R2000_calibration.intsTolistints(iArr2));
            this.power = i;
            this.regb = region;
        }

        public VSWRReturnloss_DATA(byte[] bArr) {
            this.lifre = new ArrayList();
            this.ants = new ArrayList();
            this.lires = new ArrayList();
            this.power = (bArr[0] << 8) | bArr[1];
            this.regb = Region.values()[bArr[3]];
            for (int i = 5; i < bArr.length; i += 4) {
                this.lifre.add(Integer.valueOf(((bArr[i] & 255) << 16) | ((bArr[i + 1] & 255) << 8) | (bArr[i + 2] & 255)));
                this.lires.add(Byte.valueOf((byte) (bArr[i + 3] & 255)));
            }
        }

        public byte[] ToByteData() {
            ArrayList arrayList = new ArrayList();
            arrayList.add(Byte.valueOf((byte) ((this.power & MotionEventCompat.ACTION_POINTER_INDEX_MASK) >> 8)));
            arrayList.add(Byte.valueOf((byte) (this.power & 255)));
            arrayList.add((byte) 0);
            arrayList.add(Byte.valueOf((byte) this.regb.value));
            if (this.lifre.size() > 0) {
                arrayList.add(Byte.valueOf((byte) this.lifre.size()));
                for (int i = 0; i < this.lifre.size(); i++) {
                    arrayList.add(Byte.valueOf((byte) ((this.lifre.get(i).intValue() & 16711680) >> 16)));
                    arrayList.add(Byte.valueOf((byte) ((this.lifre.get(i).intValue() & MotionEventCompat.ACTION_POINTER_INDEX_MASK) >> 8)));
                    arrayList.add(Byte.valueOf((byte) (this.lifre.get(i).intValue() & 255)));
                }
            } else {
                arrayList.add((byte) 0);
            }
            return R2000_calibration.ListBtobytes(arrayList);
        }
    }

    public class Pabiascal_DATA {
        int paa0;
        int paa1;
        int paa2;

        public Pabiascal_DATA(int i, int i2, int i3) {
            this.paa2 = i;
            this.paa1 = i2;
            this.paa0 = i3;
        }

        public byte[] ToByteData() {
            ArrayList arrayList = new ArrayList();
            arrayList.addAll(R2000_calibration.intTolistbytes(this.paa2));
            arrayList.addAll(R2000_calibration.intTolistbytes(this.paa1));
            arrayList.addAll(R2000_calibration.intTolistbytes(this.paa0));
            return R2000_calibration.ListBtobytes(arrayList);
        }
    }

    public class GrossGains_DATA {
        List<Integer> Lad = new ArrayList();

        public List<Integer> LAD() {
            return this.Lad;
        }

        public GrossGains_DATA(int i) {
            this.Lad.add(Integer.valueOf(i));
        }

        public GrossGains_DATA(byte[] bArr) {
            int i = 0;
            while (i < bArr.length) {
                int i2 = i + 1;
                this.Lad.add(Integer.valueOf(R2000_calibration.bytesToint(bArr, i2)));
                i = i2 + 4;
            }
        }

        public void AddTo(int i) {
            List<Integer> list = this.Lad;
            if (list != null) {
                list.add(Integer.valueOf(i));
            }
        }

        public byte[] ToByteData() {
            ArrayList arrayList = new ArrayList();
            if (this.Lad != null) {
                for (int i = 0; i < this.Lad.size(); i++) {
                    arrayList.add(Byte.valueOf((byte) i));
                    arrayList.addAll(R2000_calibration.intTolistbytes(this.Lad.get(i).intValue()));
                }
            }
            return R2000_calibration.ListBtobytes(arrayList);
        }
    }

    public class Tagtemperture_DATA {
        byte[] BankData;
        int pvtAntenna;
        int pvtFrequency;
        int pvtLqi;
        int pvtPhase;
        int pvtPro;
        int pvtReadCount;
        int pvtTsmp;
        byte[] tagcrc;
        byte[] tagepc;
        int taglen;
        byte[] tagpc;
        byte[] temperdata;

        public int ReadCount() {
            return this.pvtReadCount;
        }

        public int Lqi() {
            return this.pvtLqi;
        }

        public int Frequency() {
            return this.pvtFrequency;
        }

        public int Phase() {
            return this.pvtPhase;
        }

        public int Antenna() {
            return this.pvtAntenna;
        }

        public int Timestamp() {
            return this.pvtTsmp;
        }

        public int Protocol() {
            return this.pvtPro;
        }

        public byte[] Data() {
            return this.temperdata;
        }

        public byte[] TagEpc() {
            return this.tagepc;
        }

        public Tagtemperture_DATA() {
        }

        public Tagtemperture_DATA(byte[] bArr, int i) {
            int i2;
            int i3;
            this.temperdata = new byte[i * 2];
            if ((bArr[0] & CmdCenter.CMD_openMoreCabinet) != 0) {
                int i4 = 3;
                short s = (short) (((short) (bArr[1] << 8)) | bArr[2]);
                if ((s & 1) != 0) {
                    this.pvtReadCount = bArr[3];
                    i4 = 4;
                }
                if ((s & 2) != 0) {
                    this.pvtLqi = bArr[i4];
                    i4++;
                }
                if ((s & 4) != 0) {
                    int i5 = i4 + 1;
                    this.pvtAntenna = bArr[i4] & 15;
                    if (this.pvtAntenna == 0) {
                        this.pvtAntenna = 16;
                    }
                    i4 = i5;
                }
                if ((s & 8) != 0) {
                    int i6 = i4 + 1;
                    this.pvtFrequency = (bArr[i4] & 255) << 16;
                    int i7 = i6 + 1;
                    this.pvtFrequency |= (bArr[i6] & 255) << 8;
                    this.pvtFrequency |= bArr[i7] & 255;
                    i4 = i7 + 1;
                }
                if ((s & 16) != 0) {
                    int i8 = i4 + 1;
                    this.pvtTsmp = (bArr[i4] & 255) << 24;
                    int i9 = i8 + 1;
                    this.pvtTsmp = ((bArr[i8] & 255) << 16) | this.pvtTsmp;
                    int i10 = i9 + 1;
                    this.pvtTsmp |= (bArr[i9] & 255) << 8;
                    this.pvtTsmp |= bArr[i10] & 255;
                    i4 = i10 + 1;
                }
                if ((s & 32) != 0) {
                    this.pvtPhase = bArr[i4 + 1];
                    i4 += 2;
                }
                if ((s & 64) != 0) {
                    i3 = i4 + 1;
                    this.pvtPro = bArr[i4];
                } else {
                    i3 = i4;
                }
                if ((s & 128) != 0) {
                    int i11 = ((bArr[i3] << 8) | bArr[i3 + 1]) / 8;
                    int i12 = i3 + 2;
                    if (i11 != 0) {
                        this.BankData = new byte[i11];
                        System.arraycopy(bArr, i12, this.BankData, 0, i11);
                    }
                    i2 = i11 + i12;
                } else {
                    i2 = i3;
                }
            } else {
                i2 = 1;
            }
            int i13 = i2;
            while (true) {
                byte[] bArr2 = this.temperdata;
                if (i13 >= bArr2.length + i2) {
                    break;
                }
                bArr2[i13 - i2] = bArr[i13];
                i13++;
            }
            int i14 = i13 + 1;
            this.taglen = bArr[i13];
            this.tagpc = new byte[2];
            byte[] bArr3 = this.tagpc;
            int i15 = i14 + 1;
            bArr3[0] = bArr[i14];
            int i16 = i15 + 1;
            bArr3[1] = bArr[i15];
            this.tagepc = new byte[this.taglen - 4];
            int i17 = i16;
            while (true) {
                byte[] bArr4 = this.tagepc;
                if (i17 < bArr4.length + i16) {
                    bArr4[i17 - i16] = bArr[i17];
                    i17++;
                } else {
                    this.tagcrc = new byte[2];
                    byte[] bArr5 = this.tagcrc;
                    bArr5[0] = bArr[i16];
                    bArr5[1] = bArr[i16 + 1];
                    return;
                }
            }
        }
    }

    public class TagLED_DATA {
        byte[] BankData;
        int pvtAntenna;
        int pvtFrequency;
        int pvtLqi;
        int pvtPhase;
        int pvtPro;
        int pvtReadCount;
        int pvtTsmp;
        byte[] tagcrc;
        byte[] tagepc;
        byte[] tagpc;

        public int ReadCount() {
            return this.pvtReadCount;
        }

        public int Lqi() {
            return this.pvtLqi;
        }

        public int Frequency() {
            return this.pvtFrequency;
        }

        public int Phase() {
            return this.pvtPhase;
        }

        public int Antenna() {
            return this.pvtAntenna;
        }

        public int Timestamp() {
            return this.pvtTsmp;
        }

        public int Protocol() {
            return this.pvtPro;
        }

        public byte[] Data() {
            return this.BankData;
        }

        public byte[] TagEpc() {
            return this.tagepc;
        }

        public TagLED_DATA() {
        }

        public TagLED_DATA(byte[] bArr, int i) {
            int i2;
            int i3;
            if ((bArr[0] & CmdCenter.CMD_openMoreCabinet) != 0) {
                int i4 = 3;
                short s = (short) (((short) ((bArr[1] << 8) & 255)) | (bArr[2] & 255));
                if ((s & 1) != 0) {
                    this.pvtReadCount = bArr[3];
                    i4 = 4;
                }
                if ((s & 2) != 0) {
                    this.pvtLqi = bArr[i4];
                    i4++;
                }
                if ((s & 4) != 0) {
                    int i5 = i4 + 1;
                    this.pvtAntenna = bArr[i4] & 15;
                    if (this.pvtAntenna == 0) {
                        this.pvtAntenna = 16;
                    }
                    i4 = i5;
                }
                if ((s & 8) != 0) {
                    int i6 = i4 + 1;
                    this.pvtFrequency = (bArr[i4] & 255) << 16;
                    int i7 = i6 + 1;
                    this.pvtFrequency |= (bArr[i6] & 255) << 8;
                    this.pvtFrequency |= bArr[i7] & 255;
                    i4 = i7 + 1;
                }
                if ((s & 16) != 0) {
                    int i8 = i4 + 1;
                    this.pvtTsmp = (bArr[i4] & 255) << 24;
                    int i9 = i8 + 1;
                    this.pvtTsmp = ((bArr[i8] & 255) << 16) | this.pvtTsmp;
                    int i10 = i9 + 1;
                    this.pvtTsmp |= (bArr[i9] & 255) << 8;
                    this.pvtTsmp |= bArr[i10] & 255;
                    i4 = i10 + 1;
                }
                if ((s & 32) != 0) {
                    this.pvtPhase = bArr[i4 + 1];
                    i4 += 2;
                }
                if ((s & 64) != 0) {
                    i3 = i4 + 1;
                    this.pvtPro = bArr[i4];
                } else {
                    i3 = i4;
                }
                if ((s & 128) != 0) {
                    int i11 = ((bArr[i3] << 8) | bArr[i3 + 1]) / 8;
                    int i12 = i3 + 2;
                    if (i11 != 0) {
                        this.BankData = new byte[i11];
                        System.arraycopy(bArr, i12, this.BankData, 0, i11);
                    }
                    i2 = i11 + i12;
                } else {
                    i2 = i3;
                }
            } else {
                i2 = 1;
            }
            this.tagpc = new byte[2];
            byte[] bArr2 = this.tagpc;
            int i13 = i2 + 1;
            bArr2[0] = bArr[i2];
            int i14 = i13 + 1;
            bArr2[1] = bArr[i13];
            this.tagepc = new byte[(i - i14) - 2];
            int i15 = i14;
            while (true) {
                byte[] bArr3 = this.tagepc;
                if (i15 < bArr3.length + i14) {
                    bArr3[i15 - i14] = bArr[i15];
                    i15++;
                } else {
                    this.tagcrc = new byte[2];
                    byte[] bArr4 = this.tagcrc;
                    bArr4[0] = bArr[i14];
                    bArr4[1] = bArr[i14 + 1];
                    return;
                }
            }
        }
    }

    public class META_DATA {
        public boolean IsAntennaID;
        public boolean IsEmdData;
        public boolean IsFrequency;
        public boolean IsPro;
        public boolean IsRFU;
        public boolean IsRSSI;
        public boolean IsReadCnt;
        public boolean IsTimestamp;

        public META_DATA() {
        }

        public short getMetaflag() {
            short s = this.IsReadCnt ? (short) 1 : (short) 0;
            if (this.IsRSSI) {
                s = (short) (s | 2);
            }
            if (this.IsAntennaID) {
                s = (short) (s | 4);
            }
            if (this.IsFrequency) {
                s = (short) (s | 8);
            }
            if (this.IsTimestamp) {
                s = (short) (s | 16);
            }
            if (this.IsRFU) {
                s = (short) (s | 32);
            }
            if (this.IsPro) {
                s = (short) (s | 64);
            }
            return this.IsEmdData ? (short) (s | 128) : s;
        }
    }

    public enum SubCmd {
        ReadAD(11),
        SetTestAntPow(12),
        SendControl(22),
        En_low_power_gpio(170);

        private int value;

        public int Value() {
            return this.value;
        }

        SubCmd(int i) {
            this.value = 0;
            this.value = i;
        }
    }

    public class ENGTest_DATA {
        int arg0;
        int arg1;
        byte subcmd;

        public ENGTest_DATA(byte b, int i, int i2) {
            this.subcmd = b;
            this.arg0 = i;
            this.arg1 = i2;
        }

        public byte[] ToByteData() {
            ArrayList arrayList = new ArrayList();
            arrayList.add(Byte.valueOf(this.subcmd));
            arrayList.addAll(R2000_calibration.intTolistbytes(this.arg0));
            arrayList.addAll(R2000_calibration.intTolistbytes(this.arg1));
            return R2000_calibration.ListBtobytes(arrayList);
        }
    }

    public byte[] GetSendCmd(byte b, byte[] bArr) {
        ArrayList arrayList = new ArrayList();
        arrayList.add((byte) -1);
        if (bArr != null) {
            arrayList.add(Byte.valueOf((byte) bArr.length));
        } else {
            arrayList.add((byte) 0);
        }
        arrayList.add(Byte.valueOf(b));
        if (bArr != null) {
            arrayList.addAll(bytesTolistbytes(bArr));
        }
        arrayList.add((byte) 0);
        arrayList.add((byte) 0);
        byte[] bArrCalcCrc = calcCrc(ListBtobytes(arrayList), 1, arrayList.size() - 1);
        arrayList.set(arrayList.size() - 1, Byte.valueOf(bArrCalcCrc[1]));
        arrayList.set(arrayList.size() - 2, Byte.valueOf(bArrCalcCrc[0]));
        return ListBtobytes(arrayList);
    }

    public byte[] GetSendCmd(R2000cmd r2000cmd, byte[] bArr) {
        ArrayList arrayList = new ArrayList();
        arrayList.add((byte) -1);
        if (bArr != null) {
            arrayList.add(Byte.valueOf((byte) (bArr.length + 14)));
        } else {
            arrayList.add((byte) 14);
        }
        arrayList.add((byte) -86);
        arrayList.addAll(bytesTolistbytes(this.cmdname));
        byte[] bArrShortTobytes = shortTobytes((short) r2000cmd.value);
        arrayList.addAll(bytesTolistbytes(bArrShortTobytes));
        if (bArr != null) {
            arrayList.addAll(bytesTolistbytes(bArr));
        }
        int i = bArrShortTobytes[0] + bArrShortTobytes[1];
        if (bArr != null) {
            for (byte b : bArr) {
                i += b;
            }
        }
        arrayList.add(Byte.valueOf((byte) (i & 255)));
        arrayList.add((byte) -69);
        arrayList.add((byte) 0);
        arrayList.add((byte) 0);
        byte[] bArrCalcCrc = calcCrc(ListBtobytes(arrayList), 1, arrayList.size() - 3);
        arrayList.set(arrayList.size() - 1, Byte.valueOf(bArrCalcCrc[1]));
        arrayList.set(arrayList.size() - 2, Byte.valueOf(bArrCalcCrc[0]));
        return ListBtobytes(arrayList);
    }

    public class FilterS2inA_DATA {
        short antbit;
        int fre_v;
        short power_v;

        public FilterS2inA_DATA(int[] iArr, int i, int i2) {
            this.antbit = (short) 0;
            for (int i3 : iArr) {
                this.antbit = (short) (this.antbit | (1 << (i3 - 1)));
            }
            this.fre_v = i;
            this.power_v = (short) i2;
        }

        public byte[] ToByteData() {
            ArrayList arrayList = new ArrayList();
            arrayList.addAll(R2000_calibration.shortTolistbytes(this.antbit));
            arrayList.addAll(R2000_calibration.intTolistbytes(this.fre_v));
            arrayList.addAll(R2000_calibration.shortTolistbytes(this.power_v));
            return R2000_calibration.ListBtobytes(arrayList);
        }
    }
}
