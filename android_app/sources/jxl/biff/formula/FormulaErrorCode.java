package jxl.biff.formula;

/* loaded from: classes2.dex */
public class FormulaErrorCode {
    private String description;
    private int errorCode;
    private static FormulaErrorCode[] codes = new FormulaErrorCode[0];
    public static final FormulaErrorCode UNKNOWN = new FormulaErrorCode(255, "?");
    public static final FormulaErrorCode NULL = new FormulaErrorCode(0, "#NULL!");
    public static final FormulaErrorCode DIV0 = new FormulaErrorCode(7, "#DIV/0!");
    public static final FormulaErrorCode VALUE = new FormulaErrorCode(15, "#VALUE!");
    public static final FormulaErrorCode REF = new FormulaErrorCode(23, "#REF!");
    public static final FormulaErrorCode NAME = new FormulaErrorCode(29, "#NAME?");
    public static final FormulaErrorCode NUM = new FormulaErrorCode(36, "#NUM!");

    /* renamed from: NA */
    public static final FormulaErrorCode f1139NA = new FormulaErrorCode(42, "#N/A!");

    FormulaErrorCode(int i, String str) {
        this.errorCode = i;
        this.description = str;
        FormulaErrorCode[] formulaErrorCodeArr = codes;
        FormulaErrorCode[] formulaErrorCodeArr2 = new FormulaErrorCode[formulaErrorCodeArr.length + 1];
        System.arraycopy(formulaErrorCodeArr, 0, formulaErrorCodeArr2, 0, formulaErrorCodeArr.length);
        formulaErrorCodeArr2[codes.length] = this;
        codes = formulaErrorCodeArr2;
    }

    public int getCode() {
        return this.errorCode;
    }

    public String getDescription() {
        return this.description;
    }

    public static FormulaErrorCode getErrorCode(int i) {
        int i2 = 0;
        FormulaErrorCode formulaErrorCode = UNKNOWN;
        boolean z = false;
        while (true) {
            FormulaErrorCode[] formulaErrorCodeArr = codes;
            if (i2 >= formulaErrorCodeArr.length || z) {
                break;
            }
            if (formulaErrorCodeArr[i2].errorCode == i) {
                formulaErrorCode = formulaErrorCodeArr[i2];
                z = true;
            }
            i2++;
        }
        return formulaErrorCode;
    }

    public static FormulaErrorCode getErrorCode(String str) {
        FormulaErrorCode formulaErrorCode = UNKNOWN;
        if (str == null || str.length() == 0) {
            return formulaErrorCode;
        }
        int i = 0;
        FormulaErrorCode formulaErrorCode2 = formulaErrorCode;
        boolean z = false;
        while (true) {
            FormulaErrorCode[] formulaErrorCodeArr = codes;
            if (i >= formulaErrorCodeArr.length || z) {
                break;
            }
            if (formulaErrorCodeArr[i].description.equals(str)) {
                formulaErrorCode2 = codes[i];
                z = true;
            }
            i++;
        }
        return formulaErrorCode2;
    }
}
