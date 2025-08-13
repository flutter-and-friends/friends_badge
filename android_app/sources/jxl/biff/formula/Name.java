package jxl.biff.formula;

/* loaded from: classes2.dex */
class Name extends Operand implements ParsedThing {
    @Override // jxl.biff.formula.ParseItem
    byte[] getBytes() {
        return new byte[6];
    }

    @Override // jxl.biff.formula.ParsedThing
    public int read(byte[] bArr, int i) {
        return 6;
    }

    @Override // jxl.biff.formula.ParseItem
    public void getString(StringBuffer stringBuffer) {
        stringBuffer.append("[Name record not implemented]");
    }

    @Override // jxl.biff.formula.ParseItem
    void handleImportedCellReferences() {
        setInvalid();
    }
}
