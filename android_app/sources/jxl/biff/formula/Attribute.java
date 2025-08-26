package jxl.biff.formula;

import cn.highlight.p004tx.app.CmdCenter;
import common.Logger;
import java.util.Stack;
import jxl.WorkbookSettings;
import jxl.biff.IntegerHelper;

/* loaded from: classes2.dex */
class Attribute extends Operator implements ParsedThing {
    private static final int GOTO_MASK = 8;
    private static final int IF_MASK = 2;
    private static final int SUM_MASK = 16;
    static /* synthetic */ Class class$jxl$biff$formula$Attribute;
    private static Logger logger;
    private VariableArgFunction ifConditions;
    private int options;
    private WorkbookSettings settings;
    private int word;

    @Override // jxl.biff.formula.Operator
    int getPrecedence() {
        return 3;
    }

    static {
        Class clsClass$ = class$jxl$biff$formula$Attribute;
        if (clsClass$ == null) {
            clsClass$ = class$("jxl.biff.formula.Attribute");
            class$jxl$biff$formula$Attribute = clsClass$;
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

    public Attribute(WorkbookSettings workbookSettings) {
        this.settings = workbookSettings;
    }

    public Attribute(StringFunction stringFunction, WorkbookSettings workbookSettings) {
        this.settings = workbookSettings;
        if (stringFunction.getFunction(this.settings) == Function.SUM) {
            this.options |= 16;
        } else if (stringFunction.getFunction(this.settings) == Function.f1141IF) {
            this.options |= 2;
        }
    }

    void setIfConditions(VariableArgFunction variableArgFunction) {
        this.ifConditions = variableArgFunction;
        this.options |= 2;
    }

    @Override // jxl.biff.formula.ParsedThing
    public int read(byte[] bArr, int i) {
        this.options = bArr[i];
        this.word = IntegerHelper.getInt(bArr[i + 1], bArr[i + 2]);
        return 3;
    }

    public boolean isFunction() {
        return (this.options & 18) != 0;
    }

    public boolean isSum() {
        return (this.options & 16) != 0;
    }

    public boolean isIf() {
        return (this.options & 2) != 0;
    }

    public boolean isGoto() {
        return (this.options & 8) != 0;
    }

    @Override // jxl.biff.formula.Operator
    public void getOperands(Stack stack) {
        int i = this.options;
        if ((i & 16) != 0) {
            add((ParseItem) stack.pop());
        } else if ((i & 2) != 0) {
            add((ParseItem) stack.pop());
        }
    }

    @Override // jxl.biff.formula.ParseItem
    public void getString(StringBuffer stringBuffer) {
        int i = this.options;
        if ((i & 16) != 0) {
            ParseItem[] operands = getOperands();
            stringBuffer.append(Function.SUM.getName(this.settings));
            stringBuffer.append('(');
            operands[0].getString(stringBuffer);
            stringBuffer.append(')');
            return;
        }
        if ((i & 2) != 0) {
            stringBuffer.append(Function.f1141IF.getName(this.settings));
            stringBuffer.append('(');
            ParseItem[] operands2 = this.ifConditions.getOperands();
            for (int i2 = 0; i2 < operands2.length - 1; i2++) {
                operands2[i2].getString(stringBuffer);
                stringBuffer.append(',');
            }
            operands2[operands2.length - 1].getString(stringBuffer);
            stringBuffer.append(')');
        }
    }

    @Override // jxl.biff.formula.ParseItem
    byte[] getBytes() {
        byte[] bArr = new byte[0];
        if (!isSum()) {
            return isIf() ? getIf() : bArr;
        }
        ParseItem[] operands = getOperands();
        int length = operands.length - 1;
        while (length >= 0) {
            byte[] bytes = operands[length].getBytes();
            byte[] bArr2 = new byte[bArr.length + bytes.length];
            System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
            System.arraycopy(bytes, 0, bArr2, bArr.length, bytes.length);
            length--;
            bArr = bArr2;
        }
        byte[] bArr3 = new byte[bArr.length + 4];
        System.arraycopy(bArr, 0, bArr3, 0, bArr.length);
        bArr3[bArr.length] = Token.ATTRIBUTE.getCode();
        bArr3[bArr.length + 1] = CmdCenter.CMD_openMoreCabinet;
        return bArr3;
    }

    private byte[] getIf() {
        ParseItem[] operands = this.ifConditions.getOperands();
        int length = operands.length;
        byte[] bytes = operands[0].getBytes();
        int length2 = bytes.length;
        byte[] bArr = new byte[bytes.length + 4];
        System.arraycopy(bytes, 0, bArr, 0, bytes.length);
        bArr[length2] = Token.ATTRIBUTE.getCode();
        bArr[length2 + 1] = 2;
        int i = length2 + 2;
        byte[] bytes2 = operands[1].getBytes();
        byte[] bArr2 = new byte[bArr.length + bytes2.length];
        System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
        System.arraycopy(bytes2, 0, bArr2, bArr.length, bytes2.length);
        int length3 = bArr2.length;
        byte[] bArr3 = new byte[bArr2.length + 4];
        System.arraycopy(bArr2, 0, bArr3, 0, bArr2.length);
        bArr3[length3] = Token.ATTRIBUTE.getCode();
        bArr3[length3 + 1] = 8;
        int i2 = length3 + 2;
        if (length > 2) {
            IntegerHelper.getTwoBytes((bArr3.length - i) - 2, bArr3, i);
            byte[] bytes3 = operands[length - 1].getBytes();
            byte[] bArr4 = new byte[bArr3.length + bytes3.length];
            System.arraycopy(bArr3, 0, bArr4, 0, bArr3.length);
            System.arraycopy(bytes3, 0, bArr4, bArr3.length, bytes3.length);
            int length4 = bArr4.length;
            bArr3 = new byte[bArr4.length + 4];
            System.arraycopy(bArr4, 0, bArr3, 0, bArr4.length);
            bArr3[length4] = Token.ATTRIBUTE.getCode();
            bArr3[length4 + 1] = 8;
            bArr3[length4 + 2] = 3;
        }
        int length5 = bArr3.length;
        byte[] bArr5 = new byte[bArr3.length + 4];
        System.arraycopy(bArr3, 0, bArr5, 0, bArr3.length);
        bArr5[length5] = Token.FUNCTIONVARARG.getCode();
        bArr5[length5 + 1] = (byte) length;
        bArr5[length5 + 2] = 1;
        bArr5[length5 + 3] = 0;
        int length6 = bArr5.length - 1;
        if (length < 3) {
            IntegerHelper.getTwoBytes((length6 - i) - 5, bArr5, i);
        }
        IntegerHelper.getTwoBytes((length6 - i2) - 2, bArr5, i2);
        return bArr5;
    }

    @Override // jxl.biff.formula.ParseItem
    public void adjustRelativeCellReferences(int i, int i2) {
        ParseItem[] operands;
        if (isIf()) {
            operands = this.ifConditions.getOperands();
        } else {
            operands = getOperands();
        }
        for (ParseItem parseItem : operands) {
            parseItem.adjustRelativeCellReferences(i, i2);
        }
    }

    @Override // jxl.biff.formula.ParseItem
    void columnInserted(int i, int i2, boolean z) {
        ParseItem[] operands;
        if (isIf()) {
            operands = this.ifConditions.getOperands();
        } else {
            operands = getOperands();
        }
        for (ParseItem parseItem : operands) {
            parseItem.columnInserted(i, i2, z);
        }
    }

    @Override // jxl.biff.formula.ParseItem
    void columnRemoved(int i, int i2, boolean z) {
        ParseItem[] operands;
        if (isIf()) {
            operands = this.ifConditions.getOperands();
        } else {
            operands = getOperands();
        }
        for (ParseItem parseItem : operands) {
            parseItem.columnRemoved(i, i2, z);
        }
    }

    @Override // jxl.biff.formula.ParseItem
    void rowInserted(int i, int i2, boolean z) {
        ParseItem[] operands;
        if (isIf()) {
            operands = this.ifConditions.getOperands();
        } else {
            operands = getOperands();
        }
        for (ParseItem parseItem : operands) {
            parseItem.rowInserted(i, i2, z);
        }
    }

    @Override // jxl.biff.formula.ParseItem
    void rowRemoved(int i, int i2, boolean z) {
        ParseItem[] operands;
        if (isIf()) {
            operands = this.ifConditions.getOperands();
        } else {
            operands = getOperands();
        }
        for (ParseItem parseItem : operands) {
            parseItem.rowRemoved(i, i2, z);
        }
    }

    @Override // jxl.biff.formula.ParseItem
    void handleImportedCellReferences() {
        ParseItem[] operands;
        if (isIf()) {
            operands = this.ifConditions.getOperands();
        } else {
            operands = getOperands();
        }
        for (ParseItem parseItem : operands) {
            parseItem.handleImportedCellReferences();
        }
    }
}
