package jxl.biff.formula;

/* loaded from: classes2.dex */
class Plus extends StringOperator {
    @Override // jxl.biff.formula.ParseItem
    void handleImportedCellReferences() {
    }

    @Override // jxl.biff.formula.StringOperator
    Operator getBinaryOperator() {
        return new Add();
    }

    @Override // jxl.biff.formula.StringOperator
    Operator getUnaryOperator() {
        return new UnaryPlus();
    }
}
