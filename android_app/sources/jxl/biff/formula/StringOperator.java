package jxl.biff.formula;

import common.Assert;
import java.util.Stack;

/* loaded from: classes2.dex */
abstract class StringOperator extends Operator {
    abstract Operator getBinaryOperator();

    abstract Operator getUnaryOperator();

    protected StringOperator() {
    }

    @Override // jxl.biff.formula.Operator
    public void getOperands(Stack stack) {
        Assert.verify(false);
    }

    @Override // jxl.biff.formula.Operator
    int getPrecedence() {
        Assert.verify(false);
        return 0;
    }

    @Override // jxl.biff.formula.ParseItem
    byte[] getBytes() {
        Assert.verify(false);
        return null;
    }

    @Override // jxl.biff.formula.ParseItem
    void getString(StringBuffer stringBuffer) {
        Assert.verify(false);
    }

    @Override // jxl.biff.formula.ParseItem
    public void adjustRelativeCellReferences(int i, int i2) {
        Assert.verify(false);
    }

    @Override // jxl.biff.formula.ParseItem
    void columnInserted(int i, int i2, boolean z) {
        Assert.verify(false);
    }

    @Override // jxl.biff.formula.ParseItem
    void columnRemoved(int i, int i2, boolean z) {
        Assert.verify(false);
    }

    @Override // jxl.biff.formula.ParseItem
    void rowInserted(int i, int i2, boolean z) {
        Assert.verify(false);
    }

    @Override // jxl.biff.formula.ParseItem
    void rowRemoved(int i, int i2, boolean z) {
        Assert.verify(false);
    }
}
