package com.uhf.api.cls;

import android.util.Log;
import androidx.core.view.MotionEventCompat;
import androidx.core.view.ViewCompat;
import androidx.recyclerview.widget.ItemTouchHelper;
import cn.highlight.p004tx.app.CmdCenter;
import cn.highlight.p004tx.usb.FtdiSerialDriver;
import com.uhf.api.cls.R2000_calibration;
import com.uhf.api.cls.R2000_calibration.FilterS2inA_DATA;
import com.uhf.api.cls.R2000_calibration.TagLED_DATA;
import com.uhf.api.cls.R2000_calibration.Tagtemperture_DATA;
import java.util.Iterator;
import java.util.List;
import java.util.Vector;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

/* loaded from: classes.dex */
public class Reader {
    public static final int HOPTABLECNT = 100;
    public static final int MAXANTCNT = 16;
    public static final int MAXEMBDATALEN = 128;
    public static final int MAXEPCBYTESCNT = 62;
    public static final int MAXINVPOTLSCNT = 6;
    public static final int MAXIPSTRLEN = 50;
    int IT_CT_c;
    long IT_CT_start;
    int IT_CT_step;
    Thread IT_CT_thread;
    boolean IT_E7_istargetA;
    Region_Conf IT_E7_rg;
    long IT_E7_start;
    int IT_E7_step;
    Thread IT_E7_thread;
    boolean IT_S2_istargetA;
    long IT_S2_start;
    int IT_S2_step;
    Thread IT_S2_thread;
    String addr;
    boolean isIT_CT_run;
    boolean isIT_E7_run;
    boolean isIT_S2_run;
    IT_MODE it_mode_V;
    int m_BackReadAntsCnt;
    BackReadOption m_BackReadOp;
    int m_FastReadOption;
    boolean m_IsReadThRunning;
    boolean m_IsReadingForAll;
    Thread m_ThreadForAll;
    long m_ThreadForAllid;
    int m_gError;
    int pantcnt;
    int[] pants;
    int poption;
    AntPowerConf setpower;
    int totalcount;
    long vstaticstarttick;
    private final int JniBytesBufferLength = 500;
    int[] m_BackReadAnts = new int[16];
    protected int IT_CT_m1_keep = 15;
    protected int IT_CT_m1_toma = 5;
    protected int IT_CT_m1_cycle = 1000;
    protected int IT_CT_m2_keepcount = 10;
    protected int IT_CT_m2_cycle = 500;
    protected int IT_CT_m2_toma = 20;
    protected int IT_CT_m2_tomc = 10;
    protected int IT_CT_m3_cycleread = 300;
    protected int IT_CT_m3_cyclestop = ItemTouchHelper.Callback.DEFAULT_DRAG_ANIMATION_DURATION;
    protected int IT_CT_m3_toma = 1;
    protected final int IT_CT_M1_STEP1 = 0;
    final int IT_CT_M1_STEP2 = 1;
    final int IT_CT_M2_STEP1 = 2;
    final int IT_CT_M2_STEP2 = 3;
    final int IT_CT_M3 = 4;
    protected final int IT_CT_M1_TESTFORDJ_STEP1 = 5;
    final int IT_CT_M1_TESTFORDJ_STEP2 = 6;
    protected int IT_CT_step_init = 0;
    int totalcountlast = 0;
    protected final int IT_S2_M1_STEP1 = 0;
    final int IT_S2_M1_STEP2 = 1;
    protected int IT_S2_m1_cycle = 500;
    protected int IT_S2_ctagcount = 50;
    protected int IT_S2_m1_cycle2 = 100;
    protected int IT_S2_ctagcount2 = 2;
    protected final int IT_E7_M1_STEP1 = 0;
    final int IT_E7_M1_STEP2 = 1;
    final int IT_E7_M1_STEP3 = 2;
    final int IT_E7_M1_STEP4 = 3;
    final int IT_E7_M1_STEP5 = 4;
    protected int IT_E7_rfm = 101;
    protected int IT_E7_m1_cycle = 500;
    protected int IT_E7_ctagcount = 50;
    protected int IT_E7_m1_cycle2 = 100;
    protected int IT_E7_ctagcount2 = 2;
    protected int IT_E7_m1_cycle3 = 70;
    protected int IT_E7_ctagcount3 = 1;
    int IT_E7_centrefre = 915250;
    int IT_E7_lowfre = 902250;
    int IT_E7_highfre = 927250;
    int IT_E7_pow = 3300;
    Lock lockobj_newadd = new ReentrantLock();
    Vector<String> quetagstr = new Vector<>();
    int[] IT_CT_fres_NA = {915750, 927250, 902750, 914250, 925250, 904750, 916250, 926750, 903250, 913250, 921250, 906250, 917250, 924250, 905750, 915250, 923750, 907750, 919250, 926250, 908750, 910250, 922750, 912250};
    int[] IT_CT_fres_cn = {922625, 924375, 920625, 922375, 924125, 920875, 922875, 923875, 921125, 922125, 923625, 921375, 923375, 921875, 923125, 921625};
    boolean isfilterpw = false;
    int[] hReader = new int[1];
    JniModuleAPI japi = new JniModuleAPI();
    protected List<ReadListener> readListeners = new Vector();
    protected List<ReadExceptionListener> readExceptionListeners = new Vector();
    protected List<GpiTriggerListener> gpitriListener = new Vector();
    protected List<GpiTriggerBoundaryListener> gpitriboundListener = new Vector();

    public enum IT_MODE {
        IT_MODE_CT,
        IT_MODE_S2,
        IT_MODE_E7,
        IT_MODE_E7v2
    }

    public enum MaindBoard_Type {
        MAINBOARD_NONE,
        MAINBOARD_ARM7,
        MAINBOARD_SERIAL,
        MAINBOARD_WIFI,
        MAINBOARD_ARM9,
        MAINBOARD_ARM9_WIFI
    }

    public static class deviceVersion {
        public String hardwareVer = "";
        public String softwareVer = "";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void ALOGS(String str) {
    }

    private void CLOGS() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void toDlogAPI(String str) {
        Log.d("ModuleAPI", str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void toDlog(String str) {
        Log.d("MYINFO", str);
    }

    public enum Module_Type {
        MODOULE_NONE(0),
        MODOULE_R902_M1S(1),
        MODOULE_R902_M2S(2),
        MODOULE_M5E(3),
        MODOULE_M5E_C(4),
        MODOULE_M6E(5),
        MODOULE_PR9000(6),
        MODOULE_M5E_PRC(7),
        MODOULE_M6E_PRC(8),
        MODOULE_M6E_MICRO(9),
        MODOULE_SLR1100(10),
        MODOULE_SLR1200(11),
        MODOULE_SLR1300(12),
        MODOULE_SLR3000(13),
        MODOULE_SLR5100(14),
        MODOULE_SLR5200(15),
        MODOULE_SLR3100(16),
        MODOULE_SLR3200(17),
        MODOULE_SLR5300(18),
        MODOULE_SLR5900(19),
        MODOULE_SLR5800(20),
        MODOULE_SLR6000(21),
        MODOULE_SLR6100(22),
        MODOULE_SIM7100(23),
        MODOULE_SIM7200(24),
        MODOULE_SIM7300(25),
        MODOULE_SIM7400(26),
        MODOULE_SIM7500(27),
        MODOULE_SIM3100(28),
        MODOULE_SIM3200(29),
        MODOULE_SIM3300(30),
        MODOULE_SIM3400(31),
        MODOULE_SIM3500(32),
        MODOULE_SIM3600(33),
        MODOULE_SIM5100(34),
        MODOULE_SIM5200(35),
        MODOULE_SIM5300(36),
        MODOULE_SIM5400(37),
        MODOULE_SIM5500(38),
        MODOULE_SIM5600(39);

        private int value;

        Module_Type(int i) {
            this.value = 0;
            this.value = i;
        }

        public static Module_Type valueOf(int i) {
            switch (i) {
                case 0:
                    return MODOULE_NONE;
                case 1:
                    return MODOULE_R902_M1S;
                case 2:
                    return MODOULE_R902_M2S;
                case 3:
                    return MODOULE_M5E;
                case 4:
                    return MODOULE_M5E_C;
                case 5:
                    return MODOULE_M6E;
                case 6:
                    return MODOULE_PR9000;
                case 7:
                    return MODOULE_M5E_PRC;
                case 8:
                    return MODOULE_M6E_PRC;
                case 9:
                    return MODOULE_M6E_MICRO;
                case 10:
                    return MODOULE_SLR1100;
                case 11:
                    return MODOULE_SLR1200;
                case 12:
                    return MODOULE_SLR1300;
                case 13:
                    return MODOULE_SLR3000;
                case 14:
                    return MODOULE_SLR5100;
                case 15:
                    return MODOULE_SLR5200;
                case 16:
                    return MODOULE_SLR3100;
                case 17:
                    return MODOULE_SLR3200;
                case 18:
                    return MODOULE_SLR5300;
                case 19:
                    return MODOULE_SLR5900;
                case 20:
                    return MODOULE_SLR5800;
                case 21:
                    return MODOULE_SLR6000;
                case 22:
                    return MODOULE_SLR6100;
                case 23:
                    return MODOULE_SIM7100;
                case 24:
                    return MODOULE_SIM7200;
                case 25:
                    return MODOULE_SIM7300;
                case 26:
                    return MODOULE_SIM7400;
                case 27:
                    return MODOULE_SIM7500;
                case 28:
                    return MODOULE_SIM3100;
                case 29:
                    return MODOULE_SIM3200;
                case 30:
                    return MODOULE_SIM3300;
                case 31:
                    return MODOULE_SIM3400;
                case 32:
                    return MODOULE_SIM3500;
                case 33:
                    return MODOULE_SIM3600;
                case 34:
                    return MODOULE_SIM5100;
                case 35:
                    return MODOULE_SIM5200;
                case 36:
                    return MODOULE_SIM5300;
                case 37:
                    return MODOULE_SIM5400;
                case 38:
                    return MODOULE_SIM5500;
                case 39:
                    return MODOULE_SIM5600;
                default:
                    return null;
            }
        }

        public int value() {
            return this.value;
        }
    }

    public enum Region_Conf {
        RG_NONE(0),
        RG_NA(1),
        RG_EU(2),
        RG_EU2(7),
        RG_EU3(8),
        RG_KR(3),
        RG_PRC(6),
        RG_PRC2(10),
        RG_OPEN(255);

        int p_v;

        Region_Conf(int i) {
            this.p_v = i;
        }

        public int value() {
            return this.p_v;
        }

        public static Region_Conf valueOf(int i) {
            if (i == 0) {
                return RG_NONE;
            }
            if (i == 1) {
                return RG_NA;
            }
            if (i == 2) {
                return RG_EU;
            }
            if (i == 3) {
                return RG_KR;
            }
            if (i == 6) {
                return RG_PRC;
            }
            if (i == 7) {
                return RG_EU2;
            }
            if (i == 8) {
                return RG_EU3;
            }
            if (i == 10) {
                return RG_PRC2;
            }
            if (i != 255) {
                return null;
            }
            return RG_OPEN;
        }
    }

    public enum SL_TagProtocol {
        SL_TAG_PROTOCOL_NONE(0),
        SL_TAG_PROTOCOL_ISO180006B(3),
        SL_TAG_PROTOCOL_GEN2(5),
        SL_TAG_PROTOCOL_ISO180006B_UCODE(6),
        SL_TAG_PROTOCOL_IPX64(7),
        SL_TAG_PROTOCOL_IPX256(8);

        int p_v;

        SL_TagProtocol(int i) {
            this.p_v = i;
        }

        public int value() {
            return this.p_v;
        }

        public static SL_TagProtocol valueOf(int i) {
            if (i == 0) {
                return SL_TAG_PROTOCOL_NONE;
            }
            if (i == 3) {
                return SL_TAG_PROTOCOL_ISO180006B;
            }
            if (i == 5) {
                return SL_TAG_PROTOCOL_GEN2;
            }
            if (i == 6) {
                return SL_TAG_PROTOCOL_ISO180006B_UCODE;
            }
            if (i == 7) {
                return SL_TAG_PROTOCOL_IPX64;
            }
            if (i != 8) {
                return null;
            }
            return SL_TAG_PROTOCOL_IPX256;
        }
    }

    public enum Lock_Obj {
        LOCK_OBJECT_KILL_PASSWORD(1),
        LOCK_OBJECT_ACCESS_PASSWD(2),
        LOCK_OBJECT_BANK1(4),
        LOCK_OBJECT_BANK2(8),
        LOCK_OBJECT_BANK3(16);

        int p_v;

        Lock_Obj(int i) {
            this.p_v = i;
        }

        public int value() {
            return this.p_v;
        }
    }

    public enum Lock_Type {
        KILL_PASSWORD_UNLOCK(0),
        KILL_PASSWORD_LOCK(512),
        KILL_PASSWORD_PERM_LOCK(768),
        ACCESS_PASSWD_UNLOCK(0),
        ACCESS_PASSWD_LOCK(128),
        ACCESS_PASSWD_PERM_LOCK(FtdiSerialDriver.FtdiSerialPort.FTDI_DEVICE_IN_REQTYPE),
        BANK1_UNLOCK(0),
        BANK1_LOCK(32),
        BANK1_PERM_LOCK(48),
        BANK2_UNLOCK(0),
        BANK2_LOCK(8),
        BANK2_PERM_LOCK(12),
        BANK3_UNLOCK(0),
        BANK3_LOCK(2),
        BANK3_PERM_LOCK(3);

        int p_v;

        Lock_Type(int i) {
            this.p_v = i;
        }

        public int value() {
            return this.p_v;
        }
    }

    public enum Reader_Type {
        MODULE_TWO_ANTS(0),
        MODULE_FOUR_ANTS(1),
        MODULE_THREE_ANTS(3),
        MODULE_ONE_ANT(4),
        PR9000(5),
        MODULE_ARM7_TWO_ANTS(6),
        MODULE_ARM7_FOUR_ANTS(7),
        M6E_ARM7_FOUR_ANTS(8),
        M56_ARM7_FOUR_ANTS(9),
        R902_M1S(10),
        R902_M2S(11),
        ARM7_16ANTS(12),
        SL_COMMN_READER(13);

        private int value;

        Reader_Type(int i) {
            this.value = 0;
            this.value = i;
        }

        public static Reader_Type valueOf(int i) {
            switch (i) {
                case 0:
                    return MODULE_TWO_ANTS;
                case 1:
                    return MODULE_FOUR_ANTS;
                case 2:
                    return MODULE_THREE_ANTS;
                case 3:
                    return MODULE_ONE_ANT;
                case 4:
                    return PR9000;
                case 5:
                    return MODULE_ARM7_TWO_ANTS;
                case 6:
                    return MODULE_ARM7_FOUR_ANTS;
                case 7:
                    return M6E_ARM7_FOUR_ANTS;
                case 8:
                    return M56_ARM7_FOUR_ANTS;
                case 9:
                    return R902_M1S;
                case 10:
                    return R902_M2S;
                case 11:
                    return ARM7_16ANTS;
                case 12:
                    return SL_COMMN_READER;
                default:
                    return null;
            }
        }

        public int value() {
            return this.value;
        }
    }

    public enum READER_ERR {
        MT_OK_ERR(0),
        MT_IO_ERR(1),
        MT_INTERNAL_DEV_ERR(2),
        MT_CMD_FAILED_ERR(3),
        MT_CMD_NO_TAG_ERR(4),
        MT_M5E_FATAL_ERR(5),
        MT_OP_NOT_SUPPORTED(6),
        MT_INVALID_PARA(7),
        MT_INVALID_READER_HANDLE(8),
        MT_HARDWARE_ALERT_ERR_BY_HIGN_RETURN_LOSS(9),
        MT_HARDWARE_ALERT_ERR_BY_TOO_MANY_RESET(10),
        MT_HARDWARE_ALERT_ERR_BY_NO_ANTENNAS(11),
        MT_HARDWARE_ALERT_ERR_BY_HIGH_TEMPERATURE(12),
        MT_HARDWARE_ALERT_ERR_BY_READER_DOWN(13),
        MT_HARDWARE_ALERT_ERR_BY_UNKNOWN_ERR(14),
        M6E_INIT_FAILED(15),
        MT_OP_EXECING(16),
        MT_UNKNOWN_READER_TYPE(17),
        MT_OP_INVALID(18),
        MT_HARDWARE_ALERT_BY_FAILED_RESET_MODLUE(19),
        MT_MAX_ERR_NUM(20),
        MT_MAX_INT_NUM(21),
        MT_TEST_DEV_FAULT_1(51),
        MT_TEST_DEV_FAULT_2(52),
        MT_TEST_DEV_FAULT_3(53),
        MT_TEST_DEV_FAULT_4(54),
        MT_TEST_DEV_FAULT_5(55),
        MT_UPDFWFROMSP_OPENFILE_FAILED(80),
        MT_UPDFWFROMSP_FILE_FORMAT_ERR(81),
        MT_JNI_INVALID_PARA(101),
        MT_OTHER_ERR(-268435457);

        private int value;

        READER_ERR(int i) {
            this.value = 0;
            this.value = i;
        }

        public static READER_ERR valueOf(int i) {
            if (i == 80) {
                return MT_UPDFWFROMSP_OPENFILE_FAILED;
            }
            if (i == 81) {
                return MT_UPDFWFROMSP_FILE_FORMAT_ERR;
            }
            if (i != 101) {
                switch (i) {
                    case 0:
                        return MT_OK_ERR;
                    case 1:
                        return MT_IO_ERR;
                    case 2:
                        return MT_INTERNAL_DEV_ERR;
                    case 3:
                        return MT_CMD_FAILED_ERR;
                    case 4:
                        return MT_CMD_NO_TAG_ERR;
                    case 5:
                        return MT_M5E_FATAL_ERR;
                    case 6:
                        return MT_OP_NOT_SUPPORTED;
                    case 7:
                        return MT_INVALID_PARA;
                    case 8:
                        return MT_INVALID_READER_HANDLE;
                    case 9:
                        return MT_HARDWARE_ALERT_ERR_BY_HIGN_RETURN_LOSS;
                    case 10:
                        return MT_HARDWARE_ALERT_ERR_BY_TOO_MANY_RESET;
                    case 11:
                        return MT_HARDWARE_ALERT_ERR_BY_NO_ANTENNAS;
                    case 12:
                        return MT_HARDWARE_ALERT_ERR_BY_HIGH_TEMPERATURE;
                    case 13:
                        return MT_HARDWARE_ALERT_ERR_BY_READER_DOWN;
                    case 14:
                        return MT_HARDWARE_ALERT_ERR_BY_UNKNOWN_ERR;
                    case 15:
                        return M6E_INIT_FAILED;
                    case 16:
                        return MT_OP_EXECING;
                    case 17:
                        return MT_UNKNOWN_READER_TYPE;
                    case 18:
                        return MT_OP_INVALID;
                    case 19:
                        return MT_HARDWARE_ALERT_BY_FAILED_RESET_MODLUE;
                    case 20:
                        return MT_OTHER_ERR;
                    case 21:
                        return MT_OTHER_ERR;
                    default:
                        switch (i) {
                            case 51:
                                return MT_TEST_DEV_FAULT_1;
                            case 52:
                                return MT_TEST_DEV_FAULT_2;
                            case 53:
                                return MT_TEST_DEV_FAULT_3;
                            case 54:
                                return MT_TEST_DEV_FAULT_4;
                            case 55:
                                return MT_TEST_DEV_FAULT_5;
                            default:
                                return MT_OTHER_ERR;
                        }
                }
            }
            return MT_JNI_INVALID_PARA;
        }

        public int value() {
            return this.value;
        }
    }

    public enum CustomCmdType {
        NXP_SetReadProtect(0),
        NXP_ResetReadProtect(1),
        NXP_ChangeEAS(2),
        NXP_EASAlarm(3),
        NXP_Calibrate(4),
        ALIEN_Higgs2_PartialLoadImage(5),
        ALIEN_Higgs2_FullLoadImage(6),
        ALIEN_Higgs3_FastLoadImage(7),
        ALIEN_Higgs3_LoadImage(8),
        ALIEN_Higgs3_BlockReadLock(9),
        ALIEN_Higgs3_BlockPermaLock(10),
        IMPINJ_M4_Qt(11),
        NXP_U8_InventoryMode(20);

        private int value;

        CustomCmdType(int i) {
            this.value = 0;
            this.value = i;
        }

        public static CustomCmdType valueOf(int i) {
            if (i != 20) {
                switch (i) {
                    case 0:
                        return NXP_SetReadProtect;
                    case 1:
                        return NXP_ResetReadProtect;
                    case 2:
                        return NXP_ChangeEAS;
                    case 3:
                        return NXP_EASAlarm;
                    case 4:
                        return NXP_Calibrate;
                    case 5:
                        return ALIEN_Higgs2_PartialLoadImage;
                    case 6:
                        return ALIEN_Higgs2_FullLoadImage;
                    case 7:
                        return ALIEN_Higgs3_FastLoadImage;
                    case 8:
                        return ALIEN_Higgs3_LoadImage;
                    case 9:
                        return ALIEN_Higgs3_BlockReadLock;
                    case 10:
                        return ALIEN_Higgs3_BlockPermaLock;
                    case 11:
                        return IMPINJ_M4_Qt;
                    default:
                        return null;
                }
            }
            return NXP_U8_InventoryMode;
        }

        public int value() {
            return this.value;
        }
    }

    public enum Mtr_Param {
        MTR_PARAM_POTL_GEN2_SESSION(0),
        MTR_PARAM_POTL_GEN2_Q(1),
        MTR_PARAM_POTL_GEN2_TAGENCODING(2),
        MTR_PARAM_POTL_GEN2_MAXEPCLEN(3),
        MTR_PARAM_RF_ANTPOWER(4),
        MTR_PARAM_RF_MAXPOWER(5),
        MTR_PARAM_RF_MINPOWER(6),
        MTR_PARAM_TAG_FILTER(7),
        MTR_PARAM_TAG_EMBEDEDDATA(8),
        MTR_PARAM_TAG_INVPOTL(9),
        MTR_PARAM_READER_CONN_ANTS(10),
        MTR_PARAM_READER_AVAILABLE_ANTPORTS(11),
        MTR_PARAM_READER_IS_CHK_ANT(12),
        MTR_PARAM_READER_VERSION(13),
        MTR_PARAM_READER_IP(14),
        MTR_PARAM_FREQUENCY_REGION(15),
        MTR_PARAM_FREQUENCY_HOPTABLE(16),
        MTR_PARAM_POTL_GEN2_BLF(17),
        MTR_PARAM_POTL_GEN2_WRITEMODE(18),
        MTR_PARAM_POTL_GEN2_TARGET(19),
        MTR_PARAM_TAGDATA_UNIQUEBYANT(20),
        MTR_PARAM_TAGDATA_UNIQUEBYEMDDATA(21),
        MTR_PARAM_TAGDATA_RECORDHIGHESTRSSI(22),
        MTR_PARAM_RF_TEMPERATURE(23),
        MTR_PARAM_RF_HOPTIME(24),
        MTR_PARAM_RF_LBT_ENABLE(25),
        MTR_PARAM_RF_SUPPORTEDREGIONS(26),
        MTR_PARAM_POTL_SUPPORTEDPROTOCOLS(27),
        MTR_PARAM_POTL_ISO180006B_BLF(28),
        MTR_PARAM_POTL_GEN2_TARI(29),
        MTR_PARAM_TRANS_TIMEOUT(30),
        MTR_PARAM_TAG_EMDSECUREREAD(31),
        MTR_PARAM_TRANSMIT_MODE(32),
        MTR_PARAM_POWERSAVE_MODE(33),
        MTR_PARAM_TAG_SEARCH_MODE(34),
        MTR_PARAM_POTL_ISO180006B_MODULATION_DEPTH(35),
        MTR_PARAM_POTL_ISO180006B_DELIMITER(36),
        MTR_PARAM_RF_ANTPORTS_VSWR(37),
        MTR_PARAM_MAXINDEX(39),
        MTR_PARAM_CUSTOM(41),
        MTR_PARAM_READER_WATCHDOG(42),
        MTR_PARAM_READER_ERRORDATA(43),
        MTR_PARAM_RF_HOPANTTIME(44),
        MTR_PARAM_TAG_MULTISELECTORS(45),
        MTR_PARAM_SAVEINMODULE(46),
        MTR_PARAM_SAVEINMODULE_BAUD(47);

        private int value;

        Mtr_Param(int i) {
            this.value = 0;
            this.value = i;
        }

        public static Mtr_Param valueOf(int i) {
            switch (i) {
                case 0:
                    return MTR_PARAM_POTL_GEN2_SESSION;
                case 1:
                    return MTR_PARAM_POTL_GEN2_Q;
                case 2:
                    return MTR_PARAM_POTL_GEN2_TAGENCODING;
                case 3:
                    return MTR_PARAM_POTL_GEN2_MAXEPCLEN;
                case 4:
                    return MTR_PARAM_RF_ANTPOWER;
                case 5:
                    return MTR_PARAM_RF_MAXPOWER;
                case 6:
                    return MTR_PARAM_RF_MINPOWER;
                case 7:
                    return MTR_PARAM_TAG_FILTER;
                case 8:
                    return MTR_PARAM_TAG_EMBEDEDDATA;
                case 9:
                    return MTR_PARAM_TAG_INVPOTL;
                case 10:
                    return MTR_PARAM_READER_CONN_ANTS;
                case 11:
                    return MTR_PARAM_READER_AVAILABLE_ANTPORTS;
                case 12:
                    return MTR_PARAM_READER_IS_CHK_ANT;
                case 13:
                    return MTR_PARAM_READER_VERSION;
                case 14:
                    return MTR_PARAM_READER_IP;
                case 15:
                    return MTR_PARAM_FREQUENCY_REGION;
                case 16:
                    return MTR_PARAM_FREQUENCY_HOPTABLE;
                case 17:
                    return MTR_PARAM_POTL_GEN2_BLF;
                case 18:
                    return MTR_PARAM_POTL_GEN2_WRITEMODE;
                case 19:
                    return MTR_PARAM_POTL_GEN2_TARGET;
                case 20:
                    return MTR_PARAM_TAGDATA_UNIQUEBYANT;
                case 21:
                    return MTR_PARAM_TAGDATA_UNIQUEBYEMDDATA;
                case 22:
                    return MTR_PARAM_TAGDATA_RECORDHIGHESTRSSI;
                case 23:
                    return MTR_PARAM_RF_TEMPERATURE;
                case 24:
                    return MTR_PARAM_RF_HOPTIME;
                case 25:
                    return MTR_PARAM_RF_LBT_ENABLE;
                case 26:
                    return MTR_PARAM_RF_SUPPORTEDREGIONS;
                case 27:
                    return MTR_PARAM_POTL_SUPPORTEDPROTOCOLS;
                case 28:
                    return MTR_PARAM_POTL_ISO180006B_BLF;
                case 29:
                    return MTR_PARAM_POTL_GEN2_TARI;
                case 30:
                    return MTR_PARAM_TRANS_TIMEOUT;
                case 31:
                    return MTR_PARAM_TAG_EMDSECUREREAD;
                case 32:
                    return MTR_PARAM_TRANSMIT_MODE;
                case 33:
                    return MTR_PARAM_POWERSAVE_MODE;
                case 34:
                    return MTR_PARAM_TAG_SEARCH_MODE;
                case 35:
                    return MTR_PARAM_POTL_ISO180006B_MODULATION_DEPTH;
                case 36:
                    return MTR_PARAM_POTL_ISO180006B_DELIMITER;
                case 37:
                    return MTR_PARAM_RF_ANTPORTS_VSWR;
                case 38:
                case 40:
                default:
                    return null;
                case 39:
                    return MTR_PARAM_MAXINDEX;
                case 41:
                    return MTR_PARAM_CUSTOM;
                case 42:
                    return MTR_PARAM_READER_WATCHDOG;
                case 43:
                    return MTR_PARAM_READER_ERRORDATA;
                case 44:
                    return MTR_PARAM_RF_HOPANTTIME;
                case 45:
                    return MTR_PARAM_TAG_MULTISELECTORS;
                case 46:
                    return MTR_PARAM_SAVEINMODULE;
                case 47:
                    return MTR_PARAM_SAVEINMODULE_BAUD;
            }
        }

        public int value() {
            return this.value;
        }
    }

    public enum BackReadGpiTriState {
        BackReadGpi_WaitStart(0),
        BackReadGpi_WaitStop(1),
        BackReadGpi_WaitTimeout(2);

        private int value;

        BackReadGpiTriState(int i) {
            this.value = 0;
            this.value = i;
        }

        public static BackReadGpiTriState valueOf(int i) {
            if (i == 0) {
                return BackReadGpi_WaitStart;
            }
            if (i == 1) {
                return BackReadGpi_WaitStop;
            }
            if (i != 2) {
                return null;
            }
            return BackReadGpi_WaitTimeout;
        }

        public int value() {
            return this.value;
        }
    }

    public class TAGINFO implements Cloneable {
        public byte AntennaID;
        public short EmbededDatalen;
        public short Epclen;
        public int Frequency;
        public int Phase;
        public int RSSI;
        public int ReadCnt;
        public int TimeStamp;
        public SL_TagProtocol protocol;
        public byte[] EmbededData = null;
        public byte[] Res = new byte[2];

        /* renamed from: PC */
        public byte[] f1114PC = new byte[2];
        public byte[] CRC = new byte[2];
        public byte[] EpcId = null;

        public TAGINFO() {
        }

        public Object clone() {
            try {
                return (TAGINFO) super.clone();
            } catch (CloneNotSupportedException unused) {
                return null;
            }
        }
    }

    public class IMPINJM4QtPara {
        public byte[] AccessPwd = new byte[4];
        public int CmdType;
        public int MemType;
        public int PersistType;
        public int RangeType;
        public short TimeOut;

        public IMPINJM4QtPara() {
        }
    }

    public class CustomParam_ST {
        public String ParamName;
        public byte[] ParamVal;

        public CustomParam_ST() {
        }
    }

    public class IMPINJM4QtResult {
        public int MemType;
        public int RangeType;

        public IMPINJM4QtResult() {
        }
    }

    public class NXPChangeEASPara {
        public byte[] AccessPwd = new byte[4];
        public short TimeOut;
        public int isSet;

        public NXPChangeEASPara() {
        }
    }

    public class NXPEASAlarmPara {

        /* renamed from: DR */
        public byte f1111DR;

        /* renamed from: MC */
        public byte f1112MC;
        public short TimeOut;
        public byte TrExt;

        public NXPEASAlarmPara() {
        }
    }

    public class NXPEASAlarmResult {
        public byte[] EASdata = new byte[8];

        public NXPEASAlarmResult() {
        }
    }

    public class ALIENHiggs3BlockReadLockPara {
        public byte[] AccessPwd = new byte[4];
        public byte BlkBits;
        public short TimeOut;

        public ALIENHiggs3BlockReadLockPara() {
        }
    }

    public class NXP_U8_InventoryModePara {
        public byte[] Mode = new byte[1];

        public NXP_U8_InventoryModePara() {
        }
    }

    public class AntPower {
        public int antid;
        public short readPower;
        public short writePower;

        public AntPower() {
        }
    }

    public class AntPowerConf {
        public AntPower[] Powers = new AntPower[16];
        public int antcnt;

        public AntPowerConf() {
        }
    }

    public class HardwareDetails {
        public MaindBoard_Type board;
        public Reader_Type logictype;
        public Module_Type module;

        public HardwareDetails() {
        }
    }

    public class EmbededSecureRead_ST {
        public int ApIndexBitsNumInEpc;
        public int ApIndexStartBitsInEpc;
        public int accesspwd;
        public int address;
        public int bank;
        public int blkcnt;
        public int pwdtype;
        public int tagtype;

        public EmbededSecureRead_ST() {
        }
    }

    public class Reader_Ip {
        public byte[] gateway;

        /* renamed from: ip */
        public byte[] f1113ip;
        public byte[] mask;

        public Reader_Ip() {
        }
    }

    public class TagFilter_ST {
        public int bank;
        public byte[] fdata = new byte[255];
        public int flen;
        public int isInvert;
        public int startaddr;

        public TagFilter_ST() {
        }
    }

    public class TagSelector_ST {
        public int bank;
        public byte[] sdata = new byte[24];
        public int slen;
        public int startaddr;

        public TagSelector_ST() {
        }
    }

    public class Default_Param {
        public boolean isdefault;
        public Mtr_Param key;
        public String subkey;
        public Object val;

        public Default_Param() {
        }
    }

    public class MultiTagSelectors_ST {
        public int tagselectorcnt;
        public TagSelector_ST[] tagselectors = new TagSelector_ST[16];

        public MultiTagSelectors_ST() {
            for (int i = 0; i < 16; i++) {
                this.tagselectors[i] = Reader.this.new TagSelector_ST();
            }
        }
    }

    public class EmbededData_ST {
        public byte[] accesspwd;
        public int bank;
        public int bytecnt;
        public int startaddr;

        public EmbededData_ST() {
        }
    }

    public class ConnAnts_ST {
        public int antcnt;
        public int[] connectedants = new int[16];

        public ConnAnts_ST() {
        }
    }

    public class ReaderVersion {
        public String hardwareVer = "";
        public String softwareVer = "";

        public ReaderVersion() {
        }
    }

    public class HoptableData_ST {
        public int[] htb = new int[100];
        public int lenhtb;

        public HoptableData_ST() {
        }
    }

    public class Inv_Potl {
        public SL_TagProtocol potl;
        public int weight;

        public Inv_Potl() {
        }
    }

    public class Inv_Potls_ST {
        public int potlcnt;
        public Inv_Potl[] potls = new Inv_Potl[6];

        public Inv_Potls_ST() {
        }
    }

    public class FrequencyVSWR {
        public int frequency;
        public float vswr;

        public FrequencyVSWR() {
        }
    }

    public class AntPortsVSWR {
        public int andid;
        public int frecount;
        public short power;
        public Region_Conf region;
        public FrequencyVSWR[] vswrs = new FrequencyVSWR[100];

        public AntPortsVSWR() {
            for (int i = 0; i < 100; i++) {
                this.vswrs[i] = Reader.this.new FrequencyVSWR();
            }
        }

        public String toString() {
            String str = "";
            for (int i = 0; i < this.frecount; i++) {
                str = str + this.vswrs[i].frequency + ":" + String.format("%.2f", Float.valueOf(this.vswrs[i].vswr)) + " ";
            }
            return str;
        }
    }

    public boolean Set_IT_Params(IT_MODE it_mode, Object[] objArr) throws Exception {
        if (it_mode == IT_MODE.IT_MODE_CT) {
            try {
                this.IT_CT_m1_keep = ((Integer) objArr[0]).intValue();
                this.IT_CT_m1_toma = ((Integer) objArr[1]).intValue();
                this.IT_CT_m3_cycleread = ((Integer) objArr[2]).intValue();
                this.IT_CT_m3_cyclestop = ((Integer) objArr[3]).intValue();
                this.IT_CT_m3_toma = ((Integer) objArr[4]).intValue();
                return true;
            } catch (Exception unused) {
                throw new Exception("Length must be 5 and type must be Integer.");
            }
        }
        if (it_mode == IT_MODE.IT_MODE_S2) {
            try {
                this.IT_S2_m1_cycle = ((Integer) objArr[0]).intValue();
                this.IT_S2_ctagcount = ((Integer) objArr[1]).intValue();
                this.IT_S2_m1_cycle2 = ((Integer) objArr[2]).intValue();
                this.IT_S2_ctagcount2 = ((Integer) objArr[3]).intValue();
                return true;
            } catch (Exception unused2) {
                throw new Exception("Length must be 4 and type must be Integer.");
            }
        }
        if (it_mode != IT_MODE.IT_MODE_E7 && it_mode != IT_MODE.IT_MODE_E7v2) {
            return false;
        }
        try {
            this.IT_E7_m1_cycle = ((Integer) objArr[0]).intValue();
            this.IT_E7_ctagcount = ((Integer) objArr[1]).intValue();
            this.IT_E7_m1_cycle2 = ((Integer) objArr[2]).intValue();
            this.IT_E7_ctagcount2 = ((Integer) objArr[3]).intValue();
            this.IT_E7_rfm = ((Integer) objArr[4]).intValue();
            return true;
        } catch (Exception unused3) {
            throw new Exception("Length must be 4 and type must be Integer.");
        }
    }

    public void Setdutycycle(int i) {
        if (i < 0 || i > 11) {
            return;
        }
        this.IT_CT_m3_cyclestop = (int) (i * 0.05d * 500.0d);
        this.IT_CT_m3_cycleread = 500 - this.IT_CT_m3_cyclestop;
    }

    public void Hex2Str(byte[] bArr, int i, char[] cArr) {
        char[] cArr2 = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};
        for (int i2 = 0; i2 < i; i2++) {
            int i3 = i2 * 2;
            cArr[i3] = cArr2[(bArr[i2] & 255) / 16];
            int i4 = i3 + 1;
            if (i4 < cArr.length) {
                cArr[i4] = cArr2[(bArr[i2] & 255) % 16];
            }
        }
    }

    private char[] bytestochars(byte[] bArr) {
        char[] cArr = new char[bArr.length];
        for (int i = 0; i < bArr.length; i++) {
            cArr[i] = (char) bArr[i];
        }
        return cArr;
    }

    private byte[] charstobytes(char[] cArr) {
        if (cArr == null) {
            return null;
        }
        int i = 0;
        for (int i2 = 0; i2 < cArr.length && cArr[i2] != 0; i2++) {
            i++;
        }
        byte[] bArr = new byte[i];
        for (int i3 = 0; i3 < i; i3++) {
            bArr[i3] = (byte) cArr[i3];
        }
        return bArr;
    }

    public READER_ERR InitReader(String str, Reader_Type reader_Type) {
        return READER_ERR.valueOf(this.japi.InitReader(this.hReader, str, reader_Type.value()));
    }

    public READER_ERR InitReader_Notype(String str, int i) {
        READER_ERR reader_errValueOf;
        toDlogAPI("InitReader_Notype-" + str + " " + String.valueOf(i));
        synchronized (this) {
            reader_errValueOf = READER_ERR.valueOf(this.japi.InitReader_Notype(this.hReader, str, i));
            if (reader_errValueOf == READER_ERR.MT_OK_ERR) {
                this.addr = str;
                Inv_Potls_ST inv_Potls_ST = new Inv_Potls_ST();
                inv_Potls_ST.potlcnt = 1;
                inv_Potls_ST.potls = new Inv_Potl[1];
                inv_Potls_ST.potls[0] = new Inv_Potl();
                inv_Potls_ST.potls[0].weight = 30;
                inv_Potls_ST.potls[0].potl = SL_TagProtocol.SL_TAG_PROTOCOL_GEN2;
                ParamSet(Mtr_Param.MTR_PARAM_TAG_INVPOTL, inv_Potls_ST);
            } else {
                this.hReader[0] = 0;
            }
        }
        return reader_errValueOf;
    }

    public String GetReaderAddress() {
        return this.addr;
    }

    public READER_ERR GetHardwareDetails(HardwareDetails hardwareDetails) {
        READER_ERR reader_errValueOf;
        synchronized (this) {
            byte[] bArr = new byte[500];
            reader_errValueOf = READER_ERR.valueOf(this.japi.GetHardwareDetails_BaseType(this.hReader[0], bArr));
            if (reader_errValueOf == READER_ERR.MT_OK_ERR) {
                hardwareDetails.module = Module_Type.valueOf(bArr[0]);
                byte b = bArr[1];
                if (b == 0) {
                    hardwareDetails.board = MaindBoard_Type.MAINBOARD_NONE;
                } else if (b == 1) {
                    hardwareDetails.board = MaindBoard_Type.MAINBOARD_ARM7;
                } else if (b == 2) {
                    hardwareDetails.board = MaindBoard_Type.MAINBOARD_SERIAL;
                } else if (b == 3) {
                    hardwareDetails.board = MaindBoard_Type.MAINBOARD_WIFI;
                } else if (b == 4) {
                    hardwareDetails.board = MaindBoard_Type.MAINBOARD_ARM9;
                } else if (b == 5) {
                    hardwareDetails.board = MaindBoard_Type.MAINBOARD_ARM9_WIFI;
                }
                hardwareDetails.logictype = Reader_Type.valueOf(bArr[2]);
            }
        }
        return reader_errValueOf;
    }

    public void CloseReader() {
        toDlogAPI("CloseReader-");
        synchronized (this) {
            this.japi.CloseReader(this.hReader[0]);
            this.addr = "";
            this.hReader[0] = 0;
            this.readListeners.clear();
            this.readExceptionListeners.clear();
            this.gpitriListener.clear();
            this.gpitriboundListener.clear();
        }
    }

    public READER_ERR GetTagData(int i, char c, int i2, int i3, byte[] bArr, byte[] bArr2, short s) {
        READER_ERR reader_errValueOf;
        toDlogAPI("GetTagData-" + String.valueOf(i) + " " + String.valueOf(c) + " " + String.valueOf(i2) + " " + String.valueOf(i3));
        synchronized (this) {
            reader_errValueOf = READER_ERR.valueOf(this.japi.GetTagData(this.hReader[0], i, c, i2, i3, bArr, bArr2, s));
        }
        return reader_errValueOf;
    }

    public READER_ERR WriteTagData(int i, char c, int i2, byte[] bArr, int i3, byte[] bArr2, short s) {
        READER_ERR reader_errValueOf;
        synchronized (this) {
            reader_errValueOf = READER_ERR.valueOf(this.japi.WriteTagData(this.hReader[0], i, c, i2, bArr, i3, bArr2, s));
        }
        return reader_errValueOf;
    }

    public READER_ERR WriteTagEpcEx(int i, byte[] bArr, int i2, byte[] bArr2, short s) {
        READER_ERR reader_errValueOf;
        synchronized (this) {
            reader_errValueOf = READER_ERR.valueOf(this.japi.WriteTagEpcEx(this.hReader[0], i, bArr, i2, bArr2, s));
        }
        return reader_errValueOf;
    }

    public READER_ERR TagInventory(int[] iArr, int i, short s, TAGINFO[] taginfoArr, int[] iArr2) {
        READER_ERR reader_errValueOf;
        synchronized (this) {
            reader_errValueOf = READER_ERR.valueOf(this.japi.TagInventory_Raw(this.hReader[0], iArr, i, s, iArr2));
            if (reader_errValueOf == READER_ERR.MT_OK_ERR) {
                for (int i2 = 0; i2 < iArr2[0]; i2++) {
                    TAGINFO taginfo = new TAGINFO();
                    if (GetNextTag(taginfo) == READER_ERR.MT_OK_ERR) {
                        taginfoArr[i2] = taginfo;
                    }
                }
            }
        }
        return reader_errValueOf;
    }

    public READER_ERR TagInventory_Raw(int[] iArr, int i, short s, int[] iArr2) {
        READER_ERR reader_errValueOf;
        synchronized (this) {
            reader_errValueOf = READER_ERR.valueOf(this.japi.TagInventory_Raw(this.hReader[0], iArr, i, s, iArr2));
        }
        return reader_errValueOf;
    }

    public READER_ERR TagInventory_Single(int[] iArr, int i, short s, int[] iArr2, TAGINFO taginfo) {
        READER_ERR reader_errValueOf;
        EmbededData_ST embededData_ST = new EmbededData_ST();
        boolean z = ParamGet(Mtr_Param.MTR_PARAM_TAG_EMBEDEDDATA, embededData_ST) == READER_ERR.MT_OK_ERR && embededData_ST.bytecnt != 0;
        synchronized (this) {
            long jCurrentTimeMillis = System.currentTimeMillis();
            READER_ERR reader_err = READER_ERR.MT_OK_ERR;
            boolean z2 = false;
            while (true) {
                reader_errValueOf = READER_ERR.valueOf(this.japi.TagInventory_Raw(this.hReader[0], iArr, i, (short) 20, iArr2));
                if ((reader_errValueOf == READER_ERR.MT_OK_ERR && iArr2[0] > 0) || System.currentTimeMillis() - jCurrentTimeMillis >= s) {
                    if (reader_errValueOf == READER_ERR.MT_OK_ERR) {
                        for (int i2 = 0; i2 < iArr2[0]; i2++) {
                            TAGINFO taginfo2 = new TAGINFO();
                            if (GetNextTag(taginfo2) == READER_ERR.MT_OK_ERR) {
                                if (z) {
                                    if (taginfo2.EmbededDatalen > 0) {
                                        taginfo.ReadCnt = taginfo2.ReadCnt;
                                        taginfo.RSSI = taginfo2.RSSI;
                                        taginfo.AntennaID = taginfo2.AntennaID;
                                        taginfo.Frequency = taginfo2.Frequency;
                                        taginfo.TimeStamp = taginfo2.TimeStamp;
                                        System.arraycopy(taginfo2.f1114PC, 0, taginfo.f1114PC, 0, 2);
                                        System.arraycopy(taginfo2.f1114PC, 0, taginfo.f1114PC, 0, 2);
                                        taginfo.EpcId = new byte[taginfo2.Epclen];
                                        taginfo.Epclen = taginfo2.Epclen;
                                        System.arraycopy(taginfo2.EpcId, 0, taginfo.EpcId, 0, taginfo.Epclen);
                                        System.arraycopy(taginfo2.CRC, 0, taginfo.CRC, 0, 2);
                                        taginfo.EmbededData = new byte[taginfo2.EmbededDatalen];
                                        taginfo.EmbededDatalen = taginfo2.EmbededDatalen;
                                        System.arraycopy(taginfo2.EmbededData, 0, taginfo.EmbededData, 0, taginfo.EmbededDatalen);
                                        iArr2[0] = 1;
                                    }
                                } else {
                                    taginfo.ReadCnt = taginfo2.ReadCnt;
                                    taginfo.RSSI = taginfo2.RSSI;
                                    taginfo.AntennaID = taginfo2.AntennaID;
                                    taginfo.Frequency = taginfo2.Frequency;
                                    taginfo.TimeStamp = taginfo2.TimeStamp;
                                    System.arraycopy(taginfo2.f1114PC, 0, taginfo.f1114PC, 0, 2);
                                    System.arraycopy(taginfo2.f1114PC, 0, taginfo.f1114PC, 0, 2);
                                    taginfo.EpcId = new byte[taginfo2.Epclen];
                                    taginfo.Epclen = taginfo2.Epclen;
                                    System.arraycopy(taginfo2.EpcId, 0, taginfo.EpcId, 0, taginfo.Epclen);
                                    System.arraycopy(taginfo2.CRC, 0, taginfo.CRC, 0, 2);
                                    taginfo.EmbededData = new byte[taginfo2.EmbededDatalen];
                                    taginfo.EmbededDatalen = taginfo2.EmbededDatalen;
                                    if (taginfo2.EmbededDatalen > 0) {
                                        System.arraycopy(taginfo2.EmbededData, 0, taginfo.EmbededData, 0, taginfo.EmbededDatalen);
                                    }
                                    iArr2[0] = 1;
                                }
                                z2 = true;
                                break;
                            }
                        }
                    }
                    if (z2 || System.currentTimeMillis() - jCurrentTimeMillis >= s) {
                        break;
                    }
                }
            }
            if (!z2) {
                iArr2[0] = 0;
            }
        }
        return reader_errValueOf;
    }

    public READER_ERR TagInventory_BaseType(int[] iArr, int i, short s, byte[] bArr, int[] iArr2) {
        READER_ERR reader_errValueOf;
        synchronized (this) {
            reader_errValueOf = READER_ERR.valueOf(this.japi.TagInventory_BaseType(this.hReader[0], iArr, i, s, bArr, iArr2));
        }
        return reader_errValueOf;
    }

    public READER_ERR GetNextTag(TAGINFO taginfo) {
        READER_ERR reader_errValueOf;
        synchronized (this) {
            byte[] bArr = new byte[230];
            reader_errValueOf = READER_ERR.valueOf(this.japi.GetNextTag_BaseType(this.hReader[0], bArr));
            if (reader_errValueOf == READER_ERR.MT_OK_ERR) {
                taginfo.ReadCnt = bArr[0] & 255;
                taginfo.RSSI = bArr[1];
                taginfo.AntennaID = bArr[2];
                taginfo.Frequency = ((bArr[3] & 255) << 24) | ((bArr[4] & 255) << 16) | ((bArr[5] & 255) << 8) | (bArr[6] & 255);
                taginfo.TimeStamp = ((bArr[7] & 255) << 24) | ((bArr[8] & 255) << 16) | ((bArr[9] & 255) << 8) | (bArr[10] & 255);
                taginfo.Res[0] = bArr[11];
                taginfo.Res[1] = bArr[12];
                int i = (bArr[13] << 8) | bArr[14];
                taginfo.f1114PC[0] = bArr[15];
                taginfo.f1114PC[1] = bArr[16];
                taginfo.EpcId = new byte[i];
                taginfo.Epclen = (short) i;
                System.arraycopy(bArr, 17, taginfo.EpcId, 0, i);
                int i2 = 17 + i;
                int i3 = i2 + 1;
                taginfo.CRC[0] = bArr[i2];
                int i4 = i3 + 1;
                taginfo.CRC[1] = bArr[i3];
                int i5 = (bArr[i4] << 8) | bArr[i4 + 1];
                int i6 = i4 + 2;
                taginfo.EmbededData = new byte[i5];
                taginfo.EmbededDatalen = (short) i5;
                if (i5 > 0) {
                    System.arraycopy(bArr, i6, taginfo.EmbededData, 0, i5);
                }
            }
        }
        return reader_errValueOf;
    }

    public READER_ERR GetNextTag_BaseType(byte[] bArr) {
        READER_ERR reader_errValueOf;
        synchronized (this) {
            reader_errValueOf = READER_ERR.valueOf(this.japi.GetNextTag_BaseType(this.hReader[0], bArr));
        }
        return reader_errValueOf;
    }

    public READER_ERR LockTag(int i, byte b, short s, byte[] bArr, short s2) {
        READER_ERR reader_errValueOf;
        synchronized (this) {
            reader_errValueOf = READER_ERR.valueOf(this.japi.LockTag(this.hReader[0], i, b, s, bArr, s2));
        }
        return reader_errValueOf;
    }

    public READER_ERR KillTag(int i, byte[] bArr, short s) {
        READER_ERR reader_errValueOf;
        synchronized (this) {
            reader_errValueOf = READER_ERR.valueOf(this.japi.KillTag(this.hReader[0], i, bArr, s));
        }
        return reader_errValueOf;
    }

    public READER_ERR Lock180006BTag(int i, int i2, int i3, short s) {
        READER_ERR reader_errValueOf;
        synchronized (this) {
            reader_errValueOf = READER_ERR.valueOf(this.japi.Lock180006BTag(this.hReader[0], i, i2, i3, s));
        }
        return reader_errValueOf;
    }

    public READER_ERR BlockPermaLock(int i, int i2, int i3, int i4, byte[] bArr, byte[] bArr2, short s) {
        READER_ERR reader_errValueOf;
        synchronized (this) {
            reader_errValueOf = READER_ERR.valueOf(this.japi.BlockPermaLock(this.hReader[0], i, i2, i3, i4, bArr, bArr2, s));
        }
        return reader_errValueOf;
    }

    public READER_ERR BlockErase(int i, int i2, int i3, int i4, byte[] bArr, short s) {
        READER_ERR reader_errValueOf;
        synchronized (this) {
            reader_errValueOf = READER_ERR.valueOf(this.japi.BlockErase(this.hReader[0], i, i2, i3, i4, bArr, s));
        }
        return reader_errValueOf;
    }

    public READER_ERR EraseDataOnReader() {
        READER_ERR reader_errValueOf;
        synchronized (this) {
            reader_errValueOf = READER_ERR.valueOf(this.japi.EraseDataOnReader(this.hReader[0]));
        }
        return reader_errValueOf;
    }

    public READER_ERR SaveDataOnReader(int i, byte[] bArr, int i2) {
        READER_ERR reader_errValueOf;
        synchronized (this) {
            reader_errValueOf = READER_ERR.valueOf(this.japi.SaveDataOnReader(this.hReader[0], i, bArr, i2));
        }
        return reader_errValueOf;
    }

    public READER_ERR ReadDataOnReader(int i, byte[] bArr, int i2) {
        READER_ERR reader_errValueOf;
        synchronized (this) {
            reader_errValueOf = READER_ERR.valueOf(this.japi.ReadDataOnReader(this.hReader[0], i, bArr, i2));
        }
        return reader_errValueOf;
    }

    public READER_ERR CustomCmd(int i, CustomCmdType customCmdType, Object obj, Object obj2) {
        byte[] bArr;
        byte[] bArr2;
        byte[] bArr3;
        byte[] bArr4;
        byte[] bArr5;
        byte[] bArr6;
        synchronized (this) {
            int i2 = C13891.$SwitchMap$com$uhf$api$cls$Reader$CustomCmdType[customCmdType.ordinal()];
            if (i2 != 1) {
                if (i2 == 2) {
                    bArr4 = new byte[7];
                    ALIENHiggs3BlockReadLockPara aLIENHiggs3BlockReadLockPara = (ALIENHiggs3BlockReadLockPara) obj;
                    bArr3 = new byte[]{0, 0, 0, 0, aLIENHiggs3BlockReadLockPara.BlkBits, (byte) ((65280 & aLIENHiggs3BlockReadLockPara.TimeOut) >> 8), (byte) (aLIENHiggs3BlockReadLockPara.TimeOut & 255)};
                    System.arraycopy(aLIENHiggs3BlockReadLockPara.AccessPwd, 0, bArr3, 0, 4);
                } else if (i2 != 3) {
                    if (i2 == 4) {
                        bArr6 = new byte[5];
                        NXPEASAlarmPara nXPEASAlarmPara = (NXPEASAlarmPara) obj;
                        nXPEASAlarmPara.f1112MC = (byte) 11;
                        bArr5 = new byte[]{nXPEASAlarmPara.f1111DR, 11, nXPEASAlarmPara.TrExt, (byte) ((nXPEASAlarmPara.TimeOut & 65280) >> 8), (byte) (nXPEASAlarmPara.TimeOut & 255)};
                    } else if (i2 == 5) {
                        bArr5 = ((NXP_U8_InventoryModePara) obj).Mode;
                        bArr6 = new byte[1];
                    } else {
                        return READER_ERR.MT_OP_NOT_SUPPORTED;
                    }
                    bArr = bArr5;
                    bArr2 = bArr6;
                } else {
                    bArr4 = new byte[7];
                    NXPChangeEASPara nXPChangeEASPara = (NXPChangeEASPara) obj;
                    bArr3 = new byte[]{0, 0, 0, 0, (byte) nXPChangeEASPara.isSet, (byte) ((65280 & nXPChangeEASPara.TimeOut) >> 8), (byte) (nXPChangeEASPara.TimeOut & 255)};
                    System.arraycopy(nXPChangeEASPara.AccessPwd, 0, bArr3, 0, 4);
                }
                bArr = bArr3;
                bArr2 = bArr4;
            } else {
                IMPINJM4QtPara iMPINJM4QtPara = (IMPINJM4QtPara) obj;
                byte[] bArr7 = {0, 0, 0, 0, (byte) ((iMPINJM4QtPara.CmdType & ViewCompat.MEASURED_STATE_MASK) >> 24), (byte) ((iMPINJM4QtPara.CmdType & 16711680) >> 16), (byte) ((iMPINJM4QtPara.CmdType & MotionEventCompat.ACTION_POINTER_INDEX_MASK) >> 8), (byte) (iMPINJM4QtPara.CmdType & 255), (byte) ((iMPINJM4QtPara.MemType & ViewCompat.MEASURED_STATE_MASK) >> 24), (byte) ((iMPINJM4QtPara.MemType & 16711680) >> 16), (byte) ((iMPINJM4QtPara.MemType & MotionEventCompat.ACTION_POINTER_INDEX_MASK) >> 8), (byte) (iMPINJM4QtPara.MemType & 255), (byte) ((iMPINJM4QtPara.PersistType & ViewCompat.MEASURED_STATE_MASK) >> 24), (byte) ((iMPINJM4QtPara.PersistType & 16711680) >> 16), (byte) ((iMPINJM4QtPara.PersistType & MotionEventCompat.ACTION_POINTER_INDEX_MASK) >> 8), (byte) (iMPINJM4QtPara.PersistType & 255), (byte) ((iMPINJM4QtPara.RangeType & ViewCompat.MEASURED_STATE_MASK) >> 24), (byte) ((iMPINJM4QtPara.RangeType & 16711680) >> 16), (byte) ((iMPINJM4QtPara.RangeType & MotionEventCompat.ACTION_POINTER_INDEX_MASK) >> 8), (byte) (iMPINJM4QtPara.RangeType & 255), (byte) ((iMPINJM4QtPara.TimeOut & 65280) >> 8), (byte) (iMPINJM4QtPara.TimeOut & 255)};
                System.arraycopy(iMPINJM4QtPara.AccessPwd, 0, bArr7, 0, 4);
                bArr = bArr7;
                bArr2 = new byte[10];
            }
            return READER_ERR.valueOf(this.japi.CustomCmd_BaseType(this.hReader[0], i, customCmdType.value(), bArr, bArr2));
        }
    }

    public READER_ERR CustomCmd_BaseType(int i, int i2, byte[] bArr, byte[] bArr2) {
        READER_ERR reader_errValueOf;
        synchronized (this) {
            reader_errValueOf = READER_ERR.valueOf(this.japi.CustomCmd_BaseType(this.hReader[0], i, i2, bArr, bArr2));
        }
        return reader_errValueOf;
    }

    public READER_ERR SetGPO(int i, int i2) {
        READER_ERR reader_errValueOf;
        synchronized (this) {
            reader_errValueOf = READER_ERR.valueOf(this.japi.SetGPO(this.hReader[0], i, i2));
        }
        return reader_errValueOf;
    }

    public READER_ERR GetGPI(int i, int[] iArr) {
        READER_ERR reader_errValueOf;
        synchronized (this) {
            reader_errValueOf = READER_ERR.valueOf(this.japi.GetGPI(this.hReader[0], i, iArr));
        }
        return reader_errValueOf;
    }

    public READER_ERR GetGPIEx(GpiInfo_ST gpiInfo_ST) {
        READER_ERR reader_errValueOf;
        synchronized (this) {
            byte[] bArr = new byte[500];
            reader_errValueOf = READER_ERR.valueOf(this.japi.GetGPIEx_BaseType(this.hReader[0], bArr));
            if (reader_errValueOf == READER_ERR.MT_OK_ERR) {
                gpiInfo_ST.gpiCount = bArr[0];
                for (int i = 0; i < gpiInfo_ST.gpiCount; i++) {
                    int i2 = i * 2;
                    gpiInfo_ST.gpiStats[i].GpiId = bArr[i2 + 1];
                    gpiInfo_ST.gpiStats[i].State = bArr[i2 + 2];
                }
            }
        }
        return reader_errValueOf;
    }

    public READER_ERR PsamTransceiver(int i, int i2, byte[] bArr, int[] iArr, byte[] bArr2, byte[] bArr3, short s) {
        READER_ERR reader_errValueOf;
        synchronized (this) {
            reader_errValueOf = READER_ERR.valueOf(this.japi.PsamTransceiver(this.hReader[0], i, i2, bArr, iArr, bArr2, bArr3, s));
        }
        return reader_errValueOf;
    }

    private int GetIntFrByteArray(byte[] bArr, int i) {
        return (bArr[i + 3] & 255) | ((bArr[i] & 255) << 24) | ((bArr[i + 1] & 255) << 16) | ((bArr[i + 2] & 255) << 8);
    }

    public READER_ERR ParamGet(Mtr_Param mtr_Param, Object obj) {
        int iParamGet_BaseType;
        byte[] bytes;
        int i;
        synchronized (this) {
            byte[] bArr = new byte[500];
            int i2 = 0;
            switch (mtr_Param) {
                case MTR_PARAM_RF_ANTPOWER:
                    iParamGet_BaseType = this.japi.ParamGet_BaseType(this.hReader[0], mtr_Param.value(), bArr);
                    if (iParamGet_BaseType == 0) {
                        ((AntPowerConf) obj).antcnt = bArr[0];
                        for (int i3 = 0; i3 < bArr[0]; i3++) {
                            AntPower antPower = new AntPower();
                            int i4 = i3 * 5;
                            antPower.antid = bArr[i4 + 1];
                            antPower.readPower = (short) ((bArr[i4 + 2] << 8) | (bArr[i4 + 3] & 255));
                            antPower.writePower = (short) ((bArr[i4 + 5] & 255) | (bArr[i4 + 4] << 8));
                            ((AntPowerConf) obj).Powers[i3] = antPower;
                        }
                        if (this.isfilterpw && this.setpower != null) {
                            ((AntPowerConf) obj).antcnt = this.setpower.antcnt;
                            while (i2 < this.setpower.antcnt) {
                                ((AntPowerConf) obj).Powers[i2].writePower = this.setpower.Powers[i2].writePower;
                                ((AntPowerConf) obj).Powers[i2].readPower = this.setpower.Powers[i2].readPower;
                                i2++;
                            }
                            break;
                        }
                    }
                    break;
                case MTR_PARAM_TAG_FILTER:
                    iParamGet_BaseType = this.japi.ParamGet_BaseType(this.hReader[0], mtr_Param.value(), bArr);
                    if (iParamGet_BaseType == 0) {
                        ((TagFilter_ST) obj).bank = bArr[0];
                        ((TagFilter_ST) obj).startaddr = ((bArr[1] & 255) << 24) | (bArr[2] << CmdCenter.CMD_openMoreCabinet) | (bArr[3] << 8) | (bArr[4] & 255);
                        ((TagFilter_ST) obj).flen = (bArr[5] << 24) | (bArr[6] << CmdCenter.CMD_openMoreCabinet) | (bArr[7] << 8) | (bArr[8] & 255);
                        int i5 = ((TagFilter_ST) obj).flen / 8;
                        if (((TagFilter_ST) obj).flen % 8 != 0) {
                            i5++;
                        }
                        System.arraycopy(bArr, 9, ((TagFilter_ST) obj).fdata, 0, i5);
                        ((TagFilter_ST) obj).isInvert = bArr[i5 + 9];
                        break;
                    }
                    break;
                case MTR_PARAM_TAG_EMBEDEDDATA:
                    iParamGet_BaseType = this.japi.ParamGet_BaseType(this.hReader[0], mtr_Param.value(), bArr);
                    if (iParamGet_BaseType == 0) {
                        ((EmbededData_ST) obj).bank = bArr[1];
                        ((EmbededData_ST) obj).startaddr = (bArr[2] << 24) | (bArr[3] << CmdCenter.CMD_openMoreCabinet) | (bArr[4] << 8) | (bArr[5] & 255);
                        ((EmbededData_ST) obj).bytecnt = (bArr[6] << 24) | (bArr[7] << CmdCenter.CMD_openMoreCabinet) | (bArr[8] << 8) | (bArr[9] & 255);
                        if (bArr[0] == 14) {
                            System.arraycopy(bArr, 10, ((EmbededData_ST) obj).accesspwd, 0, 4);
                            break;
                        } else if (bArr[0] == 10) {
                            ((EmbededData_ST) obj).accesspwd = null;
                            break;
                        }
                    }
                    break;
                case MTR_PARAM_TAG_INVPOTL:
                    iParamGet_BaseType = this.japi.ParamGet_BaseType(this.hReader[0], mtr_Param.value(), bArr);
                    if (iParamGet_BaseType == 0) {
                        ((Inv_Potls_ST) obj).potlcnt = bArr[0];
                        ((Inv_Potls_ST) obj).potls = new Inv_Potl[bArr[0]];
                        for (int i6 = 0; i6 < bArr[0]; i6++) {
                            ((Inv_Potls_ST) obj).potls[i6] = new Inv_Potl();
                            int i7 = i6 * 5;
                            ((Inv_Potls_ST) obj).potls[i6].potl = SL_TagProtocol.valueOf(bArr[i7 + 1]);
                            ((Inv_Potls_ST) obj).potls[i6].weight = GetIntFrByteArray(bArr, i7 + 2);
                        }
                        break;
                    }
                    break;
                case MTR_PARAM_READER_CONN_ANTS:
                    iParamGet_BaseType = this.japi.ParamGet_BaseType(this.hReader[0], mtr_Param.value(), bArr);
                    if (iParamGet_BaseType == 0) {
                        ((ConnAnts_ST) obj).antcnt = bArr[0];
                        int i8 = 0;
                        while (i8 < bArr[0]) {
                            int i9 = i8 + 1;
                            ((ConnAnts_ST) obj).connectedants[i8] = bArr[i9];
                            i8 = i9;
                        }
                        break;
                    }
                    break;
                case MTR_PARAM_READER_VERSION:
                    iParamGet_BaseType = this.japi.ParamGet_BaseType(this.hReader[0], mtr_Param.value(), bArr);
                    if (iParamGet_BaseType == 0) {
                        ReaderVersion readerVersion = (ReaderVersion) obj;
                        if (bArr[0] != 1 || bArr[1] != 0 || bArr[2] != 0) {
                            byte[] bArr2 = {bArr[0]};
                            readerVersion.hardwareVer = bytes_Hexstr(bArr2) + ".";
                            bArr2[0] = bArr[1];
                            readerVersion.hardwareVer += bytes_Hexstr(bArr2) + ".";
                            bArr2[0] = bArr[2];
                            readerVersion.hardwareVer += bytes_Hexstr(bArr2) + ".";
                            bArr2[0] = bArr[3];
                            readerVersion.hardwareVer += bytes_Hexstr(bArr2);
                            bArr2[0] = bArr[4];
                            readerVersion.softwareVer = bytes_Hexstr(bArr2) + ".";
                            bArr2[0] = bArr[5];
                            readerVersion.softwareVer += bytes_Hexstr(bArr2) + ".";
                            bArr2[0] = bArr[6];
                            readerVersion.softwareVer += bytes_Hexstr(bArr2) + ".";
                            bArr2[0] = bArr[7];
                            readerVersion.softwareVer += bytes_Hexstr(bArr2);
                            break;
                        } else {
                            readerVersion.hardwareVer = ((int) bArr[0]) + ".";
                            readerVersion.hardwareVer += ((int) bArr[1]) + ".";
                            readerVersion.hardwareVer += ((int) bArr[2]) + ".";
                            readerVersion.hardwareVer += ((int) bArr[3]);
                            readerVersion.softwareVer = ((int) bArr[4]) + ".";
                            readerVersion.softwareVer += ((int) bArr[5]) + ".";
                            readerVersion.softwareVer += ((int) bArr[6]) + ".";
                            readerVersion.softwareVer += ((int) bArr[7]);
                            break;
                        }
                    }
                    break;
                case MTR_PARAM_FREQUENCY_REGION:
                    iParamGet_BaseType = this.japi.ParamGet_BaseType(this.hReader[0], mtr_Param.value(), bArr);
                    if (iParamGet_BaseType == 0) {
                        ((Region_Conf[]) obj)[0] = Region_Conf.valueOf((bArr[3] & 255) | ((bArr[0] & 255) << 24) | ((bArr[1] & 255) << 16) | ((bArr[2] & 255) << 8));
                        break;
                    }
                    break;
                case MTR_PARAM_FREQUENCY_HOPTABLE:
                    iParamGet_BaseType = this.japi.ParamGet_BaseType(this.hReader[0], mtr_Param.value(), bArr);
                    if (iParamGet_BaseType == 0) {
                        ((HoptableData_ST) obj).lenhtb = bArr[0];
                        for (int i10 = 0; i10 < bArr[0]; i10++) {
                            int i11 = i10 * 4;
                            ((HoptableData_ST) obj).htb[i10] = (bArr[i11 + 4] & 255) | ((bArr[i11 + 1] & 255) << 24) | ((bArr[i11 + 2] & 255) << 16) | ((bArr[i11 + 3] & 255) << 8);
                        }
                        break;
                    }
                    break;
                case MTR_PARAM_RF_ANTPORTS_VSWR:
                    AntPortsVSWR antPortsVSWR = (AntPortsVSWR) obj;
                    bArr[0] = (byte) antPortsVSWR.andid;
                    bArr[1] = (byte) antPortsVSWR.region.value();
                    bArr[2] = (byte) ((65280 & antPortsVSWR.power) >> 8);
                    bArr[3] = (byte) (antPortsVSWR.power & 255);
                    bArr[4] = (byte) ((antPortsVSWR.frecount >> 24) & 255);
                    bArr[5] = (byte) ((antPortsVSWR.frecount >> 16) & 255);
                    bArr[6] = (byte) ((antPortsVSWR.frecount >> 8) & 255);
                    bArr[7] = (byte) (antPortsVSWR.frecount & 255);
                    boolean z = (antPortsVSWR.frecount & (-256)) > 0;
                    int i12 = antPortsVSWR.frecount & 255;
                    for (int i13 = 0; i13 < i12; i13++) {
                        int i14 = (i13 * 4) + 8;
                        bArr[i14] = (byte) ((antPortsVSWR.vswrs[i13].frequency >> 24) & 255);
                        bArr[i14 + 1] = (byte) ((antPortsVSWR.vswrs[i13].frequency >> 16) & 255);
                        bArr[i14 + 2] = (byte) ((antPortsVSWR.vswrs[i13].frequency >> 8) & 255);
                        bArr[i14 + 3] = (byte) ((antPortsVSWR.vswrs[i13].frequency >> 0) & 255);
                    }
                    iParamGet_BaseType = this.japi.ParamGet_BaseType(this.hReader[0], mtr_Param.value(), bArr);
                    if (iParamGet_BaseType == 0) {
                        antPortsVSWR.frecount = bArr[0] & 255;
                        while (i2 < antPortsVSWR.frecount) {
                            int i15 = (i2 * 5) + 1;
                            antPortsVSWR.vswrs[i2].frequency = ((bArr[i15] & 255) << 24) | ((bArr[i15 + 1] & 255) << 16) | ((bArr[i15 + 2] & 255) << 8) | (bArr[i15 + 3] & 255);
                            if (z) {
                                antPortsVSWR.vswrs[i2].vswr = bArr[i15 + 4];
                            } else {
                                float fPow = (float) Math.pow(10.0d, ((bArr[i15 + 4] & 255) / 10.0f) / 20.0f);
                                antPortsVSWR.vswrs[i2].vswr = (1.0f + fPow) / (fPow - 1.0f);
                            }
                            i2++;
                        }
                        break;
                    }
                    break;
                case MTR_PARAM_READER_IP:
                    iParamGet_BaseType = this.japi.ParamGet_BaseType(this.hReader[0], mtr_Param.value(), bArr);
                    if (iParamGet_BaseType == 0) {
                        ((Reader_Ip) obj).f1113ip = new byte[bArr[0]];
                        ((Reader_Ip) obj).mask = new byte[bArr[1]];
                        ((Reader_Ip) obj).gateway = new byte[bArr[2]];
                        System.arraycopy(bArr, 3, ((Reader_Ip) obj).f1113ip, 0, bArr[0]);
                        System.arraycopy(bArr, bArr[0] + 3, ((Reader_Ip) obj).mask, 0, bArr[1]);
                        System.arraycopy(bArr, bArr[0] + 3 + bArr[1], ((Reader_Ip) obj).gateway, 0, bArr[2]);
                        break;
                    }
                    break;
                case MTR_PARAM_CUSTOM:
                    CustomParam_ST customParam_ST = (CustomParam_ST) obj;
                    try {
                        bytes = customParam_ST.ParamName.getBytes("US-ASCII");
                    } catch (Exception unused) {
                        bytes = null;
                    }
                    System.arraycopy(bytes, 0, bArr, 0, bytes.length);
                    bArr[bytes.length] = 0;
                    iParamGet_BaseType = this.japi.ParamGet_BaseType(this.hReader[0], mtr_Param.value(), bArr);
                    if (iParamGet_BaseType == 0) {
                        int i16 = (((((bArr[0] & 255) << 24) | ((bArr[1] & 255) << 16)) | ((bArr[2] & 255) << 8)) | (bArr[3] & 255)) - 50;
                        customParam_ST.ParamVal = new byte[i16];
                        System.arraycopy(bArr, 50, customParam_ST.ParamVal, 0, i16);
                        break;
                    }
                    break;
                case MTR_PARAM_READER_WATCHDOG:
                case MTR_PARAM_READER_ERRORDATA:
                    iParamGet_BaseType = this.japi.ParamGet_BaseType(this.hReader[0], mtr_Param.value(), (byte[]) obj);
                    break;
                case MTR_PARAM_SAVEINMODULE:
                    Default_Param default_Param = (Default_Param) obj;
                    bArr[0] = (byte) default_Param.key.value();
                    bArr[1] = (byte) (default_Param.isdefault ? 1 : 0);
                    if (default_Param.key == Mtr_Param.MTR_PARAM_SAVEINMODULE_BAUD || default_Param.key == Mtr_Param.MTR_PARAM_POTL_GEN2_SESSION || default_Param.key == Mtr_Param.MTR_PARAM_POTL_GEN2_Q || default_Param.key == Mtr_Param.MTR_PARAM_RF_ANTPOWER || default_Param.key == Mtr_Param.MTR_PARAM_FREQUENCY_REGION) {
                        i = 2;
                    } else if (default_Param.key == Mtr_Param.MTR_PARAM_SAVEINMODULE) {
                        byte[] bytes2 = default_Param.subkey.getBytes();
                        bArr[2] = (byte) bytes2.length;
                        int i17 = 0;
                        i = 3;
                        while (i17 < bytes2.length) {
                            bArr[i] = bytes2[i17];
                            i17++;
                            i++;
                        }
                    } else {
                        return READER_ERR.MT_INVALID_PARA;
                    }
                    iParamGet_BaseType = this.japi.ParamGet_BaseType(this.hReader[0], mtr_Param.value(), bArr);
                    if (iParamGet_BaseType == 0) {
                        if (default_Param.key == Mtr_Param.MTR_PARAM_SAVEINMODULE_BAUD || default_Param.key == Mtr_Param.MTR_PARAM_POTL_GEN2_SESSION || default_Param.key == Mtr_Param.MTR_PARAM_POTL_GEN2_Q) {
                            default_Param.val = Integer.valueOf((bArr[i + 3] & 255) | ((bArr[i] & 255) << 24) | ((bArr[i + 1] & 255) << 16) | ((bArr[i + 2] & 255) << 8));
                            break;
                        } else if (default_Param.key == Mtr_Param.MTR_PARAM_RF_ANTPOWER) {
                            AntPowerConf antPowerConf = new AntPowerConf();
                            int i18 = i + 1;
                            antPowerConf.antcnt = bArr[i];
                            AntPower[] antPowerArr = new AntPower[antPowerConf.antcnt];
                            while (i2 < antPowerConf.antcnt) {
                                antPowerArr[i2] = new AntPower();
                                int i19 = i18 + 1;
                                antPowerArr[i2].antid = bArr[i18];
                                antPowerArr[i2].readPower = (short) (((bArr[i19] & 255) << 8) | (bArr[i19 + 1] & 255));
                                int i20 = i19 + 2;
                                antPowerArr[i2].writePower = (short) (((bArr[i20] & 255) << 8) | (bArr[i20 + 1] & 255));
                                i18 = i20 + 2 + 2;
                                i2++;
                            }
                            antPowerConf.Powers = antPowerArr;
                            default_Param.val = antPowerConf;
                            break;
                        } else if (default_Param.key == Mtr_Param.MTR_PARAM_FREQUENCY_REGION) {
                            default_Param.val = Byte.valueOf(bArr[i]);
                            break;
                        } else if (default_Param.key == Mtr_Param.MTR_PARAM_SAVEINMODULE) {
                            int length = i + default_Param.subkey.getBytes().length + 1;
                            if (default_Param.subkey.equals("modulesave/hpupload")) {
                                int[] iArr = new int[6];
                                while (i2 < 6) {
                                    int i21 = length + 1;
                                    bArr[length] = (byte) ((iArr[i2] & ViewCompat.MEASURED_STATE_MASK) >> 24);
                                    int i22 = i21 + 1;
                                    bArr[i21] = (byte) ((iArr[i2] & 16711680) >> 16);
                                    int i23 = i22 + 1;
                                    bArr[i22] = (byte) ((iArr[i2] & MotionEventCompat.ACTION_POINTER_INDEX_MASK) >> 8);
                                    length = i23 + 1;
                                    bArr[i23] = (byte) (iArr[i2] & 255);
                                    i2++;
                                }
                                default_Param.val = iArr;
                                break;
                            } else {
                                return READER_ERR.MT_INVALID_PARA;
                            }
                        }
                    }
                    break;
                default:
                    iParamGet_BaseType = this.japi.ParamGet_BaseType(this.hReader[0], mtr_Param.value(), bArr);
                    if (iParamGet_BaseType == 0) {
                        ((int[]) obj)[0] = (bArr[3] & 255) | ((bArr[0] & 255) << 24) | ((bArr[1] & 255) << 16) | ((bArr[2] & 255) << 8);
                        break;
                    }
                    break;
            }
            return READER_ERR.valueOf(iParamGet_BaseType);
        }
    }

    /* renamed from: com.uhf.api.cls.Reader$1 */
    static /* synthetic */ class C13891 {
        static final /* synthetic */ int[] $SwitchMap$com$uhf$api$cls$Reader$CustomCmdType;

        static {
            try {
                $SwitchMap$com$uhf$api$cls$Reader$Mtr_Param[Mtr_Param.MTR_PARAM_RF_ANTPOWER.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$uhf$api$cls$Reader$Mtr_Param[Mtr_Param.MTR_PARAM_TAG_FILTER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$uhf$api$cls$Reader$Mtr_Param[Mtr_Param.MTR_PARAM_TAG_EMBEDEDDATA.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$uhf$api$cls$Reader$Mtr_Param[Mtr_Param.MTR_PARAM_TAG_INVPOTL.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$uhf$api$cls$Reader$Mtr_Param[Mtr_Param.MTR_PARAM_READER_CONN_ANTS.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$uhf$api$cls$Reader$Mtr_Param[Mtr_Param.MTR_PARAM_READER_VERSION.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$uhf$api$cls$Reader$Mtr_Param[Mtr_Param.MTR_PARAM_FREQUENCY_REGION.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$com$uhf$api$cls$Reader$Mtr_Param[Mtr_Param.MTR_PARAM_FREQUENCY_HOPTABLE.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$com$uhf$api$cls$Reader$Mtr_Param[Mtr_Param.MTR_PARAM_RF_ANTPORTS_VSWR.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$com$uhf$api$cls$Reader$Mtr_Param[Mtr_Param.MTR_PARAM_READER_IP.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                $SwitchMap$com$uhf$api$cls$Reader$Mtr_Param[Mtr_Param.MTR_PARAM_CUSTOM.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                $SwitchMap$com$uhf$api$cls$Reader$Mtr_Param[Mtr_Param.MTR_PARAM_READER_WATCHDOG.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                $SwitchMap$com$uhf$api$cls$Reader$Mtr_Param[Mtr_Param.MTR_PARAM_READER_ERRORDATA.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                $SwitchMap$com$uhf$api$cls$Reader$Mtr_Param[Mtr_Param.MTR_PARAM_SAVEINMODULE.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                $SwitchMap$com$uhf$api$cls$Reader$Mtr_Param[Mtr_Param.MTR_PARAM_TAG_MULTISELECTORS.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            $SwitchMap$com$uhf$api$cls$Reader$CustomCmdType = new int[CustomCmdType.values().length];
            try {
                $SwitchMap$com$uhf$api$cls$Reader$CustomCmdType[CustomCmdType.IMPINJ_M4_Qt.ordinal()] = 1;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                $SwitchMap$com$uhf$api$cls$Reader$CustomCmdType[CustomCmdType.ALIEN_Higgs3_BlockReadLock.ordinal()] = 2;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                $SwitchMap$com$uhf$api$cls$Reader$CustomCmdType[CustomCmdType.NXP_ChangeEAS.ordinal()] = 3;
            } catch (NoSuchFieldError unused18) {
            }
            try {
                $SwitchMap$com$uhf$api$cls$Reader$CustomCmdType[CustomCmdType.NXP_EASAlarm.ordinal()] = 4;
            } catch (NoSuchFieldError unused19) {
            }
            try {
                $SwitchMap$com$uhf$api$cls$Reader$CustomCmdType[CustomCmdType.NXP_U8_InventoryMode.ordinal()] = 5;
            } catch (NoSuchFieldError unused20) {
            }
            try {
                $SwitchMap$com$uhf$api$cls$Reader$CustomCmdType[CustomCmdType.NXP_SetReadProtect.ordinal()] = 6;
            } catch (NoSuchFieldError unused21) {
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:155:0x0646 A[Catch: all -> 0x06dc, LOOP:10: B:153:0x0642->B:155:0x0646, LOOP_END, TryCatch #1 {, blocks: (B:5:0x0005, B:6:0x001f, B:7:0x0022, B:157:0x06ac, B:158:0x06d6, B:159:0x06da, B:8:0x0028, B:10:0x002e, B:11:0x003e, B:13:0x0046, B:16:0x004b, B:17:0x004f, B:19:0x0052, B:21:0x0056, B:22:0x0058, B:24:0x005a, B:26:0x0064, B:29:0x006e, B:31:0x007c, B:33:0x00b8, B:32:0x0091, B:34:0x00bc, B:35:0x00be, B:37:0x00c0, B:38:0x00c7, B:40:0x00cb, B:42:0x0123, B:44:0x0135, B:43:0x012b, B:45:0x0142, B:46:0x0152, B:47:0x0154, B:49:0x0156, B:53:0x016a, B:55:0x0173, B:57:0x0179, B:60:0x0181, B:62:0x0187, B:63:0x0191, B:65:0x0195, B:88:0x027a, B:66:0x01e3, B:68:0x01e9, B:69:0x01f5, B:71:0x01fb, B:72:0x0206, B:74:0x0209, B:75:0x0213, B:77:0x021d, B:80:0x0225, B:81:0x024f, B:82:0x0251, B:84:0x0253, B:85:0x0255, B:87:0x0257, B:89:0x028a, B:90:0x029e, B:91:0x02a2, B:92:0x02aa, B:93:0x02e1, B:94:0x032c, B:95:0x0336, B:97:0x033a, B:98:0x037e, B:99:0x038e, B:100:0x03c0, B:101:0x03ca, B:103:0x03ce, B:104:0x042d, B:105:0x043d, B:107:0x0443, B:109:0x044b, B:111:0x0454, B:113:0x04c8, B:114:0x04d3, B:110:0x0450, B:115:0x04e3, B:116:0x04f3, B:118:0x04f9, B:120:0x0573, B:121:0x0575, B:122:0x059b, B:123:0x05ab, B:126:0x05b4, B:128:0x05b8, B:130:0x05c2, B:133:0x05cb, B:136:0x05d1, B:137:0x05df, B:139:0x05e3, B:141:0x060e, B:143:0x0612, B:145:0x061c, B:146:0x0622, B:148:0x062c, B:149:0x0632, B:152:0x0639, B:153:0x0642, B:155:0x0646, B:156:0x069d, B:150:0x0635), top: B:168:0x0005 }] */
    /* JADX WARN: Type inference failed for: r4v3, types: [com.uhf.api.cls.Reader$AntPowerConf] */
    /* JADX WARN: Type inference failed for: r4v4 */
    /* JADX WARN: Type inference failed for: r4v5 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public com.uhf.api.cls.Reader.READER_ERR ParamSet(com.uhf.api.cls.Reader.Mtr_Param r17, java.lang.Object r18) {
        /*
            Method dump skipped, instructions count: 1794
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.uhf.api.cls.Reader.ParamSet(com.uhf.api.cls.Reader$Mtr_Param, java.lang.Object):com.uhf.api.cls.Reader$READER_ERR");
    }

    public static String bytes_Hexstr(byte[] bArr) {
        StringBuffer stringBuffer = new StringBuffer(bArr.length);
        for (byte b : bArr) {
            String hexString = Integer.toHexString(b & 255);
            if (hexString.length() < 2) {
                stringBuffer.append(0);
            }
            stringBuffer.append(hexString.toUpperCase());
        }
        return stringBuffer.toString();
    }

    public void Str2Hex(String str, int i, byte[] bArr) {
        if (i == 0) {
            return;
        }
        int i2 = 0;
        while (i2 < i) {
            int i3 = i2 + 1;
            byte bIndexOf = (byte) "0123456789ABCDEF".indexOf(str.toUpperCase().substring(i2, i3));
            int i4 = i2 + 2;
            byte bIndexOf2 = i4 <= i ? (byte) "0123456789ABCDEF".indexOf(str.toUpperCase().substring(i3, i4)) : (byte) 0;
            int i5 = i2 % 2;
            int i6 = i2 / 2;
            if (i5 != 0) {
                i6++;
            }
            bArr[i6] = (byte) (((bIndexOf << 4) & 255) | (bIndexOf2 & 255));
            i2 = i4;
        }
    }

    public void Str2Binary(String str, int i, byte[] bArr) {
        if (i % 8 != 0) {
            return;
        }
        for (int i2 = 0; i2 < i; i2 += 8) {
            byte b = 0;
            for (int i3 = 0; i3 < 8; i3++) {
                int i4 = i2 + i3;
                b = (byte) (b | ((byte) (Byte.parseByte(str.substring(i4, i4 + 1)) << (7 - i3))));
            }
            int i5 = i2 / 8;
            bArr[i5] = (byte) (b | bArr[i5]);
        }
    }

    public READER_ERR AsyncStartReading(int[] iArr, int i, int i2) {
        READER_ERR reader_errValueOf;
        toDlogAPI("AsyncStartReading- [] " + String.valueOf(i) + " " + String.valueOf(i2));
        synchronized (this) {
            reader_errValueOf = READER_ERR.valueOf(this.japi.AsyncStartReading(this.hReader[0], iArr, i, i2));
        }
        return reader_errValueOf;
    }

    public READER_ERR AsyncStartReadingEx(int[] iArr, int i, int i2, byte[] bArr) {
        READER_ERR reader_errValueOf;
        toDlogAPI("AsyncStartReadingEx- [] " + String.valueOf(i) + " " + String.valueOf(i2));
        synchronized (this) {
            reader_errValueOf = READER_ERR.valueOf(this.japi.AsyncStartReadingEx(this.hReader[0], iArr, i, i2, bArr));
        }
        return reader_errValueOf;
    }

    public READER_ERR AsyncStopReading() {
        READER_ERR reader_errValueOf;
        toDlogAPI("AsyncStopReading");
        synchronized (this) {
            reader_errValueOf = READER_ERR.valueOf(this.japi.AsyncStopReading(this.hReader[0]));
        }
        return reader_errValueOf;
    }

    public READER_ERR AsyncStopReadingEx() {
        READER_ERR reader_errValueOf;
        toDlogAPI("AsyncStopReadingEx");
        synchronized (this) {
            reader_errValueOf = READER_ERR.valueOf(this.japi.AsyncStopReadingEx(this.hReader[0]));
        }
        return reader_errValueOf;
    }

    public READER_ERR AsyncGetTagCount(int[] iArr) {
        READER_ERR reader_errValueOf;
        synchronized (this) {
            reader_errValueOf = READER_ERR.valueOf(this.japi.AsyncGetTagCount(this.hReader[0], iArr));
        }
        return reader_errValueOf;
    }

    public READER_ERR AsyncGetNextTag(TAGINFO taginfo) {
        READER_ERR reader_errValueOf;
        synchronized (this) {
            byte[] bArr = new byte[500];
            reader_errValueOf = READER_ERR.valueOf(this.japi.AsyncGetNextTag_BaseType(this.hReader[0], bArr));
            if (reader_errValueOf == READER_ERR.MT_OK_ERR) {
                taginfo.ReadCnt = bArr[0];
                taginfo.RSSI = bArr[1];
                taginfo.AntennaID = bArr[2];
                taginfo.Frequency = ((bArr[3] & 255) << 24) | ((bArr[4] & 255) << 16) | ((bArr[5] & 255) << 8) | (bArr[6] & 255);
                taginfo.TimeStamp = ((bArr[7] & 255) << 24) | ((bArr[8] & 255) << 16) | ((bArr[9] & 255) << 8) | (bArr[10] & 255);
                taginfo.Res[0] = bArr[11];
                taginfo.Res[1] = bArr[12];
                int i = ((bArr[13] & 255) << 8) | (bArr[14] & 255);
                taginfo.f1114PC[0] = bArr[15];
                taginfo.f1114PC[1] = bArr[16];
                taginfo.EpcId = new byte[i];
                taginfo.Epclen = (short) i;
                System.arraycopy(bArr, 17, taginfo.EpcId, 0, i);
                int i2 = 17 + i;
                int i3 = i2 + 1;
                taginfo.CRC[0] = bArr[i2];
                int i4 = i3 + 1;
                taginfo.CRC[1] = bArr[i3];
                int i5 = i4 + 1;
                taginfo.protocol = SL_TagProtocol.valueOf(bArr[i4]);
                int i6 = ((bArr[i5] & 255) << 8) | (bArr[i5 + 1] & 255);
                int i7 = i5 + 2;
                taginfo.EmbededData = new byte[i6];
                taginfo.EmbededDatalen = (short) i6;
                if (i6 > 0) {
                    System.arraycopy(bArr, i7, taginfo.EmbededData, 0, i6);
                }
            }
        }
        return reader_errValueOf;
    }

    public static String GetSDKVersion() {
        return "jarVersion:20220322soVersion:" + JniModuleAPI.GetSDKVersion();
    }

    public static READER_ERR GetDeviceVersion(String str, deviceVersion deviceversion) {
        byte[] bArr = new byte[9];
        READER_ERR reader_errValueOf = READER_ERR.valueOf(JniModuleAPI.GetDeviceVersion(str, bArr));
        if (reader_errValueOf == READER_ERR.MT_OK_ERR) {
            if (bArr[0] == 1) {
                deviceversion.hardwareVer = ((int) bArr[1]) + ".";
                deviceversion.hardwareVer += ((int) bArr[2]) + ".";
                deviceversion.hardwareVer += ((int) bArr[3]) + ".";
                deviceversion.hardwareVer += ((int) bArr[4]);
                deviceversion.softwareVer = ((int) bArr[5]) + ".";
                deviceversion.softwareVer += ((int) bArr[6]) + ".";
                deviceversion.softwareVer += ((int) bArr[7]) + ".";
                deviceversion.softwareVer += ((int) bArr[8]);
            } else {
                byte[] bArr2 = {bArr[1]};
                deviceversion.hardwareVer = bytes_Hexstr(bArr2) + ".";
                bArr2[0] = bArr[2];
                deviceversion.hardwareVer += bytes_Hexstr(bArr2) + ".";
                bArr2[0] = bArr[3];
                deviceversion.hardwareVer += bytes_Hexstr(bArr2) + ".";
                bArr2[0] = bArr[4];
                deviceversion.hardwareVer += bytes_Hexstr(bArr2);
                bArr2[0] = bArr[5];
                deviceversion.softwareVer = bytes_Hexstr(bArr2) + ".";
                bArr2[0] = bArr[6];
                deviceversion.softwareVer += bytes_Hexstr(bArr2) + ".";
                bArr2[0] = bArr[7];
                deviceversion.softwareVer += bytes_Hexstr(bArr2) + ".";
                bArr2[0] = bArr[8];
                deviceversion.softwareVer += bytes_Hexstr(bArr2);
            }
        }
        return reader_errValueOf;
    }

    public class DeviceSerialNumber {
        public String serailNumber = "";

        public DeviceSerialNumber() {
        }
    }

    public READER_ERR GetSerialNumber(DeviceSerialNumber deviceSerialNumber) {
        String str;
        synchronized (this) {
            CustomParam_ST customParam_ST = new CustomParam_ST();
            customParam_ST.ParamName = "reader/rdrdetails";
            READER_ERR reader_errParamGet = ParamGet(Mtr_Param.MTR_PARAM_CUSTOM, customParam_ST);
            if (reader_errParamGet != READER_ERR.MT_OK_ERR) {
                return reader_errParamGet;
            }
            byte[] bArr = new byte[4];
            System.arraycopy(customParam_ST.ParamVal, 28, bArr, 0, 4);
            String str2 = "" + bytes_Hexstr(bArr);
            for (int i = 0; i < 12; i++) {
                str2 = str2 + ((int) customParam_ST.ParamVal[i + 16]);
            }
            HardwareDetails hardwareDetails = new HardwareDetails();
            GetHardwareDetails(hardwareDetails);
            if (hardwareDetails.board == MaindBoard_Type.MAINBOARD_ARM9) {
                str = "A9" + str2;
            } else if (hardwareDetails.board == MaindBoard_Type.MAINBOARD_ARM7) {
                str = "A7" + str2;
            } else {
                str = "SE" + str2;
            }
            deviceSerialNumber.serailNumber = str;
            return reader_errParamGet;
        }
    }

    public READER_ERR GetLastDetailError(ErrInfo errInfo) {
        READER_ERR reader_errValueOf;
        synchronized (this) {
            byte[] bArr = new byte[500];
            reader_errValueOf = READER_ERR.valueOf(this.japi.GetLastDetailError_BaseType(this.hReader[0], bArr));
            if (reader_errValueOf == READER_ERR.MT_OK_ERR) {
                errInfo.derrcode = ((bArr[0] & 255) << 24) | ((bArr[1] & 255) << 16) | ((bArr[2] & 255) << 8) | (bArr[3] & 255);
                byte[] bArr2 = new byte[bArr[4]];
                System.arraycopy(bArr, 5, bArr2, 0, bArr[4]);
                try {
                    errInfo.errstr = new String(bArr2, "ascii");
                } catch (Exception unused) {
                }
            }
        }
        return reader_errValueOf;
    }

    public READER_ERR ResetRfidModule() {
        READER_ERR reader_errValueOf;
        synchronized (this) {
            reader_errValueOf = READER_ERR.valueOf(this.japi.ResetRfidModule(this.hReader[0]));
        }
        return reader_errValueOf;
    }

    public static READER_ERR FirmwareLoadFromSerialPort(String str, String str2) {
        return READER_ERR.valueOf(JniModuleAPI.FirmwareLoadFromSerialPort(str, str2));
    }

    public static READER_ERR RebootReader(String str) {
        return READER_ERR.valueOf(JniModuleAPI.RebootReader(str));
    }

    public int DataTransportSend(byte[] bArr, int i, int i2) {
        int iDataTransportSend;
        synchronized (this) {
            iDataTransportSend = this.japi.DataTransportSend(this.hReader[0], bArr, i, i2);
        }
        return iDataTransportSend;
    }

    public int DataTransportRecv(byte[] bArr, int i, int i2) {
        int iDataTransportRecv;
        synchronized (this) {
            iDataTransportRecv = this.japi.DataTransportRecv(this.hReader[0], bArr, i, i2);
        }
        return iDataTransportRecv;
    }

    public READER_ERR ReadTagTemperature(int i, char c, int i2, int i3, int i4, int i5, int i6, short s, byte[] bArr, R2000_calibration.Tagtemperture_DATA tagtemperture_DATA) {
        READER_ERR reader_errValueOf;
        synchronized (this) {
            byte[] bArr2 = new byte[300];
            int iReadTagTemperature = this.japi.ReadTagTemperature(this.hReader[0], i, c, i2, i3, i4 + i5 + i6, i5, i6, s, bArr, bArr2, new int[1]);
            if (iReadTagTemperature == 0) {
                R2000_calibration.Tagtemperture_DATA tagtemperture_DATA2 = new R2000_calibration().new Tagtemperture_DATA(bArr2, i3);
                tagtemperture_DATA.pvtAntenna = tagtemperture_DATA2.pvtAntenna;
                tagtemperture_DATA.pvtFrequency = tagtemperture_DATA2.pvtFrequency;
                tagtemperture_DATA.pvtLqi = tagtemperture_DATA2.pvtLqi;
                tagtemperture_DATA.pvtPhase = tagtemperture_DATA2.pvtPhase;
                tagtemperture_DATA.pvtPro = tagtemperture_DATA2.pvtPro;
                tagtemperture_DATA.pvtReadCount = tagtemperture_DATA2.pvtReadCount;
                tagtemperture_DATA.pvtTsmp = tagtemperture_DATA2.pvtTsmp;
                tagtemperture_DATA.tagcrc = new byte[2];
                tagtemperture_DATA.tagpc = new byte[2];
                tagtemperture_DATA.tagepc = new byte[tagtemperture_DATA2.tagepc.length];
                System.arraycopy(tagtemperture_DATA2.tagcrc, 0, tagtemperture_DATA.tagcrc, 0, 2);
                System.arraycopy(tagtemperture_DATA2.tagepc, 0, tagtemperture_DATA.tagepc, 0, tagtemperture_DATA2.tagepc.length);
                System.arraycopy(tagtemperture_DATA2.tagpc, 0, tagtemperture_DATA.tagpc, 0, 2);
                if (tagtemperture_DATA2.BankData != null) {
                    tagtemperture_DATA.BankData = new byte[tagtemperture_DATA2.BankData.length];
                    System.arraycopy(tagtemperture_DATA2.BankData, 0, tagtemperture_DATA.BankData, 0, tagtemperture_DATA2.BankData.length);
                }
                tagtemperture_DATA.temperdata = new byte[tagtemperture_DATA2.temperdata.length];
                System.arraycopy(tagtemperture_DATA2.temperdata, 0, tagtemperture_DATA.temperdata, 0, tagtemperture_DATA2.temperdata.length);
            }
            reader_errValueOf = READER_ERR.valueOf(iReadTagTemperature);
        }
        return reader_errValueOf;
    }

    public READER_ERR ReadTagLED(int i, short s, short s2, R2000_calibration.TagLED_DATA tagLED_DATA) {
        READER_ERR reader_errValueOf;
        synchronized (this) {
            byte[] bArr = new byte[300];
            int[] iArr = new int[1];
            int iReadTagLED = this.japi.ReadTagLED(this.hReader[0], i, s2, s, bArr, iArr);
            if (iReadTagLED == 0) {
                R2000_calibration.TagLED_DATA tagLED_DATA2 = new R2000_calibration().new TagLED_DATA(bArr, iArr[0]);
                tagLED_DATA.pvtAntenna = tagLED_DATA2.pvtAntenna;
                tagLED_DATA.pvtFrequency = tagLED_DATA2.pvtFrequency;
                tagLED_DATA.pvtLqi = tagLED_DATA2.pvtLqi;
                tagLED_DATA.pvtPhase = tagLED_DATA2.pvtPhase;
                tagLED_DATA.pvtPro = tagLED_DATA2.pvtPro;
                tagLED_DATA.pvtReadCount = tagLED_DATA2.pvtReadCount;
                tagLED_DATA.pvtTsmp = tagLED_DATA2.pvtTsmp;
                tagLED_DATA.tagcrc = new byte[2];
                tagLED_DATA.tagpc = new byte[2];
                tagLED_DATA.tagepc = new byte[tagLED_DATA2.tagepc.length];
                System.arraycopy(tagLED_DATA2.tagcrc, 0, tagLED_DATA.tagcrc, 0, 2);
                System.arraycopy(tagLED_DATA2.tagepc, 0, tagLED_DATA.tagepc, 0, tagLED_DATA2.tagepc.length);
                System.arraycopy(tagLED_DATA2.tagpc, 0, tagLED_DATA.tagpc, 0, 2);
                if (tagLED_DATA2.BankData != null) {
                    tagLED_DATA.BankData = new byte[tagLED_DATA2.BankData.length];
                    System.arraycopy(tagLED_DATA2.BankData, 0, tagLED_DATA.BankData, 0, tagLED_DATA2.BankData.length);
                }
            }
            reader_errValueOf = READER_ERR.valueOf(iReadTagLED);
        }
        return reader_errValueOf;
    }

    int SetFilterSessioninTargetA(int[] iArr, int i, int i2) {
        byte[] bArrGetSendCmd = new R2000_calibration().GetSendCmd(R2000_calibration.R2000cmd.S2TA, new R2000_calibration().new FilterS2inA_DATA(iArr, i, i2).ToByteData());
        MsgObj msgObj = new MsgObj();
        int iSendandRev = SendandRev(bArrGetSendCmd, 1000, msgObj);
        return iSendandRev != 0 ? iSendandRev : (msgObj.status[0] << 8) | msgObj.status[1];
    }

    READER_ERR FlushDummyData2Mod() {
        byte[] bArr = new byte[255];
        bArr[0] = -1;
        bArr[1] = -6;
        bArr[2] = 0;
        for (int i = 3; i < 255; i++) {
            bArr[i] = 0;
        }
        DataTransportSend(bArr, 255, 2000);
        return READER_ERR.MT_OK_ERR;
    }

    class MsgObj {
        public byte[] soh = new byte[1];
        public byte[] dataLen = new byte[1];
        public byte[] opCode = new byte[1];
        public byte[] status = new byte[2];
        public byte[] crc = new byte[2];
        public byte[] data = new byte[ItemTouchHelper.Callback.DEFAULT_SWIPE_ANIMATION_DURATION];

        MsgObj() {
        }

        public byte[] getcheckcrcdata() {
            byte[] bArr = this.dataLen;
            int i = 4;
            byte[] bArr2 = new byte[bArr[0] + 4];
            bArr2[0] = bArr[0];
            bArr2[1] = this.opCode[0];
            byte[] bArr3 = this.status;
            bArr2[2] = bArr3[0];
            bArr2[3] = bArr3[1];
            int i2 = 0;
            while (i2 < this.dataLen[0]) {
                bArr2[i] = this.data[i2];
                i2++;
                i++;
            }
            return bArr2;
        }
    }

    READER_ERR TestModLive() {
        READER_ERR reader_err = READER_ERR.MT_OK_ERR;
        byte[] bArr = {-1, 0, 3, 29, 12};
        byte[] bArr2 = new byte[50];
        byte[] bArr3 = new byte[50];
        DataTransportSend(bArr, bArr.length, 1000);
        if (DataTransportRecv(bArr2, 5, 1000) == -1) {
            return READER_ERR.MT_CMD_FAILED_ERR;
        }
        return DataTransportRecv(bArr3, bArr2[1] + 2, 1000) == -1 ? READER_ERR.MT_CMD_FAILED_ERR : reader_err;
    }

    private int SendandRev(byte[] bArr, int i, MsgObj msgObj) {
        toDlogAPI("send:" + bytes_Hexstr(bArr));
        if (DataTransportSend(bArr, bArr.length, i) != 0) {
            return 65277;
        }
        READER_ERR reader_err = READER_ERR.MT_OK_ERR;
        int iDataTransportRecv = DataTransportRecv(msgObj.soh, 1, 1000);
        String str = "" + bytes_Hexstr(msgObj.soh);
        if (iDataTransportRecv == -2 || iDataTransportRecv == -3) {
            return 65277;
        }
        if (iDataTransportRecv == -1) {
            return READER_ERR.MT_IO_ERR.value();
        }
        if (iDataTransportRecv == -4) {
            if (FlushDummyData2Mod() != READER_ERR.MT_OK_ERR) {
                return READER_ERR.MT_IO_ERR.value();
            }
            return TestModLive() == READER_ERR.MT_OK_ERR ? 65277 : 65278;
        }
        if ((msgObj.soh[0] & 255) != 255) {
            if (FlushDummyData2Mod() != READER_ERR.MT_OK_ERR) {
                return READER_ERR.MT_IO_ERR.value();
            }
            return 65277;
        }
        if (DataTransportRecv(msgObj.dataLen, 1, 1000) == -1) {
            return 65277;
        }
        String str2 = str + bytes_Hexstr(msgObj.dataLen);
        if (DataTransportRecv(msgObj.opCode, 1, 1000) == -1) {
            return 65277;
        }
        String str3 = str2 + bytes_Hexstr(msgObj.opCode);
        if (DataTransportRecv(msgObj.status, 2, 1000) == -1) {
            return 65277;
        }
        String str4 = str3 + bytes_Hexstr(msgObj.status);
        if (msgObj.dataLen[0] > 0) {
            if (DataTransportRecv(msgObj.data, msgObj.dataLen[0], 1000) == -1) {
                return 65277;
            }
            byte[] bArr2 = new byte[msgObj.dataLen[0]];
            System.arraycopy(msgObj.data, 0, bArr2, 0, msgObj.dataLen[0]);
            str4 = str4 + bytes_Hexstr(bArr2);
        }
        if (DataTransportRecv(msgObj.crc, 2, 1000) == -1) {
            return 65277;
        }
        toDlogAPI("revd:" + str4 + bytes_Hexstr(msgObj.crc));
        if (R2000_calibration.calcCrc_short(msgObj.getcheckcrcdata()) != ((short) (((msgObj.crc[0] & 255) << 8) | (msgObj.crc[1] & 255)))) {
            if (FlushDummyData2Mod() != READER_ERR.MT_OK_ERR) {
                return READER_ERR.MT_IO_ERR.value();
            }
            return 65277;
        }
        if (reader_err == READER_ERR.MT_OK_ERR || FlushDummyData2Mod() == READER_ERR.MT_OK_ERR) {
            return 0;
        }
        return READER_ERR.MT_IO_ERR.value();
    }

    public void addReadListener(ReadListener readListener) {
        this.readListeners.add(readListener);
    }

    public void removeReadListener(ReadListener readListener) {
        this.readListeners.remove(readListener);
    }

    public void addReadExceptionListener(ReadExceptionListener readExceptionListener) {
        this.readExceptionListeners.add(readExceptionListener);
    }

    public void removeReadExceptionListener(ReadExceptionListener readExceptionListener) {
        this.readExceptionListeners.remove(readExceptionListener);
    }

    public void addGpiTriggerListener(GpiTriggerListener gpiTriggerListener) {
        this.gpitriListener.add(gpiTriggerListener);
    }

    public void removeGpiTriggerListener(GpiTriggerListener gpiTriggerListener) {
        this.gpitriListener.remove(gpiTriggerListener);
    }

    public void addGpiTriggerBoundaryListener(GpiTriggerBoundaryListener gpiTriggerBoundaryListener) {
        this.gpitriboundListener.add(gpiTriggerBoundaryListener);
    }

    public void removeGpiTriggerBoundaryListener(GpiTriggerBoundaryListener gpiTriggerBoundaryListener) {
        this.gpitriboundListener.remove(gpiTriggerBoundaryListener);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean GpiTriContains(GpiInfo_ST gpiInfo_ST, GpiInfo_ST gpiInfo_ST2) {
        for (int i = 0; i < gpiInfo_ST.gpiCount; i++) {
            if (gpiInfo_ST2.gpiStats[gpiInfo_ST.gpiStats[i].GpiId - 1].State != gpiInfo_ST.gpiStats[i].State) {
                return false;
            }
        }
        return true;
    }

    public READER_ERR StartReading(int[] iArr, int i, BackReadOption backReadOption) {
        StringBuilder sb = new StringBuilder();
        sb.append("StartReading- [] ");
        sb.append(String.valueOf(i));
        sb.append(" ");
        sb.append(backReadOption.IsFastRead ? "t" : "f");
        toDlogAPI(sb.toString());
        CLOGS();
        READER_ERR reader_errErrhandle = READER_ERR.MT_OK_ERR;
        if (this.m_IsReadingForAll) {
            return READER_ERR.MT_OP_EXECING;
        }
        this.m_IsReadingForAll = true;
        this.m_BackReadOp = backReadOption;
        if (backReadOption.IsGPITrigger) {
            if ((backReadOption.GpiTrigger.TriggerType == GpiTrigger_Type.GPITRIGGER_TRI1START_TIMEOUTSTOP || backReadOption.GpiTrigger.TriggerType == GpiTrigger_Type.GPITRIGGER_TRI1ORTRI2START_TIMEOUTSTOP) && backReadOption.GpiTrigger.StopTriggerTimeout < 5) {
                return READER_ERR.MT_INVALID_PARA;
            }
            HardwareDetails hardwareDetails = new HardwareDetails();
            GetHardwareDetails(hardwareDetails);
            int i2 = (hardwareDetails.logictype == Reader_Type.MODULE_ARM7_FOUR_ANTS || hardwareDetails.logictype == Reader_Type.M6E_ARM7_FOUR_ANTS || hardwareDetails.logictype == Reader_Type.MODULE_ARM7_TWO_ANTS || hardwareDetails.logictype == Reader_Type.SL_COMMN_READER) ? 4 : 2;
            if (backReadOption.GpiTrigger.GpiTrigger1States.gpiCount > i2) {
                return READER_ERR.MT_INVALID_PARA;
            }
            for (int i3 = 0; i3 < backReadOption.GpiTrigger.GpiTrigger1States.gpiCount; i3++) {
                if (backReadOption.GpiTrigger.GpiTrigger1States.gpiStats[i3].GpiId < 1 || backReadOption.GpiTrigger.GpiTrigger1States.gpiStats[i3].GpiId > i2) {
                    return READER_ERR.MT_INVALID_PARA;
                }
            }
            if (backReadOption.GpiTrigger.TriggerType == GpiTrigger_Type.GPITRIGGER_TRI1START_TRI2STOP) {
                if (backReadOption.GpiTrigger.GpiTrigger2States.gpiCount > i2) {
                    return READER_ERR.MT_INVALID_PARA;
                }
                for (int i4 = 0; i4 < backReadOption.GpiTrigger.GpiTrigger2States.gpiCount; i4++) {
                    if (backReadOption.GpiTrigger.GpiTrigger2States.gpiStats[i4].GpiId < 1 || backReadOption.GpiTrigger.GpiTrigger2States.gpiStats[i4].GpiId > i2) {
                        return READER_ERR.MT_INVALID_PARA;
                    }
                }
            }
        }
        if (this.m_BackReadOp.IsFastRead) {
            short s = this.m_BackReadOp.TMFlags.IsReadCnt ? (short) 1 : (short) 0;
            if (this.m_BackReadOp.TMFlags.IsRSSI) {
                s = (short) (s | 2);
            }
            if (this.m_BackReadOp.TMFlags.IsAntennaID) {
                s = (short) (s | 4);
            }
            if (this.m_BackReadOp.TMFlags.IsFrequency) {
                s = (short) (s | 8);
            }
            if (this.m_BackReadOp.TMFlags.IsTimestamp) {
                s = (short) (s | 16);
            }
            if (this.m_BackReadOp.TMFlags.IsRFU) {
                s = (short) (s | 32);
            }
            if (this.m_BackReadOp.TMFlags.IsEmdData) {
                s = (short) (s | 128);
            }
            BackReadOption backReadOption2 = this.m_BackReadOp;
            backReadOption2.ReadDuration = (short) 0;
            backReadOption2.ReadInterval = 50;
            this.m_FastReadOption = (s << 8) | backReadOption2.FastReadDutyRation | 128;
            if (!this.m_BackReadOp.IsGPITrigger && (reader_errErrhandle = errhandle(this.japi.AsyncStartReading(this.hReader[0], iArr, i, this.m_FastReadOption))) != READER_ERR.MT_OK_ERR) {
                return reader_errErrhandle;
            }
        }
        this.m_BackReadAntsCnt = i;
        for (int i5 = 0; i5 < i; i5++) {
            this.m_BackReadAnts[i5] = iArr[i5];
        }
        this.m_ThreadForAll = new Thread(new Tagnotify(this));
        this.m_ThreadForAllid = this.m_ThreadForAll.getId();
        this.m_ThreadForAll.start();
        return reader_errErrhandle;
    }

    public READER_ERR StopReading() throws InterruptedException {
        READER_ERR reader_errAsyncStopReading;
        READER_ERR reader_errAsyncStopReading2;
        toDlogAPI("StopReading");
        if (!this.m_IsReadingForAll) {
            return READER_ERR.MT_OK_ERR;
        }
        this.m_IsReadingForAll = false;
        this.m_ThreadForAllid = Thread.currentThread().getId();
        if (this.m_ThreadForAllid == this.m_ThreadForAll.getId()) {
            if (this.m_BackReadOp.IsFastRead && (reader_errAsyncStopReading2 = AsyncStopReading()) != READER_ERR.MT_OK_ERR) {
                ALOGS("err 1892" + reader_errAsyncStopReading2.toString());
                return reader_errAsyncStopReading2;
            }
            return READER_ERR.MT_OK_ERR;
        }
        while (this.m_IsReadThRunning) {
            try {
                Thread.sleep(20L);
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
        }
        this.m_ThreadForAll = null;
        if (this.m_BackReadOp.IsFastRead && (reader_errAsyncStopReading = AsyncStopReading()) != READER_ERR.MT_OK_ERR) {
            ALOGS("err 1920" + reader_errAsyncStopReading.toString());
            return reader_errAsyncStopReading;
        }
        return READER_ERR.MT_OK_ERR;
    }

    private class Exceptionotify implements Runnable {

        /* renamed from: re */
        READER_ERR f1110re;
        Reader reader;

        public Exceptionotify(Reader reader, READER_ERR reader_err) {
            this.reader = reader;
            this.f1110re = reader_err;
        }

        @Override // java.lang.Runnable
        public void run() {
            Iterator<ReadExceptionListener> it = Reader.this.readExceptionListeners.iterator();
            while (it.hasNext()) {
                it.next().tagReadException(this.reader, this.f1110re);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public READER_ERR errhandle(int i) throws InterruptedException {
        READER_ERR reader_errValueOf = READER_ERR.valueOf(i);
        if (reader_errValueOf != READER_ERR.MT_OK_ERR) {
            this.m_gError = i;
            if (this.m_BackReadOp.IsFastRead) {
                try {
                    Thread.sleep(500L);
                } catch (InterruptedException unused) {
                }
                AsyncStopReading();
            }
            this.m_IsReadingForAll = false;
            if (this.readExceptionListeners.size() > 0) {
                new Thread(new Exceptionotify(this, reader_errValueOf)).start();
            }
        }
        return reader_errValueOf;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public READER_ERR errhandle2(READER_ERR reader_err) throws InterruptedException {
        if (reader_err != READER_ERR.MT_OK_ERR) {
            if (this.m_BackReadOp.IsFastRead) {
                try {
                    Thread.sleep(500L);
                } catch (InterruptedException unused) {
                }
                AsyncStopReading();
            }
            this.m_IsReadingForAll = false;
            if (this.readExceptionListeners.size() > 0) {
                new Thread(new Exceptionotify(this, reader_err)).start();
            }
        }
        return reader_err;
    }

    private class Tagnotify implements Runnable {
        Reader reader;

        public Tagnotify(Reader reader) {
            this.reader = reader;
        }

        /* JADX WARN: Removed duplicated region for block: B:121:0x031b A[Catch: all -> 0x03c2, TryCatch #0 {, blocks: (B:4:0x0003, B:6:0x0020, B:10:0x002f, B:12:0x003f, B:15:0x0047, B:17:0x004c, B:20:0x006a, B:22:0x0074, B:24:0x007e, B:25:0x0086, B:27:0x008c, B:41:0x00d1, B:43:0x00db, B:44:0x00e3, B:46:0x00e9, B:48:0x00fb, B:50:0x0104, B:52:0x010c, B:49:0x00fe, B:29:0x009a, B:31:0x00a0, B:33:0x00aa, B:35:0x00b4, B:36:0x00bc, B:38:0x00c2, B:53:0x0127, B:55:0x012b, B:58:0x014a, B:60:0x0154, B:62:0x015e, B:63:0x0166, B:65:0x016c, B:66:0x0178, B:68:0x0182, B:71:0x019c, B:73:0x01a6, B:74:0x01ae, B:76:0x01b4, B:77:0x01c4, B:79:0x01c8, B:81:0x01ce, B:85:0x01f4, B:88:0x01fb, B:90:0x0203, B:92:0x020d, B:93:0x0215, B:95:0x021b, B:87:0x01f9, B:96:0x0229, B:98:0x023b, B:100:0x0245, B:103:0x025f, B:105:0x0269, B:106:0x0271, B:108:0x0277, B:109:0x0287, B:111:0x0291, B:113:0x02c7, B:118:0x0310, B:119:0x0317, B:121:0x031b, B:123:0x0328, B:125:0x0330, B:127:0x0340, B:135:0x037a, B:131:0x0370, B:128:0x035b, B:132:0x0373, B:136:0x037d, B:138:0x0393, B:140:0x0396, B:141:0x039e, B:143:0x03a4, B:145:0x03b0, B:115:0x02e6, B:147:0x03bc, B:148:0x03c0), top: B:154:0x0003 }] */
        /* JADX WARN: Removed duplicated region for block: B:143:0x03a4 A[Catch: all -> 0x03c2, LOOP:4: B:141:0x039e->B:143:0x03a4, LOOP_END, TRY_LEAVE, TryCatch #0 {, blocks: (B:4:0x0003, B:6:0x0020, B:10:0x002f, B:12:0x003f, B:15:0x0047, B:17:0x004c, B:20:0x006a, B:22:0x0074, B:24:0x007e, B:25:0x0086, B:27:0x008c, B:41:0x00d1, B:43:0x00db, B:44:0x00e3, B:46:0x00e9, B:48:0x00fb, B:50:0x0104, B:52:0x010c, B:49:0x00fe, B:29:0x009a, B:31:0x00a0, B:33:0x00aa, B:35:0x00b4, B:36:0x00bc, B:38:0x00c2, B:53:0x0127, B:55:0x012b, B:58:0x014a, B:60:0x0154, B:62:0x015e, B:63:0x0166, B:65:0x016c, B:66:0x0178, B:68:0x0182, B:71:0x019c, B:73:0x01a6, B:74:0x01ae, B:76:0x01b4, B:77:0x01c4, B:79:0x01c8, B:81:0x01ce, B:85:0x01f4, B:88:0x01fb, B:90:0x0203, B:92:0x020d, B:93:0x0215, B:95:0x021b, B:87:0x01f9, B:96:0x0229, B:98:0x023b, B:100:0x0245, B:103:0x025f, B:105:0x0269, B:106:0x0271, B:108:0x0277, B:109:0x0287, B:111:0x0291, B:113:0x02c7, B:118:0x0310, B:119:0x0317, B:121:0x031b, B:123:0x0328, B:125:0x0330, B:127:0x0340, B:135:0x037a, B:131:0x0370, B:128:0x035b, B:132:0x0373, B:136:0x037d, B:138:0x0393, B:140:0x0396, B:141:0x039e, B:143:0x03a4, B:145:0x03b0, B:115:0x02e6, B:147:0x03bc, B:148:0x03c0), top: B:154:0x0003 }] */
        /* JADX WARN: Removed duplicated region for block: B:207:0x0379 A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:211:0x037a A[SYNTHETIC] */
        @Override // java.lang.Runnable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public void run() {
            /*
                Method dump skipped, instructions count: 965
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: com.uhf.api.cls.Reader.Tagnotify.run():void");
        }
    }

    public READER_ERR AsyncStartReading_IT(IT_MODE it_mode, int[] iArr, int i, int i2) {
        this.it_mode_V = it_mode;
        if (this.it_mode_V == IT_MODE.IT_MODE_CT) {
            return AsyncStartReading_IT_CT(iArr, i, i2);
        }
        if (this.it_mode_V == IT_MODE.IT_MODE_E7) {
            return AsyncStartReading_IT_E7(iArr, i, i2);
        }
        if (this.it_mode_V == IT_MODE.IT_MODE_E7v2) {
            return AsyncStartReading_IT_E7v2(iArr, i, i2);
        }
        return AsyncStartReading_IT_S2(iArr, i, i2);
    }

    public READER_ERR AsyncStartReading_IT_CT(int[] iArr, int i, int i2) {
        HoptableData_ST hoptableData_ST;
        READER_ERR reader_errParamGet;
        boolean z;
        boolean z2;
        Region_Conf[] region_ConfArr = new Region_Conf[1];
        if (ParamGet(Mtr_Param.MTR_PARAM_FREQUENCY_REGION, region_ConfArr) == READER_ERR.MT_OK_ERR) {
            boolean z3 = false;
            if ((region_ConfArr[0] == Region_Conf.RG_NA || region_ConfArr[0] == Region_Conf.RG_PRC) && (reader_errParamGet = ParamGet(Mtr_Param.MTR_PARAM_FREQUENCY_HOPTABLE, (hoptableData_ST = new HoptableData_ST()))) == READER_ERR.MT_OK_ERR) {
                if (region_ConfArr[0] == Region_Conf.RG_NA) {
                    if (hoptableData_ST.lenhtb == 50) {
                        z3 = true;
                    } else if (hoptableData_ST.lenhtb == this.IT_CT_fres_NA.length) {
                        boolean z4 = false;
                        for (int i3 = 0; i3 < hoptableData_ST.lenhtb; i3++) {
                            int i4 = 0;
                            while (true) {
                                if (i4 >= this.IT_CT_fres_NA.length) {
                                    z2 = false;
                                    break;
                                }
                                if (hoptableData_ST.htb[i3] == this.IT_CT_fres_NA[i4]) {
                                    z2 = true;
                                    break;
                                }
                                i4++;
                            }
                            if (!z2) {
                                break;
                            }
                            if (i3 == hoptableData_ST.lenhtb - 1) {
                                z4 = true;
                            }
                        }
                        z3 = z4;
                    }
                    if (z3) {
                        HoptableData_ST hoptableData_ST2 = new HoptableData_ST();
                        int[] iArr2 = this.IT_CT_fres_NA;
                        hoptableData_ST2.lenhtb = iArr2.length;
                        hoptableData_ST2.htb = iArr2;
                        reader_errParamGet = ParamSet(Mtr_Param.MTR_PARAM_FREQUENCY_HOPTABLE, hoptableData_ST2);
                        if (reader_errParamGet != READER_ERR.MT_OK_ERR) {
                            return reader_errParamGet;
                        }
                    }
                } else if (region_ConfArr[0] == Region_Conf.RG_PRC) {
                    if (hoptableData_ST.lenhtb == 16) {
                        z3 = true;
                    } else if (hoptableData_ST.lenhtb == this.IT_CT_fres_cn.length) {
                        boolean z5 = false;
                        for (int i5 = 0; i5 < hoptableData_ST.lenhtb; i5++) {
                            int i6 = 0;
                            while (true) {
                                if (i6 >= this.IT_CT_fres_NA.length) {
                                    z = false;
                                    break;
                                }
                                if (hoptableData_ST.htb[i5] == this.IT_CT_fres_NA[i6]) {
                                    z = true;
                                    break;
                                }
                                i6++;
                            }
                            if (!z) {
                                break;
                            }
                            if (i5 == hoptableData_ST.lenhtb - 1) {
                                z5 = true;
                            }
                        }
                        z3 = z5;
                    }
                    if (z3) {
                        HoptableData_ST hoptableData_ST3 = new HoptableData_ST();
                        int[] iArr3 = this.IT_CT_fres_cn;
                        hoptableData_ST3.lenhtb = iArr3.length;
                        hoptableData_ST3.htb = iArr3;
                        reader_errParamGet = ParamSet(Mtr_Param.MTR_PARAM_FREQUENCY_HOPTABLE, hoptableData_ST3);
                        if (reader_errParamGet != READER_ERR.MT_OK_ERR) {
                            return reader_errParamGet;
                        }
                    }
                }
                if (reader_errParamGet != READER_ERR.MT_OK_ERR) {
                    return reader_errParamGet;
                }
            }
        }
        this.pants = iArr;
        this.pantcnt = i;
        this.poption = i2;
        READER_ERR reader_errAsyncStartReading = AsyncStartReading(iArr, i, i2);
        Reset_IT_CT();
        this.isIT_CT_run = true;
        this.IT_CT_thread = new Thread(new IT_CT_notify(this));
        this.IT_CT_step = this.IT_CT_step_init;
        this.IT_CT_thread.start();
        return reader_errAsyncStartReading;
    }

    private READER_ERR AsyncStartReading_IT_S2(int[] iArr, int i, int i2) {
        Object[] objArr = new Region_Conf[1];
        READER_ERR reader_errParamGet = ParamGet(Mtr_Param.MTR_PARAM_FREQUENCY_REGION, objArr);
        if (reader_errParamGet != READER_ERR.MT_OK_ERR) {
            return reader_errParamGet;
        }
        READER_ERR reader_errParamSet = ParamSet(Mtr_Param.MTR_PARAM_FREQUENCY_REGION, objArr[0]);
        if (reader_errParamSet != READER_ERR.MT_OK_ERR) {
            return reader_errParamSet;
        }
        int[] iArr2 = {0};
        READER_ERR reader_errParamGet2 = ParamGet(Mtr_Param.MTR_PARAM_POTL_GEN2_SESSION, iArr2);
        if (reader_errParamGet2 != READER_ERR.MT_OK_ERR) {
            return reader_errParamGet2;
        }
        if (iArr2[0] == 0 || iArr2[0] == 1) {
            toDlog("set S2");
            iArr2[0] = 2;
            READER_ERR reader_errParamSet2 = ParamSet(Mtr_Param.MTR_PARAM_POTL_GEN2_SESSION, iArr2);
            if (reader_errParamSet2 != READER_ERR.MT_OK_ERR) {
                return reader_errParamSet2;
            }
        } else if (iArr2[0] == 2) {
            toDlog("set S3");
            iArr2[0] = 3;
            READER_ERR reader_errParamSet3 = ParamSet(Mtr_Param.MTR_PARAM_POTL_GEN2_SESSION, iArr2);
            if (reader_errParamSet3 != READER_ERR.MT_OK_ERR) {
                return reader_errParamSet3;
            }
        } else if (iArr2[0] == 3) {
            toDlog("set S2");
            iArr2[0] = 2;
            READER_ERR reader_errParamSet4 = ParamSet(Mtr_Param.MTR_PARAM_POTL_GEN2_SESSION, iArr2);
            if (reader_errParamSet4 != READER_ERR.MT_OK_ERR) {
                return reader_errParamSet4;
            }
        }
        iArr2[0] = 0;
        READER_ERR reader_errParamSet5 = ParamSet(Mtr_Param.MTR_PARAM_POTL_GEN2_TARGET, iArr2);
        if (reader_errParamSet5 != READER_ERR.MT_OK_ERR) {
            return reader_errParamSet5;
        }
        this.IT_S2_istargetA = true;
        iArr2[0] = 19;
        READER_ERR reader_errParamSet6 = ParamSet(Mtr_Param.MTR_PARAM_POTL_GEN2_TAGENCODING, iArr2);
        if (reader_errParamSet6 != READER_ERR.MT_OK_ERR) {
            return reader_errParamSet6;
        }
        this.pants = iArr;
        this.pantcnt = i;
        this.poption = i2;
        READER_ERR reader_errAsyncStartReading = AsyncStartReading(iArr, i, i2);
        if (reader_errAsyncStartReading != READER_ERR.MT_OK_ERR) {
            return reader_errAsyncStartReading;
        }
        Reset_IT();
        this.isIT_S2_run = true;
        toDlog("---init");
        this.IT_S2_thread = new Thread(new IT_S2_notify(this));
        this.IT_S2_step = 0;
        this.IT_S2_thread.start();
        return reader_errAsyncStartReading;
    }

    int[] Sort(int[] iArr, int i) {
        for (int i2 = 0; i2 < i; i2++) {
            for (int i3 = 0; i3 < i; i3++) {
                if (iArr[i2] < iArr[i3]) {
                    int iIntValue = Integer.valueOf(iArr[i2]).intValue();
                    iArr[i2] = iArr[i3];
                    iArr[i3] = iIntValue;
                }
            }
        }
        int[] iArr2 = new int[i];
        System.arraycopy(iArr, 0, iArr2, 0, i);
        return iArr2;
    }

    private READER_ERR AsyncStartReading_IT_E7(int[] iArr, int i, int i2) {
        Object[] objArr = new Region_Conf[1];
        READER_ERR reader_errParamGet = ParamGet(Mtr_Param.MTR_PARAM_FREQUENCY_REGION, objArr);
        if (reader_errParamGet != READER_ERR.MT_OK_ERR) {
            return reader_errParamGet;
        }
        READER_ERR reader_errParamSet = ParamSet(Mtr_Param.MTR_PARAM_FREQUENCY_REGION, objArr[0]);
        if (reader_errParamSet != READER_ERR.MT_OK_ERR) {
            return reader_errParamSet;
        }
        int[] iArr2 = {0};
        toDlog("set S2,tarA,gen2code 107");
        iArr2[0] = 2;
        READER_ERR reader_errParamSet2 = ParamSet(Mtr_Param.MTR_PARAM_POTL_GEN2_SESSION, iArr2);
        if (reader_errParamSet2 != READER_ERR.MT_OK_ERR) {
            return reader_errParamSet2;
        }
        iArr2[0] = 0;
        READER_ERR reader_errParamSet3 = ParamSet(Mtr_Param.MTR_PARAM_POTL_GEN2_TARGET, iArr2);
        if (reader_errParamSet3 != READER_ERR.MT_OK_ERR) {
            return reader_errParamSet3;
        }
        this.IT_E7_istargetA = true;
        iArr2[0] = 107;
        READER_ERR reader_errParamSet4 = ParamSet(Mtr_Param.MTR_PARAM_POTL_GEN2_TAGENCODING, iArr2);
        if (reader_errParamSet4 != READER_ERR.MT_OK_ERR) {
            return reader_errParamSet4;
        }
        int[] iArr3 = new int[1];
        READER_ERR reader_errParamGet2 = ParamGet(Mtr_Param.MTR_PARAM_RF_MAXPOWER, iArr3);
        if (reader_errParamGet2 != READER_ERR.MT_OK_ERR) {
            return reader_errParamGet2;
        }
        HoptableData_ST hoptableData_ST = new HoptableData_ST();
        READER_ERR reader_errParamGet3 = ParamGet(Mtr_Param.MTR_PARAM_FREQUENCY_HOPTABLE, hoptableData_ST);
        toDlog("set S2,tarA, pw " + String.valueOf(this.IT_E7_pow) + " frec " + String.valueOf(this.IT_E7_centrefre) + " rf " + String.valueOf(this.IT_E7_rfm) + " set gen2code:" + String.valueOf(this.IT_E7_rfm));
        if (reader_errParamGet3 != READER_ERR.MT_OK_ERR) {
            return reader_errParamGet3;
        }
        int[] iArrSort = Sort(hoptableData_ST.htb, hoptableData_ST.lenhtb);
        this.IT_E7_centrefre = iArrSort[iArrSort.length / 2];
        this.IT_E7_pow = iArr3[0];
        SetFilterSessioninTargetA(iArr, this.IT_E7_centrefre, this.IT_E7_pow);
        iArr2[0] = this.IT_E7_rfm;
        READER_ERR reader_errParamSet5 = ParamSet(Mtr_Param.MTR_PARAM_POTL_GEN2_TAGENCODING, iArr2);
        if (reader_errParamSet5 != READER_ERR.MT_OK_ERR) {
            return reader_errParamSet5;
        }
        this.pants = iArr;
        this.pantcnt = i;
        this.poption = i2;
        READER_ERR reader_errAsyncStartReading = AsyncStartReading(iArr, i, i2);
        if (reader_errAsyncStartReading != READER_ERR.MT_OK_ERR) {
            return reader_errAsyncStartReading;
        }
        Reset_IT();
        this.isIT_E7_run = true;
        toDlog("---init");
        this.IT_E7_thread = new Thread(new IT_E7_notify(this));
        this.IT_E7_step = 0;
        this.IT_E7_thread.start();
        return reader_errAsyncStartReading;
    }

    private READER_ERR AsyncStartReading_IT_E7v2(int[] iArr, int i, int i2) {
        Region_Conf[] region_ConfArr = new Region_Conf[1];
        READER_ERR reader_errParamGet = ParamGet(Mtr_Param.MTR_PARAM_FREQUENCY_REGION, region_ConfArr);
        if (reader_errParamGet != READER_ERR.MT_OK_ERR) {
            return reader_errParamGet;
        }
        this.IT_E7_rg = region_ConfArr[0];
        READER_ERR reader_errParamSet = ParamSet(Mtr_Param.MTR_PARAM_FREQUENCY_REGION, region_ConfArr[0]);
        if (reader_errParamSet != READER_ERR.MT_OK_ERR) {
            return reader_errParamSet;
        }
        int[] iArr2 = {0};
        toDlog("set S2,tarA,gen2code 107");
        iArr2[0] = 2;
        READER_ERR reader_errParamSet2 = ParamSet(Mtr_Param.MTR_PARAM_POTL_GEN2_SESSION, iArr2);
        if (reader_errParamSet2 != READER_ERR.MT_OK_ERR) {
            return reader_errParamSet2;
        }
        iArr2[0] = -1;
        READER_ERR reader_errParamSet3 = ParamSet(Mtr_Param.MTR_PARAM_POTL_GEN2_Q, iArr2);
        if (reader_errParamSet3 != READER_ERR.MT_OK_ERR) {
            return reader_errParamSet3;
        }
        iArr2[0] = 0;
        READER_ERR reader_errParamSet4 = ParamSet(Mtr_Param.MTR_PARAM_POTL_GEN2_TARGET, iArr2);
        if (reader_errParamSet4 != READER_ERR.MT_OK_ERR) {
            return reader_errParamSet4;
        }
        this.IT_E7_istargetA = true;
        iArr2[0] = 107;
        READER_ERR reader_errParamSet5 = ParamSet(Mtr_Param.MTR_PARAM_POTL_GEN2_TAGENCODING, iArr2);
        if (reader_errParamSet5 != READER_ERR.MT_OK_ERR) {
            return reader_errParamSet5;
        }
        int[] iArr3 = new int[1];
        READER_ERR reader_errParamGet2 = ParamGet(Mtr_Param.MTR_PARAM_RF_MAXPOWER, iArr3);
        if (reader_errParamGet2 != READER_ERR.MT_OK_ERR) {
            return reader_errParamGet2;
        }
        HoptableData_ST hoptableData_ST = new HoptableData_ST();
        READER_ERR reader_errParamGet3 = ParamGet(Mtr_Param.MTR_PARAM_FREQUENCY_HOPTABLE, hoptableData_ST);
        if (reader_errParamGet3 != READER_ERR.MT_OK_ERR) {
            return reader_errParamGet3;
        }
        int[] iArrSort = Sort(hoptableData_ST.htb, hoptableData_ST.lenhtb);
        this.IT_E7_highfre = iArrSort[iArrSort.length - 1];
        this.IT_E7_lowfre = iArrSort[0];
        this.IT_E7_centrefre = iArrSort[iArrSort.length / 2];
        this.IT_E7_pow = iArr3[0];
        toDlog("set S2,tarA, pw " + String.valueOf(this.IT_E7_pow) + " frec " + String.valueOf(this.IT_E7_centrefre) + " frel " + String.valueOf(this.IT_E7_lowfre) + " freh " + String.valueOf(this.IT_E7_highfre) + " rf " + String.valueOf(this.IT_E7_rfm));
        SetFilterSessioninTargetA(iArr, this.IT_E7_centrefre, this.IT_E7_pow);
        SetFilterSessioninTargetA(iArr, this.IT_E7_lowfre, this.IT_E7_pow);
        SetFilterSessioninTargetA(iArr, this.IT_E7_highfre, this.IT_E7_pow);
        iArr2[0] = this.IT_E7_rfm;
        READER_ERR reader_errParamSet6 = ParamSet(Mtr_Param.MTR_PARAM_POTL_GEN2_TAGENCODING, iArr2);
        if (reader_errParamSet6 != READER_ERR.MT_OK_ERR) {
            return reader_errParamSet6;
        }
        this.pants = iArr;
        this.pantcnt = i;
        this.poption = i2;
        READER_ERR reader_errAsyncStartReading = AsyncStartReading(iArr, i, i2);
        if (reader_errAsyncStartReading != READER_ERR.MT_OK_ERR) {
            return reader_errAsyncStartReading;
        }
        Reset_IT();
        this.isIT_E7_run = true;
        toDlog("---init");
        this.IT_E7_thread = new Thread(new IT_E7v2_notify(this));
        this.IT_E7_step = 0;
        this.IT_E7_thread.start();
        return reader_errAsyncStartReading;
    }

    public READER_ERR AsyncStopReading_IT_CT() throws InterruptedException {
        this.isIT_CT_run = false;
        READER_ERR reader_errAsyncStopReading = AsyncStopReading();
        Thread thread = this.IT_CT_thread;
        if (thread != null) {
            try {
                thread.join();
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
        }
        return reader_errAsyncStopReading;
    }

    public READER_ERR AsyncStopReading_IT() throws InterruptedException {
        if (this.it_mode_V == IT_MODE.IT_MODE_CT) {
            return AsyncStopReading_IT_CT();
        }
        if (this.it_mode_V == IT_MODE.IT_MODE_E7 || this.it_mode_V == IT_MODE.IT_MODE_E7v2) {
            this.isIT_E7_run = false;
            READER_ERR reader_errAsyncStopReading = AsyncStopReading();
            Thread thread = this.IT_E7_thread;
            if (thread != null) {
                try {
                    thread.join();
                } catch (InterruptedException e) {
                    e.printStackTrace();
                }
            }
            SetFilterSessioninTargetA(this.pants, this.IT_E7_centrefre, this.IT_E7_pow);
            if (this.it_mode_V == IT_MODE.IT_MODE_E7v2) {
                SetFilterSessioninTargetA(this.pants, this.IT_E7_lowfre, this.IT_E7_pow);
                SetFilterSessioninTargetA(this.pants, this.IT_E7_highfre, this.IT_E7_pow);
            }
            return reader_errAsyncStopReading;
        }
        if (this.it_mode_V == IT_MODE.IT_MODE_S2) {
            this.isIT_S2_run = false;
            READER_ERR reader_errAsyncStopReading2 = AsyncStopReading();
            Thread thread2 = this.IT_S2_thread;
            if (thread2 != null) {
                try {
                    thread2.join();
                } catch (InterruptedException e2) {
                    e2.printStackTrace();
                }
            }
            return reader_errAsyncStopReading2;
        }
        return READER_ERR.MT_OP_INVALID;
    }

    public void Reset_IT_CT() {
        this.quetagstr.clear();
        this.totalcount = 0;
        this.totalcountlast = 0;
        int i = this.IT_CT_step_init;
        if (i != -1) {
            this.IT_CT_step = i;
        } else {
            this.IT_CT_step = 0;
        }
        this.IT_CT_c = 0;
        this.IT_CT_start = System.currentTimeMillis();
        this.vstaticstarttick = System.currentTimeMillis() - this.IT_CT_start;
    }

    public void Reset_IT() {
        if (this.it_mode_V == IT_MODE.IT_MODE_CT) {
            Reset_IT_CT();
            return;
        }
        if (this.it_mode_V == IT_MODE.IT_MODE_E7 || this.it_mode_V == IT_MODE.IT_MODE_E7v2) {
            this.IT_E7_start = System.currentTimeMillis();
            this.vstaticstarttick = System.currentTimeMillis() - this.IT_E7_start;
        } else if (this.it_mode_V == IT_MODE.IT_MODE_S2) {
            this.IT_S2_start = System.currentTimeMillis();
            this.vstaticstarttick = System.currentTimeMillis() - this.IT_S2_start;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public READER_ERR errhandle_IT(READER_ERR reader_err) {
        if (reader_err != READER_ERR.MT_OK_ERR) {
            if (this.it_mode_V == IT_MODE.IT_MODE_CT) {
                this.isIT_CT_run = false;
            } else if (this.it_mode_V == IT_MODE.IT_MODE_S2) {
                this.isIT_S2_run = false;
            } else if (this.it_mode_V == IT_MODE.IT_MODE_E7 || this.it_mode_V == IT_MODE.IT_MODE_E7v2) {
                this.isIT_E7_run = false;
            }
            AsyncStopReading();
            if (this.readExceptionListeners.size() > 0) {
                new Thread(new Exceptionotify(this, reader_err)).start();
            }
        }
        return reader_err;
    }

    private class IT_CT_notify implements Runnable {
        Reader reader;

        public IT_CT_notify(Reader reader) {
            this.reader = reader;
        }

        @Override // java.lang.Runnable
        public void run() throws InterruptedException {
            while (Reader.this.isIT_CT_run) {
                int[] iArr = {0};
                READER_ERR reader_errAsyncGetTagCount = Reader.this.AsyncGetTagCount(iArr);
                if (reader_errAsyncGetTagCount != READER_ERR.MT_OK_ERR) {
                    Reader.this.errhandle_IT(reader_errAsyncGetTagCount);
                    return;
                }
                if (iArr[0] > 0) {
                    Vector vector = new Vector();
                    int i = 0;
                    while (true) {
                        if (i < iArr[0]) {
                            TAGINFO taginfo = Reader.this.new TAGINFO();
                            READER_ERR reader_errAsyncGetNextTag = Reader.this.AsyncGetNextTag(taginfo);
                            if (reader_errAsyncGetNextTag != READER_ERR.MT_OK_ERR) {
                                Reader.this.errhandle_IT(reader_errAsyncGetNextTag);
                                break;
                            }
                            if (!Reader.this.quetagstr.contains(Reader.bytes_Hexstr(taginfo.EpcId))) {
                                Reader.this.quetagstr.add(Reader.bytes_Hexstr(taginfo.EpcId));
                                Reader.this.totalcount++;
                            }
                            vector.add(taginfo);
                            i++;
                        } else {
                            break;
                        }
                    }
                    TAGINFO[] taginfoArr = (TAGINFO[]) vector.toArray(new TAGINFO[vector.size()]);
                    if (Reader.this.readListeners.size() > 0 && taginfoArr.length > 0) {
                        Iterator<ReadListener> it = Reader.this.readListeners.iterator();
                        while (it.hasNext()) {
                            it.next().tagRead(this.reader, taginfoArr);
                        }
                    }
                }
                long jCurrentTimeMillis = System.currentTimeMillis() - Reader.this.IT_CT_start;
                int i2 = 1000;
                if (Reader.this.IT_CT_step == 0 && Reader.this.isIT_CT_run && jCurrentTimeMillis >= Reader.this.IT_CT_m1_keep * 1000) {
                    Reader reader = Reader.this;
                    reader.IT_CT_step = 1;
                    reader.IT_CT_start = System.currentTimeMillis();
                    Reader.this.vstaticstarttick = System.currentTimeMillis() - Reader.this.IT_CT_start;
                }
                if (Reader.this.IT_CT_step == 5 && Reader.this.isIT_CT_run && jCurrentTimeMillis >= Reader.this.IT_CT_m1_keep * 1000) {
                    Reader reader2 = Reader.this;
                    reader2.IT_CT_step = 6;
                    reader2.IT_CT_start = System.currentTimeMillis();
                    Reader.this.vstaticstarttick = System.currentTimeMillis() - Reader.this.IT_CT_start;
                }
                if (Reader.this.IT_CT_step == 0 || Reader.this.IT_CT_step == 1 || Reader.this.IT_CT_step == 5) {
                    i2 = Reader.this.IT_CT_m1_cycle;
                } else if (Reader.this.IT_CT_step == 2 || Reader.this.IT_CT_step == 3) {
                    i2 = Reader.this.IT_CT_m2_cycle;
                } else if (Reader.this.IT_CT_step == 4 || Reader.this.IT_CT_step == 6) {
                    i2 = Reader.this.IT_CT_m3_cycleread;
                }
                if (jCurrentTimeMillis - Reader.this.vstaticstarttick >= i2) {
                    Reader reader3 = Reader.this;
                    reader3.vstaticstarttick = jCurrentTimeMillis;
                    if (reader3.IT_CT_step == 1 && Reader.this.isIT_CT_run) {
                        if (Reader.this.totalcount - Reader.this.totalcountlast < Reader.this.IT_CT_m1_toma) {
                            Reader reader4 = Reader.this;
                            reader4.IT_CT_step = 4;
                            reader4.IT_CT_c = 0;
                            reader4.IT_CT_start = System.currentTimeMillis();
                            Reader.this.vstaticstarttick = System.currentTimeMillis() - Reader.this.IT_CT_start;
                        }
                    } else if (Reader.this.IT_CT_step == 2 && Reader.this.isIT_CT_run) {
                        READER_ERR reader_errAsyncStopReading = Reader.this.AsyncStopReading();
                        if (reader_errAsyncStopReading != READER_ERR.MT_OK_ERR) {
                            Reader.this.errhandle_IT(reader_errAsyncStopReading);
                        }
                        if (Reader.this.isIT_CT_run) {
                            Reader reader5 = Reader.this;
                            reader_errAsyncStopReading = reader5.AsyncStartReading(reader5.pants, Reader.this.pants.length, Reader.this.poption);
                        }
                        if (reader_errAsyncStopReading != READER_ERR.MT_OK_ERR) {
                            Reader.this.errhandle_IT(reader_errAsyncStopReading);
                        }
                        Reader reader6 = Reader.this;
                        int i3 = reader6.IT_CT_c + 1;
                        reader6.IT_CT_c = i3;
                        if (i3 >= Reader.this.IT_CT_m2_keepcount) {
                            Reader reader7 = Reader.this;
                            reader7.IT_CT_step = 3;
                            reader7.IT_CT_start = System.currentTimeMillis();
                            Reader.this.vstaticstarttick = System.currentTimeMillis() - Reader.this.IT_CT_start;
                        }
                    } else if (Reader.this.IT_CT_step == 3 && Reader.this.isIT_CT_run) {
                        if (Reader.this.totalcount - Reader.this.totalcountlast < Reader.this.IT_CT_m2_tomc) {
                            Reader reader8 = Reader.this;
                            reader8.IT_CT_step = 4;
                            reader8.IT_CT_start = System.currentTimeMillis();
                            Reader.this.vstaticstarttick = System.currentTimeMillis() - Reader.this.IT_CT_start;
                        } else if (Reader.this.totalcount - Reader.this.totalcountlast > Reader.this.IT_CT_m2_toma) {
                            Reader reader9 = Reader.this;
                            reader9.IT_CT_step = 0;
                            reader9.IT_CT_start = System.currentTimeMillis();
                            Reader.this.vstaticstarttick = System.currentTimeMillis() - Reader.this.IT_CT_start;
                        }
                    } else if ((Reader.this.IT_CT_step == 4 || Reader.this.IT_CT_step == 6) && Reader.this.isIT_CT_run) {
                        if (Reader.this.totalcount - Reader.this.totalcountlast > Reader.this.IT_CT_m3_toma) {
                            Reader.this.IT_CT_step = 0;
                        } else {
                            READER_ERR reader_errAsyncStopReading2 = Reader.this.AsyncStopReading();
                            if (reader_errAsyncStopReading2 != READER_ERR.MT_OK_ERR) {
                                Reader.this.errhandle_IT(reader_errAsyncStopReading2);
                            }
                            long jCurrentTimeMillis2 = System.currentTimeMillis();
                            do {
                                if (!Reader.this.isIT_CT_run) {
                                    break;
                                } else {
                                    Thread.sleep(50L);
                                }
                            } while (System.currentTimeMillis() - jCurrentTimeMillis2 <= Reader.this.IT_CT_m3_cyclestop);
                            if (Reader.this.isIT_CT_run) {
                                Reader reader10 = Reader.this;
                                reader_errAsyncStopReading2 = reader10.AsyncStartReading(reader10.pants, Reader.this.pantcnt, Reader.this.poption);
                            }
                            if (reader_errAsyncStopReading2 != READER_ERR.MT_OK_ERR) {
                                Reader.this.errhandle_IT(reader_errAsyncStopReading2);
                            }
                        }
                        Reader.this.IT_CT_start = System.currentTimeMillis();
                        Reader.this.vstaticstarttick = System.currentTimeMillis() - Reader.this.IT_CT_start;
                    }
                    Reader reader11 = Reader.this;
                    reader11.totalcountlast = reader11.totalcount;
                }
                if (!Reader.this.isIT_CT_run) {
                    return;
                }
            }
        }
    }

    private class IT_S2_notify implements Runnable {
        Reader reader;

        public IT_S2_notify(Reader reader) {
            this.reader = reader;
        }

        @Override // java.lang.Runnable
        public void run() {
            while (Reader.this.isIT_S2_run) {
                int[] iArr = {0};
                READER_ERR reader_errAsyncGetTagCount = Reader.this.AsyncGetTagCount(iArr);
                if (reader_errAsyncGetTagCount != READER_ERR.MT_OK_ERR) {
                    Reader.this.errhandle_IT(reader_errAsyncGetTagCount);
                    return;
                }
                if (iArr[0] > 0) {
                    Reader.this.totalcount += iArr[0];
                    Vector vector = new Vector();
                    int i = 0;
                    while (true) {
                        if (i < iArr[0]) {
                            TAGINFO taginfo = Reader.this.new TAGINFO();
                            READER_ERR reader_errAsyncGetNextTag = Reader.this.AsyncGetNextTag(taginfo);
                            if (reader_errAsyncGetNextTag != READER_ERR.MT_OK_ERR) {
                                Reader.this.errhandle_IT(reader_errAsyncGetNextTag);
                                break;
                            } else {
                                vector.add(taginfo);
                                i++;
                            }
                        } else {
                            break;
                        }
                    }
                    TAGINFO[] taginfoArr = (TAGINFO[]) vector.toArray(new TAGINFO[vector.size()]);
                    if (Reader.this.readListeners.size() > 0 && taginfoArr.length > 0) {
                        Iterator<ReadListener> it = Reader.this.readListeners.iterator();
                        while (it.hasNext()) {
                            it.next().tagRead(this.reader, taginfoArr);
                        }
                    }
                }
                long jCurrentTimeMillis = System.currentTimeMillis() - Reader.this.IT_S2_start;
                int i2 = Reader.this.IT_S2_m1_cycle;
                if (Reader.this.IT_S2_step == 0) {
                    i2 = Reader.this.IT_S2_m1_cycle;
                } else if (Reader.this.IT_S2_step == 1) {
                    i2 = Reader.this.IT_S2_m1_cycle2;
                }
                if (jCurrentTimeMillis - Reader.this.vstaticstarttick >= i2) {
                    Reader.this.toDlog("Nowcyc:" + String.valueOf(i2) + " tick:" + String.valueOf(jCurrentTimeMillis - Reader.this.vstaticstarttick));
                    Reader reader = Reader.this;
                    reader.vstaticstarttick = jCurrentTimeMillis;
                    if (reader.IT_S2_step == 0 && Reader.this.isIT_S2_run) {
                        Reader.this.toDlog("IT_S2_M1_STEP1---" + String.valueOf(Reader.this.totalcount));
                        if (Reader.this.totalcount < Reader.this.IT_S2_ctagcount) {
                            Reader.this.toDlog("stop:" + String.valueOf(Reader.this.IT_S2_ctagcount));
                            READER_ERR reader_errAsyncStopReading = Reader.this.AsyncStopReading();
                            if (reader_errAsyncStopReading != READER_ERR.MT_OK_ERR) {
                                Reader.this.errhandle_IT(reader_errAsyncStopReading);
                            }
                            Reader.this.toDlog("set pro1 to start");
                            READER_ERR reader_errParamSet = Reader.this.ParamSet(Mtr_Param.MTR_PARAM_POTL_GEN2_TAGENCODING, new int[]{17});
                            if (reader_errParamSet != READER_ERR.MT_OK_ERR) {
                                Reader.this.errhandle_IT(reader_errParamSet);
                            }
                            if (Reader.this.isIT_S2_run) {
                                Reader reader2 = Reader.this;
                                reader_errParamSet = reader2.AsyncStartReading(reader2.pants, Reader.this.pants.length, Reader.this.poption);
                            }
                            if (reader_errParamSet != READER_ERR.MT_OK_ERR) {
                                Reader.this.errhandle_IT(reader_errParamSet);
                            }
                            Reader reader3 = Reader.this;
                            reader3.IT_S2_step = 1;
                            reader3.IT_S2_start = System.currentTimeMillis();
                            Reader.this.vstaticstarttick = System.currentTimeMillis() - Reader.this.IT_S2_start;
                        }
                    } else if (Reader.this.IT_S2_step == 1 && Reader.this.isIT_S2_run && Reader.this.totalcount < Reader.this.IT_S2_ctagcount2) {
                        Reader.this.toDlog("stop:" + String.valueOf(Reader.this.IT_S2_ctagcount2));
                        READER_ERR reader_errAsyncStopReading2 = Reader.this.AsyncStopReading();
                        if (reader_errAsyncStopReading2 != READER_ERR.MT_OK_ERR) {
                            Reader.this.errhandle_IT(reader_errAsyncStopReading2);
                        }
                        int[] iArr2 = {0};
                        if (!Reader.this.IT_S2_istargetA) {
                            iArr2[0] = 1;
                            Reader.this.toDlog("set to B");
                        } else {
                            Reader.this.toDlog("set to A");
                        }
                        READER_ERR reader_errParamSet2 = Reader.this.ParamSet(Mtr_Param.MTR_PARAM_POTL_GEN2_TARGET, iArr2);
                        if (reader_errParamSet2 != READER_ERR.MT_OK_ERR) {
                            Reader.this.errhandle_IT(reader_errParamSet2);
                        }
                        Reader reader4 = Reader.this;
                        reader4.IT_S2_istargetA = true ^ reader4.IT_S2_istargetA;
                        iArr2[0] = 19;
                        READER_ERR reader_errParamSet3 = Reader.this.ParamSet(Mtr_Param.MTR_PARAM_POTL_GEN2_TAGENCODING, iArr2);
                        if (reader_errParamSet3 != READER_ERR.MT_OK_ERR) {
                            Reader.this.errhandle_IT(reader_errParamSet3);
                        }
                        Reader.this.toDlog("set pro3 to start");
                        if (Reader.this.isIT_S2_run) {
                            Reader reader5 = Reader.this;
                            reader_errParamSet3 = reader5.AsyncStartReading(reader5.pants, Reader.this.pants.length, Reader.this.poption);
                        }
                        if (reader_errParamSet3 != READER_ERR.MT_OK_ERR) {
                            Reader.this.errhandle_IT(reader_errParamSet3);
                        }
                        Reader reader6 = Reader.this;
                        reader6.IT_S2_step = 0;
                        reader6.IT_S2_start = System.currentTimeMillis();
                        Reader.this.vstaticstarttick = System.currentTimeMillis() - Reader.this.IT_S2_start;
                    }
                    Reader reader7 = Reader.this;
                    reader7.totalcountlast = reader7.totalcount;
                    Reader.this.totalcount = 0;
                }
                if (!Reader.this.isIT_S2_run) {
                    return;
                }
            }
        }
    }

    private class IT_E7_notify implements Runnable {
        Reader reader;

        public IT_E7_notify(Reader reader) {
            this.reader = reader;
        }

        @Override // java.lang.Runnable
        public void run() {
            while (Reader.this.isIT_E7_run) {
                int[] iArr = {0};
                READER_ERR reader_errAsyncGetTagCount = Reader.this.AsyncGetTagCount(iArr);
                if (reader_errAsyncGetTagCount != READER_ERR.MT_OK_ERR) {
                    Reader.this.errhandle_IT(reader_errAsyncGetTagCount);
                    return;
                }
                if (iArr[0] > 0) {
                    Reader.this.toDlog("gettagcount:" + String.valueOf(iArr[0]));
                    Reader reader = Reader.this;
                    reader.totalcount = reader.totalcount + iArr[0];
                    Vector vector = new Vector();
                    int i = 0;
                    while (true) {
                        if (i < iArr[0]) {
                            TAGINFO taginfo = Reader.this.new TAGINFO();
                            READER_ERR reader_errAsyncGetNextTag = Reader.this.AsyncGetNextTag(taginfo);
                            if (reader_errAsyncGetNextTag != READER_ERR.MT_OK_ERR) {
                                Reader.this.errhandle_IT(reader_errAsyncGetNextTag);
                                break;
                            } else {
                                vector.add(taginfo);
                                i++;
                            }
                        } else {
                            break;
                        }
                    }
                    TAGINFO[] taginfoArr = (TAGINFO[]) vector.toArray(new TAGINFO[vector.size()]);
                    if (Reader.this.readListeners.size() > 0 && taginfoArr.length > 0) {
                        Iterator<ReadListener> it = Reader.this.readListeners.iterator();
                        while (it.hasNext()) {
                            it.next().tagRead(this.reader, taginfoArr);
                        }
                    }
                }
                long jCurrentTimeMillis = System.currentTimeMillis() - Reader.this.IT_E7_start;
                int i2 = Reader.this.IT_E7_m1_cycle;
                if (Reader.this.IT_E7_step == 0) {
                    i2 = Reader.this.IT_E7_m1_cycle;
                } else if (Reader.this.IT_E7_step == 1) {
                    i2 = Reader.this.IT_E7_m1_cycle2;
                }
                if (jCurrentTimeMillis - Reader.this.vstaticstarttick >= i2) {
                    Reader.this.toDlog("Nowcyc:" + String.valueOf(i2) + " tick:" + String.valueOf(jCurrentTimeMillis - Reader.this.vstaticstarttick));
                    Reader reader2 = Reader.this;
                    reader2.vstaticstarttick = jCurrentTimeMillis;
                    if (reader2.IT_E7_step == 0 && Reader.this.isIT_E7_run) {
                        if (Reader.this.totalcount < Reader.this.IT_E7_ctagcount) {
                            Reader.this.toDlog("stop:IT_E7_M1_STEP1 " + String.valueOf(Reader.this.IT_E7_ctagcount));
                            READER_ERR reader_errAsyncStopReading = Reader.this.AsyncStopReading();
                            if (reader_errAsyncStopReading != READER_ERR.MT_OK_ERR) {
                                Reader.this.errhandle_IT(reader_errAsyncStopReading);
                            }
                            Reader.this.toDlog("set gen2 code 107");
                            READER_ERR reader_errParamSet = Reader.this.ParamSet(Mtr_Param.MTR_PARAM_POTL_GEN2_TAGENCODING, new int[]{107});
                            if (reader_errParamSet != READER_ERR.MT_OK_ERR) {
                                Reader.this.errhandle_IT(reader_errParamSet);
                            }
                            if (Reader.this.isIT_E7_run) {
                                Reader reader3 = Reader.this;
                                reader_errParamSet = reader3.AsyncStartReading(reader3.pants, Reader.this.pants.length, Reader.this.poption);
                            }
                            if (reader_errParamSet != READER_ERR.MT_OK_ERR) {
                                Reader.this.errhandle_IT(reader_errParamSet);
                            }
                            Reader reader4 = Reader.this;
                            reader4.IT_E7_step = 1;
                            reader4.IT_E7_start = System.currentTimeMillis();
                            Reader.this.vstaticstarttick = System.currentTimeMillis() - Reader.this.IT_E7_start;
                        }
                    } else if (Reader.this.IT_E7_step == 1 && Reader.this.isIT_E7_run && Reader.this.totalcount < Reader.this.IT_E7_ctagcount2) {
                        Reader.this.toDlog("stop:IT_E7_M1_STEP2 " + String.valueOf(Reader.this.IT_E7_ctagcount2));
                        READER_ERR reader_errAsyncStopReading2 = Reader.this.AsyncStopReading();
                        if (reader_errAsyncStopReading2 != READER_ERR.MT_OK_ERR) {
                            Reader.this.errhandle_IT(reader_errAsyncStopReading2);
                        }
                        Reader.this.IT_E7_istargetA = !r1.IT_E7_istargetA;
                        int[] iArr2 = {0};
                        if (Reader.this.IT_E7_istargetA) {
                            Reader.this.toDlog("set to A");
                        } else {
                            iArr2[0] = 1;
                            Reader.this.toDlog("set to B");
                        }
                        READER_ERR reader_errParamSet2 = Reader.this.ParamSet(Mtr_Param.MTR_PARAM_POTL_GEN2_TARGET, iArr2);
                        if (reader_errParamSet2 != READER_ERR.MT_OK_ERR) {
                            Reader.this.errhandle_IT(reader_errParamSet2);
                        }
                        if (Reader.this.IT_E7_istargetA) {
                            Reader.this.toDlog("set to 107,S2 to A");
                            iArr2[0] = 107;
                            READER_ERR reader_errParamSet3 = Reader.this.ParamSet(Mtr_Param.MTR_PARAM_POTL_GEN2_TAGENCODING, iArr2);
                            if (reader_errParamSet3 != READER_ERR.MT_OK_ERR) {
                                Reader.this.errhandle_IT(reader_errParamSet3);
                            }
                            Reader reader5 = Reader.this;
                            reader5.SetFilterSessioninTargetA(reader5.pants, Reader.this.IT_E7_centrefre, Reader.this.IT_E7_pow);
                        }
                        Reader.this.toDlog(" set gen2code:" + String.valueOf(Reader.this.IT_E7_rfm));
                        iArr2[0] = Reader.this.IT_E7_rfm;
                        READER_ERR reader_errParamSet4 = Reader.this.ParamSet(Mtr_Param.MTR_PARAM_POTL_GEN2_TAGENCODING, iArr2);
                        if (reader_errParamSet4 != READER_ERR.MT_OK_ERR) {
                            Reader.this.errhandle_IT(reader_errParamSet4);
                        }
                        Reader.this.toDlog(" to start");
                        if (Reader.this.isIT_E7_run) {
                            Reader reader6 = Reader.this;
                            reader_errParamSet4 = reader6.AsyncStartReading(reader6.pants, Reader.this.pants.length, Reader.this.poption);
                        }
                        if (reader_errParamSet4 != READER_ERR.MT_OK_ERR) {
                            Reader.this.errhandle_IT(reader_errParamSet4);
                        }
                        Reader reader7 = Reader.this;
                        reader7.IT_E7_step = 0;
                        reader7.IT_E7_start = System.currentTimeMillis();
                        Reader.this.vstaticstarttick = System.currentTimeMillis() - Reader.this.IT_E7_start;
                    }
                    Reader reader8 = Reader.this;
                    reader8.totalcountlast = reader8.totalcount;
                    Reader.this.totalcount = 0;
                }
                if (!Reader.this.isIT_E7_run) {
                    return;
                }
            }
        }
    }

    private class IT_E7v2_notify implements Runnable {
        Reader reader;

        public IT_E7v2_notify(Reader reader) {
            this.reader = reader;
        }

        @Override // java.lang.Runnable
        public void run() {
            boolean z;
            while (Reader.this.isIT_E7_run) {
                int[] iArr = {0};
                READER_ERR reader_errAsyncGetTagCount = Reader.this.AsyncGetTagCount(iArr);
                if (reader_errAsyncGetTagCount != READER_ERR.MT_OK_ERR) {
                    Reader.this.errhandle_IT(reader_errAsyncGetTagCount);
                    return;
                }
                if (iArr[0] > 0) {
                    Reader.this.toDlog("gettagcount:" + String.valueOf(iArr[0]));
                    Vector vector = new Vector();
                    int i = 0;
                    z = false;
                    while (true) {
                        if (i < iArr[0]) {
                            TAGINFO taginfo = Reader.this.new TAGINFO();
                            READER_ERR reader_errAsyncGetNextTag = Reader.this.AsyncGetNextTag(taginfo);
                            if (reader_errAsyncGetNextTag != READER_ERR.MT_OK_ERR) {
                                Reader.this.errhandle_IT(reader_errAsyncGetNextTag);
                                break;
                            }
                            if (taginfo.Epclen % 2 == 0) {
                                vector.add(taginfo);
                                Reader.this.totalcount++;
                            } else if (taginfo.Epclen == 3) {
                                z = true;
                            }
                            i++;
                        } else {
                            break;
                        }
                    }
                    TAGINFO[] taginfoArr = (TAGINFO[]) vector.toArray(new TAGINFO[vector.size()]);
                    if (Reader.this.readListeners.size() > 0 && taginfoArr.length > 0) {
                        Iterator<ReadListener> it = Reader.this.readListeners.iterator();
                        while (it.hasNext()) {
                            it.next().tagRead(this.reader, taginfoArr);
                        }
                    }
                } else {
                    z = false;
                }
                long jCurrentTimeMillis = System.currentTimeMillis() - Reader.this.IT_E7_start;
                int i2 = Reader.this.IT_E7_m1_cycle;
                if (Reader.this.IT_E7_step == 0) {
                    i2 = Reader.this.IT_E7_m1_cycle;
                } else if (Reader.this.IT_E7_step == 1) {
                    i2 = Reader.this.IT_E7_m1_cycle2;
                } else if (Reader.this.IT_E7_step == 2 || Reader.this.IT_E7_step == 3 || Reader.this.IT_E7_step == 4) {
                    i2 = Reader.this.IT_E7_m1_cycle3;
                }
                if (jCurrentTimeMillis - Reader.this.vstaticstarttick >= i2) {
                    Reader.this.toDlog("Nowcyc:" + String.valueOf(i2) + " tick:" + String.valueOf(jCurrentTimeMillis - Reader.this.vstaticstarttick));
                    Reader reader = Reader.this;
                    reader.vstaticstarttick = jCurrentTimeMillis;
                    if (reader.IT_E7_step == 0 && Reader.this.isIT_E7_run) {
                        Reader.this.toDlog("stop IT_E7_M1_STEP1---" + String.valueOf(Reader.this.totalcount));
                        if (Reader.this.totalcount < Reader.this.IT_E7_ctagcount) {
                            Reader.this.toDlog("stop:" + String.valueOf(Reader.this.IT_E7_ctagcount));
                            READER_ERR reader_errAsyncStopReading = Reader.this.AsyncStopReading();
                            if (reader_errAsyncStopReading != READER_ERR.MT_OK_ERR) {
                                Reader.this.errhandle_IT(reader_errAsyncStopReading);
                            }
                            Reader.this.toDlog("set gen2 code 107");
                            READER_ERR reader_errParamSet = Reader.this.ParamSet(Mtr_Param.MTR_PARAM_POTL_GEN2_TAGENCODING, new int[]{107});
                            if (reader_errParamSet != READER_ERR.MT_OK_ERR) {
                                Reader.this.errhandle_IT(reader_errParamSet);
                            }
                            if (Reader.this.isIT_E7_run) {
                                Reader reader2 = Reader.this;
                                reader_errParamSet = reader2.AsyncStartReading(reader2.pants, Reader.this.pants.length, Reader.this.poption);
                            }
                            if (reader_errParamSet != READER_ERR.MT_OK_ERR) {
                                Reader.this.errhandle_IT(reader_errParamSet);
                            }
                            Reader reader3 = Reader.this;
                            reader3.IT_E7_step = 1;
                            reader3.IT_E7_start = System.currentTimeMillis();
                            Reader.this.vstaticstarttick = System.currentTimeMillis() - Reader.this.IT_E7_start;
                        }
                    } else if (Reader.this.IT_E7_step == 1 && Reader.this.isIT_E7_run) {
                        if (Reader.this.totalcount < Reader.this.IT_E7_ctagcount2) {
                            Reader.this.toDlog("stop IT_E7_M1_STEP2---" + String.valueOf(Reader.this.IT_E7_ctagcount2));
                            READER_ERR reader_errAsyncStopReading2 = Reader.this.AsyncStopReading();
                            if (reader_errAsyncStopReading2 != READER_ERR.MT_OK_ERR) {
                                Reader.this.errhandle_IT(reader_errAsyncStopReading2);
                            }
                            Reader.this.toDlog("set gen2 code 113,fre " + String.valueOf(Reader.this.IT_E7_centrefre) + " Q 4");
                            READER_ERR reader_errParamSet2 = Reader.this.ParamSet(Mtr_Param.MTR_PARAM_POTL_GEN2_TAGENCODING, new int[]{113});
                            if (reader_errParamSet2 != READER_ERR.MT_OK_ERR) {
                                Reader.this.errhandle_IT(reader_errParamSet2);
                            }
                            HoptableData_ST hoptableData_ST = Reader.this.new HoptableData_ST();
                            hoptableData_ST.lenhtb = 1;
                            hoptableData_ST.htb[0] = Reader.this.IT_E7_lowfre;
                            READER_ERR reader_errParamSet3 = Reader.this.ParamSet(Mtr_Param.MTR_PARAM_FREQUENCY_HOPTABLE, hoptableData_ST);
                            if (reader_errParamSet3 != READER_ERR.MT_OK_ERR) {
                                Reader.this.errhandle_IT(reader_errParamSet3);
                            }
                            READER_ERR reader_errParamSet4 = Reader.this.ParamSet(Mtr_Param.MTR_PARAM_POTL_GEN2_Q, new int[]{4});
                            if (reader_errParamSet4 == READER_ERR.MT_OK_ERR) {
                                Reader.this.toDlog(" to start");
                                if (Reader.this.isIT_E7_run) {
                                    Reader reader4 = Reader.this;
                                    reader_errParamSet4 = reader4.AsyncStartReading(reader4.pants, Reader.this.pants.length, Reader.this.poption);
                                }
                                if (reader_errParamSet4 != READER_ERR.MT_OK_ERR) {
                                    Reader.this.errhandle_IT(reader_errParamSet4);
                                }
                                Reader reader5 = Reader.this;
                                reader5.IT_E7_step = 2;
                                reader5.IT_E7_start = System.currentTimeMillis();
                                Reader.this.vstaticstarttick = System.currentTimeMillis() - Reader.this.IT_E7_start;
                            }
                        }
                    } else if ((Reader.this.IT_E7_step == 2 || Reader.this.IT_E7_step == 3 || Reader.this.IT_E7_step == 4) && Reader.this.isIT_E7_run && (Reader.this.totalcount < Reader.this.IT_E7_ctagcount3 || z)) {
                        Reader.this.toDlog("stop: IT_E7_M1_STEP" + String.valueOf(Reader.this.IT_E7_step + 1) + " " + String.valueOf(Reader.this.totalcount) + " autostop:" + String.valueOf(z));
                        READER_ERR reader_errAsyncStopReading3 = Reader.this.AsyncStopReading();
                        if (reader_errAsyncStopReading3 != READER_ERR.MT_OK_ERR) {
                            Reader.this.errhandle_IT(reader_errAsyncStopReading3);
                        }
                        if (Reader.this.IT_E7_step == 2) {
                            Reader.this.toDlog("set fre " + String.valueOf(Reader.this.IT_E7_lowfre));
                            HoptableData_ST hoptableData_ST2 = Reader.this.new HoptableData_ST();
                            hoptableData_ST2.lenhtb = 1;
                            hoptableData_ST2.htb[0] = Reader.this.IT_E7_lowfre;
                            reader_errAsyncStopReading3 = Reader.this.ParamSet(Mtr_Param.MTR_PARAM_FREQUENCY_HOPTABLE, hoptableData_ST2);
                            if (reader_errAsyncStopReading3 != READER_ERR.MT_OK_ERR) {
                                Reader.this.errhandle_IT(reader_errAsyncStopReading3);
                            }
                            Reader.this.IT_E7_step = 3;
                        } else if (Reader.this.IT_E7_step == 3) {
                            Reader.this.toDlog("set fre " + String.valueOf(Reader.this.IT_E7_highfre));
                            HoptableData_ST hoptableData_ST3 = Reader.this.new HoptableData_ST();
                            hoptableData_ST3.lenhtb = 1;
                            hoptableData_ST3.htb[0] = Reader.this.IT_E7_highfre;
                            reader_errAsyncStopReading3 = Reader.this.ParamSet(Mtr_Param.MTR_PARAM_FREQUENCY_HOPTABLE, hoptableData_ST3);
                            if (reader_errAsyncStopReading3 != READER_ERR.MT_OK_ERR) {
                                Reader.this.errhandle_IT(reader_errAsyncStopReading3);
                            }
                            Reader.this.IT_E7_step = 4;
                        } else if (Reader.this.IT_E7_step == 4) {
                            Reader.this.IT_E7_istargetA = !r1.IT_E7_istargetA;
                            int[] iArr2 = {0};
                            iArr2[0] = -1;
                            READER_ERR reader_errParamSet5 = Reader.this.ParamSet(Mtr_Param.MTR_PARAM_POTL_GEN2_Q, iArr2);
                            if (reader_errParamSet5 != READER_ERR.MT_OK_ERR) {
                                Reader.this.errhandle_IT(reader_errParamSet5);
                            }
                            READER_ERR reader_errParamSet6 = Reader.this.ParamSet(Mtr_Param.MTR_PARAM_FREQUENCY_REGION, Reader.this.IT_E7_rg);
                            if (reader_errParamSet6 != READER_ERR.MT_OK_ERR) {
                                Reader.this.errhandle_IT(reader_errParamSet6);
                            }
                            iArr2[0] = 0;
                            if (Reader.this.IT_E7_istargetA) {
                                Reader.this.toDlog("set to A");
                            } else {
                                iArr2[0] = 1;
                                Reader.this.toDlog("set to B");
                            }
                            READER_ERR reader_errParamSet7 = Reader.this.ParamSet(Mtr_Param.MTR_PARAM_POTL_GEN2_TARGET, iArr2);
                            if (reader_errParamSet7 != READER_ERR.MT_OK_ERR) {
                                Reader.this.errhandle_IT(reader_errParamSet7);
                            }
                            if (Reader.this.IT_E7_istargetA) {
                                Reader.this.toDlog("set to 107,S2 to A 3 fre");
                                iArr2[0] = 107;
                                READER_ERR reader_errParamSet8 = Reader.this.ParamSet(Mtr_Param.MTR_PARAM_POTL_GEN2_TAGENCODING, iArr2);
                                if (reader_errParamSet8 != READER_ERR.MT_OK_ERR) {
                                    Reader.this.errhandle_IT(reader_errParamSet8);
                                }
                                Reader reader6 = Reader.this;
                                reader6.SetFilterSessioninTargetA(reader6.pants, Reader.this.IT_E7_centrefre, Reader.this.IT_E7_pow);
                                Reader reader7 = Reader.this;
                                reader7.SetFilterSessioninTargetA(reader7.pants, Reader.this.IT_E7_lowfre, Reader.this.IT_E7_pow);
                                Reader reader8 = Reader.this;
                                reader8.SetFilterSessioninTargetA(reader8.pants, Reader.this.IT_E7_highfre, Reader.this.IT_E7_pow);
                            }
                            Reader.this.toDlog("gen2ode " + String.valueOf(Reader.this.IT_E7_rfm));
                            iArr2[0] = Reader.this.IT_E7_rfm;
                            reader_errAsyncStopReading3 = Reader.this.ParamSet(Mtr_Param.MTR_PARAM_POTL_GEN2_TAGENCODING, iArr2);
                            if (reader_errAsyncStopReading3 != READER_ERR.MT_OK_ERR) {
                                Reader.this.errhandle_IT(reader_errAsyncStopReading3);
                            }
                            Reader.this.IT_E7_step = 0;
                        }
                        Reader.this.toDlog(" to start");
                        if (Reader.this.isIT_E7_run) {
                            if (Reader.this.IT_E7_step == 0) {
                                Reader reader9 = Reader.this;
                                reader_errAsyncStopReading3 = reader9.AsyncStartReading(reader9.pants, Reader.this.pants.length, Reader.this.poption);
                            } else {
                                Reader reader10 = Reader.this;
                                reader_errAsyncStopReading3 = reader10.AsyncStartReading(reader10.pants, Reader.this.pants.length, Reader.this.poption | 64);
                            }
                        }
                        if (reader_errAsyncStopReading3 != READER_ERR.MT_OK_ERR) {
                            Reader.this.errhandle_IT(reader_errAsyncStopReading3);
                        }
                        Reader.this.IT_E7_start = System.currentTimeMillis();
                        Reader.this.vstaticstarttick = System.currentTimeMillis() - Reader.this.IT_E7_start;
                    }
                    Reader reader11 = Reader.this;
                    reader11.totalcountlast = reader11.totalcount;
                    Reader.this.totalcount = 0;
                }
                if (!Reader.this.isIT_E7_run) {
                    return;
                }
            }
        }
    }
}
