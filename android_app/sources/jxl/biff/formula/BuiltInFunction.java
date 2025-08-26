package jxl.biff.formula;

import common.Assert;
import common.Logger;
import java.util.Stack;
import jxl.WorkbookSettings;
import jxl.biff.IntegerHelper;

/* loaded from: classes2.dex */
class BuiltInFunction extends Operator implements ParsedThing {
    static /* synthetic */ Class class$jxl$biff$formula$BuiltInFunction;
    private static Logger logger;
    private Function function;
    private WorkbookSettings settings;

    @Override // jxl.biff.formula.Operator
    int getPrecedence() {
        return 3;
    }

    static {
        Class clsClass$ = class$jxl$biff$formula$BuiltInFunction;
        if (clsClass$ == null) {
            clsClass$ = class$("jxl.biff.formula.BuiltInFunction");
            class$jxl$biff$formula$BuiltInFunction = clsClass$;
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

    public BuiltInFunction(WorkbookSettings workbookSettings) {
        this.settings = workbookSettings;
    }

    public BuiltInFunction(Function function, WorkbookSettings workbookSettings) {
        this.function = function;
        this.settings = workbookSettings;
    }

    @Override // jxl.biff.formula.ParsedThing
    public int read(byte[] bArr, int i) {
        int i2 = IntegerHelper.getInt(bArr[i], bArr[i + 1]);
        this.function = Function.getFunction(i2);
        boolean z = this.function != Function.UNKNOWN;
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("function code ");
        stringBuffer.append(i2);
        Assert.verify(z, stringBuffer.toString());
        return 2;
    }

    @Override // jxl.biff.formula.Operator
    public void getOperands(Stack stack) {
        ParseItem[] parseItemArr = new ParseItem[this.function.getNumArgs()];
        for (int numArgs = this.function.getNumArgs() - 1; numArgs >= 0; numArgs--) {
            parseItemArr[numArgs] = (ParseItem) stack.pop();
        }
        for (int i = 0; i < this.function.getNumArgs(); i++) {
            add(parseItemArr[i]);
        }
    }

    @Override // jxl.biff.formula.ParseItem
    public void getString(StringBuffer stringBuffer) {
        stringBuffer.append(this.function.getName(this.settings));
        stringBuffer.append('(');
        int numArgs = this.function.getNumArgs();
        if (numArgs > 0) {
            ParseItem[] operands = getOperands();
            operands[0].getString(stringBuffer);
            for (int i = 1; i < numArgs; i++) {
                stringBuffer.append(',');
                operands[i].getString(stringBuffer);
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

    @Override // jxl.biff.formula.ParseItem
    byte[] getBytes() {
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
        byte[] bArr3 = new byte[bArr.length + 3];
        System.arraycopy(bArr, 0, bArr3, 0, bArr.length);
        bArr3[bArr.length] = !useAlternateCode() ? Token.FUNCTION.getCode() : Token.FUNCTION.getCode2();
        IntegerHelper.getTwoBytes(this.function.getCode(), bArr3, bArr.length + 1);
        return bArr3;
    }
}
