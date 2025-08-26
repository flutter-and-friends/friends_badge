package jxl.biff.formula;

import jxl.JXLException;

/* loaded from: classes2.dex */
public class FormulaException extends JXLException {
    static final FormulaMessage UNRECOGNIZED_TOKEN = new FormulaMessage("Unrecognized token");
    static final FormulaMessage UNRECOGNIZED_FUNCTION = new FormulaMessage("Unrecognized function");
    public static final FormulaMessage BIFF8_SUPPORTED = new FormulaMessage("Only biff8 formulas are supported");
    static final FormulaMessage LEXICAL_ERROR = new FormulaMessage("Lexical error:  ");
    static final FormulaMessage INCORRECT_ARGUMENTS = new FormulaMessage("Incorrect arguments supplied to function");
    static final FormulaMessage SHEET_REF_NOT_FOUND = new FormulaMessage("Could not find sheet");
    static final FormulaMessage CELL_NAME_NOT_FOUND = new FormulaMessage("Could not find named cell");

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX INFO: Access modifiers changed from: private */
    public static class FormulaMessage {
        private String message;

        FormulaMessage(String str) {
            this.message = str;
        }

        public String getMessage() {
            return this.message;
        }
    }

    public FormulaException(FormulaMessage formulaMessage) {
        super(formulaMessage.message);
    }

    public FormulaException(FormulaMessage formulaMessage, int i) {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(formulaMessage.message);
        stringBuffer.append(" ");
        stringBuffer.append(i);
        super(stringBuffer.toString());
    }

    public FormulaException(FormulaMessage formulaMessage, String str) {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(formulaMessage.message);
        stringBuffer.append(" ");
        stringBuffer.append(str);
        super(stringBuffer.toString());
    }
}
