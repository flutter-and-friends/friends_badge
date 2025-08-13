package jxl.biff.formula;

import java.util.Stack;

/* loaded from: classes2.dex */
abstract class Operator extends ParseItem {
    private ParseItem[] operands = new ParseItem[0];

    public abstract void getOperands(Stack stack);

    abstract int getPrecedence();

    protected void setOperandAlternateCode() {
        int i = 0;
        while (true) {
            ParseItem[] parseItemArr = this.operands;
            if (i >= parseItemArr.length) {
                return;
            }
            parseItemArr[i].setAlternateCode();
            i++;
        }
    }

    protected void add(ParseItem parseItem) {
        parseItem.setParent(this);
        ParseItem[] parseItemArr = this.operands;
        ParseItem[] parseItemArr2 = new ParseItem[parseItemArr.length + 1];
        System.arraycopy(parseItemArr, 0, parseItemArr2, 0, parseItemArr.length);
        parseItemArr2[this.operands.length] = parseItem;
        this.operands = parseItemArr2;
    }

    protected ParseItem[] getOperands() {
        return this.operands;
    }
}
