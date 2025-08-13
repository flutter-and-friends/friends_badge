package jxl.biff.formula;

/* loaded from: classes2.dex */
class Percent extends UnaryOperator implements ParsedThing {
    @Override // jxl.biff.formula.Operator
    int getPrecedence() {
        return 5;
    }

    @Override // jxl.biff.formula.UnaryOperator
    public String getSymbol() {
        return "%";
    }

    @Override // jxl.biff.formula.UnaryOperator, jxl.biff.formula.ParseItem
    public void getString(StringBuffer stringBuffer) {
        getOperands()[0].getString(stringBuffer);
        stringBuffer.append(getSymbol());
    }

    @Override // jxl.biff.formula.UnaryOperator, jxl.biff.formula.ParseItem
    void handleImportedCellReferences() {
        getOperands()[0].handleImportedCellReferences();
    }

    @Override // jxl.biff.formula.UnaryOperator
    Token getToken() {
        return Token.PERCENT;
    }
}
