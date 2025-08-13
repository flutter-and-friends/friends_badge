package jxl.biff;

import common.Logger;

/* loaded from: classes2.dex */
public class CountryCode {
    public static final CountryCode BELGIUM;
    public static final CountryCode CANADA;
    public static final CountryCode CHINA;
    public static final CountryCode DENMARK;
    public static final CountryCode FRANCE;
    public static final CountryCode GERMANY;
    public static final CountryCode GREECE;
    public static final CountryCode INDIA;
    public static final CountryCode ITALY;
    public static final CountryCode NETHERLANDS;
    public static final CountryCode NORWAY;
    public static final CountryCode PHILIPPINES;
    public static final CountryCode SPAIN;
    public static final CountryCode SWEDEN;
    public static final CountryCode SWITZERLAND;

    /* renamed from: UK */
    public static final CountryCode f1121UK;
    public static final CountryCode UNKNOWN;
    public static final CountryCode USA;
    static /* synthetic */ Class class$jxl$biff$CountryCode;
    private static CountryCode[] codes;
    private static Logger logger;
    private String code;
    private String description;
    private int value;

    static {
        Class clsClass$ = class$jxl$biff$CountryCode;
        if (clsClass$ == null) {
            clsClass$ = class$("jxl.biff.CountryCode");
            class$jxl$biff$CountryCode = clsClass$;
        }
        logger = Logger.getLogger(clsClass$);
        codes = new CountryCode[0];
        USA = new CountryCode(1, "US", "USA");
        CANADA = new CountryCode(2, "CA", "Canada");
        GREECE = new CountryCode(30, "GR", "Greece");
        NETHERLANDS = new CountryCode(31, "NE", "Netherlands");
        BELGIUM = new CountryCode(32, "BE", "Belgium");
        FRANCE = new CountryCode(33, "FR", "France");
        SPAIN = new CountryCode(34, "ES", "Spain");
        ITALY = new CountryCode(39, "IT", "Italy");
        SWITZERLAND = new CountryCode(41, "CH", "Switzerland");
        f1121UK = new CountryCode(44, "UK", "United Kingdowm");
        DENMARK = new CountryCode(45, "DK", "Denmark");
        SWEDEN = new CountryCode(46, "SE", "Sweden");
        NORWAY = new CountryCode(47, "NO", "Norway");
        GERMANY = new CountryCode(49, "DE", "Germany");
        PHILIPPINES = new CountryCode(63, "PH", "Philippines");
        CHINA = new CountryCode(86, "CN", "China");
        INDIA = new CountryCode(91, "IN", "India");
        UNKNOWN = new CountryCode(65535, "??", "Unknown");
    }

    static /* synthetic */ Class class$(String str) {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e) {
            throw new NoClassDefFoundError(e.getMessage());
        }
    }

    private CountryCode(int i, String str, String str2) {
        this.value = i;
        this.code = str;
        this.description = str2;
        CountryCode[] countryCodeArr = codes;
        CountryCode[] countryCodeArr2 = new CountryCode[countryCodeArr.length + 1];
        System.arraycopy(countryCodeArr, 0, countryCodeArr2, 0, countryCodeArr.length);
        countryCodeArr2[codes.length] = this;
        codes = countryCodeArr2;
    }

    private CountryCode(int i) {
        this.value = i;
        this.description = "Arbitrary";
        this.code = "??";
    }

    public int getValue() {
        return this.value;
    }

    public String getCode() {
        return this.code;
    }

    public static CountryCode getCountryCode(String str) {
        if (str == null || str.length() != 2) {
            logger.warn("Please specify two character ISO 3166 country code");
            return USA;
        }
        CountryCode countryCode = UNKNOWN;
        int i = 0;
        while (true) {
            CountryCode[] countryCodeArr = codes;
            if (i >= countryCodeArr.length || countryCode != UNKNOWN) {
                break;
            }
            if (countryCodeArr[i].code.equals(str)) {
                countryCode = codes[i];
            }
            i++;
        }
        return countryCode;
    }

    public static CountryCode createArbitraryCode(int i) {
        return new CountryCode(i);
    }
}
