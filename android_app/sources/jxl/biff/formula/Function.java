package jxl.biff.formula;

import android.device.scanner.configuration.PropertyID;
import cn.forward.androids.utils.LogUtil;
import cn.highlight.work_card_write.util.NDCMD;
import com.p013gg.reader.api.protocol.p014gx.EnumG;
import com.soundcloud.android.crop.Crop;
import com.tencent.bugly.Bugly;
import com.yuyh.library.imgsel.BuildConfig;
import common.Logger;
import jxl.WorkbookSettings;
import okhttp3.internal.http.StatusLine;

/* loaded from: classes2.dex */
final class Function {
    public static final Function ABS;
    public static final Function ACOS;
    public static final Function ACOSH;
    public static final Function ADDRESS;
    public static final Function AND;
    public static final Function AREAS;
    public static final Function ASIN;
    public static final Function ASINH;
    public static final Function ATAN;
    public static final Function ATAN2;
    public static final Function ATANH;
    public static final Function ATTRIBUTE;
    public static final Function AVEDEV;
    public static final Function AVERAGE;
    public static final Function AVERAGEA;
    public static final Function AYS360;
    public static final Function BETADIST;
    public static final Function BETAINV;
    public static final Function BINOMDIST;
    public static final Function CEILING;
    public static final Function CELL;
    public static final Function CHAR;
    public static final Function CHIDIST;
    public static final Function CHIINV;
    public static final Function CHITEST;
    public static final Function CHOOSE;
    public static final Function CLEAN;
    public static final Function CODE;
    public static final Function COLUMN;
    public static final Function COLUMNS;
    public static final Function COMBIN;
    public static final Function CONCATENATE;
    public static final Function CONFIDENCE;
    public static final Function CORREL;
    public static final Function COS;
    public static final Function COSH;
    public static final Function COUNT;
    public static final Function COUNTA;
    public static final Function COUNTBLANK;
    public static final Function COUNTIF;
    public static final Function COVAR;
    public static final Function CRITBINOM;
    public static final Function DATE;
    public static final Function DATEVALUE;
    public static final Function DAVERAGE;
    public static final Function DAY;
    public static final Function DCOUNT;
    public static final Function DCOUNTA;
    public static final Function DDB;
    public static final Function DEGREES;
    public static final Function DEVSQ;
    public static final Function DMAX;
    public static final Function DMIN;
    public static final Function DOLLAR;
    public static final Function DPRODUCT;
    public static final Function DSTDEV;
    public static final Function DSTDEVP;
    public static final Function DSUM;
    public static final Function DVAR;
    public static final Function DVARP;
    public static final Function ERROR;
    public static final Function EVEN;
    public static final Function EXACT;
    public static final Function EXP;
    public static final Function EXPONDIST;
    public static final Function FACT;
    public static final Function FALSE;
    public static final Function FDIST;
    public static final Function FIND;
    public static final Function FINDB;
    public static final Function FINV;
    public static final Function FISHER;
    public static final Function FISHERINV;
    public static final Function FIXED;
    public static final Function FLOOR;
    public static final Function FORECAST;
    public static final Function FTEST;

    /* renamed from: FV */
    public static final Function f1140FV;
    public static final Function GAMMADIST;
    public static final Function GAMMAINV;
    public static final Function GAMMALN;
    public static final Function GEOMEAN;
    public static final Function GROWTH;
    public static final Function HARMEAN;
    public static final Function HLOOKUP;
    public static final Function HOUR;
    public static final Function HYPERLINK;
    public static final Function HYPGEOMDIST;

    /* renamed from: IF */
    public static final Function f1141IF;
    public static final Function INDEX;
    public static final Function INDIRECT;
    public static final Function INFO;
    public static final Function INT;
    public static final Function INTERCEPT;
    public static final Function IPMT;
    public static final Function ISBLANK;
    public static final Function ISERR;
    public static final Function ISERROR;
    public static final Function ISLOGICAL;
    public static final Function ISNA;
    public static final Function ISNONTEXT;
    public static final Function ISNUMBER;
    public static final Function ISREF;
    public static final Function ISTEXT;
    public static final Function KURT;
    public static final Function LARGE;
    public static final Function LEFT;
    public static final Function LEFTB;
    public static final Function LEN;
    public static final Function LENB;
    public static final Function LINEST;

    /* renamed from: LN */
    public static final Function f1142LN;
    public static final Function LOG;
    public static final Function LOG10;
    public static final Function LOGEST;
    public static final Function LOGINV;
    public static final Function LOGNORMDIST;
    public static final Function LOOKUP;
    public static final Function LOWER;
    public static final Function MATCH;
    public static final Function MAX;
    public static final Function MAXA;
    public static final Function MDETERM;
    public static final Function MEDIAN;
    public static final Function MID;
    public static final Function MIDB;
    public static final Function MIN;
    public static final Function MINA;
    public static final Function MINUTE;
    public static final Function MINVERSE;
    public static final Function MMULT;
    public static final Function MOD;
    public static final Function MODE;
    public static final Function MONTH;

    /* renamed from: N */
    public static final Function f1143N;

    /* renamed from: NA */
    public static final Function f1144NA;
    public static final Function NEGBINOMDIST;
    public static final Function NORMDIST;
    public static final Function NORMINV;
    public static final Function NORMSDIST;
    public static final Function NORMSINV;
    public static final Function NOT;
    public static final Function NOW;
    public static final Function NPER;
    public static final Function NPV;
    public static final Function ODAY;
    public static final Function ODD;
    public static final Function OFFSET;

    /* renamed from: OR */
    public static final Function f1145OR;
    public static final Function PEARSON;
    public static final Function PERCENTILE;
    public static final Function PERCENTRANK;
    public static final Function PERMUT;

    /* renamed from: PI */
    public static final Function f1146PI;
    public static final Function PMT;
    public static final Function POISSON;
    public static final Function POWER;
    public static final Function PPMT;
    public static final Function PROB;
    public static final Function PRODUCT;
    public static final Function PROPER;

    /* renamed from: PV */
    public static final Function f1147PV;
    public static final Function QUARTILE;
    public static final Function RADIANS;
    public static final Function RAND;
    public static final Function RANK;
    public static final Function RATE;
    public static final Function REPLACE;
    public static final Function REPLACEB;
    public static final Function REPT;
    public static final Function RIGHT;
    public static final Function RIGHTB;
    public static final Function ROUND;
    public static final Function ROUNDDOWN;
    public static final Function ROUNDUP;
    public static final Function ROW;
    public static final Function ROWS;
    public static final Function RSQ;
    public static final Function SEARCH;
    public static final Function SEARCHB;
    public static final Function SECOND;
    public static final Function SIGN;
    public static final Function SIN;
    public static final Function SINH;
    public static final Function SKEW;
    public static final Function SLN;
    public static final Function SLOPE;
    public static final Function SMALL;
    public static final Function SQRT;
    public static final Function STANDARDIZE;
    public static final Function STDEV;
    public static final Function STDEVA;
    public static final Function STDEVP;
    public static final Function STDEVPA;
    public static final Function STEYX;
    public static final Function SUBSTITUTE;
    public static final Function SUBTOTAL;
    public static final Function SUM;
    public static final Function SUMIF;
    public static final Function SUMPRODUCT;
    public static final Function SUMSQ;
    public static final Function SUMX2MY2;
    public static final Function SUMX2PY2;
    public static final Function SUMXMY2;
    public static final Function SYD;

    /* renamed from: T */
    public static final Function f1148T;
    public static final Function TAN;
    public static final Function TANH;
    public static final Function TDIST;
    public static final Function TEXT;
    public static final Function TIME;
    public static final Function TIMEVALUE;
    public static final Function TINV;
    public static final Function TRANSPOSE;
    public static final Function TREND;
    public static final Function TRIM;
    public static final Function TRIMMEAN;
    public static final Function TRUE;
    public static final Function TRUNC;
    public static final Function TTEST;
    public static final Function TYPE;
    public static final Function UNKNOWN;
    public static final Function UPPER;
    public static final Function VALUE;
    public static final Function VAR;
    public static final Function VARA;
    public static final Function VARP;
    public static final Function VARPA;
    public static final Function VDB;
    public static final Function VLOOKUP;
    public static final Function WEEKDAY;
    public static final Function WEIBULL;
    public static final Function YEAR;
    public static final Function ZTEST;
    static /* synthetic */ Class class$jxl$biff$formula$Function;
    private static Function[] functions;
    private static Logger logger;
    private final int code;
    private final String name;
    private final int numArgs;

    static {
        Class clsClass$ = class$jxl$biff$formula$Function;
        if (clsClass$ == null) {
            clsClass$ = class$("jxl.biff.formula.Function");
            class$jxl$biff$formula$Function = clsClass$;
        }
        logger = Logger.getLogger(clsClass$);
        functions = new Function[0];
        COUNT = new Function(0, "count", 255);
        ATTRIBUTE = new Function(1, "", 255);
        ISNA = new Function(2, "isna", 1);
        ISERROR = new Function(3, "iserror", 1);
        SUM = new Function(4, "sum", 255);
        AVERAGE = new Function(5, "average", 255);
        MIN = new Function(6, "min", 255);
        MAX = new Function(7, "max", 255);
        ROW = new Function(8, "row", 255);
        COLUMN = new Function(9, "column", 255);
        f1144NA = new Function(10, "na", 0);
        NPV = new Function(11, "npv", 255);
        STDEV = new Function(12, "stdev", 255);
        DOLLAR = new Function(13, "dollar", 2);
        FIXED = new Function(14, "fixed", 255);
        SIN = new Function(15, "sin", 1);
        COS = new Function(16, "cos", 1);
        TAN = new Function(17, "tan", 1);
        ATAN = new Function(18, "atan", 1);
        f1146PI = new Function(19, "pi", 0);
        SQRT = new Function(20, "sqrt", 1);
        EXP = new Function(21, "exp", 1);
        f1142LN = new Function(22, "ln", 1);
        LOG10 = new Function(23, "log10", 1);
        ABS = new Function(24, "abs", 1);
        INT = new Function(25, "int", 1);
        SIGN = new Function(26, "sign", 1);
        ROUND = new Function(27, "round", 2);
        LOOKUP = new Function(28, "lookup", 2);
        INDEX = new Function(29, "index", 3);
        REPT = new Function(30, "rept", 2);
        MID = new Function(31, "mid", 3);
        LEN = new Function(32, "len", 1);
        VALUE = new Function(33, "value", 1);
        TRUE = new Function(34, "true", 0);
        FALSE = new Function(35, Bugly.SDK_IS_DEV, 0);
        AND = new Function(36, "and", 255);
        f1145OR = new Function(37, "or", 255);
        NOT = new Function(38, "not", 1);
        MOD = new Function(39, "mod", 2);
        DCOUNT = new Function(40, "dcount", 3);
        DSUM = new Function(41, "dsum", 3);
        DAVERAGE = new Function(42, "daverage", 3);
        DMIN = new Function(43, "dmin", 3);
        DMAX = new Function(44, "dmax", 3);
        DSTDEV = new Function(45, "dstdev", 3);
        VAR = new Function(46, "var", 255);
        DVAR = new Function(47, "dvar", 3);
        TEXT = new Function(48, "text", 2);
        LINEST = new Function(49, "linest", 255);
        TREND = new Function(50, "trend", 255);
        LOGEST = new Function(51, "logest", 255);
        GROWTH = new Function(52, "growth", 255);
        f1147PV = new Function(56, "pv", 255);
        f1140FV = new Function(57, "fv", 255);
        NPER = new Function(58, "nper", 255);
        PMT = new Function(59, "pmt", 255);
        RATE = new Function(60, "rate", 255);
        RAND = new Function(63, "rand", 0);
        MATCH = new Function(64, "match", 3);
        DATE = new Function(65, "date", 3);
        TIME = new Function(66, "time", 3);
        DAY = new Function(67, "day", 1);
        MONTH = new Function(68, "month", 1);
        YEAR = new Function(69, "year", 1);
        WEEKDAY = new Function(70, "weekday", 2);
        HOUR = new Function(71, "hour", 1);
        MINUTE = new Function(72, "minute", 1);
        SECOND = new Function(73, "second", 1);
        NOW = new Function(74, "now", 0);
        AREAS = new Function(75, "areas", 255);
        ROWS = new Function(76, "rows", 1);
        COLUMNS = new Function(77, "columns", 255);
        OFFSET = new Function(78, "offset", 255);
        SEARCH = new Function(82, "search", 255);
        TRANSPOSE = new Function(83, "transpose", 255);
        ERROR = new Function(84, Crop.Extra.ERROR, 1);
        TYPE = new Function(86, "type", 1);
        ATAN2 = new Function(97, "atan2", 1);
        ASIN = new Function(98, "asin", 1);
        ACOS = new Function(99, "acos", 1);
        CHOOSE = new Function(100, "choose", 255);
        HLOOKUP = new Function(101, "hlookup", 255);
        VLOOKUP = new Function(102, "vlookup", 255);
        ISREF = new Function(105, "isref", 1);
        LOG = new Function(109, LogUtil.LOG_TAG, 255);
        CHAR = new Function(111, "char", 1);
        LOWER = new Function(112, "lower", 1);
        UPPER = new Function(113, "upper", 1);
        PROPER = new Function(114, "proper", 1);
        LEFT = new Function(115, "left", 255);
        RIGHT = new Function(116, "right", 255);
        EXACT = new Function(117, "exact", 2);
        TRIM = new Function(118, "trim", 1);
        REPLACE = new Function(119, "replace", 4);
        SUBSTITUTE = new Function(120, "substitute", 255);
        CODE = new Function(121, "code", 1);
        FIND = new Function(124, "find", 255);
        CELL = new Function(125, "cell", 2);
        ISERR = new Function(126, "iserr", 1);
        ISTEXT = new Function(127, "istext", 1);
        ISNUMBER = new Function(128, "isnumber", 1);
        ISBLANK = new Function(129, "isblank", 1);
        f1148T = new Function(130, "t", 1);
        f1143N = new Function(131, "n", 1);
        DATEVALUE = new Function(140, "datevalue", 1);
        TIMEVALUE = new Function(141, "timevalue", 1);
        SLN = new Function(142, "sln", 3);
        SYD = new Function(143, "syd", 3);
        DDB = new Function(144, "ddb", 255);
        INDIRECT = new Function(148, "indirect", 255);
        CLEAN = new Function(EnumG.BaseMid_EBookTransfer, "clean", 1);
        MDETERM = new Function(163, "mdeterm", 255);
        MINVERSE = new Function(164, "minverse", 255);
        MMULT = new Function(NDCMD.f108A5, "mmult", 255);
        IPMT = new Function(167, "ipmt", 255);
        PPMT = new Function(168, "ppmt", 255);
        COUNTA = new Function(169, "counta", 255);
        PRODUCT = new Function(183, "product", 255);
        FACT = new Function(184, "fact", 1);
        DPRODUCT = new Function(189, "dproduct", 3);
        ISNONTEXT = new Function(190, "isnontext", 1);
        STDEVP = new Function(193, "stdevp", 255);
        VARP = new Function(194, "varp", 255);
        DSTDEVP = new Function(195, "dstdevp", 255);
        DVARP = new Function(196, "dvarp", 255);
        TRUNC = new Function(197, "trunc", 255);
        ISLOGICAL = new Function(198, "islogical", 1);
        DCOUNTA = new Function(199, "dcounta", 255);
        FINDB = new Function(205, "findb", 255);
        SEARCHB = new Function(206, "searchb", 3);
        REPLACEB = new Function(207, "replaceb", 4);
        LEFTB = new Function(208, "leftb", 255);
        RIGHTB = new Function(209, "rightb", 255);
        MIDB = new Function(BuildConfig.VERSION_CODE, "midb", 3);
        LENB = new Function(211, "lenb", 1);
        ROUNDUP = new Function(212, "roundup", 2);
        ROUNDDOWN = new Function(213, "rounddown", 2);
        RANK = new Function(216, "rank", 255);
        ADDRESS = new Function(219, "address", 255);
        AYS360 = new Function(220, "days360", 255);
        ODAY = new Function(221, "today", 0);
        VDB = new Function(222, "vdb", 255);
        MEDIAN = new Function(EnumG.BaseMid_GetGbBaseband, "median", 255);
        SUMPRODUCT = new Function(EnumG.BaseMid_SetGJbBaseband, "sumproduct", 255);
        SINH = new Function(EnumG.BaseMid_GetGJbBaseband, "sinh", 1);
        COSH = new Function(230, "cosh", 1);
        TANH = new Function(231, "tanh", 1);
        ASINH = new Function(232, "asinh", 1);
        ACOSH = new Function(233, "acosh", 1);
        ATANH = new Function(234, "atanh", 1);
        INFO = new Function(244, "info", 1);
        AVEDEV = new Function(PropertyID.DPM_DECODE_MODE, "avedev", 255);
        BETADIST = new Function(PropertyID.CHARACTER_DATA_DELAY, "betadist", 255);
        GAMMALN = new Function(PropertyID.APPEND_ENTER_DELAY, "gammaln", 1);
        BETAINV = new Function(PropertyID.CODE32_ENABLE, "betainv", 255);
        BINOMDIST = new Function(273, "binomdist", 4);
        CHIDIST = new Function(274, "chidist", 2);
        CHIINV = new Function(PropertyID.CODE32_SEND_START, "chiinv", 2);
        COMBIN = new Function(PropertyID.C25_ENABLE, "combin", 2);
        CONFIDENCE = new Function(277, "confidence", 3);
        CRITBINOM = new Function(278, "critbinom", 3);
        EVEN = new Function(279, "even", 1);
        EXPONDIST = new Function(280, "expondist", 3);
        FDIST = new Function(281, "fdist", 3);
        FINV = new Function(282, "finv", 3);
        FISHER = new Function(283, "fisher", 1);
        FISHERINV = new Function(284, "fisherinv", 1);
        FLOOR = new Function(285, "floor", 2);
        GAMMADIST = new Function(286, "gammadist", 4);
        GAMMAINV = new Function(287, "gammainv", 3);
        CEILING = new Function(PropertyID.CODE39_LENGTH1, "ceiling", 2);
        HYPGEOMDIST = new Function(PropertyID.CODE39_LENGTH2, "hypgeomdist", 4);
        LOGNORMDIST = new Function(PropertyID.CODE39_Quiet_Zone, "lognormdist", 3);
        LOGINV = new Function(291, "loginv", 3);
        NEGBINOMDIST = new Function(PropertyID.CODE39_SECURITY_LEVEL, "negbinomdist", 3);
        NORMDIST = new Function(293, "normdist", 4);
        NORMSDIST = new Function(294, "normsdist", 1);
        NORMINV = new Function(295, "norminv", 3);
        NORMSINV = new Function(296, "normsinv", 1);
        STANDARDIZE = new Function(297, "standardize", 3);
        ODD = new Function(298, "odd", 1);
        PERMUT = new Function(299, "permut", 2);
        POISSON = new Function(300, "poisson", 3);
        TDIST = new Function(301, "tdist", 3);
        WEIBULL = new Function(302, "weibull", 4);
        SUMXMY2 = new Function(303, "sumxmy2", 255);
        SUMX2MY2 = new Function(304, "sumx2my2", 255);
        SUMX2PY2 = new Function(305, "sumx2py2", 255);
        CHITEST = new Function(306, "chitest", 255);
        CORREL = new Function(StatusLine.HTTP_TEMP_REDIRECT, "correl", 255);
        COVAR = new Function(StatusLine.HTTP_PERM_REDIRECT, "covar", 255);
        FORECAST = new Function(309, "forecast", 255);
        FTEST = new Function(310, "ftest", 255);
        INTERCEPT = new Function(311, "intercept", 255);
        PEARSON = new Function(312, "pearson", 255);
        RSQ = new Function(313, "rsq", 255);
        STEYX = new Function(314, "steyx", 255);
        SLOPE = new Function(315, "slope", 2);
        TTEST = new Function(316, "ttest", 255);
        PROB = new Function(317, "prob", 255);
        DEVSQ = new Function(318, "devsq", 255);
        GEOMEAN = new Function(319, "geomean", 255);
        HARMEAN = new Function(320, "harmean", 255);
        SUMSQ = new Function(321, "sumsq", 255);
        KURT = new Function(322, "kurt", 255);
        SKEW = new Function(323, "skew", 255);
        ZTEST = new Function(324, "ztest", 255);
        LARGE = new Function(325, "large", 255);
        SMALL = new Function(326, "small", 255);
        QUARTILE = new Function(327, "quartile", 255);
        PERCENTILE = new Function(328, "percentile", 255);
        PERCENTRANK = new Function(329, "percentrank", 255);
        MODE = new Function(330, "mode", 255);
        TRIMMEAN = new Function(331, "trimmean", 255);
        TINV = new Function(332, "tinv", 2);
        CONCATENATE = new Function(336, "concatenate", 255);
        POWER = new Function(337, "power", 2);
        RADIANS = new Function(342, "radians", 1);
        DEGREES = new Function(343, "degrees", 1);
        SUBTOTAL = new Function(344, "subtotal", 255);
        SUMIF = new Function(345, "sumif", 255);
        COUNTIF = new Function(346, "countif", 2);
        COUNTBLANK = new Function(347, "countblank", 1);
        HYPERLINK = new Function(359, "hyperlink", 2);
        AVERAGEA = new Function(361, "averagea", 255);
        MAXA = new Function(362, "maxa", 255);
        MINA = new Function(363, "mina", 255);
        STDEVPA = new Function(364, "stdevpa", 255);
        VARPA = new Function(365, "varpa", 255);
        STDEVA = new Function(366, "stdeva", 255);
        VARA = new Function(367, "vara", 255);
        f1141IF = new Function(65534, "if", 255);
        UNKNOWN = new Function(65535, "", 0);
    }

    static /* synthetic */ Class class$(String str) {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e) {
            throw new NoClassDefFoundError(e.getMessage());
        }
    }

    private Function(int i, String str, int i2) {
        this.code = i;
        this.name = str;
        this.numArgs = i2;
        Function[] functionArr = functions;
        Function[] functionArr2 = new Function[functionArr.length + 1];
        System.arraycopy(functionArr, 0, functionArr2, 0, functionArr.length);
        functionArr2[functions.length] = this;
        functions = functionArr2;
    }

    public int hashCode() {
        return this.code;
    }

    int getCode() {
        return this.code;
    }

    String getPropertyName() {
        return this.name;
    }

    String getName(WorkbookSettings workbookSettings) {
        return workbookSettings.getFunctionNames().getName(this);
    }

    int getNumArgs() {
        return this.numArgs;
    }

    public static Function getFunction(int i) {
        Function function;
        int i2 = 0;
        while (true) {
            Function[] functionArr = functions;
            if (i2 >= functionArr.length) {
                function = null;
                break;
            }
            if (functionArr[i2].code == i) {
                function = functionArr[i2];
                break;
            }
            i2++;
        }
        return function != null ? function : UNKNOWN;
    }

    public static Function getFunction(String str, WorkbookSettings workbookSettings) {
        Function function = workbookSettings.getFunctionNames().getFunction(str);
        return function != null ? function : UNKNOWN;
    }

    static Function[] getFunctions() {
        return functions;
    }
}
