package jxl.biff.drawing;

import jxl.biff.IntegerHelper;

/* renamed from: jxl.biff.drawing.Dg */
/* loaded from: classes2.dex */
class C1499Dg extends EscherAtom {
    private byte[] data;
    private int drawingId;
    private int seed;
    private int shapeCount;

    public C1499Dg(EscherRecordData escherRecordData) {
        super(escherRecordData);
        this.drawingId = getInstance();
        byte[] bytes = getBytes();
        this.shapeCount = IntegerHelper.getInt(bytes[0], bytes[1], bytes[2], bytes[3]);
        this.seed = IntegerHelper.getInt(bytes[4], bytes[5], bytes[6], bytes[7]);
    }

    public C1499Dg(int i) {
        super(EscherRecordType.f1136DG);
        this.drawingId = 1;
        this.shapeCount = i + 1;
        this.seed = this.shapeCount + 1024 + 1;
        setInstance(this.drawingId);
    }

    public int getDrawingId() {
        return this.drawingId;
    }

    @Override // jxl.biff.drawing.EscherAtom, jxl.biff.drawing.EscherRecord
    byte[] getData() {
        this.data = new byte[8];
        IntegerHelper.getFourBytes(this.shapeCount, this.data, 0);
        IntegerHelper.getFourBytes(this.seed, this.data, 4);
        return setHeaderData(this.data);
    }
}
