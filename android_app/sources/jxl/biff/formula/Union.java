package jxl.biff.formula;

/* loaded from: classes2.dex */
class Union extends BinaryOperator implements ParsedThing {
    @Override // jxl.biff.formula.Operator
    int getPrecedence() {
        return 4;
    }

    @Override // jxl.biff.formula.BinaryOperator
    public String getSymbol() {
        return ",";
    }

    @Override // jxl.biff.formula.BinaryOperator
    Token getToken() {
        return Token.UNION;
    }
}
