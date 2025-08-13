package jxl.biff.formula;

import java.util.Stack;
import jxl.biff.IntegerHelper;

/* loaded from: classes2.dex */
abstract class SubExpression extends Operand implements ParsedThing {
    private int length;
    private ParseItem[] subExpression;

    @Override // jxl.biff.formula.ParseItem
    byte[] getBytes() {
        return null;
    }

    public void getOperands(Stack stack) {
    }

    int getPrecedence() {
        return 5;
    }

    protected SubExpression() {
    }

    public int read(byte[] bArr, int i) {
        this.length = IntegerHelper.getInt(bArr[i], bArr[i + 1]);
        return 2;
    }

    public int getLength() {
        return this.length;
    }

    protected final void setLength(int i) {
        this.length = i;
    }

    public void setSubExpression(ParseItem[] parseItemArr) {
        this.subExpression = parseItemArr;
    }

    protected ParseItem[] getSubExpression() {
        return this.subExpression;
    }
}
