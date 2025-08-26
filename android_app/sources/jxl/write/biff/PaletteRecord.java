package jxl.write.biff;

import jxl.biff.Type;
import jxl.biff.WritableRecordData;

/* loaded from: classes2.dex */
class PaletteRecord extends WritableRecordData {
    private byte[] data;

    public PaletteRecord(jxl.read.biff.PaletteRecord paletteRecord) {
        super(Type.PALETTE);
        this.data = paletteRecord.getData();
    }

    @Override // jxl.biff.WritableRecordData
    public byte[] getData() {
        return this.data;
    }
}
