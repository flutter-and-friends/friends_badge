package jxl.biff.formula;

import common.Logger;
import java.util.Stack;
import jxl.WorkbookSettings;
import jxl.biff.IntegerHelper;

/* loaded from: classes2.dex */
class VariableArgFunction extends Operator implements ParsedThing {
    static /* synthetic */ Class class$jxl$biff$formula$VariableArgFunction;
    private static Logger logger;
    private int arguments;
    private Function function;
    private boolean readFromSheet = true;
    private WorkbookSettings settings;

    @Override // jxl.biff.formula.Operator
    int getPrecedence() {
        return 3;
    }

    static {
        Class clsClass$ = class$jxl$biff$formula$VariableArgFunction;
        if (clsClass$ == null) {
            clsClass$ = class$("jxl.biff.formula.VariableArgFunction");
            class$jxl$biff$formula$VariableArgFunction = clsClass$;
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

    public VariableArgFunction(WorkbookSettings workbookSettings) {
        this.settings = workbookSettings;
    }

    public VariableArgFunction(Function function, int i, WorkbookSettings workbookSettings) {
        this.function = function;
        this.arguments = i;
        this.settings = workbookSettings;
    }

    @Override // jxl.biff.formula.ParsedThing
    public int read(byte[] bArr, int i) throws FormulaException {
        this.arguments = bArr[i];
        int i2 = IntegerHelper.getInt(bArr[i + 1], bArr[i + 2]);
        this.function = Function.getFunction(i2);
        if (this.function != Function.UNKNOWN) {
            return 3;
        }
        throw new FormulaException(FormulaException.UNRECOGNIZED_FUNCTION, i2);
    }

    @Override // jxl.biff.formula.Operator
    public void getOperands(Stack stack) {
        int i = this.arguments;
        ParseItem[] parseItemArr = new ParseItem[i];
        for (int i2 = i - 1; i2 >= 0; i2--) {
            parseItemArr[i2] = (ParseItem) stack.pop();
        }
        for (int i3 = 0; i3 < this.arguments; i3++) {
            add(parseItemArr[i3]);
        }
    }

    @Override // jxl.biff.formula.ParseItem
    public void getString(StringBuffer stringBuffer) {
        stringBuffer.append(this.function.getName(this.settings));
        stringBuffer.append('(');
        if (this.arguments > 0) {
            ParseItem[] operands = getOperands();
            if (this.readFromSheet) {
                operands[0].getString(stringBuffer);
                for (int i = 1; i < this.arguments; i++) {
                    stringBuffer.append(',');
                    operands[i].getString(stringBuffer);
                }
            } else {
                operands[this.arguments - 1].getString(stringBuffer);
                for (int i2 = this.arguments - 2; i2 >= 0; i2--) {
                    stringBuffer.append(',');
                    operands[i2].getString(stringBuffer);
                }
            }
        }
        stringBuffer.append(')');
    }

    @Override // jxl.biff.formula.ParseItem
    public void adjustRelativeCellReferences(int i, int i2) {
        for (ParseItem parseItem : getOperands()) {
            parseItem.adjustRelativeCellReferences(i, i2);
        }
    }

    @Override // jxl.biff.formula.ParseItem
    void columnInserted(int i, int i2, boolean z) {
        for (ParseItem parseItem : getOperands()) {
            parseItem.columnInserted(i, i2, z);
        }
    }

    @Override // jxl.biff.formula.ParseItem
    void columnRemoved(int i, int i2, boolean z) {
        for (ParseItem parseItem : getOperands()) {
            parseItem.columnRemoved(i, i2, z);
        }
    }

    @Override // jxl.biff.formula.ParseItem
    void rowInserted(int i, int i2, boolean z) {
        for (ParseItem parseItem : getOperands()) {
            parseItem.rowInserted(i, i2, z);
        }
    }

    @Override // jxl.biff.formula.ParseItem
    void rowRemoved(int i, int i2, boolean z) {
        for (ParseItem parseItem : getOperands()) {
            parseItem.rowRemoved(i, i2, z);
        }
    }

    @Override // jxl.biff.formula.ParseItem
    void handleImportedCellReferences() {
        for (ParseItem parseItem : getOperands()) {
            parseItem.handleImportedCellReferences();
        }
    }

    Function getFunction() {
        return this.function;
    }

    @Override // jxl.biff.formula.ParseItem
    byte[] getBytes() {
        handleSpecialCases();
        ParseItem[] operands = getOperands();
        byte[] bArr = new byte[0];
        int i = 0;
        while (i < operands.length) {
            byte[] bytes = operands[i].getBytes();
            byte[] bArr2 = new byte[bArr.length + bytes.length];
            System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
            System.arraycopy(bytes, 0, bArr2, bArr.length, bytes.length);
            i++;
            bArr = bArr2;
        }
        byte[] bArr3 = new byte[bArr.length + 4];
        System.arraycopy(bArr, 0, bArr3, 0, bArr.length);
        bArr3[bArr.length] = !useAlternateCode() ? Token.FUNCTIONVARARG.getCode() : Token.FUNCTIONVARARG.getCode2();
        bArr3[bArr.length + 1] = (byte) this.arguments;
        IntegerHelper.getTwoBytes(this.function.getCode(), bArr3, bArr.length + 2);
        return bArr3;
    }

    private void handleSpecialCases() {
        if (this.function == Function.SUMPRODUCT) {
            ParseItem[] operands = getOperands();
            for (int length = operands.length - 1; length >= 0; length--) {
                if (operands[length] instanceof Area) {
                    operands[length].setAlternateCode();
                }
            }
        }
    }
}
