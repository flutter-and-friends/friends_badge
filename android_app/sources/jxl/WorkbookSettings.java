package jxl;

import common.Logger;
import java.util.HashMap;
import java.util.Locale;
import jxl.biff.CountryCode;
import jxl.biff.formula.FunctionNames;

/* loaded from: classes2.dex */
public final class WorkbookSettings {
    private static final int DEFAULT_ARRAY_GROW_SIZE = 1048576;
    private static final int DEFAULT_INITIAL_FILE_SIZE = 5242880;
    static /* synthetic */ Class class$jxl$WorkbookSettings;
    private static Logger logger;
    private boolean autoFilterDisabled;
    private boolean cellValidationDisabled;
    private int characterSet;
    private boolean drawingsDisabled;
    private String encoding;
    private boolean formulaReferenceAdjustDisabled;
    private FunctionNames functionNames;
    private boolean gcDisabled;
    private boolean ignoreBlankCells;
    private Locale locale;
    private boolean mergedCellCheckingDisabled;
    private boolean namesDisabled;
    private boolean propertySetsDisabled;
    private boolean rationalizationDisabled;
    private int initialFileSize = DEFAULT_INITIAL_FILE_SIZE;
    private int arrayGrowSize = 1048576;
    private HashMap localeFunctionNames = new HashMap();
    private String excelDisplayLanguage = CountryCode.USA.getCode();
    private String excelRegionalSettings = CountryCode.f1121UK.getCode();

    static {
        Class clsClass$ = class$jxl$WorkbookSettings;
        if (clsClass$ == null) {
            clsClass$ = class$("jxl.WorkbookSettings");
            class$jxl$WorkbookSettings = clsClass$;
        }
        logger = Logger.getLogger(clsClass$);
    }

    static /* synthetic */ Class class$(String str) {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e) {
            throw new NoClassDefFoundError(e.getMessage());
        }
    }

    public WorkbookSettings() {
        try {
            setSuppressWarnings(Boolean.getBoolean("jxl.nowarnings"));
            this.drawingsDisabled = Boolean.getBoolean("jxl.nodrawings");
            this.namesDisabled = Boolean.getBoolean("jxl.nonames");
            this.gcDisabled = Boolean.getBoolean("jxl.nogc");
            this.rationalizationDisabled = Boolean.getBoolean("jxl.norat");
            this.mergedCellCheckingDisabled = Boolean.getBoolean("jxl.nomergedcellchecks");
            this.formulaReferenceAdjustDisabled = Boolean.getBoolean("jxl.noformulaadjust");
            this.propertySetsDisabled = Boolean.getBoolean("jxl.nopropertysets");
            this.ignoreBlankCells = Boolean.getBoolean("jxl.ignoreblanks");
            this.cellValidationDisabled = Boolean.getBoolean("jxl.nocellvalidation");
            this.autoFilterDisabled = !Boolean.getBoolean("jxl.autofilter");
            this.encoding = System.getProperty("file.encoding");
        } catch (SecurityException e) {
            logger.warn("Error accessing system properties.", e);
        }
        try {
            if (System.getProperty("jxl.lang") == null || System.getProperty("jxl.country") == null) {
                this.locale = Locale.getDefault();
            } else {
                this.locale = new Locale(System.getProperty("jxl.lang"), System.getProperty("jxl.country"));
            }
            if (System.getProperty("jxl.encoding") != null) {
                this.encoding = System.getProperty("jxl.encoding");
            }
        } catch (SecurityException e2) {
            logger.warn("Error accessing system properties.", e2);
            this.locale = Locale.getDefault();
        }
    }

    public void setArrayGrowSize(int i) {
        this.arrayGrowSize = i;
    }

    public int getArrayGrowSize() {
        return this.arrayGrowSize;
    }

    public void setInitialFileSize(int i) {
        this.initialFileSize = i;
    }

    public int getInitialFileSize() {
        return this.initialFileSize;
    }

    public boolean getDrawingsDisabled() {
        return this.drawingsDisabled;
    }

    public boolean getGCDisabled() {
        return this.gcDisabled;
    }

    public boolean getNamesDisabled() {
        return this.namesDisabled;
    }

    public void setNamesDisabled(boolean z) {
        this.namesDisabled = z;
    }

    public void setDrawingsDisabled(boolean z) {
        this.drawingsDisabled = z;
    }

    public void setRationalization(boolean z) {
        this.rationalizationDisabled = !z;
    }

    public boolean getRationalizationDisabled() {
        return this.rationalizationDisabled;
    }

    public boolean getMergedCellCheckingDisabled() {
        return this.mergedCellCheckingDisabled;
    }

    public void setMergedCellChecking(boolean z) {
        this.mergedCellCheckingDisabled = !z;
    }

    public void setPropertySets(boolean z) {
        this.propertySetsDisabled = !z;
    }

    public boolean getPropertySetsDisabled() {
        return this.propertySetsDisabled;
    }

    public void setSuppressWarnings(boolean z) {
        logger.setSuppressWarnings(z);
    }

    public boolean getFormulaAdjust() {
        return !this.formulaReferenceAdjustDisabled;
    }

    public void setFormulaAdjust(boolean z) {
        this.formulaReferenceAdjustDisabled = !z;
    }

    public void setLocale(Locale locale) {
        this.locale = locale;
    }

    public Locale getLocale() {
        return this.locale;
    }

    public String getEncoding() {
        return this.encoding;
    }

    public void setEncoding(String str) {
        this.encoding = str;
    }

    public FunctionNames getFunctionNames() {
        if (this.functionNames == null) {
            this.functionNames = (FunctionNames) this.localeFunctionNames.get(this.locale);
            if (this.functionNames == null) {
                this.functionNames = new FunctionNames(this.locale);
                this.localeFunctionNames.put(this.locale, this.functionNames);
            }
        }
        return this.functionNames;
    }

    public int getCharacterSet() {
        return this.characterSet;
    }

    public void setCharacterSet(int i) {
        this.characterSet = i;
    }

    public void setGCDisabled(boolean z) {
        this.gcDisabled = z;
    }

    public void setIgnoreBlanks(boolean z) {
        this.ignoreBlankCells = z;
    }

    public boolean getIgnoreBlanks() {
        return this.ignoreBlankCells;
    }

    public void setCellValidationDisabled(boolean z) {
        this.cellValidationDisabled = z;
    }

    public boolean getCellValidationDisabled() {
        return this.cellValidationDisabled;
    }

    public String getExcelDisplayLanguage() {
        return this.excelDisplayLanguage;
    }

    public String getExcelRegionalSettings() {
        return this.excelRegionalSettings;
    }

    public void setExcelDisplayLanguage(String str) {
        this.excelDisplayLanguage = str;
    }

    public void setExcelRegionalSettings(String str) {
        this.excelRegionalSettings = str;
    }

    public boolean getAutoFilterDisabled() {
        return this.autoFilterDisabled;
    }

    public void setAutoFilterDisabled(boolean z) {
        this.autoFilterDisabled = z;
    }
}
