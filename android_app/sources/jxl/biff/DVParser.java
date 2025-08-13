package jxl.biff;

import common.Logger;
import java.text.DecimalFormat;
import java.text.MessageFormat;
import java.util.Collection;
import java.util.Iterator;
import jxl.WorkbookSettings;
import jxl.biff.formula.ExternalSheet;
import jxl.biff.formula.FormulaException;
import jxl.biff.formula.FormulaParser;
import kotlin.text.Typography;

/* loaded from: classes2.dex */
public class DVParser {
    public static final DVType ANY;
    public static final Condition BETWEEN;
    public static final DVType DATE;
    public static final DVType DECIMAL;
    private static DecimalFormat DECIMAL_FORMAT;
    private static int EMPTY_CELLS_ALLOWED_MASK;
    public static final Condition EQUAL;
    public static final DVType FORMULA;
    public static final Condition GREATER_EQUAL;
    public static final Condition GREATER_THAN;
    public static final ErrorStyle INFO;
    public static final DVType INTEGER;
    public static final Condition LESS_EQUAL;
    public static final Condition LESS_THAN;
    public static final DVType LIST;
    public static final Condition NOT_BETWEEN;
    public static final Condition NOT_EQUAL;
    private static int SHOW_ERROR_MASK;
    private static int SHOW_PROMPT_MASK;
    public static final ErrorStyle STOP;
    private static int STRING_LIST_GIVEN_MASK;
    private static int SUPPRESS_ARROW_MASK;
    public static final DVType TEXT_LENGTH;
    public static final DVType TIME;
    public static final ErrorStyle WARNING;
    static /* synthetic */ Class class$jxl$biff$DVParser;
    private static Logger logger;
    private int column1;
    private int column2;
    private Condition condition;
    private boolean emptyCellsAllowed;
    private ErrorStyle errorStyle;
    private String errorText;
    private String errorTitle;
    private FormulaParser formula1;
    private String formula1String;
    private FormulaParser formula2;
    private String formula2String;
    private String promptText;
    private String promptTitle;
    private int row1;
    private int row2;
    private boolean showError;
    private boolean showPrompt;
    private boolean stringListGiven;
    private boolean suppressArrow;
    private DVType type;

    static {
        Class clsClass$ = class$jxl$biff$DVParser;
        if (clsClass$ == null) {
            clsClass$ = class$("jxl.biff.DVParser");
            class$jxl$biff$DVParser = clsClass$;
        }
        logger = Logger.getLogger(clsClass$);
        ANY = new DVType(0, "any");
        INTEGER = new DVType(1, "int");
        DECIMAL = new DVType(2, "dec");
        LIST = new DVType(3, "list");
        DATE = new DVType(4, "date");
        TIME = new DVType(5, "time");
        TEXT_LENGTH = new DVType(6, "strlen");
        FORMULA = new DVType(7, "form");
        STOP = new ErrorStyle(0);
        WARNING = new ErrorStyle(1);
        INFO = new ErrorStyle(2);
        BETWEEN = new Condition(0, "{0} <= x <= {1}");
        NOT_BETWEEN = new Condition(1, "!({0} <= x <= {1}");
        EQUAL = new Condition(2, "x == {0}");
        NOT_EQUAL = new Condition(3, "x != {0}");
        GREATER_THAN = new Condition(4, "x > {0}");
        LESS_THAN = new Condition(5, "x < {0}");
        GREATER_EQUAL = new Condition(6, "x >= {0}");
        LESS_EQUAL = new Condition(7, "x <= {0}");
        STRING_LIST_GIVEN_MASK = 128;
        EMPTY_CELLS_ALLOWED_MASK = 256;
        SUPPRESS_ARROW_MASK = 512;
        SHOW_PROMPT_MASK = 262144;
        SHOW_ERROR_MASK = 524288;
        DECIMAL_FORMAT = new DecimalFormat("#.#");
    }

    static /* synthetic */ Class class$(String str) {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e) {
            throw new NoClassDefFoundError(e.getMessage());
        }
    }

    public static class DVType {
        private static DVType[] types = new DVType[0];
        private String desc;
        private int value;

        DVType(int i, String str) {
            this.value = i;
            this.desc = str;
            DVType[] dVTypeArr = types;
            types = new DVType[dVTypeArr.length + 1];
            System.arraycopy(dVTypeArr, 0, types, 0, dVTypeArr.length);
            types[dVTypeArr.length] = this;
        }

        static DVType getType(int i) {
            DVType dVType = null;
            int i2 = 0;
            while (true) {
                DVType[] dVTypeArr = types;
                if (i2 >= dVTypeArr.length || dVType != null) {
                    break;
                }
                if (dVTypeArr[i2].value == i) {
                    dVType = dVTypeArr[i2];
                }
                i2++;
            }
            return dVType;
        }

        public int getValue() {
            return this.value;
        }

        public String getDescription() {
            return this.desc;
        }
    }

    public static class ErrorStyle {
        private static ErrorStyle[] types = new ErrorStyle[0];
        private int value;

        ErrorStyle(int i) {
            this.value = i;
            ErrorStyle[] errorStyleArr = types;
            types = new ErrorStyle[errorStyleArr.length + 1];
            System.arraycopy(errorStyleArr, 0, types, 0, errorStyleArr.length);
            types[errorStyleArr.length] = this;
        }

        static ErrorStyle getErrorStyle(int i) {
            ErrorStyle errorStyle = null;
            int i2 = 0;
            while (true) {
                ErrorStyle[] errorStyleArr = types;
                if (i2 >= errorStyleArr.length || errorStyle != null) {
                    break;
                }
                if (errorStyleArr[i2].value == i) {
                    errorStyle = errorStyleArr[i2];
                }
                i2++;
            }
            return errorStyle;
        }

        public int getValue() {
            return this.value;
        }
    }

    public static class Condition {
        private static Condition[] types = new Condition[0];
        private MessageFormat format;
        private int value;

        Condition(int i, String str) {
            this.value = i;
            this.format = new MessageFormat(str);
            Condition[] conditionArr = types;
            types = new Condition[conditionArr.length + 1];
            System.arraycopy(conditionArr, 0, types, 0, conditionArr.length);
            types[conditionArr.length] = this;
        }

        static Condition getCondition(int i) {
            Condition condition = null;
            int i2 = 0;
            while (true) {
                Condition[] conditionArr = types;
                if (i2 >= conditionArr.length || condition != null) {
                    break;
                }
                if (conditionArr[i2].value == i) {
                    condition = conditionArr[i2];
                }
                i2++;
            }
            return condition;
        }

        public int getValue() {
            return this.value;
        }

        public String getConditionString(String str, String str2) {
            return this.format.format(new String[]{str, str2});
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:47:0x00dc  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00de  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x00eb  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x00f8  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0107  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0109  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x0116  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x0170  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x018c  */
    /* JADX WARN: Removed duplicated region for block: B:66:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public DVParser(byte[] r15, jxl.biff.formula.ExternalSheet r16, jxl.biff.WorkbookMethods r17, jxl.WorkbookSettings r18) throws jxl.biff.formula.FormulaException {
        /*
            Method dump skipped, instructions count: 422
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: jxl.biff.DVParser.<init>(byte[], jxl.biff.formula.ExternalSheet, jxl.biff.WorkbookMethods, jxl.WorkbookSettings):void");
    }

    public DVParser(Collection collection) {
        this.type = LIST;
        this.errorStyle = STOP;
        this.condition = BETWEEN;
        this.stringListGiven = true;
        this.emptyCellsAllowed = true;
        this.suppressArrow = false;
        this.showPrompt = true;
        this.showError = true;
        this.promptTitle = "\u0000";
        this.errorTitle = "\u0000";
        this.promptText = "\u0000";
        this.errorText = "\u0000";
        if (collection.size() == 0) {
            logger.warn("no validation strings - ignoring");
        }
        Iterator it = collection.iterator();
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(Typography.quote);
        stringBuffer.append(it.next().toString());
        while (it.hasNext()) {
            stringBuffer.append((char) 0);
            stringBuffer.append(' ');
            stringBuffer.append(it.next().toString());
        }
        stringBuffer.append(Typography.quote);
        this.formula1String = stringBuffer.toString();
    }

    public DVParser(String str) {
        this.type = LIST;
        this.errorStyle = STOP;
        this.condition = BETWEEN;
        this.stringListGiven = false;
        this.emptyCellsAllowed = true;
        this.suppressArrow = false;
        this.showPrompt = true;
        this.showError = true;
        this.promptTitle = "\u0000";
        this.errorTitle = "\u0000";
        this.promptText = "\u0000";
        this.errorText = "\u0000";
        this.formula1String = str;
    }

    public DVParser(int i, int i2, int i3, int i4) {
        this.type = LIST;
        this.errorStyle = STOP;
        this.condition = BETWEEN;
        this.stringListGiven = false;
        this.emptyCellsAllowed = true;
        this.suppressArrow = false;
        this.showPrompt = true;
        this.showError = true;
        this.promptTitle = "\u0000";
        this.errorTitle = "\u0000";
        this.promptText = "\u0000";
        this.errorText = "\u0000";
        StringBuffer stringBuffer = new StringBuffer();
        CellReferenceHelper.getCellReference(i, i2, stringBuffer);
        stringBuffer.append(':');
        CellReferenceHelper.getCellReference(i3, i4, stringBuffer);
        this.formula1String = stringBuffer.toString();
    }

    public DVParser(double d, double d2, Condition condition) {
        this.type = DECIMAL;
        this.errorStyle = STOP;
        this.condition = condition;
        this.stringListGiven = false;
        this.emptyCellsAllowed = true;
        this.suppressArrow = false;
        this.showPrompt = true;
        this.showError = true;
        this.promptTitle = "\u0000";
        this.errorTitle = "\u0000";
        this.promptText = "\u0000";
        this.errorText = "\u0000";
        this.formula1String = DECIMAL_FORMAT.format(d);
        if (Double.isNaN(d2)) {
            return;
        }
        this.formula2String = DECIMAL_FORMAT.format(d2);
    }

    public DVParser(DVParser dVParser) {
        this.type = dVParser.type;
        this.errorStyle = dVParser.errorStyle;
        this.condition = dVParser.condition;
        this.stringListGiven = dVParser.stringListGiven;
        this.emptyCellsAllowed = dVParser.emptyCellsAllowed;
        this.suppressArrow = dVParser.suppressArrow;
        this.showPrompt = dVParser.showPrompt;
        this.showError = dVParser.showError;
        this.promptTitle = dVParser.promptTitle;
        this.promptText = dVParser.promptText;
        this.errorTitle = dVParser.errorTitle;
        this.errorText = dVParser.errorText;
        try {
            this.formula1String = dVParser.formula1.getFormula();
            this.formula2String = dVParser.formula2 != null ? dVParser.formula2.getFormula() : null;
        } catch (FormulaException e) {
            Logger logger2 = logger;
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("Cannot parse validation formula:  ");
            stringBuffer.append(e.getMessage());
            logger2.warn(stringBuffer.toString());
        }
    }

    public byte[] getData() {
        FormulaParser formulaParser = this.formula1;
        byte[] bytes = formulaParser != null ? formulaParser.getBytes() : new byte[0];
        FormulaParser formulaParser2 = this.formula2;
        byte[] bytes2 = formulaParser2 != null ? formulaParser2.getBytes() : new byte[0];
        byte[] bArr = new byte[(this.promptTitle.length() * 2) + 4 + 2 + (this.errorTitle.length() * 2) + 2 + (this.promptText.length() * 2) + 2 + (this.errorText.length() * 2) + 2 + bytes.length + 2 + bytes2.length + 2 + 4 + 10];
        int value = this.type.getValue() | 0 | (this.errorStyle.getValue() << 4) | (this.condition.getValue() << 20);
        if (this.stringListGiven) {
            value |= STRING_LIST_GIVEN_MASK;
        }
        if (this.emptyCellsAllowed) {
            value |= EMPTY_CELLS_ALLOWED_MASK;
        }
        if (this.suppressArrow) {
            value |= SUPPRESS_ARROW_MASK;
        }
        if (this.showPrompt) {
            value |= SHOW_PROMPT_MASK;
        }
        if (this.showError) {
            value |= SHOW_ERROR_MASK;
        }
        IntegerHelper.getFourBytes(value, bArr, 0);
        IntegerHelper.getTwoBytes(this.promptTitle.length(), bArr, 4);
        StringHelper.getUnicodeBytes(this.promptTitle, bArr, 6);
        int length = 6 + (this.promptTitle.length() * 2);
        IntegerHelper.getTwoBytes(this.errorTitle.length(), bArr, length);
        int i = length + 2;
        StringHelper.getUnicodeBytes(this.errorTitle, bArr, i);
        int length2 = i + (this.errorTitle.length() * 2);
        IntegerHelper.getTwoBytes(this.promptText.length(), bArr, length2);
        int i2 = length2 + 2;
        StringHelper.getUnicodeBytes(this.promptText, bArr, i2);
        int length3 = i2 + (this.promptText.length() * 2);
        IntegerHelper.getTwoBytes(this.errorText.length(), bArr, length3);
        int i3 = length3 + 2;
        StringHelper.getUnicodeBytes(this.errorText, bArr, i3);
        int length4 = i3 + (this.errorText.length() * 2);
        IntegerHelper.getTwoBytes(bytes.length, bArr, length4);
        int i4 = length4 + 4;
        System.arraycopy(bytes, 0, bArr, i4, bytes.length);
        int length5 = i4 + bytes.length;
        IntegerHelper.getTwoBytes(bytes2.length, bArr, length5);
        int i5 = length5 + 4;
        System.arraycopy(bytes2, 0, bArr, i5, bytes2.length);
        int length6 = i5 + bytes2.length;
        IntegerHelper.getTwoBytes(1, bArr, length6);
        int i6 = length6 + 2;
        IntegerHelper.getTwoBytes(this.row1, bArr, i6);
        int i7 = i6 + 2;
        IntegerHelper.getTwoBytes(this.row2, bArr, i7);
        int i8 = i7 + 2;
        IntegerHelper.getTwoBytes(this.column1, bArr, i8);
        IntegerHelper.getTwoBytes(this.column2, bArr, i8 + 2);
        return bArr;
    }

    public void insertRow(int i) {
        FormulaParser formulaParser = this.formula1;
        if (formulaParser != null) {
            formulaParser.rowInserted(0, i, true);
        }
        FormulaParser formulaParser2 = this.formula2;
        if (formulaParser2 != null) {
            formulaParser2.rowInserted(0, i, true);
        }
        int i2 = this.row1;
        if (i2 >= i) {
            this.row1 = i2 + 1;
        }
        int i3 = this.row2;
        if (i3 >= i) {
            this.row2 = i3 + 1;
        }
    }

    public void insertColumn(int i) {
        FormulaParser formulaParser = this.formula1;
        if (formulaParser != null) {
            formulaParser.columnInserted(0, i, true);
        }
        FormulaParser formulaParser2 = this.formula2;
        if (formulaParser2 != null) {
            formulaParser2.columnInserted(0, i, true);
        }
        int i2 = this.column1;
        if (i2 >= i) {
            this.column1 = i2 + 1;
        }
        int i3 = this.column2;
        if (i3 >= i) {
            this.column2 = i3 + 1;
        }
    }

    public void removeRow(int i) {
        FormulaParser formulaParser = this.formula1;
        if (formulaParser != null) {
            formulaParser.rowRemoved(0, i, true);
        }
        FormulaParser formulaParser2 = this.formula2;
        if (formulaParser2 != null) {
            formulaParser2.rowRemoved(0, i, true);
        }
        int i2 = this.row1;
        if (i2 > i) {
            this.row1 = i2 - 1;
        }
        int i3 = this.row2;
        if (i3 >= i) {
            this.row2 = i3 - 1;
        }
    }

    public void removeColumn(int i) {
        FormulaParser formulaParser = this.formula1;
        if (formulaParser != null) {
            formulaParser.columnRemoved(0, i, true);
        }
        FormulaParser formulaParser2 = this.formula2;
        if (formulaParser2 != null) {
            formulaParser2.columnRemoved(0, i, true);
        }
        int i2 = this.column1;
        if (i2 > i) {
            this.column1 = i2 - 1;
        }
        int i3 = this.column2;
        if (i3 >= i) {
            this.column2 = i3 - 1;
        }
    }

    public int getFirstColumn() {
        return this.column1;
    }

    public int getLastColumn() {
        return this.column2;
    }

    public int getFirstRow() {
        return this.row1;
    }

    public int getLastRow() {
        return this.row2;
    }

    String getValidationFormula() throws FormulaException {
        if (this.type == LIST) {
            return this.formula1.getFormula();
        }
        String formula = this.formula1.getFormula();
        FormulaParser formulaParser = this.formula2;
        String formula2 = formulaParser != null ? formulaParser.getFormula() : null;
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(this.condition.getConditionString(formula, formula2));
        stringBuffer.append("; x ");
        stringBuffer.append(this.type.getDescription());
        return stringBuffer.toString();
    }

    public void setCell(int i, int i2, ExternalSheet externalSheet, WorkbookMethods workbookMethods, WorkbookSettings workbookSettings) throws FormulaException {
        this.row1 = i2;
        this.row2 = i2;
        this.column1 = i;
        this.column2 = i;
        this.formula1 = new FormulaParser(this.formula1String, externalSheet, workbookMethods, workbookSettings);
        this.formula1.parse();
        String str = this.formula2String;
        if (str != null) {
            this.formula2 = new FormulaParser(str, externalSheet, workbookMethods, workbookSettings);
            this.formula2.parse();
        }
    }
}
