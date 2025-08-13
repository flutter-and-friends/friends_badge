package jxl.biff.formula;

import java.util.Stack;

/* loaded from: classes2.dex */
class Parenthesis extends Operator implements ParsedThing {
    @Override // jxl.biff.formula.Operator
    int getPrecedence() {
        return 4;
    }

    @Override // jxl.biff.formula.ParsedThing
    public int read(byte[] bArr, int i) {
        return 0;
    }

    @Override // jxl.biff.formula.Operator
    public void getOperands(Stack stack) {
        add((ParseItem) stack.pop());
    }

    @Override // jxl.biff.formula.ParseItem
    public void getString(StringBuffer stringBuffer) {
        ParseItem[] operands = getOperands();
        stringBuffer.append('(');
        operands[0].getString(stringBuffer);
        stringBuffer.append(')');
    }

    @Override // jxl.biff.formula.ParseItem
    public void adjustRelativeCellReferences(int i, int i2) {
        getOperands()[0].adjustRelativeCellReferences(i, i2);
    }

    @Override // jxl.biff.formula.ParseItem
    void columnInserted(int i, int i2, boolean z) {
        getOperands()[0].columnInserted(i, i2, z);
    }

    @Override // jxl.biff.formula.ParseItem
    void columnRemoved(int i, int i2, boolean z) {
        getOperands()[0].columnRemoved(i, i2, z);
    }

    @Override // jxl.biff.formula.ParseItem
    void rowInserted(int i, int i2, boolean z) {
        getOperands()[0].rowInserted(i, i2, z);
    }

    @Override // jxl.biff.formula.ParseItem
    void rowRemoved(int i, int i2, boolean z) {
        getOperands()[0].rowRemoved(i, i2, z);
    }

    @Override // jxl.biff.formula.ParseItem
    void handleImportedCellReferences() {
        getOperands()[0].handleImportedCellReferences();
    }

    Token getToken() {
        return Token.PARENTHESIS;
    }

    @Override // jxl.biff.formula.ParseItem
    byte[] getBytes() {
        byte[] bytes = getOperands()[0].getBytes();
        byte[] bArr = new byte[bytes.length + 1];
        System.arraycopy(bytes, 0, bArr, 0, bytes.length);
        bArr[bytes.length] = getToken().getCode();
        return bArr;
    }
}
