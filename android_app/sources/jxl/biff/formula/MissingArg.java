package jxl.biff.formula;

/* loaded from: classes2.dex */
class MissingArg extends Operand implements ParsedThing {
    @Override // jxl.biff.formula.ParseItem
    public void getString(StringBuffer stringBuffer) {
    }

    @Override // jxl.biff.formula.ParseItem
    void handleImportedCellReferences() {
    }

    @Override // jxl.biff.formula.ParsedThing
    public int read(byte[] bArr, int i) {
        return 0;
    }

    @Override // jxl.biff.formula.ParseItem
    byte[] getBytes() {
        return new byte[]{Token.MISSING_ARG.getCode()};
    }
}
