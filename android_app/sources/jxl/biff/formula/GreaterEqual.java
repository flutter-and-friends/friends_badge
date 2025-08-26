package jxl.biff.formula;

/* loaded from: classes2.dex */
class GreaterEqual extends BinaryOperator implements ParsedThing {
    @Override // jxl.biff.formula.Operator
    int getPrecedence() {
        return 5;
    }

    @Override // jxl.biff.formula.BinaryOperator
    public String getSymbol() {
        return ">=";
    }

    @Override // jxl.biff.formula.BinaryOperator
    Token getToken() {
        return Token.GREATER_EQUAL;
    }
}
