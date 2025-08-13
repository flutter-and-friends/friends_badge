package jxl.biff.formula;

/* loaded from: classes2.dex */
class ErrorConstant extends Operand implements ParsedThing {
    private FormulaErrorCode error;

    @Override // jxl.biff.formula.ParseItem
    void handleImportedCellReferences() {
    }

    public ErrorConstant() {
    }

    public ErrorConstant(String str) {
        this.error = FormulaErrorCode.getErrorCode(str);
    }

    @Override // jxl.biff.formula.ParsedThing
    public int read(byte[] bArr, int i) {
        this.error = FormulaErrorCode.getErrorCode(bArr[i]);
        return 1;
    }

    @Override // jxl.biff.formula.ParseItem
    byte[] getBytes() {
        return new byte[]{Token.ERR.getCode(), (byte) this.error.getCode()};
    }

    @Override // jxl.biff.formula.ParseItem
    public void getString(StringBuffer stringBuffer) {
        stringBuffer.append(this.error.getDescription());
    }
}
