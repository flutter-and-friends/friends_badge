package jxl.biff.formula;

/* loaded from: classes2.dex */
class BooleanValue extends Operand implements ParsedThing {
    private boolean value;

    @Override // jxl.biff.formula.ParseItem
    void handleImportedCellReferences() {
    }

    public BooleanValue() {
    }

    public BooleanValue(String str) {
        this.value = Boolean.valueOf(str).booleanValue();
    }

    @Override // jxl.biff.formula.ParsedThing
    public int read(byte[] bArr, int i) {
        this.value = bArr[i] == 1;
        return 1;
    }

    @Override // jxl.biff.formula.ParseItem
    byte[] getBytes() {
        byte[] bArr = new byte[2];
        bArr[0] = Token.BOOL.getCode();
        bArr[1] = (byte) (this.value ? 1 : 0);
        return bArr;
    }

    @Override // jxl.biff.formula.ParseItem
    public void getString(StringBuffer stringBuffer) {
        stringBuffer.append(new Boolean(this.value).toString());
    }
}
