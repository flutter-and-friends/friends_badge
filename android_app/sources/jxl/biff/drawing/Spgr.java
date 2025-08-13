package jxl.biff.drawing;

/* loaded from: classes2.dex */
class Spgr extends EscherAtom {
    private byte[] data;

    public Spgr(EscherRecordData escherRecordData) {
        super(escherRecordData);
    }

    public Spgr() {
        super(EscherRecordType.SPGR);
        setVersion(1);
        this.data = new byte[16];
    }

    @Override // jxl.biff.drawing.EscherAtom, jxl.biff.drawing.EscherRecord
    byte[] getData() {
        return setHeaderData(this.data);
    }
}
