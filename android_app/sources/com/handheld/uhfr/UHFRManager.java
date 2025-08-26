package com.handheld.uhfr;

import android.os.SystemClock;
import android.util.Log;
import cn.com.example.rfid.driver.Driver;
import cn.pda.serialport.SerialPort;
import cn.pda.serialport.Tools;
import com.handheld.uhfr.Reader;
import com.p013gg.reader.api.dal.GClient;
import com.p013gg.reader.api.dal.HandlerTag6bLog;
import com.p013gg.reader.api.dal.HandlerTag6bOver;
import com.p013gg.reader.api.dal.HandlerTagEpcLog;
import com.p013gg.reader.api.dal.HandlerTagEpcOver;
import com.p013gg.reader.api.dal.HandlerTagGJbLog;
import com.p013gg.reader.api.dal.HandlerTagGJbOver;
import com.p013gg.reader.api.dal.HandlerTagGbLog;
import com.p013gg.reader.api.dal.HandlerTagGbOver;
import com.p013gg.reader.api.protocol.p014gx.EnumG;
import com.p013gg.reader.api.protocol.p014gx.LogBase6bInfo;
import com.p013gg.reader.api.protocol.p014gx.LogBase6bOver;
import com.p013gg.reader.api.protocol.p014gx.LogBaseEpcInfo;
import com.p013gg.reader.api.protocol.p014gx.LogBaseEpcOver;
import com.p013gg.reader.api.protocol.p014gx.LogBaseGJbInfo;
import com.p013gg.reader.api.protocol.p014gx.LogBaseGJbOver;
import com.p013gg.reader.api.protocol.p014gx.LogBaseGbInfo;
import com.p013gg.reader.api.protocol.p014gx.LogBaseGbOver;
import com.p013gg.reader.api.protocol.p014gx.MsgAppGetBaseVersion;
import com.p013gg.reader.api.protocol.p014gx.MsgBaseDestroyEpc;
import com.p013gg.reader.api.protocol.p014gx.MsgBaseGetBaseband;
import com.p013gg.reader.api.protocol.p014gx.MsgBaseGetFreqRange;
import com.p013gg.reader.api.protocol.p014gx.MsgBaseGetFrequency;
import com.p013gg.reader.api.protocol.p014gx.MsgBaseGetPower;
import com.p013gg.reader.api.protocol.p014gx.MsgBaseInventory6b;
import com.p013gg.reader.api.protocol.p014gx.MsgBaseInventoryEpc;
import com.p013gg.reader.api.protocol.p014gx.MsgBaseInventoryGJb;
import com.p013gg.reader.api.protocol.p014gx.MsgBaseInventoryGb;
import com.p013gg.reader.api.protocol.p014gx.MsgBaseLock6b;
import com.p013gg.reader.api.protocol.p014gx.MsgBaseLock6bGet;
import com.p013gg.reader.api.protocol.p014gx.MsgBaseLockGJb;
import com.p013gg.reader.api.protocol.p014gx.MsgBaseSetBaseband;
import com.p013gg.reader.api.protocol.p014gx.MsgBaseSetFreqRange;
import com.p013gg.reader.api.protocol.p014gx.MsgBaseSetFrequency;
import com.p013gg.reader.api.protocol.p014gx.MsgBaseSetPower;
import com.p013gg.reader.api.protocol.p014gx.MsgBaseStop;
import com.p013gg.reader.api.protocol.p014gx.MsgBaseWrite6b;
import com.p013gg.reader.api.protocol.p014gx.MsgBaseWriteEpc;
import com.p013gg.reader.api.protocol.p014gx.MsgBaseWriteGJb;
import com.p013gg.reader.api.protocol.p014gx.Param6bReadUserdata;
import com.p013gg.reader.api.protocol.p014gx.ParamEpcFilter;
import com.p013gg.reader.api.protocol.p014gx.ParamEpcReadEpc;
import com.p013gg.reader.api.protocol.p014gx.ParamEpcReadReserved;
import com.p013gg.reader.api.protocol.p014gx.ParamEpcReadTid;
import com.p013gg.reader.api.protocol.p014gx.ParamEpcReadUserdata;
import com.p013gg.reader.api.protocol.p014gx.ParamFastId;
import com.p013gg.reader.api.utils.HexUtils;
import com.uhf.api.cls.R2000_calibration;
import com.uhf.api.cls.ReadListener;
import com.uhf.api.cls.Reader;
import com.uhf.api.cls.Reader.AntPower;
import com.uhf.api.cls.Reader.AntPowerConf;
import com.uhf.api.cls.Reader.CustomParam_ST;
import com.uhf.api.cls.Reader.Default_Param;
import com.uhf.api.cls.Reader.EmbededData_ST;
import com.uhf.api.cls.Reader.HardwareDetails;
import com.uhf.api.cls.Reader.HoptableData_ST;
import com.uhf.api.cls.Reader.Inv_Potl;
import com.uhf.api.cls.Reader.Inv_Potls_ST;
import com.uhf.api.cls.Reader.TAGINFO;
import com.uhf.api.cls.Reader.TagFilter_ST;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.text.NumberFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Hashtable;
import java.util.List;
import java.util.Objects;

/* loaded from: classes.dex */
public class UHFRManager {
    private static GClient client = null;
    private static Driver driver = null;
    public static Reader.READER_ERR mErr = null;
    private static final int port = 13;
    private static com.uhf.api.cls.Reader reader;
    private static SerialPort sSerialPort;
    int Emboption;

    /* renamed from: Q */
    private int f402Q;
    int count;

    /* renamed from: dv */
    public Reader.deviceVersion f403dv;
    private CusParamFilter filter;
    private boolean isEmb;
    Reader.TAGINFO taginfo;
    private static List<LogBaseEpcInfo> epcList = new ArrayList();
    private static List<LogBaseGbInfo> gbepcList = new ArrayList();
    private static List<LogBaseGJbInfo> gjbepcList = new ArrayList();
    private static List<LogBase6bInfo> tag6bList = new ArrayList();
    private static int type = -1;
    private static boolean DEBUG = true;
    private static UHFRManager uhfrManager = null;
    private static boolean isE710 = false;
    private final String tag = "UHFRManager";
    private final int[] ants = {1};
    private final int ant = 1;
    String[] spiperst = {"0%", "5%", "10%", "15%", "20%", "25%", "30%", "35%", "40%", "45%", "50%"};
    private ParamFastId fastId = new ParamFastId();
    private int rPower = 0;
    private int wPower = 0;
    private List<Reader.TAGINFO> listTag = new ArrayList();
    private ReadListener readListener = new ReadListener() { // from class: com.handheld.uhfr.UHFRManager.1
        @Override // com.uhf.api.cls.ReadListener
        public void tagRead(com.uhf.api.cls.Reader reader2, Reader.TAGINFO[] taginfoArr) {
            synchronized (UHFRManager.this.listTag) {
                if (taginfoArr != null) {
                    if (taginfoArr.length > 0) {
                        Collections.addAll(UHFRManager.this.listTag, taginfoArr);
                    }
                }
            }
        }
    };

    public UHFRManager() {
        com.uhf.api.cls.Reader reader2 = new com.uhf.api.cls.Reader();
        reader2.getClass();
        this.taginfo = reader2.new TAGINFO();
        this.count = 0;
        this.Emboption = 0;
        this.isEmb = false;
        this.f402Q = 0;
    }

    public static void setDebuggable(boolean z) {
        DEBUG = z;
    }

    private void logPrint(String str) {
        if (DEBUG) {
            Log.e("huang,UHFRManager", str);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void logPrint(String str, String str2) {
        if (DEBUG) {
            Log.e("[" + str + "]->", str2);
        }
    }

    public static UHFRManager getInstance() {
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        if (uhfrManager == null && connect()) {
            uhfrManager = new UHFRManager();
        }
        Log.i("zeng-", "init uhf time: " + (SystemClock.elapsedRealtime() - jElapsedRealtime));
        return uhfrManager;
    }

    public boolean close() {
        int i = type;
        if (i == 0) {
            GClient gClient = client;
            if (gClient != null) {
                gClient.close();
                client.hdPowerOff();
            }
            client = null;
        } else if (i == 1) {
            com.uhf.api.cls.Reader reader2 = reader;
            if (reader2 != null) {
                reader2.CloseReader();
            }
            reader = null;
        } else {
            logPrint("zeng-", "type2-close");
            driver.Close_Com();
        }
        new SerialPort().power_5Voff();
        uhfrManager = null;
        return true;
    }

    public String getHardware() {
        int i = type;
        if (i != 0) {
            if (i != 1) {
                return "1.1.03";
            }
            com.uhf.api.cls.Reader reader2 = reader;
            reader2.getClass();
            Reader.HardwareDetails hardwareDetails = reader2.new HardwareDetails();
            if (reader.GetHardwareDetails(hardwareDetails) != Reader.READER_ERR.MT_OK_ERR) {
                return null;
            }
            return "1.1.02." + hardwareDetails.module.value();
        }
        Objects.requireNonNull(client);
        MsgAppGetBaseVersion msgAppGetBaseVersion = new MsgAppGetBaseVersion();
        client.sendSynMsg(msgAppGetBaseVersion);
        logPrint("MsgAppGetBaseVersion", msgAppGetBaseVersion.getRtMsg());
        if (msgAppGetBaseVersion.getRtCode() != 0) {
            return null;
        }
        String[] strArrSplit = msgAppGetBaseVersion.getBaseVersions().split("\\.");
        if (strArrSplit.length <= 2) {
            return null;
        }
        return "1.1.01." + strArrSplit[2];
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:124:0x0291 A[Catch: IOException -> 0x028d, TryCatch #16 {IOException -> 0x028d, blocks: (B:120:0x0289, B:124:0x0291, B:126:0x0296), top: B:132:0x0289 }] */
    /* JADX WARN: Removed duplicated region for block: B:126:0x0296 A[Catch: IOException -> 0x028d, TRY_LEAVE, TryCatch #16 {IOException -> 0x028d, blocks: (B:120:0x0289, B:124:0x0291, B:126:0x0296), top: B:132:0x0289 }] */
    /* JADX WARN: Removed duplicated region for block: B:132:0x0289 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:150:? A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0139 A[Catch: IOException -> 0x01a7, TRY_ENTER, TryCatch #18 {IOException -> 0x01a7, blocks: (B:26:0x0139, B:28:0x013e, B:29:0x0141, B:76:0x01a3, B:80:0x01ab, B:82:0x01b0), top: B:134:0x0011 }] */
    /* JADX WARN: Removed duplicated region for block: B:28:0x013e A[Catch: IOException -> 0x01a7, TryCatch #18 {IOException -> 0x01a7, blocks: (B:26:0x0139, B:28:0x013e, B:29:0x0141, B:76:0x01a3, B:80:0x01ab, B:82:0x01b0), top: B:134:0x0011 }] */
    /* JADX WARN: Removed duplicated region for block: B:76:0x01a3 A[Catch: IOException -> 0x01a7, TRY_ENTER, TryCatch #18 {IOException -> 0x01a7, blocks: (B:26:0x0139, B:28:0x013e, B:29:0x0141, B:76:0x01a3, B:80:0x01ab, B:82:0x01b0), top: B:134:0x0011 }] */
    /* JADX WARN: Removed duplicated region for block: B:80:0x01ab A[Catch: IOException -> 0x01a7, TryCatch #18 {IOException -> 0x01a7, blocks: (B:26:0x0139, B:28:0x013e, B:29:0x0141, B:76:0x01a3, B:80:0x01ab, B:82:0x01b0), top: B:134:0x0011 }] */
    /* JADX WARN: Removed duplicated region for block: B:82:0x01b0 A[Catch: IOException -> 0x01a7, TRY_LEAVE, TryCatch #18 {IOException -> 0x01a7, blocks: (B:26:0x0139, B:28:0x013e, B:29:0x0141, B:76:0x01a3, B:80:0x01ab, B:82:0x01b0), top: B:134:0x0011 }] */
    /* JADX WARN: Removed duplicated region for block: B:87:0x01dd  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x0202  */
    /* JADX WARN: Type inference failed for: r3v18, types: [cn.pda.serialport.SerialPort] */
    /* JADX WARN: Type inference failed for: r3v20 */
    /* JADX WARN: Type inference failed for: r3v21 */
    /* JADX WARN: Type inference failed for: r3v22 */
    /* JADX WARN: Type inference failed for: r3v24 */
    /* JADX WARN: Type inference failed for: r3v28 */
    /* JADX WARN: Type inference failed for: r3v29 */
    /* JADX WARN: Type inference failed for: r3v30, types: [java.io.OutputStream] */
    /* JADX WARN: Type inference failed for: r3v31 */
    /* JADX WARN: Type inference failed for: r3v32 */
    /* JADX WARN: Type inference failed for: r8v10 */
    /* JADX WARN: Type inference failed for: r8v12, types: [java.io.OutputStream] */
    /* JADX WARN: Type inference failed for: r8v13 */
    /* JADX WARN: Type inference failed for: r8v14 */
    /* JADX WARN: Type inference failed for: r8v15 */
    /* JADX WARN: Type inference failed for: r8v17 */
    /* JADX WARN: Type inference failed for: r8v23 */
    /* JADX WARN: Type inference failed for: r8v26 */
    /* JADX WARN: Type inference failed for: r8v27 */
    /* JADX WARN: Type inference failed for: r8v28, types: [cn.pda.serialport.SerialPort] */
    /* JADX WARN: Type inference failed for: r8v8, types: [cn.pda.serialport.SerialPort] */
    /* JADX WARN: Type inference failed for: r8v9 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static boolean connect() throws java.lang.Throwable {
        /*
            Method dump skipped, instructions count: 670
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.handheld.uhfr.UHFRManager.connect():boolean");
    }

    private static boolean connectE710() throws InterruptedException, IOException {
        try {
            new SerialPort().power_5Von();
            Thread.sleep(500L);
            SerialPort serialPort = new SerialPort(13, 921600, 0);
            OutputStream outputStream = serialPort.getOutputStream();
            InputStream inputStream = serialPort.getInputStream();
            outputStream.write(Tools.HexString2Bytes("FF00031D0C"));
            outputStream.flush();
            Thread.sleep(20L);
            byte[] bArr = new byte[128];
            String strBytes2HexString = Tools.Bytes2HexString(bArr, inputStream.read(bArr));
            if (strBytes2HexString.length() > 10) {
                logPrint("connect", "connectE710 xinlian retStr: " + strBytes2HexString);
                type = 1;
            }
            serialPort.close(13);
        } catch (Exception unused) {
        }
        if (type == 1) {
            reader = new com.uhf.api.cls.Reader();
            Reader.READER_ERR reader_errInitReader_Notype = reader.InitReader_Notype("/dev/ttyMT1:921600", 1);
            logPrint("connect", "connectE710 xinlian retStr: " + reader_errInitReader_Notype.name());
            if (reader_errInitReader_Notype == Reader.READER_ERR.MT_OK_ERR) {
                connect2();
                isE710 = false;
                return true;
            }
        }
        return false;
    }

    private static boolean connect2() {
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        com.uhf.api.cls.Reader reader2 = reader;
        reader2.getClass();
        Reader.Inv_Potls_ST inv_Potls_ST = reader2.new Inv_Potls_ST();
        ArrayList arrayList = new ArrayList();
        arrayList.add(Reader.SL_TagProtocol.SL_TAG_PROTOCOL_GEN2);
        inv_Potls_ST.potlcnt = arrayList.size();
        inv_Potls_ST.potls = new Reader.Inv_Potl[inv_Potls_ST.potlcnt];
        Reader.SL_TagProtocol[] sL_TagProtocolArr = (Reader.SL_TagProtocol[]) arrayList.toArray(new Reader.SL_TagProtocol[inv_Potls_ST.potlcnt]);
        for (int i = 0; i < inv_Potls_ST.potlcnt; i++) {
            com.uhf.api.cls.Reader reader3 = reader;
            reader3.getClass();
            Reader.Inv_Potl inv_Potl = reader3.new Inv_Potl();
            inv_Potl.weight = 30;
            inv_Potl.potl = sL_TagProtocolArr[i];
            inv_Potls_ST.potls[0] = inv_Potl;
        }
        Reader.READER_ERR reader_errParamSet = reader.ParamSet(Reader.Mtr_Param.MTR_PARAM_TAG_INVPOTL, inv_Potls_ST);
        Log.i("zeng-", "connect2 cusTime: " + (SystemClock.elapsedRealtime() - jElapsedRealtime));
        return reader_errParamSet == Reader.READER_ERR.MT_OK_ERR;
    }

    public static boolean setBaudrate(int i) {
        com.uhf.api.cls.Reader reader2 = reader;
        reader2.getClass();
        Reader.Default_Param default_Param = reader2.new Default_Param();
        default_Param.isdefault = false;
        default_Param.key = Reader.Mtr_Param.MTR_PARAM_SAVEINMODULE_BAUD;
        default_Param.val = Integer.valueOf(i);
        return reader.ParamSet(Reader.Mtr_Param.MTR_PARAM_SAVEINMODULE_BAUD, default_Param) == Reader.READER_ERR.MT_OK_ERR;
    }

    public Reader.READER_ERR asyncStartReading() {
        int i = type;
        if (i == 0) {
            MsgBaseGetBaseband msgBaseGetBaseband = new MsgBaseGetBaseband();
            client.sendSynMsg(msgBaseGetBaseband);
            if (msgBaseGetBaseband.getRtCode() == 0) {
                MsgBaseInventoryEpc msgBaseInventoryEpc = new MsgBaseInventoryEpc();
                msgBaseInventoryEpc.setAntennaEnable(1L);
                msgBaseInventoryEpc.setInventoryMode(1);
                CusParamFilter cusParamFilter = this.filter;
                if (cusParamFilter != null && cusParamFilter.isMatching()) {
                    msgBaseInventoryEpc.setFilter(this.filter.getFilter());
                }
                if (this.fastId.getFastId() != 0) {
                    msgBaseInventoryEpc.setParamFastId(this.fastId);
                }
                client.sendSynMsg(msgBaseInventoryEpc);
                logPrint("MsgBaseInventoryEpc", msgBaseInventoryEpc.getRtMsg());
                return msgBaseInventoryEpc.getRtCode() == 0 ? Reader.READER_ERR.MT_OK_ERR : Reader.READER_ERR.MT_CMD_FAILED_ERR;
            }
            return Reader.READER_ERR.MT_CMD_FAILED_ERR;
        }
        if (i == 1) {
            if (isE710 && !this.isEmb) {
                logPrint("pang", "E710 AsyncStartReading");
                com.uhf.api.cls.Reader reader2 = reader;
                reader2.getClass();
                Reader.CustomParam_ST customParam_ST = reader2.new CustomParam_ST();
                customParam_ST.ParamName = "Reader/Ex10fastmode";
                byte[] bArr = new byte[22];
                bArr[0] = 1;
                bArr[1] = 20;
                for (int i2 = 0; i2 < 20; i2++) {
                    bArr[i2 + 2] = 0;
                }
                customParam_ST.ParamVal = bArr;
                reader.ParamSet(Reader.Mtr_Param.MTR_PARAM_CUSTOM, customParam_ST);
                return reader.AsyncStartReading(this.ants, 1, 0);
            }
            int gen2session = getGen2session();
            logPrint("pang", "AsyncStartReading");
            if (gen2session == 1) {
                return reader.AsyncStartReading(this.ants, 1, this.isEmb ? this.Emboption : 16);
            }
            return reader.AsyncStartReading(this.ants, 1, this.isEmb ? this.Emboption : 0);
        }
        driver.Inventory_Model_Set(0, true);
        if (driver.readMore(0) != 1020) {
            return Reader.READER_ERR.MT_CMD_FAILED_ERR;
        }
        return Reader.READER_ERR.MT_OK_ERR;
    }

    public Reader.READER_ERR asyncStartReading(int i) {
        int i2 = type;
        if (i2 == 0) {
            MsgBaseGetBaseband msgBaseGetBaseband = new MsgBaseGetBaseband();
            client.sendSynMsg(msgBaseGetBaseband);
            if (msgBaseGetBaseband.getRtCode() == 0) {
                MsgBaseInventoryEpc msgBaseInventoryEpc = new MsgBaseInventoryEpc();
                msgBaseInventoryEpc.setAntennaEnable(1L);
                msgBaseInventoryEpc.setInventoryMode(1);
                CusParamFilter cusParamFilter = this.filter;
                if (cusParamFilter != null && cusParamFilter.isMatching()) {
                    msgBaseInventoryEpc.setFilter(this.filter.getFilter());
                }
                if (this.fastId.getFastId() != 0) {
                    msgBaseInventoryEpc.setParamFastId(this.fastId);
                }
                client.sendSynMsg(msgBaseInventoryEpc);
                logPrint("MsgBaseInventoryEpc", msgBaseInventoryEpc.getRtMsg());
                return msgBaseInventoryEpc.getRtCode() == 0 ? Reader.READER_ERR.MT_OK_ERR : Reader.READER_ERR.MT_CMD_FAILED_ERR;
            }
            return Reader.READER_ERR.MT_CMD_FAILED_ERR;
        }
        if (i2 == 1) {
            if (isE710) {
                logPrint("pang", "AsyncStartReading");
                com.uhf.api.cls.Reader reader2 = reader;
                reader2.getClass();
                Reader.CustomParam_ST customParam_ST = reader2.new CustomParam_ST();
                customParam_ST.ParamName = "Reader/Ex10fastmode";
                byte[] bArr = new byte[22];
                bArr[0] = 1;
                bArr[1] = 20;
                for (int i3 = 0; i3 < 20; i3++) {
                    bArr[i3 + 2] = 0;
                }
                customParam_ST.ParamVal = bArr;
                reader.ParamSet(Reader.Mtr_Param.MTR_PARAM_CUSTOM, customParam_ST);
                return reader.AsyncStartReading(this.ants, 1, 0);
            }
            return reader.AsyncStartReading(this.ants, 1, i);
        }
        setGen2("0140FD5300000000");
        if (driver.readMore(0) != 1020) {
            return Reader.READER_ERR.MT_CMD_FAILED_ERR;
        }
        return Reader.READER_ERR.MT_OK_ERR;
    }

    public Reader.READER_ERR asyncStopReading() {
        int i = type;
        if (i == 0) {
            MsgBaseStop msgBaseStop = new MsgBaseStop();
            client.sendSynMsg(msgBaseStop);
            logPrint("MsgBaseStop", msgBaseStop.getRtMsg());
            return msgBaseStop.getRtCode() == 0 ? Reader.READER_ERR.MT_OK_ERR : Reader.READER_ERR.MT_CMD_FAILED_ERR;
        }
        if (i == 1) {
            if (isE710) {
                Reader.READER_ERR reader_errAsyncStopReading = reader.AsyncStopReading();
                logPrint("pang", "asyncStopReading");
                return reader_errAsyncStopReading;
            }
            return reader.AsyncStopReading();
        }
        driver.stopRead();
        logPrint("zeng-", "cont:" + this.count);
        return Reader.READER_ERR.MT_OK_ERR;
    }

    public boolean setInventoryFilter(byte[] bArr, int i, int i2, boolean z) {
        int i3 = type;
        if (i3 == 0) {
            ParamEpcFilter paramEpcFilter = new ParamEpcFilter();
            paramEpcFilter.setArea(i);
            paramEpcFilter.setBitStart(i2 * 16);
            paramEpcFilter.setbData(bArr);
            paramEpcFilter.setBitLength(bArr.length * 8);
            this.filter = new CusParamFilter(paramEpcFilter, z);
            return true;
        }
        if (i3 == 1) {
            com.uhf.api.cls.Reader reader2 = reader;
            reader2.getClass();
            Reader.TagFilter_ST tagFilter_ST = reader2.new TagFilter_ST();
            tagFilter_ST.fdata = bArr;
            tagFilter_ST.flen = bArr.length * 8;
            if (z) {
                tagFilter_ST.isInvert = 0;
            } else {
                tagFilter_ST.isInvert = 1;
            }
            tagFilter_ST.bank = i;
            tagFilter_ST.startaddr = i2 * 16;
            Reader.READER_ERR reader_errParamSet = reader.ParamSet(Reader.Mtr_Param.MTR_PARAM_TAG_FILTER, tagFilter_ST);
            if (reader_errParamSet != Reader.READER_ERR.MT_OK_ERR) {
                logPrint("setInventoryFilter, ParamSet MTR_PARAM_TAG_FILTER result: " + reader_errParamSet.toString());
                return false;
            }
        }
        return true;
    }

    public boolean setCancleInventoryFilter() {
        Reader.READER_ERR reader_errParamSet;
        int i = type;
        if (i == 0) {
            this.filter = null;
            return true;
        }
        if (i != 1 || (reader_errParamSet = reader.ParamSet(Reader.Mtr_Param.MTR_PARAM_TAG_FILTER, null)) == Reader.READER_ERR.MT_OK_ERR) {
            return true;
        }
        logPrint("setCancleInventoryFilter, ParamSet MTR_PARAM_TAG_FILTER result: " + reader_errParamSet.toString());
        return false;
    }

    public List<LogBaseGbInfo> formatGBData(int i) {
        ArrayList arrayList;
        synchronized (gbepcList) {
            arrayList = new ArrayList();
            arrayList.clear();
            if (gbepcList != null && !gbepcList.isEmpty()) {
                arrayList.addAll(gbepcList);
            }
            gbepcList.clear();
        }
        return arrayList;
    }

    public List<LogBase6bInfo> format6BData() {
        ArrayList arrayList;
        synchronized (tag6bList) {
            arrayList = new ArrayList();
            arrayList.clear();
            if (tag6bList != null && !tag6bList.isEmpty()) {
                arrayList.addAll(tag6bList);
            }
            tag6bList.clear();
        }
        return arrayList;
    }

    public List<LogBaseGJbInfo> formatGJBData(int i) {
        ArrayList arrayList;
        synchronized (gjbepcList) {
            arrayList = new ArrayList();
            arrayList.clear();
            if (gjbepcList != null && !gjbepcList.isEmpty()) {
                arrayList.addAll(gjbepcList);
            }
            gjbepcList.clear();
        }
        return arrayList;
    }

    public List<Reader.TAGINFO> formatData(int i) {
        ArrayList arrayList;
        synchronized (epcList) {
            HashMap map = new HashMap();
            for (LogBaseEpcInfo logBaseEpcInfo : epcList) {
                com.uhf.api.cls.Reader reader2 = new com.uhf.api.cls.Reader();
                reader2.getClass();
                Reader.TAGINFO taginfo = reader2.new TAGINFO();
                taginfo.AntennaID = (byte) logBaseEpcInfo.getAntId();
                taginfo.Frequency = logBaseEpcInfo.getFrequencyPoint().intValue();
                taginfo.TimeStamp = logBaseEpcInfo.getReplySerialNumber().intValue();
                if (i != 0) {
                    if (i != 1) {
                        if (i == 2) {
                            if (logBaseEpcInfo.getTid() != null) {
                                taginfo.EmbededData = logBaseEpcInfo.getbTid();
                                taginfo.EmbededDatalen = (short) logBaseEpcInfo.getbTid().length;
                            }
                        } else if (i == 3 && logBaseEpcInfo.getUserdata() != null) {
                            taginfo.EmbededData = logBaseEpcInfo.getbUser();
                            taginfo.EmbededDatalen = (short) logBaseEpcInfo.getbUser().length;
                        }
                    } else if (logBaseEpcInfo.getEpcData() != null) {
                        taginfo.EmbededData = logBaseEpcInfo.getbEpcData();
                        taginfo.EmbededDatalen = (short) logBaseEpcInfo.getbEpcData().length;
                    }
                } else if (logBaseEpcInfo.getReserved() != null) {
                    taginfo.EmbededData = logBaseEpcInfo.getbRes();
                    taginfo.EmbededDatalen = (short) logBaseEpcInfo.getbRes().length;
                }
                taginfo.EpcId = logBaseEpcInfo.getbEpc();
                taginfo.Epclen = (short) logBaseEpcInfo.getbEpc().length;
                taginfo.f1114PC = HexUtils.int2Bytes(logBaseEpcInfo.getPc());
                if (logBaseEpcInfo.getCrc() != 0) {
                    taginfo.CRC = HexUtils.int2Bytes(logBaseEpcInfo.getCrc());
                }
                taginfo.protocol = Reader.SL_TagProtocol.SL_TAG_PROTOCOL_GEN2;
                taginfo.Phase = logBaseEpcInfo.getPhase();
                taginfo.RSSI = (int) Math.round((log2(logBaseEpcInfo.getRssi()) * 6.0d) - 39.9d);
                if (logBaseEpcInfo.getTid() != null) {
                    if (!map.containsKey(logBaseEpcInfo.getTid())) {
                        taginfo.ReadCnt = 1;
                    } else {
                        Reader.TAGINFO taginfo2 = (Reader.TAGINFO) map.get(logBaseEpcInfo.getTid());
                        if (taginfo2 != null) {
                            taginfo2.ReadCnt++;
                            map.put(logBaseEpcInfo.getTid(), taginfo2);
                        }
                    }
                    map.put(logBaseEpcInfo.getTid(), taginfo);
                } else if (!map.containsKey(logBaseEpcInfo.getEpc())) {
                    taginfo.ReadCnt = 1;
                    map.put(logBaseEpcInfo.getEpc(), taginfo);
                } else {
                    Reader.TAGINFO taginfo3 = (Reader.TAGINFO) map.get(logBaseEpcInfo.getEpc());
                    if (taginfo3 != null) {
                        taginfo3.ReadCnt++;
                        map.put(logBaseEpcInfo.getEpc(), taginfo3);
                    }
                }
            }
            epcList.clear();
            arrayList = new ArrayList(map.values());
        }
        return arrayList;
    }

    private double log2(double d) {
        return Math.log(d / 190.0d) / Math.log(2.0d);
    }

    public List<Reader.TEMPTAGINFO> formatData() {
        ArrayList arrayList;
        synchronized (epcList) {
            HashMap map = new HashMap();
            for (LogBaseEpcInfo logBaseEpcInfo : epcList) {
                Reader.TEMPTAGINFO temptaginfo = new Reader.TEMPTAGINFO();
                temptaginfo.AntennaID = (byte) logBaseEpcInfo.getAntId();
                temptaginfo.Frequency = logBaseEpcInfo.getFrequencyPoint().intValue();
                temptaginfo.TimeStamp = logBaseEpcInfo.getReplySerialNumber().intValue();
                if (logBaseEpcInfo.getUserdata() != null) {
                    logPrint("pang", "pang, " + logBaseEpcInfo.getUserdata());
                    String userdata = logBaseEpcInfo.getUserdata();
                    if (userdata != null && !EnumG.MSG_TYPE_BIT_ERROR.equals(userdata)) {
                        int i = Integer.parseInt(userdata.substring(0, 2), 16);
                        double dRound = Math.round((Integer.parseInt(userdata.substring(2, 4), 16) / 255.0d) * 100.0d) / 100.0d;
                        if (i > 45) {
                            StringBuilder sb = new StringBuilder();
                            sb.append("temp = ");
                            double d = (i - 45) + dRound;
                            sb.append(d);
                            logPrint("temp ", sb.toString());
                            temptaginfo.Temperature = d;
                        } else {
                            StringBuilder sb2 = new StringBuilder();
                            sb2.append("temp = -");
                            double d2 = (45 - i) + dRound;
                            sb2.append(d2);
                            logPrint("temp ", sb2.toString());
                            temptaginfo.Temperature = -d2;
                        }
                    }
                } else {
                    NumberFormat numberFormat = NumberFormat.getInstance();
                    numberFormat.setMaximumFractionDigits(2);
                    temptaginfo.Temperature = Double.valueOf(numberFormat.format(logBaseEpcInfo.getCtesiusLtu31() * 0.01d)).doubleValue();
                }
                temptaginfo.EpcId = logBaseEpcInfo.getbEpc();
                temptaginfo.Epclen = (short) logBaseEpcInfo.getbEpc().length;
                temptaginfo.f401PC = HexUtils.int2Bytes(logBaseEpcInfo.getPc());
                if (logBaseEpcInfo.getCrc() != 0) {
                    temptaginfo.CRC = HexUtils.int2Bytes(logBaseEpcInfo.getCrc());
                }
                temptaginfo.protocol = Reader.SL_TagProtocol.SL_TAG_PROTOCOL_GEN2;
                temptaginfo.Phase = logBaseEpcInfo.getPhase();
                temptaginfo.RSSI = (int) Math.round((log2(logBaseEpcInfo.getRssi()) * 6.0d) - 39.9d);
                if (logBaseEpcInfo.getTid() != null) {
                    if (!map.containsKey(logBaseEpcInfo.getTid())) {
                        temptaginfo.ReadCnt = 1;
                    } else {
                        Reader.TEMPTAGINFO temptaginfo2 = (Reader.TEMPTAGINFO) map.get(logBaseEpcInfo.getTid());
                        if (temptaginfo2 != null) {
                            temptaginfo2.ReadCnt++;
                            map.put(logBaseEpcInfo.getTid(), temptaginfo2);
                        }
                    }
                    map.put(logBaseEpcInfo.getTid(), temptaginfo);
                } else if (!map.containsKey(logBaseEpcInfo.getEpc())) {
                    temptaginfo.ReadCnt = 1;
                    map.put(logBaseEpcInfo.getEpc(), temptaginfo);
                } else {
                    Reader.TEMPTAGINFO temptaginfo3 = (Reader.TEMPTAGINFO) map.get(logBaseEpcInfo.getEpc());
                    if (temptaginfo3 != null) {
                        temptaginfo3.ReadCnt++;
                        map.put(logBaseEpcInfo.getEpc(), temptaginfo3);
                    }
                }
            }
            epcList.clear();
            arrayList = new ArrayList(map.values());
        }
        return arrayList;
    }

    public List<Reader.TAGINFO> formatExcludeData(int i, byte[] bArr) {
        List<Reader.TAGINFO> data = formatData(i);
        ArrayList arrayList = new ArrayList();
        for (Reader.TAGINFO taginfo : data) {
            if (!HexUtils.bytes2HexString(taginfo.EmbededData).equals(HexUtils.bytes2HexString(bArr))) {
                arrayList.add(taginfo);
            }
        }
        return arrayList;
    }

    public List<Reader.TAGINFO> tagInventoryRealTime() {
        ArrayList arrayList = new ArrayList();
        int i = type;
        if (i == 0) {
            int i2 = this.fastId.getFastId() != 0 ? 2 : 4;
            CusParamFilter cusParamFilter = this.filter;
            if (cusParamFilter != null && !cusParamFilter.isMatching()) {
                return formatExcludeData(i2, this.filter.getFilter().getbData());
            }
            return formatData(i2);
        }
        if (i == 1) {
            int[] iArr = new int[1];
            Reader.READER_ERR reader_errAsyncGetTagCount = reader.AsyncGetTagCount(iArr);
            if (reader_errAsyncGetTagCount != Reader.READER_ERR.MT_OK_ERR) {
                mErr = reader_errAsyncGetTagCount;
                return null;
            }
            for (int i3 = 0; i3 < iArr[0]; i3++) {
                com.uhf.api.cls.Reader reader2 = reader;
                reader2.getClass();
                Reader.TAGINFO taginfo = reader2.new TAGINFO();
                if (reader.AsyncGetNextTag(taginfo) == Reader.READER_ERR.MT_OK_ERR) {
                    arrayList.add(taginfo);
                }
            }
        } else {
            String strGetBufData = driver.GetBufData();
            logPrint("zeng-", "count = " + this.count + ", s:getBufData:" + strGetBufData);
            if (strGetBufData != null && !strGetBufData.equals("null")) {
                arrayList.add(getBuf(strGetBufData));
            }
        }
        return arrayList;
    }

    public Reader.TAGINFO getBuf(String str) {
        com.uhf.api.cls.Reader reader2 = new com.uhf.api.cls.Reader();
        reader2.getClass();
        Reader.TAGINFO taginfo = reader2.new TAGINFO();
        new HashMap();
        String strSubstring = str.substring(4);
        int i = 0;
        String[] strArr = {strSubstring.substring((Integer.parseInt(str.substring(0, 2), 16) / 8) * 4, strSubstring.length() - 6), strSubstring.substring(0, strSubstring.length() - 6), strSubstring.substring(strSubstring.length() - 6, strSubstring.length() - 2)};
        if (4 != strArr[2].length()) {
            strArr[2] = EnumG.MSG_TYPE_BIT_ERROR;
        } else {
            i = ((((Integer.parseInt(strArr[2].substring(0, 2), 16) - 256) + 1) * 256) + (Integer.parseInt(strArr[2].substring(2, 4), 16) - 256)) / 10;
        }
        taginfo.EpcId = Tools.HexString2Bytes(strArr[1]);
        taginfo.Epclen = (short) (strArr[1].length() / 4);
        taginfo.RSSI = Integer.valueOf(i).intValue();
        this.count++;
        return taginfo;
    }

    public boolean stopTagInventory() {
        int i = type;
        if (i == 0) {
            return asyncStopReading().value() == 0;
        }
        if (i != 1) {
            return asyncStopReading().value() == 0;
        }
        Reader.READER_ERR reader_errAsyncStopReading = reader.AsyncStopReading();
        if (reader_errAsyncStopReading == Reader.READER_ERR.MT_OK_ERR) {
            return true;
        }
        logPrint("stopTagInventory, AsyncStopReading result: " + reader_errAsyncStopReading.toString());
        return false;
    }

    public List<Reader.TAGINFO> tagInventoryByTimer(short s) throws InterruptedException {
        int i = type;
        if (i == 0) {
            MsgBaseInventoryEpc msgBaseInventoryEpc = new MsgBaseInventoryEpc();
            msgBaseInventoryEpc.setAntennaEnable(1L);
            msgBaseInventoryEpc.setInventoryMode(1);
            CusParamFilter cusParamFilter = this.filter;
            if (cusParamFilter != null && cusParamFilter.isMatching()) {
                msgBaseInventoryEpc.setFilter(this.filter.getFilter());
            }
            client.sendSynMsg(msgBaseInventoryEpc);
            logPrint("MsgBaseInventoryEpc", msgBaseInventoryEpc.getRtMsg());
            if (msgBaseInventoryEpc.getRtCode() == 0) {
                try {
                    Thread.sleep(s);
                    MsgBaseStop msgBaseStop = new MsgBaseStop();
                    client.sendSynMsg(msgBaseStop);
                    logPrint("MsgBaseStop", ((int) msgBaseStop.getRtCode()) + "");
                    if (this.filter != null && !this.filter.isMatching()) {
                        return formatExcludeData(4, this.filter.getFilter().getbData());
                    }
                    return formatData(4);
                } catch (InterruptedException e) {
                    e.printStackTrace();
                }
            }
            return null;
        }
        if (i == 1) {
            ArrayList arrayList = new ArrayList();
            int[] iArr = new int[1];
            Reader.READER_ERR reader_errTagInventory_Raw = reader.TagInventory_Raw(this.ants, 1, s, iArr);
            logPrint("tagInventoryByTimer, TagInventory_Raw er: " + reader_errTagInventory_Raw.toString() + "; tagcnt[0]=" + iArr[0]);
            if (reader_errTagInventory_Raw == Reader.READER_ERR.MT_OK_ERR) {
                for (int i2 = 0; i2 < iArr[0]; i2++) {
                    com.uhf.api.cls.Reader reader2 = reader;
                    reader2.getClass();
                    Reader.TAGINFO taginfo = reader2.new TAGINFO();
                    if (reader.GetNextTag(taginfo) != Reader.READER_ERR.MT_OK_ERR) {
                        return arrayList;
                    }
                    arrayList.add(taginfo);
                }
                return arrayList;
            }
            mErr = reader_errTagInventory_Raw;
            return null;
        }
        ArrayList arrayList2 = new ArrayList();
        com.uhf.api.cls.Reader reader3 = new com.uhf.api.cls.Reader();
        reader3.getClass();
        Reader.TAGINFO taginfo2 = reader3.new TAGINFO();
        String strTrim = driver.SingleRead(10).trim();
        if (!strTrim.equals("获取失败") && !strTrim.equals("null")) {
            logPrint("zeng-", "s2:" + strTrim);
            taginfo2.EpcId = Tools.HexString2Bytes(strTrim);
            taginfo2.Epclen = (short) taginfo2.EpcId.length;
            arrayList2.add(taginfo2);
        }
        return arrayList2;
    }

    public List<LogBase6bInfo> inventory6BTag(short s) throws InterruptedException {
        if (type == 0) {
            MsgBaseInventory6b msgBaseInventory6b = new MsgBaseInventory6b();
            msgBaseInventory6b.setAntennaEnable(1L);
            msgBaseInventory6b.setInventoryMode(1);
            client.sendSynMsg(msgBaseInventory6b);
            if (msgBaseInventory6b.getRtCode() == 0) {
                try {
                    Thread.sleep(s);
                    client.sendSynMsg(new MsgBaseStop());
                    return format6BData();
                } catch (InterruptedException e) {
                    e.printStackTrace();
                }
            }
        }
        return null;
    }

    public byte[] read6BUser(boolean z, byte[] bArr, int i, int i2) throws InterruptedException {
        if (type != 0) {
            return null;
        }
        MsgBaseInventory6b msgBaseInventory6b = new MsgBaseInventory6b();
        msgBaseInventory6b.setAntennaEnable(1L);
        msgBaseInventory6b.setInventoryMode(1);
        msgBaseInventory6b.setArea(2);
        Param6bReadUserdata param6bReadUserdata = new Param6bReadUserdata();
        param6bReadUserdata.setStart(i);
        param6bReadUserdata.setLen(i2);
        msgBaseInventory6b.setReadUserdata(param6bReadUserdata);
        if (z && bArr != null) {
            msgBaseInventory6b.setHexMatchTid(Tools.Bytes2HexString(bArr, bArr.length));
        }
        client.sendSynMsg(msgBaseInventory6b);
        if (msgBaseInventory6b.getRtCode() != 0) {
            return null;
        }
        try {
            Thread.sleep(20L);
            client.sendSynMsg(new MsgBaseStop());
            List<LogBase6bInfo> list = format6BData();
            if (list == null || list.size() <= 0) {
                return null;
            }
            return list.get(0).getbUser();
        } catch (Exception unused) {
            return null;
        }
    }

    public boolean write6BUser(byte[] bArr, int i, byte[] bArr2) {
        if (type == 0) {
            MsgBaseWrite6b msgBaseWrite6b = new MsgBaseWrite6b();
            msgBaseWrite6b.setAntennaEnable(1L);
            msgBaseWrite6b.setStart(i);
            msgBaseWrite6b.setbMatchTid(bArr);
            msgBaseWrite6b.setBwriteData(bArr2);
            client.sendSynMsg(msgBaseWrite6b);
            if (msgBaseWrite6b.getRtCode() == 0) {
                return true;
            }
        }
        return false;
    }

    public boolean lock6B(byte[] bArr, int i) {
        if (type == 0) {
            MsgBaseLock6b msgBaseLock6b = new MsgBaseLock6b();
            msgBaseLock6b.setAntennaEnable(1L);
            msgBaseLock6b.setbMatchTid(bArr);
            msgBaseLock6b.setLockIndex(i);
            client.sendSynMsg(msgBaseLock6b);
            if (msgBaseLock6b.getRtCode() == 0) {
                return true;
            }
        }
        return false;
    }

    public boolean lock6BQuery(byte[] bArr, int i) {
        if (type != 0) {
            return false;
        }
        MsgBaseLock6bGet msgBaseLock6bGet = new MsgBaseLock6bGet();
        msgBaseLock6bGet.setAntennaEnable(1L);
        msgBaseLock6bGet.setbMatchTid(bArr);
        msgBaseLock6bGet.setLockIndex(i);
        client.sendSynMsg(msgBaseLock6bGet);
        return msgBaseLock6bGet.getRtCode() == 0 && msgBaseLock6bGet.getLockState() == 0;
    }

    public List<LogBaseGbInfo> inventoryGBTag(boolean z, short s) throws InterruptedException {
        if (type == 0) {
            MsgBaseInventoryGb msgBaseInventoryGb = new MsgBaseInventoryGb();
            msgBaseInventoryGb.setAntennaEnable(1L);
            msgBaseInventoryGb.setInventoryMode(1);
            if (z) {
                ParamEpcReadTid paramEpcReadTid = new ParamEpcReadTid();
                paramEpcReadTid.setMode(0);
                paramEpcReadTid.setLen(6);
                msgBaseInventoryGb.setReadTid(paramEpcReadTid);
            }
            client.sendSynMsg(msgBaseInventoryGb);
            logPrint("inventoryGBTag", msgBaseInventoryGb.getRtMsg());
            if (msgBaseInventoryGb.getRtCode() == 0) {
                try {
                    Thread.sleep(s);
                    MsgBaseStop msgBaseStop = new MsgBaseStop();
                    client.sendSynMsg(msgBaseStop);
                    logPrint("inventoryGBTag", ((int) msgBaseStop.getRtCode()) + "");
                    if (this.filter != null) {
                        this.filter.isMatching();
                    }
                    return formatGBData(2);
                } catch (InterruptedException e) {
                    e.printStackTrace();
                }
            }
        }
        return null;
    }

    public List<LogBaseGJbInfo> inventoryGJBTag(boolean z, short s) throws InterruptedException {
        if (type == 0) {
            MsgBaseInventoryGJb msgBaseInventoryGJb = new MsgBaseInventoryGJb();
            msgBaseInventoryGJb.setAntennaEnable(1L);
            msgBaseInventoryGJb.setInventoryMode(1);
            if (z) {
                ParamEpcReadTid paramEpcReadTid = new ParamEpcReadTid();
                paramEpcReadTid.setMode(0);
                paramEpcReadTid.setLen(6);
                msgBaseInventoryGJb.setReadTid(paramEpcReadTid);
            }
            client.sendSynMsg(msgBaseInventoryGJb);
            logPrint("inventoryGBTag", msgBaseInventoryGJb.getRtMsg());
            if (msgBaseInventoryGJb.getRtCode() == 0) {
                try {
                    Thread.sleep(s);
                    MsgBaseStop msgBaseStop = new MsgBaseStop();
                    client.sendSynMsg(msgBaseStop);
                    logPrint("inventoryGBTag", ((int) msgBaseStop.getRtCode()) + "");
                    if (this.filter != null) {
                        this.filter.isMatching();
                    }
                    return formatGJBData(2);
                } catch (InterruptedException e) {
                    e.printStackTrace();
                }
            }
        }
        return null;
    }

    public byte[] readGJBUser(int i, int i2, byte[] bArr, int i3, int i4, byte[] bArr2) throws InterruptedException {
        MsgBaseInventoryGJb msgBaseInventoryGJb = new MsgBaseInventoryGJb();
        msgBaseInventoryGJb.setAntennaEnable(1L);
        msgBaseInventoryGJb.setInventoryMode(1);
        if (i > 0) {
            ParamEpcFilter paramEpcFilter = new ParamEpcFilter();
            paramEpcFilter.setArea(i - 1);
            paramEpcFilter.setBitStart(i2);
            if (bArr != null) {
                paramEpcFilter.setbData(bArr);
                paramEpcFilter.setBitLength(bArr.length * 2);
            }
            msgBaseInventoryGJb.setFilter(paramEpcFilter);
        }
        ParamEpcReadUserdata paramEpcReadUserdata = new ParamEpcReadUserdata();
        paramEpcReadUserdata.setStart(i3);
        paramEpcReadUserdata.setLen(i4);
        msgBaseInventoryGJb.setReadUserdata(paramEpcReadUserdata);
        if (bArr2 != null) {
            msgBaseInventoryGJb.setHexPassword(Tools.Bytes2HexString(bArr2, bArr2.length));
        }
        client.sendSynMsg(msgBaseInventoryGJb);
        if (msgBaseInventoryGJb.getRtCode() != 0) {
            return null;
        }
        try {
            Thread.sleep(20L);
            client.sendSynMsg(new MsgBaseStop());
            List<LogBaseGJbInfo> gJBData = formatGJBData(2);
            if (gJBData == null || gJBData.size() <= 0) {
                return null;
            }
            return gJBData.get(0).getbUser();
        } catch (Exception unused) {
            return null;
        }
    }

    public boolean writeGJB(int i, int i2, byte[] bArr, int i3, int i4, byte[] bArr2, byte[] bArr3) {
        MsgBaseWriteGJb msgBaseWriteGJb = new MsgBaseWriteGJb();
        msgBaseWriteGJb.setAntennaEnable(1L);
        msgBaseWriteGJb.setArea(i3);
        msgBaseWriteGJb.setStart(i4);
        if (i > 0) {
            ParamEpcFilter paramEpcFilter = new ParamEpcFilter();
            paramEpcFilter.setArea(i - 1);
            paramEpcFilter.setbData(bArr);
            paramEpcFilter.setBitLength(bArr.length * 2);
            paramEpcFilter.setBitStart(i2);
            msgBaseWriteGJb.setFilter(paramEpcFilter);
        }
        if (bArr3 != null) {
            msgBaseWriteGJb.setHexPassword(Tools.Bytes2HexString(bArr3, bArr3.length));
        }
        if (bArr2 != null) {
            msgBaseWriteGJb.setBwriteData(bArr2);
        }
        client.sendSynMsg(msgBaseWriteGJb);
        return msgBaseWriteGJb.getRtCode() == 0;
    }

    public boolean lockGJB(int i, int i2, byte[] bArr, int i3, int i4, byte[] bArr2) {
        MsgBaseLockGJb msgBaseLockGJb = new MsgBaseLockGJb();
        msgBaseLockGJb.setAntennaEnable(1L);
        if (i > 0) {
            ParamEpcFilter paramEpcFilter = new ParamEpcFilter();
            paramEpcFilter.setArea(i - 1);
            paramEpcFilter.setbData(bArr);
            paramEpcFilter.setBitLength(bArr.length * 2);
            paramEpcFilter.setBitStart(i2);
            msgBaseLockGJb.setFilter(paramEpcFilter);
        }
        msgBaseLockGJb.setArea(i3);
        msgBaseLockGJb.setLockParam(i4);
        if (bArr2 == null) {
            return false;
        }
        msgBaseLockGJb.setHexPassword(Tools.Bytes2HexString(bArr2, bArr2.length));
        return false;
    }

    public List<Reader.TAGINFO> tagEpcTidInventoryByTimer(short s) throws InterruptedException {
        int i = type;
        if (i == 0) {
            MsgBaseInventoryEpc msgBaseInventoryEpc = new MsgBaseInventoryEpc();
            msgBaseInventoryEpc.setAntennaEnable(1L);
            msgBaseInventoryEpc.setInventoryMode(1);
            msgBaseInventoryEpc.setReadTid(new ParamEpcReadTid(0, 6));
            CusParamFilter cusParamFilter = this.filter;
            if (cusParamFilter != null && cusParamFilter.isMatching()) {
                msgBaseInventoryEpc.setFilter(this.filter.getFilter());
            }
            client.sendSynMsg(msgBaseInventoryEpc);
            logPrint("MsgBaseInventoryEpc", msgBaseInventoryEpc.getRtMsg());
            if (msgBaseInventoryEpc.getRtCode() == 0) {
                try {
                    Thread.sleep(s);
                    MsgBaseStop msgBaseStop = new MsgBaseStop();
                    client.sendSynMsg(msgBaseStop);
                    logPrint("tagInventoryByTimer", ((int) msgBaseStop.getRtCode()) + "");
                    if (this.filter != null && !this.filter.isMatching()) {
                        return formatExcludeData(2, this.filter.getFilter().getbData());
                    }
                    return formatData(2);
                } catch (InterruptedException e) {
                    e.printStackTrace();
                }
            }
            return null;
        }
        if (i != 1) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        com.uhf.api.cls.Reader reader2 = reader;
        reader2.getClass();
        Reader.EmbededData_ST embededData_ST = reader2.new EmbededData_ST();
        embededData_ST.accesspwd = null;
        embededData_ST.bank = 2;
        embededData_ST.startaddr = 0;
        embededData_ST.bytecnt = 12;
        reader.ParamSet(Reader.Mtr_Param.MTR_PARAM_TAG_EMBEDEDDATA, embededData_ST);
        int[] iArr = new int[1];
        Reader.READER_ERR reader_errTagInventory_Raw = reader.TagInventory_Raw(this.ants, 1, s, iArr);
        if (reader_errTagInventory_Raw != Reader.READER_ERR.MT_OK_ERR) {
            mErr = reader_errTagInventory_Raw;
            return null;
        }
        for (int i2 = 0; i2 < iArr[0]; i2++) {
            com.uhf.api.cls.Reader reader3 = reader;
            reader3.getClass();
            Reader.TAGINFO taginfo = reader3.new TAGINFO();
            if (reader.GetNextTag(taginfo) != Reader.READER_ERR.MT_OK_ERR) {
                break;
            }
            arrayList.add(taginfo);
        }
        return arrayList;
    }

    public List<Reader.TAGINFO> tagEpcOtherInventoryByTimer(short s, int i, int i2, int i3, byte[] bArr) throws InterruptedException {
        int i4 = type;
        if (i4 != 0) {
            if (i4 != 1) {
                return null;
            }
            ArrayList arrayList = new ArrayList();
            com.uhf.api.cls.Reader reader2 = reader;
            reader2.getClass();
            Reader.EmbededData_ST embededData_ST = reader2.new EmbededData_ST();
            embededData_ST.bank = i;
            embededData_ST.startaddr = i2;
            embededData_ST.bytecnt = i3;
            embededData_ST.accesspwd = bArr;
            reader.ParamSet(Reader.Mtr_Param.MTR_PARAM_TAG_EMBEDEDDATA, embededData_ST);
            int[] iArr = new int[1];
            Reader.READER_ERR reader_errTagInventory_Raw = reader.TagInventory_Raw(this.ants, 1, s, iArr);
            if (reader_errTagInventory_Raw != Reader.READER_ERR.MT_OK_ERR) {
                mErr = reader_errTagInventory_Raw;
                return null;
            }
            for (int i5 = 0; i5 < iArr[0]; i5++) {
                com.uhf.api.cls.Reader reader3 = reader;
                reader3.getClass();
                Reader.TAGINFO taginfo = reader3.new TAGINFO();
                if (reader.GetNextTag(taginfo) != Reader.READER_ERR.MT_OK_ERR) {
                    break;
                }
                arrayList.add(taginfo);
            }
            return arrayList;
        }
        MsgBaseInventoryEpc msgBaseInventoryEpc = new MsgBaseInventoryEpc();
        msgBaseInventoryEpc.setAntennaEnable(1L);
        msgBaseInventoryEpc.setInventoryMode(1);
        if (i == 0) {
            msgBaseInventoryEpc.setReadReserved(new ParamEpcReadReserved(i2, i3));
        } else if (i == 1) {
            msgBaseInventoryEpc.setReadEpc(new ParamEpcReadEpc(i2 + 2, i3));
        } else if (i == 2) {
            msgBaseInventoryEpc.setReadTid(new ParamEpcReadTid(1, i3));
        } else if (i == 3) {
            msgBaseInventoryEpc.setReadUserdata(new ParamEpcReadUserdata(i2, i3));
        }
        msgBaseInventoryEpc.setHexPassword(HexUtils.bytes2HexString(bArr));
        CusParamFilter cusParamFilter = this.filter;
        if (cusParamFilter != null && cusParamFilter.isMatching()) {
            msgBaseInventoryEpc.setFilter(this.filter.getFilter());
        }
        if (this.fastId.getFastId() != 0) {
            msgBaseInventoryEpc.setParamFastId(this.fastId);
        }
        client.sendSynMsg(msgBaseInventoryEpc);
        logPrint("MsgBaseInventoryEpc", msgBaseInventoryEpc.getRtMsg());
        if (msgBaseInventoryEpc.getRtCode() == 0) {
            try {
                Thread.sleep(s);
                MsgBaseStop msgBaseStop = new MsgBaseStop();
                client.sendSynMsg(msgBaseStop);
                logPrint("tagEpcOtherInventory", ((int) msgBaseStop.getRtCode()) + "");
                if (this.filter != null && !this.filter.isMatching()) {
                    return formatExcludeData(i, this.filter.getFilter().getbData());
                }
                return formatData(i);
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
        }
        return null;
    }

    public boolean setEMBEDEDATA(int i, int i2, int i3, byte[] bArr) {
        if (type == 1) {
            this.isEmb = true;
            this.Emboption = 128;
            this.Emboption <<= 8;
            com.uhf.api.cls.Reader reader2 = reader;
            reader2.getClass();
            Reader.EmbededData_ST embededData_ST = reader2.new EmbededData_ST();
            embededData_ST.bank = i;
            embededData_ST.startaddr = i2;
            embededData_ST.bytecnt = i3;
            embededData_ST.accesspwd = bArr;
            if (reader.ParamSet(Reader.Mtr_Param.MTR_PARAM_TAG_EMBEDEDDATA, embededData_ST) == Reader.READER_ERR.MT_OK_ERR) {
                return true;
            }
        }
        return false;
    }

    public boolean cancelEMBEDEDATA() {
        if (type != 1 || reader.ParamSet(Reader.Mtr_Param.MTR_PARAM_TAG_EMBEDEDDATA, null) != Reader.READER_ERR.MT_OK_ERR) {
            return false;
        }
        this.isEmb = false;
        return true;
    }

    public Reader.READER_ERR getTagData(int i, int i2, int i3, byte[] bArr, byte[] bArr2, short s) throws InterruptedException {
        int i4 = type;
        if (i4 != 0) {
            if (i4 == 1) {
                Reader.READER_ERR reader_errParamSet = reader.ParamSet(Reader.Mtr_Param.MTR_PARAM_TAG_FILTER, null);
                if (reader_errParamSet == Reader.READER_ERR.MT_OK_ERR) {
                    int i5 = 3;
                    while (true) {
                        reader_errParamSet = reader.GetTagData(1, (char) i, i2, i3, bArr, bArr2, s);
                        int i6 = i5 - 1;
                        if (i6 < 1 || reader_errParamSet == Reader.READER_ERR.MT_OK_ERR) {
                            break;
                        }
                        i5 = i6;
                    }
                    if (reader_errParamSet != Reader.READER_ERR.MT_OK_ERR) {
                        logPrint("getTagData, GetTagData result: " + reader_errParamSet.toString());
                    }
                } else {
                    logPrint("getTagData, ParamSet MTR_PARAM_TAG_FILTER result: " + reader_errParamSet.toString());
                }
                return reader_errParamSet;
            }
            String strRead_Data_Tag = driver.Read_Data_Tag(Tools.Bytes2HexString(bArr2, bArr2.length), 0, 0, 0, "", i, i2, i3);
            if (strRead_Data_Tag != null) {
                Tools.HexString2Bytes(strRead_Data_Tag);
                logPrint("zeng-", "status:" + strRead_Data_Tag);
                return Reader.READER_ERR.MT_OK_ERR;
            }
            return Reader.READER_ERR.MT_CMD_FAILED_ERR;
        }
        MsgBaseInventoryEpc msgBaseInventoryEpc = new MsgBaseInventoryEpc();
        msgBaseInventoryEpc.setAntennaEnable(1L);
        msgBaseInventoryEpc.setInventoryMode(1);
        if (i == 0) {
            msgBaseInventoryEpc.setReadReserved(new ParamEpcReadReserved(i2, i3));
        } else if (i == 1) {
            msgBaseInventoryEpc.setReadEpc(new ParamEpcReadEpc(i2, i3));
        } else if (i == 2) {
            msgBaseInventoryEpc.setReadTid(new ParamEpcReadTid(1, i3));
        } else if (i == 3) {
            msgBaseInventoryEpc.setReadUserdata(new ParamEpcReadUserdata(i2, i3));
        }
        msgBaseInventoryEpc.setHexPassword(HexUtils.bytes2HexString(bArr2));
        if (this.fastId.getFastId() != 0) {
            msgBaseInventoryEpc.setParamFastId(this.fastId);
        }
        client.sendSynMsg(msgBaseInventoryEpc);
        logPrint("MsgBaseInventoryEpc", msgBaseInventoryEpc.getRtMsg());
        if (msgBaseInventoryEpc.getRtCode() == 0) {
            try {
                Thread.sleep(s);
                MsgBaseStop msgBaseStop = new MsgBaseStop();
                client.sendSynMsg(msgBaseStop);
                logPrint("tagEpcOtherInventory", ((int) msgBaseStop.getRtCode()) + "");
                List<Reader.TAGINFO> data = formatData(i);
                if (data.size() > 0) {
                    System.arraycopy(data.get(0).EmbededData, 0, bArr, 0, data.get(0).EmbededData.length);
                    return Reader.READER_ERR.MT_OK_ERR;
                }
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
        }
        return Reader.READER_ERR.MT_CMD_FAILED_ERR;
    }

    public byte[] getTagDataByFilter(int i, int i2, int i3, byte[] bArr, short s, byte[] bArr2, int i4, int i5, boolean z) throws InterruptedException {
        List<Reader.TAGINFO> excludeData;
        int i6 = type;
        if (i6 == 0) {
            MsgBaseInventoryEpc msgBaseInventoryEpc = new MsgBaseInventoryEpc();
            msgBaseInventoryEpc.setAntennaEnable(1L);
            msgBaseInventoryEpc.setInventoryMode(1);
            if (i == 0) {
                msgBaseInventoryEpc.setReadReserved(new ParamEpcReadReserved(i2, i3));
            } else if (i == 1) {
                msgBaseInventoryEpc.setReadEpc(new ParamEpcReadEpc(i2, i3));
            } else if (i == 2) {
                msgBaseInventoryEpc.setReadTid(new ParamEpcReadTid(1, i3));
            } else if (i == 3) {
                msgBaseInventoryEpc.setReadUserdata(new ParamEpcReadUserdata(i2, i3));
            }
            msgBaseInventoryEpc.setHexPassword(HexUtils.bytes2HexString(bArr));
            if (z) {
                ParamEpcFilter paramEpcFilter = new ParamEpcFilter();
                paramEpcFilter.setArea(i4);
                paramEpcFilter.setBitStart(i5 * 16);
                paramEpcFilter.setbData(bArr2);
                paramEpcFilter.setBitLength(bArr2.length * 8);
                msgBaseInventoryEpc.setFilter(paramEpcFilter);
            }
            if (this.fastId.getFastId() != 0) {
                msgBaseInventoryEpc.setParamFastId(this.fastId);
            }
            client.sendSynMsg(msgBaseInventoryEpc);
            logPrint("MsgBaseInventoryEpc", msgBaseInventoryEpc.getRtMsg());
            if (msgBaseInventoryEpc.getRtCode() == 0) {
                try {
                    Thread.sleep(s);
                    MsgBaseStop msgBaseStop = new MsgBaseStop();
                    client.sendSynMsg(msgBaseStop);
                    logPrint("tagEpcOtherInventory", ((int) msgBaseStop.getRtCode()) + "");
                    if (z) {
                        excludeData = formatData(i);
                    } else {
                        excludeData = formatExcludeData(i, bArr2);
                    }
                    if (excludeData.size() > 0) {
                        return excludeData.get(0).EmbededData;
                    }
                } catch (InterruptedException e) {
                    e.printStackTrace();
                }
            }
            return null;
        }
        if (i6 == 1) {
            com.uhf.api.cls.Reader reader2 = reader;
            reader2.getClass();
            Reader.TagFilter_ST tagFilter_ST = reader2.new TagFilter_ST();
            tagFilter_ST.fdata = bArr2;
            tagFilter_ST.flen = bArr2.length * 8;
            if (z) {
                tagFilter_ST.isInvert = 0;
            } else {
                tagFilter_ST.isInvert = 1;
            }
            tagFilter_ST.bank = i4;
            tagFilter_ST.startaddr = i5 * 16;
            byte[] bArr3 = new byte[i3 * 2];
            Reader.READER_ERR reader_errParamSet = reader.ParamSet(Reader.Mtr_Param.MTR_PARAM_TAG_FILTER, tagFilter_ST);
            if (reader_errParamSet == Reader.READER_ERR.MT_OK_ERR) {
                Reader.READER_ERR reader_errGetTagData = reader.GetTagData(1, (char) i, i2, i3, bArr3, bArr, s);
                if (reader_errGetTagData == Reader.READER_ERR.MT_OK_ERR) {
                    return bArr3;
                }
                logPrint("getTagDataByFilter, GetTagData result: " + reader_errGetTagData.toString());
                return null;
            }
            logPrint("getTagDataByFilter, ParamSet MTR_PARAM_TAG_FILTER result: " + reader_errParamSet.toString());
            return null;
        }
        String strRead_Data_Tag = driver.Read_Data_Tag(Tools.Bytes2HexString(bArr, bArr.length), i4, i5 * 16, Tools.Bytes2HexString(bArr2, bArr2.length).length(), Tools.Bytes2HexString(bArr2, bArr2.length), i, i2, i3);
        logPrint("zeng-", "fbnk:" + i4);
        logPrint("zeng-", "fstartaddr:" + i5);
        logPrint("zeng-", "Tools.Bytes2HexString(fdata, fdata.length).length():" + Tools.Bytes2HexString(bArr2, bArr2.length).length());
        logPrint("zeng-", "Tools.Bytes2HexString(fdata, fdata.length):" + Tools.Bytes2HexString(bArr2, bArr2.length));
        logPrint("zeng-", "mbank:" + i);
        logPrint("zeng-", "len:" + i3);
        logPrint("zeng-getTagDataByFilter", "status:" + strRead_Data_Tag);
        if (strRead_Data_Tag != null) {
            return Tools.HexString2Bytes(strRead_Data_Tag);
        }
        return null;
    }

    public Reader.READER_ERR writeTagData(char c, int i, byte[] bArr, int i2, byte[] bArr2, short s) {
        int i3 = type;
        if (i3 == 0) {
            MsgBaseWriteEpc msgBaseWriteEpc = new MsgBaseWriteEpc();
            msgBaseWriteEpc.setAntennaEnable(1L);
            msgBaseWriteEpc.setArea(c);
            msgBaseWriteEpc.setStart(i);
            msgBaseWriteEpc.setHexWriteData(PcUtils.padRight(HexUtils.bytes2HexString(bArr), PcUtils.getValueLen(i2) * 4, '0'));
            msgBaseWriteEpc.setHexPassword(HexUtils.bytes2HexString(bArr2));
            client.sendSynMsg(msgBaseWriteEpc);
            logPrint("MsgBaseWriteEpc", msgBaseWriteEpc.getRtMsg());
            return msgBaseWriteEpc.getRtCode() == 0 ? Reader.READER_ERR.MT_OK_ERR : Reader.READER_ERR.MT_CMD_FAILED_ERR;
        }
        if (i3 != 1) {
            return driver.Write_Data_Tag(Tools.Bytes2HexString(bArr2, bArr2.length), 0, 0, 0, "", c, i, Tools.Bytes2HexString(bArr, bArr.length).length() / 4, Tools.Bytes2HexString(bArr, bArr.length)) == 0 ? Reader.READER_ERR.MT_OK_ERR : Reader.READER_ERR.MT_CMD_FAILED_ERR;
        }
        Reader.READER_ERR reader_errParamSet = reader.ParamSet(Reader.Mtr_Param.MTR_PARAM_TAG_FILTER, null);
        if (reader_errParamSet == Reader.READER_ERR.MT_OK_ERR) {
            int i4 = 3;
            do {
                reader_errParamSet = reader.WriteTagData(1, c, i, bArr, i2, bArr2, s);
                i4--;
                if (i4 < 1) {
                    break;
                }
            } while (reader_errParamSet != Reader.READER_ERR.MT_OK_ERR);
            if (reader_errParamSet != Reader.READER_ERR.MT_OK_ERR) {
                logPrint("writeTagData, WriteTagData result: " + reader_errParamSet.toString());
            }
        } else {
            logPrint("writeTagData, ParamSet MTR_PARAM_TAG_FILTER result: " + reader_errParamSet.toString());
        }
        return reader_errParamSet;
    }

    public Reader.READER_ERR writeTagDataByFilter(char c, int i, byte[] bArr, int i2, byte[] bArr2, short s, byte[] bArr3, int i3, int i4, boolean z) {
        int i5 = type;
        if (i5 == 0) {
            MsgBaseWriteEpc msgBaseWriteEpc = new MsgBaseWriteEpc();
            msgBaseWriteEpc.setAntennaEnable(1L);
            msgBaseWriteEpc.setArea(c);
            msgBaseWriteEpc.setStart(i);
            String strBytes2HexString = HexUtils.bytes2HexString(bArr);
            int valueLen = PcUtils.getValueLen(i2) * 4;
            msgBaseWriteEpc.setHexWriteData(PcUtils.padRight(strBytes2HexString, valueLen, '0'));
            msgBaseWriteEpc.setHexWriteData(PcUtils.padRight(strBytes2HexString, valueLen, '0'));
            msgBaseWriteEpc.setHexPassword(HexUtils.bytes2HexString(bArr2));
            if (z) {
                ParamEpcFilter paramEpcFilter = new ParamEpcFilter();
                paramEpcFilter.setArea(i3);
                paramEpcFilter.setBitStart(i4 * 16);
                paramEpcFilter.setbData(bArr3);
                paramEpcFilter.setBitLength(bArr3.length * 8);
                msgBaseWriteEpc.setFilter(paramEpcFilter);
            }
            client.sendSynMsg(msgBaseWriteEpc);
            logPrint("MsgBaseWriteEpc", msgBaseWriteEpc.getRtMsg());
            return msgBaseWriteEpc.getRtCode() == 0 ? Reader.READER_ERR.MT_OK_ERR : Reader.READER_ERR.MT_CMD_FAILED_ERR;
        }
        if (i5 != 1) {
            return driver.Write_Data_Tag(Tools.Bytes2HexString(bArr2, bArr2.length), i3, i4 * 16, Tools.Bytes2HexString(bArr3, bArr3.length).length() / 4, Tools.Bytes2HexString(bArr3, bArr3.length), c, i, Tools.Bytes2HexString(bArr, bArr.length).length() / 4, Tools.Bytes2HexString(bArr, bArr.length)) == 0 ? Reader.READER_ERR.MT_OK_ERR : Reader.READER_ERR.MT_CMD_FAILED_ERR;
        }
        com.uhf.api.cls.Reader reader2 = reader;
        reader2.getClass();
        Reader.TagFilter_ST tagFilter_ST = reader2.new TagFilter_ST();
        tagFilter_ST.fdata = bArr3;
        tagFilter_ST.flen = bArr3.length * 8;
        if (z) {
            tagFilter_ST.isInvert = 0;
        } else {
            tagFilter_ST.isInvert = 1;
        }
        tagFilter_ST.bank = i3;
        tagFilter_ST.startaddr = i4 * 16;
        Reader.READER_ERR reader_errParamSet = reader.ParamSet(Reader.Mtr_Param.MTR_PARAM_TAG_FILTER, tagFilter_ST);
        if (reader_errParamSet == Reader.READER_ERR.MT_OK_ERR) {
            int i6 = 3;
            do {
                reader_errParamSet = reader.WriteTagData(1, c, i, bArr, i2, bArr2, s);
                i6--;
                if (i6 < 1) {
                    break;
                }
            } while (reader_errParamSet != Reader.READER_ERR.MT_OK_ERR);
            if (reader_errParamSet != Reader.READER_ERR.MT_OK_ERR) {
                logPrint("writeTagDataByFilter, WriteTagData result: " + reader_errParamSet.toString());
            }
        } else {
            logPrint("writeTagDataByFilter, ParamSet MTR_PARAM_TAG_FILTER result: " + reader_errParamSet.toString());
        }
        return reader_errParamSet;
    }

    public Reader.READER_ERR writeTagEPC(byte[] bArr, byte[] bArr2, short s) {
        Reader.READER_ERR reader_errWriteTagEpcEx;
        int i = type;
        if (i == 0) {
            MsgBaseWriteEpc msgBaseWriteEpc = new MsgBaseWriteEpc();
            msgBaseWriteEpc.setAntennaEnable(1L);
            msgBaseWriteEpc.setArea(1);
            msgBaseWriteEpc.setStart(1);
            String strBytes2HexString = HexUtils.bytes2HexString(bArr);
            int valueLen = PcUtils.getValueLen(strBytes2HexString);
            msgBaseWriteEpc.setHexWriteData(PcUtils.getPc(valueLen) + PcUtils.padRight(strBytes2HexString, valueLen * 4, '0'));
            msgBaseWriteEpc.setHexPassword(HexUtils.bytes2HexString(bArr2));
            client.sendSynMsg(msgBaseWriteEpc);
            logPrint("MsgBaseWriteEpc", msgBaseWriteEpc.getRtMsg());
            return msgBaseWriteEpc.getRtCode() == 0 ? Reader.READER_ERR.MT_OK_ERR : Reader.READER_ERR.MT_CMD_FAILED_ERR;
        }
        if (i == 1) {
            reader.ParamSet(Reader.Mtr_Param.MTR_PARAM_TAG_FILTER, null);
            int i2 = 3;
            do {
                reader_errWriteTagEpcEx = reader.WriteTagEpcEx(1, bArr, bArr.length, bArr2, s);
                if (i2 < 1) {
                    break;
                }
                i2--;
            } while (reader_errWriteTagEpcEx != Reader.READER_ERR.MT_OK_ERR);
            if (reader_errWriteTagEpcEx != Reader.READER_ERR.MT_OK_ERR) {
                logPrint("writeTagEPC, WriteTagEpcEx result: " + reader_errWriteTagEpcEx.toString());
            }
            return reader_errWriteTagEpcEx;
        }
        return Reader.READER_ERR.MT_CMD_FAILED_ERR;
    }

    public Reader.READER_ERR writeTagEPCByFilter(byte[] bArr, byte[] bArr2, short s, byte[] bArr3, int i, int i2, boolean z) {
        Reader.READER_ERR reader_errWriteTagEpcEx;
        int i3 = type;
        if (i3 == 0) {
            MsgBaseWriteEpc msgBaseWriteEpc = new MsgBaseWriteEpc();
            msgBaseWriteEpc.setAntennaEnable(1L);
            msgBaseWriteEpc.setArea(1);
            msgBaseWriteEpc.setStart(1);
            String strBytes2HexString = HexUtils.bytes2HexString(bArr);
            int valueLen = PcUtils.getValueLen(strBytes2HexString);
            msgBaseWriteEpc.setHexWriteData(PcUtils.getPc(valueLen) + PcUtils.padRight(strBytes2HexString, valueLen * 4, '0'));
            msgBaseWriteEpc.setHexPassword(HexUtils.bytes2HexString(bArr2));
            if (z) {
                ParamEpcFilter paramEpcFilter = new ParamEpcFilter();
                paramEpcFilter.setArea(i);
                paramEpcFilter.setBitStart(i2 * 16);
                paramEpcFilter.setbData(bArr3);
                paramEpcFilter.setBitLength(bArr3.length * 8);
                msgBaseWriteEpc.setFilter(paramEpcFilter);
            }
            client.sendSynMsg(msgBaseWriteEpc);
            logPrint("MsgBaseWriteEpc", msgBaseWriteEpc.getRtMsg());
            return msgBaseWriteEpc.getRtCode() == 0 ? Reader.READER_ERR.MT_OK_ERR : Reader.READER_ERR.MT_CMD_FAILED_ERR;
        }
        if (i3 == 1) {
            com.uhf.api.cls.Reader reader2 = reader;
            reader2.getClass();
            Reader.TagFilter_ST tagFilter_ST = reader2.new TagFilter_ST();
            tagFilter_ST.fdata = bArr3;
            tagFilter_ST.flen = bArr3.length * 8;
            if (z) {
                tagFilter_ST.isInvert = 0;
            } else {
                tagFilter_ST.isInvert = 1;
            }
            tagFilter_ST.bank = i;
            tagFilter_ST.startaddr = i2 * 16;
            Reader.READER_ERR reader_errParamSet = reader.ParamSet(Reader.Mtr_Param.MTR_PARAM_TAG_FILTER, tagFilter_ST);
            if (reader_errParamSet == Reader.READER_ERR.MT_OK_ERR) {
                int i4 = 3;
                do {
                    reader_errWriteTagEpcEx = reader.WriteTagEpcEx(1, bArr, bArr.length, bArr2, s);
                    if (i4 < 1) {
                        break;
                    }
                    i4--;
                } while (reader_errWriteTagEpcEx != Reader.READER_ERR.MT_OK_ERR);
                if (reader_errWriteTagEpcEx != Reader.READER_ERR.MT_OK_ERR) {
                    logPrint("writeTagEPCByFilter, WriteTagEpcEx result: " + reader_errWriteTagEpcEx.toString());
                }
                return reader_errWriteTagEpcEx;
            }
            logPrint("writeTagEPCByFilter, ParamSet MTR_PARAM_TAG_FILTER result: " + reader_errParamSet.toString());
            return reader_errParamSet;
        }
        return Reader.READER_ERR.MT_CMD_FAILED_ERR;
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x008c  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0090  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public com.uhf.api.cls.Reader.READER_ERR lockTag(com.uhf.api.cls.Reader.Lock_Obj r10, com.uhf.api.cls.Reader.Lock_Type r11, byte[] r12, short r13) {
        /*
            Method dump skipped, instructions count: 282
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.handheld.uhfr.UHFRManager.lockTag(com.uhf.api.cls.Reader$Lock_Obj, com.uhf.api.cls.Reader$Lock_Type, byte[], short):com.uhf.api.cls.Reader$READER_ERR");
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x00ad  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00b1  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public com.uhf.api.cls.Reader.READER_ERR lockTagByFilter(com.uhf.api.cls.Reader.Lock_Obj r14, com.uhf.api.cls.Reader.Lock_Type r15, byte[] r16, short r17, byte[] r18, int r19, int r20, boolean r21) {
        /*
            Method dump skipped, instructions count: 394
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.handheld.uhfr.UHFRManager.lockTagByFilter(com.uhf.api.cls.Reader$Lock_Obj, com.uhf.api.cls.Reader$Lock_Type, byte[], short, byte[], int, int, boolean):com.uhf.api.cls.Reader$READER_ERR");
    }

    public Reader.READER_ERR killTag(byte[] bArr, short s) {
        int i = type;
        if (i != 0) {
            if (i != 1) {
                return driver.Kill_Tag(Tools.Bytes2HexString(bArr, bArr.length), 0, 0, 0, "") == 0 ? Reader.READER_ERR.MT_OK_ERR : Reader.READER_ERR.MT_CMD_FAILED_ERR;
            }
            Reader.READER_ERR reader_errParamSet = reader.ParamSet(Reader.Mtr_Param.MTR_PARAM_TAG_FILTER, null);
            if (reader_errParamSet == Reader.READER_ERR.MT_OK_ERR) {
                reader_errParamSet = reader.KillTag(1, bArr, s);
            }
            if (reader_errParamSet != Reader.READER_ERR.MT_OK_ERR) {
                logPrint("killTag, ParamSet MTR_PARAM_TAG_FILTER result: " + reader_errParamSet.toString());
            }
            return reader_errParamSet;
        }
        MsgBaseWriteEpc msgBaseWriteEpc = new MsgBaseWriteEpc();
        msgBaseWriteEpc.setAntennaEnable(1L);
        msgBaseWriteEpc.setArea(0);
        msgBaseWriteEpc.setStart(0);
        msgBaseWriteEpc.setHexWriteData(HexUtils.bytes2HexString(bArr));
        client.sendSynMsg(msgBaseWriteEpc);
        logPrint("MsgBaseWritePas", msgBaseWriteEpc.getRtMsg());
        if (msgBaseWriteEpc.getRtCode() == 0) {
            MsgBaseDestroyEpc msgBaseDestroyEpc = new MsgBaseDestroyEpc();
            msgBaseDestroyEpc.setAntennaEnable(1L);
            msgBaseDestroyEpc.setHexPassword(HexUtils.bytes2HexString(bArr));
            client.sendSynMsg(msgBaseDestroyEpc);
            logPrint("MsgBaseDestroyEpc", msgBaseDestroyEpc.getRtMsg());
            return msgBaseDestroyEpc.getRtCode() == 0 ? Reader.READER_ERR.MT_OK_ERR : Reader.READER_ERR.MT_CMD_FAILED_ERR;
        }
        return Reader.READER_ERR.MT_CMD_FAILED_ERR;
    }

    public Reader.READER_ERR killTagByFilter(byte[] bArr, short s, byte[] bArr2, int i, int i2, boolean z) {
        int i3 = type;
        if (i3 != 0) {
            if (i3 == 1) {
                com.uhf.api.cls.Reader reader2 = reader;
                reader2.getClass();
                Reader.TagFilter_ST tagFilter_ST = reader2.new TagFilter_ST();
                tagFilter_ST.fdata = bArr2;
                tagFilter_ST.flen = bArr2.length * 8;
                if (z) {
                    tagFilter_ST.isInvert = 0;
                } else {
                    tagFilter_ST.isInvert = 1;
                }
                tagFilter_ST.bank = i;
                tagFilter_ST.startaddr = i2 * 16;
                Reader.READER_ERR reader_errParamSet = reader.ParamSet(Reader.Mtr_Param.MTR_PARAM_TAG_FILTER, tagFilter_ST);
                if (reader_errParamSet == Reader.READER_ERR.MT_OK_ERR) {
                    reader_errParamSet = reader.KillTag(1, bArr, s);
                }
                if (reader_errParamSet != Reader.READER_ERR.MT_OK_ERR) {
                    logPrint("killTagByFilter, ParamSet MTR_PARAM_TAG_FILTER result: " + reader_errParamSet.toString());
                }
                return reader_errParamSet;
            }
            String strBytes2HexString = Tools.Bytes2HexString(bArr2, bArr2.length);
            return driver.Kill_Tag(Tools.Bytes2HexString(bArr, bArr.length), i, i2, strBytes2HexString.length() / 4, strBytes2HexString) == 0 ? Reader.READER_ERR.MT_OK_ERR : Reader.READER_ERR.MT_CMD_FAILED_ERR;
        }
        MsgBaseWriteEpc msgBaseWriteEpc = new MsgBaseWriteEpc();
        msgBaseWriteEpc.setAntennaEnable(1L);
        msgBaseWriteEpc.setArea(0);
        msgBaseWriteEpc.setStart(0);
        msgBaseWriteEpc.setHexWriteData(HexUtils.bytes2HexString(bArr));
        if (z) {
            ParamEpcFilter paramEpcFilter = new ParamEpcFilter();
            paramEpcFilter.setArea(i);
            paramEpcFilter.setBitStart(i2 * 16);
            paramEpcFilter.setbData(bArr2);
            paramEpcFilter.setBitLength(bArr2.length * 8);
            msgBaseWriteEpc.setFilter(paramEpcFilter);
        }
        client.sendSynMsg(msgBaseWriteEpc);
        logPrint("MsgBaseWritePas", msgBaseWriteEpc.getRtMsg());
        if (msgBaseWriteEpc.getRtCode() == 0) {
            MsgBaseDestroyEpc msgBaseDestroyEpc = new MsgBaseDestroyEpc();
            msgBaseDestroyEpc.setAntennaEnable(1L);
            msgBaseDestroyEpc.setHexPassword(HexUtils.bytes2HexString(bArr));
            if (z) {
                ParamEpcFilter paramEpcFilter2 = new ParamEpcFilter();
                paramEpcFilter2.setArea(i);
                paramEpcFilter2.setBitStart(i2 * 16);
                paramEpcFilter2.setbData(bArr2);
                paramEpcFilter2.setBitLength(bArr2.length * 8);
                msgBaseDestroyEpc.setFilter(paramEpcFilter2);
            }
            client.sendSynMsg(msgBaseDestroyEpc);
            logPrint("MsgBaseDestroyEpc", msgBaseDestroyEpc.getRtMsg());
            return msgBaseDestroyEpc.getRtCode() == 0 ? Reader.READER_ERR.MT_OK_ERR : Reader.READER_ERR.MT_CMD_FAILED_ERR;
        }
        return Reader.READER_ERR.MT_CMD_FAILED_ERR;
    }

    public Reader.READER_ERR setRegion(Reader.Region_Conf region_Conf) {
        int[] power = getPower();
        int i = type;
        int i2 = 4;
        if (i == 0) {
            logPrint("zeng-", region_Conf.value() + "");
            MsgBaseSetFreqRange msgBaseSetFreqRange = new MsgBaseSetFreqRange();
            int iValue = region_Conf.value();
            if (iValue == 1) {
                msgBaseSetFreqRange.setFreqRangeIndex(3);
            } else if (iValue == 6) {
                msgBaseSetFreqRange.setFreqRangeIndex(0);
            } else if (iValue == 8) {
                msgBaseSetFreqRange.setFreqRangeIndex(4);
            } else {
                msgBaseSetFreqRange.setFreqRangeIndex(99);
            }
            client.sendSynMsg(msgBaseSetFreqRange);
            logPrint("MsgBaseSetFreqRange", msgBaseSetFreqRange.getRtMsg());
            if (msgBaseSetFreqRange.getRtCode() == 0) {
                return setPower(power[0], power[1]);
            }
            return Reader.READER_ERR.MT_CMD_FAILED_ERR;
        }
        if (i == 1) {
            return reader.ParamSet(Reader.Mtr_Param.MTR_PARAM_FREQUENCY_REGION, region_Conf);
        }
        logPrint("zeng-", "value:" + region_Conf.value());
        int iValue2 = region_Conf.value();
        if (iValue2 == 1) {
            i2 = 8;
        } else if (iValue2 == 6) {
            i2 = 1;
        } else if (iValue2 != 8) {
            i2 = iValue2 != 10 ? 0 : 2;
        }
        if (i2 == 0) {
            return Reader.READER_ERR.MT_CMD_FAILED_ERR;
        }
        int iSetRegion = driver.SetRegion(i2);
        if (-1000 == iSetRegion || -1020 == iSetRegion || iSetRegion == 0) {
            return Reader.READER_ERR.MT_CMD_FAILED_ERR;
        }
        return setPower(this.rPower, this.wPower);
    }

    public Reader.Region_Conf getRegion() throws NumberFormatException {
        int i = type;
        if (i == 0) {
            MsgBaseGetFreqRange msgBaseGetFreqRange = new MsgBaseGetFreqRange();
            client.sendSynMsg(msgBaseGetFreqRange);
            logPrint("MsgBaseGetFreqRange", msgBaseGetFreqRange.getRtMsg());
            if (msgBaseGetFreqRange.getRtCode() == 0) {
                int freqRangeIndex = msgBaseGetFreqRange.getFreqRangeIndex();
                if (freqRangeIndex == 0) {
                    return Reader.Region_Conf.valueOf(6);
                }
                if (freqRangeIndex == 3) {
                    return Reader.Region_Conf.valueOf(1);
                }
                if (freqRangeIndex == 4) {
                    return Reader.Region_Conf.valueOf(8);
                }
            }
            return null;
        }
        if (i == 1) {
            Reader.Region_Conf[] region_ConfArr = new Reader.Region_Conf[1];
            Reader.READER_ERR reader_errParamGet = reader.ParamGet(Reader.Mtr_Param.MTR_PARAM_FREQUENCY_REGION, region_ConfArr);
            if (reader_errParamGet == Reader.READER_ERR.MT_OK_ERR) {
                return region_ConfArr[0];
            }
            logPrint("getRegion, ParamGet MTR_PARAM_FREQUENCY_REGION result: " + reader_errParamGet.toString());
            return null;
        }
        String region = driver.getRegion();
        if (region.equals("-1000") || region.equals("-1020")) {
            return null;
        }
        int i2 = Integer.parseInt(region.substring(2, 4), 16);
        if (i2 == 1) {
            return Reader.Region_Conf.valueOf(6);
        }
        if (i2 == 2) {
            return Reader.Region_Conf.valueOf(10);
        }
        if (i2 == 4) {
            return Reader.Region_Conf.valueOf(8);
        }
        if (i2 != 8) {
            return null;
        }
        return Reader.Region_Conf.valueOf(1);
    }

    public int[] getFrequencyPoints() {
        int i = type;
        int i2 = 0;
        int[] iArr = null;
        if (i == 0) {
            MsgBaseGetFrequency msgBaseGetFrequency = new MsgBaseGetFrequency();
            client.sendSynMsg(msgBaseGetFrequency);
            logPrint("MsgBaseGetFrequency", msgBaseGetFrequency.getRtMsg());
            if (msgBaseGetFrequency.getRtCode() == 0) {
                iArr = new int[msgBaseGetFrequency.getListFreqCursor().size()];
                while (i2 < msgBaseGetFrequency.getListFreqCursor().size()) {
                    iArr[i2] = msgBaseGetFrequency.getListFreqCursor().get(i2).intValue();
                    i2++;
                }
            }
            return iArr;
        }
        if (i == 1) {
            com.uhf.api.cls.Reader reader2 = reader;
            reader2.getClass();
            Reader.HoptableData_ST hoptableData_ST = reader2.new HoptableData_ST();
            Reader.READER_ERR reader_errParamGet = reader.ParamGet(Reader.Mtr_Param.MTR_PARAM_FREQUENCY_HOPTABLE, hoptableData_ST);
            if (reader_errParamGet == Reader.READER_ERR.MT_OK_ERR) {
                return sort(hoptableData_ST.htb, hoptableData_ST.lenhtb);
            }
            logPrint("getFrequencyPoints, ParamGet MTR_PARAM_FREQUENCY_HOPTABLE result: " + reader_errParamGet.toString());
            return null;
        }
        String strGetFreqTable = driver.GetFreqTable();
        if (!strGetFreqTable.equals("-1000") && !strGetFreqTable.equals("-1020")) {
            String[] strArrSplit = strGetFreqTable.substring(strGetFreqTable.indexOf("}") + 1).split("\\,");
            iArr = new int[strArrSplit.length];
            while (i2 < strArrSplit.length) {
                iArr[i2] = Integer.parseInt(strArrSplit[i2]);
                i2++;
            }
        }
        return iArr;
    }

    public Reader.READER_ERR setFrequencyPoints(int[] iArr) {
        int i = type;
        if (i == 0) {
            MsgBaseSetFrequency msgBaseSetFrequency = new MsgBaseSetFrequency();
            msgBaseSetFrequency.setAutomatically(false);
            ArrayList arrayList = new ArrayList();
            for (int i2 : iArr) {
                arrayList.add(Integer.valueOf(i2));
            }
            msgBaseSetFrequency.setListFreqCursor(arrayList);
            client.sendSynMsg(msgBaseSetFrequency);
            logPrint("MsgBaseSetFrequency", msgBaseSetFrequency.getRtMsg());
            return msgBaseSetFrequency.getRtCode() == 0 ? Reader.READER_ERR.MT_OK_ERR : Reader.READER_ERR.MT_CMD_FAILED_ERR;
        }
        if (i == 1) {
            com.uhf.api.cls.Reader reader2 = reader;
            reader2.getClass();
            Reader.HoptableData_ST hoptableData_ST = reader2.new HoptableData_ST();
            hoptableData_ST.lenhtb = iArr.length;
            hoptableData_ST.htb = iArr;
            return reader.ParamSet(Reader.Mtr_Param.MTR_PARAM_FREQUENCY_HOPTABLE, hoptableData_ST);
        }
        int iSetFreqTable = driver.SetFreqTable(1, iArr.length, iArr);
        if (iSetFreqTable == -1000 || iSetFreqTable == -1020) {
            return Reader.READER_ERR.MT_CMD_FAILED_ERR;
        }
        return Reader.READER_ERR.MT_OK_ERR;
    }

    public Reader.READER_ERR setPower(int i, int i2) {
        this.rPower = i;
        this.wPower = i2;
        int i3 = type;
        if (i3 == 0) {
            MsgBaseGetPower msgBaseGetPower = new MsgBaseGetPower();
            client.sendSynMsg(msgBaseGetPower);
            if (msgBaseGetPower.getRtCode() == 0) {
                if (msgBaseGetPower.getDicPower().get(1).intValue() == i) {
                    return Reader.READER_ERR.MT_OK_ERR;
                }
                MsgBaseSetPower msgBaseSetPower = new MsgBaseSetPower();
                Hashtable<Integer, Integer> hashtable = new Hashtable<>();
                hashtable.put(1, Integer.valueOf(i));
                msgBaseSetPower.setDicPower(hashtable);
                client.sendSynMsg(msgBaseSetPower);
                logPrint("MsgBaseSetPower", msgBaseSetPower.getRtMsg());
                return msgBaseSetPower.getRtCode() == 0 ? Reader.READER_ERR.MT_OK_ERR : Reader.READER_ERR.MT_CMD_FAILED_ERR;
            }
            return Reader.READER_ERR.MT_CMD_FAILED_ERR;
        }
        if (i3 == 1) {
            com.uhf.api.cls.Reader reader2 = reader;
            reader2.getClass();
            Reader.AntPowerConf antPowerConf = reader2.new AntPowerConf();
            antPowerConf.antcnt = 1;
            com.uhf.api.cls.Reader reader3 = reader;
            reader3.getClass();
            Reader.AntPower antPower = reader3.new AntPower();
            antPower.antid = 1;
            antPower.readPower = (short) (((short) i) * 100);
            antPower.writePower = (short) (((short) i2) * 100);
            antPowerConf.Powers[0] = antPower;
            return reader.ParamSet(Reader.Mtr_Param.MTR_PARAM_RF_ANTPOWER, antPowerConf);
        }
        logPrint("zeng-", "r:" + i + ";w:" + i2);
        int iSetTxPower = driver.SetTxPower(i, i2, 0, 0);
        StringBuilder sb = new StringBuilder();
        sb.append("setpowe:");
        sb.append(iSetTxPower);
        logPrint("zeng-", sb.toString());
        if (-1000 == iSetTxPower || -1020 == iSetTxPower || iSetTxPower == 0) {
            return Reader.READER_ERR.MT_CMD_FAILED_ERR;
        }
        return Reader.READER_ERR.MT_OK_ERR;
    }

    public int[] getPower() {
        int i = type;
        if (i == 0) {
            MsgBaseGetPower msgBaseGetPower = new MsgBaseGetPower();
            client.sendSynMsg(msgBaseGetPower);
            logPrint("MsgBaseGetPower", msgBaseGetPower.getRtMsg());
            if (msgBaseGetPower.getRtCode() != 0) {
                return null;
            }
            Integer num = msgBaseGetPower.getDicPower().get(1);
            return new int[]{num.intValue(), num.intValue()};
        }
        if (i == 1) {
            int[] iArr = new int[2];
            com.uhf.api.cls.Reader reader2 = reader;
            reader2.getClass();
            Reader.AntPowerConf antPowerConf = reader2.new AntPowerConf();
            Reader.READER_ERR reader_errParamGet = reader.ParamGet(Reader.Mtr_Param.MTR_PARAM_RF_ANTPOWER, antPowerConf);
            if (reader_errParamGet == Reader.READER_ERR.MT_OK_ERR) {
                iArr[0] = antPowerConf.Powers[0].readPower / 100;
                iArr[1] = antPowerConf.Powers[0].writePower / 100;
                return iArr;
            }
            logPrint("getPower, ParamGet MTR_PARAM_RF_ANTPOWER result: " + reader_errParamGet.toString());
            return null;
        }
        Driver driver2 = driver;
        if (driver2 != null) {
            String strGetTxPower = driver2.GetTxPower();
            logPrint("zeng-", "text:" + strGetTxPower);
            if (!strGetTxPower.equals("-1020") && !strGetTxPower.equals("-1000")) {
                String[] strArrSplit = strGetTxPower.split(",");
                return new int[]{Integer.parseInt(strArrSplit[0].substring(6), 10), Integer.parseInt(strArrSplit[1].substring(0, strArrSplit.length), 10)};
            }
        }
        return null;
    }

    public List<Reader.TEMPTAGINFO> getYueheTagTemperature(byte[] bArr) throws InterruptedException {
        int i = type;
        if (i != 0) {
            if (i == 1) {
            }
            return null;
        }
        NumberFormat.getNumberInstance();
        MsgBaseInventoryEpc msgBaseInventoryEpc = new MsgBaseInventoryEpc();
        msgBaseInventoryEpc.setAntennaEnable(1L);
        msgBaseInventoryEpc.setInventoryMode(1);
        msgBaseInventoryEpc.setCtesius(2);
        client.sendSynMsg(msgBaseInventoryEpc);
        logPrint("MsgBaseInventoryEpc", msgBaseInventoryEpc.getRtMsg());
        if (msgBaseInventoryEpc.getRtCode() != 0) {
            return null;
        }
        try {
            Thread.sleep(50L);
            client.sendSynMsg(new MsgBaseStop());
            return formatData();
        } catch (InterruptedException e) {
            e.printStackTrace();
            return null;
        }
    }

    public List<Reader.TEMPTAGINFO> getYilianTagTemperature() throws InterruptedException {
        if (type != 0) {
            return null;
        }
        MsgBaseInventoryEpc msgBaseInventoryEpc = new MsgBaseInventoryEpc();
        msgBaseInventoryEpc.setAntennaEnable(1L);
        msgBaseInventoryEpc.setInventoryMode(1);
        ParamEpcReadUserdata paramEpcReadUserdata = new ParamEpcReadUserdata();
        paramEpcReadUserdata.setStart(127);
        paramEpcReadUserdata.setLen(1);
        msgBaseInventoryEpc.setReadUserdata(paramEpcReadUserdata);
        client.sendSynMsg(msgBaseInventoryEpc);
        if (msgBaseInventoryEpc.getRtCode() != 0) {
            return null;
        }
        try {
            Thread.sleep(50L);
            client.sendSynMsg(new MsgBaseStop());
            return formatData();
        } catch (InterruptedException e) {
            e.printStackTrace();
            return null;
        }
    }

    private int[] sort(int[] iArr, int i) {
        for (int i2 = 0; i2 < i; i2++) {
            for (int i3 = 0; i3 < i; i3++) {
                if (iArr[i2] < iArr[i3]) {
                    int i4 = iArr[i2];
                    iArr[i2] = iArr[i3];
                    iArr[i3] = i4;
                }
            }
        }
        return iArr;
    }

    public boolean setGen2session(boolean z) {
        int i = type;
        if (i == 0) {
            int gen2session = getGen2session();
            if (gen2session == -1) {
                return false;
            }
            if (!z) {
                MsgBaseSetBaseband msgBaseSetBaseband = new MsgBaseSetBaseband();
                msgBaseSetBaseband.setSession(0);
                msgBaseSetBaseband.setqValue(4);
                client.sendSynMsg(msgBaseSetBaseband);
                logPrint("setGen2session", msgBaseSetBaseband.getRtMsg());
                return msgBaseSetBaseband.getRtCode() == 0;
            }
            if (gen2session != 2) {
                MsgBaseSetBaseband msgBaseSetBaseband2 = new MsgBaseSetBaseband();
                msgBaseSetBaseband2.setSession(2);
                msgBaseSetBaseband2.setqValue(4);
                client.sendSynMsg(msgBaseSetBaseband2);
                logPrint("setGen2session", msgBaseSetBaseband2.getRtMsg());
            }
            return true;
        }
        if (i == 1) {
            try {
                int[] iArr = {-1};
                if (z) {
                    iArr[0] = 1;
                    if (isE710) {
                        iArr[0] = 2;
                        return true;
                    }
                } else {
                    iArr[0] = 0;
                }
                Reader.READER_ERR reader_errParamSet = reader.ParamSet(Reader.Mtr_Param.MTR_PARAM_POTL_GEN2_SESSION, iArr);
                com.uhf.api.cls.Reader reader2 = reader;
                reader2.getClass();
                Reader.CustomParam_ST customParam_ST = reader2.new CustomParam_ST();
                customParam_ST.ParamName = "Reader/Ex10fastmode";
                byte[] bArr = new byte[22];
                bArr[0] = 0;
                bArr[1] = 20;
                for (int i2 = 0; i2 < 20; i2++) {
                    bArr[i2 + 2] = 0;
                }
                customParam_ST.ParamVal = bArr;
                reader.ParamSet(Reader.Mtr_Param.MTR_PARAM_CUSTOM, customParam_ST);
                return reader_errParamSet == Reader.READER_ERR.MT_OK_ERR;
            } catch (Exception unused) {
                return false;
            }
        }
        int[] iArr2 = new int[10];
        String strGetGen2Para = driver.GetGen2Para();
        if (!strGetGen2Para.equals("-1000") && !strGetGen2Para.equals("-1020")) {
            int i3 = 0;
            while (i3 < 8) {
                int i4 = i3 + 1;
                iArr2[i3] = Integer.parseInt(strGetGen2Para.substring(i3 * 2, i4 * 2), 16);
                i3 = i4;
            }
            if (z) {
                iArr2[3] = iArr2[3] & 207;
                iArr2[3] = iArr2[3] + 16;
            } else {
                iArr2[3] = iArr2[3] & 207;
                iArr2[3] = iArr2[3] + 0;
            }
            int iSetGen2Para = driver.SetGen2Para(0, iArr2);
            if (-1000 != iSetGen2Para && -1020 != iSetGen2Para && iSetGen2Para != 0) {
                return true;
            }
        }
        return false;
    }

    public boolean setGen2session(int i) {
        int i2 = type;
        if (i2 == 0) {
            int gen2session = getGen2session();
            if (gen2session == -1) {
                return false;
            }
            if (gen2session == i) {
                return true;
            }
            MsgBaseSetBaseband msgBaseSetBaseband = new MsgBaseSetBaseband();
            msgBaseSetBaseband.setSession(i);
            msgBaseSetBaseband.setqValue(4);
            client.sendSynMsg(msgBaseSetBaseband);
            logPrint("setGen2session", msgBaseSetBaseband.getRtMsg());
            return msgBaseSetBaseband.getRtCode() == 0;
        }
        if (i2 == 1) {
            try {
                int[] iArr = {-1};
                iArr[0] = i;
                return reader.ParamSet(Reader.Mtr_Param.MTR_PARAM_POTL_GEN2_SESSION, iArr) == Reader.READER_ERR.MT_OK_ERR;
            } catch (Exception unused) {
                return false;
            }
        }
        int[] iArr2 = new int[10];
        String strGetGen2Para = driver.GetGen2Para();
        if (!strGetGen2Para.equals("-1000") && !strGetGen2Para.equals("-1020")) {
            int i3 = 0;
            while (i3 < 8) {
                int i4 = i3 + 1;
                iArr2[i3] = Integer.parseInt(strGetGen2Para.substring(i3 * 2, i4 * 2), 16);
                i3 = i4;
            }
            iArr2[3] = iArr2[3] & 207;
            iArr2[3] = iArr2[3] + (i << 4);
            int iSetGen2Para = driver.SetGen2Para(0, iArr2);
            if (-1000 != iSetGen2Para && -1020 != iSetGen2Para && iSetGen2Para != 0) {
                return true;
            }
        }
        return false;
    }

    public int getGen2session() {
        int i = type;
        if (i == 0) {
            MsgBaseGetBaseband msgBaseGetBaseband = new MsgBaseGetBaseband();
            client.sendSynMsg(msgBaseGetBaseband);
            logPrint("getGen2session", msgBaseGetBaseband.getRtMsg());
            if (msgBaseGetBaseband.getRtCode() == 0) {
                return msgBaseGetBaseband.getSession();
            }
        } else if (i == 1) {
            int[] iArr = {-1};
            if (reader.ParamGet(Reader.Mtr_Param.MTR_PARAM_POTL_GEN2_SESSION, iArr) == Reader.READER_ERR.MT_OK_ERR) {
                logPrint("pang", "getGen2session = " + iArr[0]);
                return iArr[0];
            }
        } else {
            String strGetGen2Para = driver.GetGen2Para();
            if (strGetGen2Para.equals("-1000") || strGetGen2Para.equals("-1020")) {
                return -1;
            }
            return Integer.parseInt(strGetGen2Para.substring(6, 7), 16) & 3;
        }
        return -1;
    }

    public boolean setQvaule(int i) {
        int i2 = type;
        if (i2 == 0) {
            MsgBaseSetBaseband msgBaseSetBaseband = new MsgBaseSetBaseband();
            msgBaseSetBaseband.setqValue(i);
            client.sendSynMsg(msgBaseSetBaseband);
            if (msgBaseSetBaseband.getRtCode() == 0) {
                logPrint("setQvaule", msgBaseSetBaseband.getRtMsg());
                return true;
            }
        } else if (i2 == 1) {
            this.f402Q = i;
            return true;
        }
        return false;
    }

    public int getQvalue() {
        int i = type;
        if (i != 0) {
            if (i == 1) {
                return this.f402Q;
            }
            return -1;
        }
        MsgBaseGetBaseband msgBaseGetBaseband = new MsgBaseGetBaseband();
        client.sendSynMsg(msgBaseGetBaseband);
        if (msgBaseGetBaseband.getRtCode() != 0) {
            return -1;
        }
        int i2 = msgBaseGetBaseband.getqValue();
        logPrint("getQvalue", msgBaseGetBaseband.getRtMsg());
        return i2;
    }

    public int getTarget() {
        int i = type;
        if (i == 0) {
            MsgBaseGetBaseband msgBaseGetBaseband = new MsgBaseGetBaseband();
            client.sendSynMsg(msgBaseGetBaseband);
            if (msgBaseGetBaseband.getRtCode() == 0) {
                return msgBaseGetBaseband.getInventoryFlag();
            }
            return -1;
        }
        if (i == 1) {
            int[] iArr = {-1};
            if (reader.ParamGet(Reader.Mtr_Param.MTR_PARAM_POTL_GEN2_TARGET, iArr) == Reader.READER_ERR.MT_OK_ERR) {
                return iArr[0];
            }
            return -1;
        }
        String strGetGen2Para = driver.GetGen2Para();
        logPrint("zeng-", strGetGen2Para);
        if (strGetGen2Para.equals("-1000") || strGetGen2Para.equals("-1020")) {
            return -1;
        }
        return (Integer.parseInt(strGetGen2Para.substring(7, 8), 16) >> 3) & 1;
    }

    public boolean setTarget(int i) {
        int i2 = type;
        if (i2 == 0) {
            MsgBaseSetBaseband msgBaseSetBaseband = new MsgBaseSetBaseband();
            msgBaseSetBaseband.setInventoryFlag(i);
            client.sendSynMsg(msgBaseSetBaseband);
            if (msgBaseSetBaseband.getRtCode() == 0) {
                return true;
            }
        } else if (i2 == 1) {
            int[] iArr = {-1};
            iArr[0] = i;
            if (reader.ParamSet(Reader.Mtr_Param.MTR_PARAM_POTL_GEN2_TARGET, iArr) == Reader.READER_ERR.MT_OK_ERR) {
                return true;
            }
        } else {
            int[] iArr2 = new int[10];
            String strGetGen2Para = driver.GetGen2Para();
            if (!strGetGen2Para.equals("-1000") && !strGetGen2Para.equals("-1020")) {
                int i3 = 0;
                while (i3 < 8) {
                    int i4 = i3 + 1;
                    iArr2[i3] = Integer.parseInt(strGetGen2Para.substring(i3 * 2, i4 * 2), 16);
                    i3 = i4;
                }
                iArr2[3] = iArr2[3] & 247;
                iArr2[3] = iArr2[3] + (i << 3);
                int iSetGen2Para = driver.SetGen2Para(0, iArr2);
                if (-1000 != iSetGen2Para && -1020 != iSetGen2Para && iSetGen2Para != 0) {
                    return true;
                }
            }
            return false;
        }
        return false;
    }

    public String getInfo() {
        com.uhf.api.cls.Reader reader2 = reader;
        reader2.getClass();
        Reader.HardwareDetails hardwareDetails = reader2.new HardwareDetails();
        this.f403dv = new Reader.deviceVersion();
        com.uhf.api.cls.Reader.GetDeviceVersion("/dev/ttyMT1", this.f403dv);
        if (reader.GetHardwareDetails(hardwareDetails) != Reader.READER_ERR.MT_OK_ERR) {
            return "";
        }
        return "module:" + hardwareDetails.module.toString() + "\r\nhard:" + this.f403dv.hardwareVer + "\r\nsoft:" + this.f403dv.softwareVer;
    }

    public Reader.READER_ERR ReadTagLED(int i, short s, short s2, R2000_calibration.TagLED_DATA tagLED_DATA) {
        if (type == 0) {
            return Reader.READER_ERR.MT_CMD_NO_TAG_ERR;
        }
        return reader.ReadTagLED(i, s, s2, tagLED_DATA);
    }

    public boolean setFastID(boolean z) {
        int iSetFastIDStatus;
        int i = type;
        if (i == 0) {
            this.fastId.setFastId(z ? 1 : 0);
            return true;
        }
        if (i != 1) {
            if (z) {
                iSetFastIDStatus = driver.SetFastIDStatus(1);
            } else {
                iSetFastIDStatus = driver.SetFastIDStatus(0);
            }
            return (-1000 == iSetFastIDStatus || iSetFastIDStatus == 0 || -1020 == iSetFastIDStatus) ? false : true;
        }
        if (z) {
            com.uhf.api.cls.Reader reader2 = reader;
            reader2.getClass();
            Reader.CustomParam_ST customParam_ST = reader2.new CustomParam_ST();
            customParam_ST.ParamName = "tagcustomcmd/fastid";
            customParam_ST.ParamVal = new byte[1];
            customParam_ST.ParamVal[0] = 1;
            return reader.ParamSet(Reader.Mtr_Param.MTR_PARAM_CUSTOM, customParam_ST) == Reader.READER_ERR.MT_OK_ERR;
        }
        com.uhf.api.cls.Reader reader3 = reader;
        reader3.getClass();
        Reader.CustomParam_ST customParam_ST2 = reader3.new CustomParam_ST();
        customParam_ST2.ParamName = "tagcustomcmd/fastid";
        customParam_ST2.ParamVal = new byte[1];
        return reader.ParamSet(Reader.Mtr_Param.MTR_PARAM_CUSTOM, customParam_ST2) == Reader.READER_ERR.MT_OK_ERR;
    }

    private static void onTagHandler() {
        client.onTagEpcLog = new HandlerTagEpcLog() { // from class: com.handheld.uhfr.UHFRManager.2
            @Override // com.p013gg.reader.api.dal.HandlerTagEpcLog
            public void log(String str, LogBaseEpcInfo logBaseEpcInfo) {
                if (logBaseEpcInfo.getResult() == 0) {
                    synchronized (UHFRManager.epcList) {
                        logBaseEpcInfo.setReplySerialNumber(Long.valueOf(System.currentTimeMillis()));
                        UHFRManager.epcList.add(logBaseEpcInfo);
                    }
                }
            }
        };
        client.onTagEpcOver = new HandlerTagEpcOver() { // from class: com.handheld.uhfr.UHFRManager.3
            @Override // com.p013gg.reader.api.dal.HandlerTagEpcOver
            public void log(String str, LogBaseEpcOver logBaseEpcOver) {
                if (UHFRManager.DEBUG) {
                    UHFRManager.logPrint("onTagEpcOver", "HandlerTagEpcOver");
                }
                synchronized (UHFRManager.epcList) {
                    UHFRManager.epcList.notify();
                }
            }
        };
        client.onTagGbLog = new HandlerTagGbLog() { // from class: com.handheld.uhfr.UHFRManager.4
            @Override // com.p013gg.reader.api.dal.HandlerTagGbLog
            public void log(String str, LogBaseGbInfo logBaseGbInfo) {
                if (logBaseGbInfo.getResult() == 0) {
                    UHFRManager.logPrint("pang", "gbepc = " + logBaseGbInfo.getEpc());
                    synchronized (UHFRManager.gbepcList) {
                        UHFRManager.gbepcList.add(logBaseGbInfo);
                    }
                }
            }
        };
        client.onTagGbOver = new HandlerTagGbOver() { // from class: com.handheld.uhfr.UHFRManager.5
            @Override // com.p013gg.reader.api.dal.HandlerTagGbOver
            public void log(String str, LogBaseGbOver logBaseGbOver) {
                synchronized (UHFRManager.gbepcList) {
                    UHFRManager.gbepcList.notify();
                }
            }
        };
        client.onTagGJbLog = new HandlerTagGJbLog() { // from class: com.handheld.uhfr.UHFRManager.6
            @Override // com.p013gg.reader.api.dal.HandlerTagGJbLog
            public void log(String str, LogBaseGJbInfo logBaseGJbInfo) {
                if (logBaseGJbInfo.getResult() == 0) {
                    UHFRManager.logPrint("pang", "gbepc = " + logBaseGJbInfo.getEpc());
                    synchronized (UHFRManager.gjbepcList) {
                        UHFRManager.gjbepcList.add(logBaseGJbInfo);
                    }
                }
            }
        };
        client.onTagGJbOver = new HandlerTagGJbOver() { // from class: com.handheld.uhfr.UHFRManager.7
            @Override // com.p013gg.reader.api.dal.HandlerTagGJbOver
            public void log(String str, LogBaseGJbOver logBaseGJbOver) {
                synchronized (UHFRManager.gjbepcList) {
                    UHFRManager.gjbepcList.notify();
                }
            }
        };
        client.onTag6bLog = new HandlerTag6bLog() { // from class: com.handheld.uhfr.UHFRManager.8
            @Override // com.p013gg.reader.api.dal.HandlerTag6bLog
            public void log(String str, LogBase6bInfo logBase6bInfo) {
                if (logBase6bInfo.getResult() == 0) {
                    synchronized (UHFRManager.tag6bList) {
                        UHFRManager.tag6bList.add(logBase6bInfo);
                    }
                }
            }
        };
        client.onTag6bOver = new HandlerTag6bOver() { // from class: com.handheld.uhfr.UHFRManager.9
            @Override // com.p013gg.reader.api.dal.HandlerTag6bOver
            public void log(String str, LogBase6bOver logBase6bOver) {
                UHFRManager.tag6bList.notify();
            }
        };
    }

    public boolean setGen2(String str) {
        int[] iArr = new int[10];
        int i = 0;
        while (i < 8) {
            int i2 = i + 1;
            iArr[i] = Integer.parseInt(str.substring(i * 2, i2 * 2), 16);
            i = i2;
        }
        iArr[3] = iArr[3] & 207;
        iArr[3] = iArr[3] + 32;
        iArr[3] = iArr[3] & 247;
        iArr[3] = iArr[3] + 0;
        int iSetGen2Para = driver.SetGen2Para(0, iArr);
        return !(iSetGen2Para == 0 && iSetGen2Para == -100 && iSetGen2Para == -1020) && driver.Inventory_Model_Set(1, false);
    }
}
