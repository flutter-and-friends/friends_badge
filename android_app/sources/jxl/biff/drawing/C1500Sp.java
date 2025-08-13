package jxl.biff.drawing;

import common.Logger;
import jxl.biff.IntegerHelper;

/* renamed from: jxl.biff.drawing.Sp */
/* loaded from: classes2.dex */
class C1500Sp extends EscherAtom {
    static /* synthetic */ Class class$jxl$biff$drawing$Sp;
    private static Logger logger;
    private byte[] data;
    private int persistenceFlags;
    private int shapeId;
    private int shapeType;

    static {
        Class clsClass$ = class$jxl$biff$drawing$Sp;
        if (clsClass$ == null) {
            clsClass$ = class$("jxl.biff.drawing.Sp");
            class$jxl$biff$drawing$Sp = clsClass$;
        }
        logger = Logger.getLogger(clsClass$);
    }

    static /* synthetic */ Class class$(String str) {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e) {
            throw new NoClassDefFoundError(e.getMessage());
        }
    }

    public C1500Sp(EscherRecordData escherRecordData) {
        super(escherRecordData);
        this.shapeType = getInstance();
        byte[] bytes = getBytes();
        this.shapeId = IntegerHelper.getInt(bytes[0], bytes[1], bytes[2], bytes[3]);
        this.persistenceFlags = IntegerHelper.getInt(bytes[4], bytes[5], bytes[6], bytes[7]);
    }

    public C1500Sp(ShapeType shapeType, int i, int i2) {
        super(EscherRecordType.f1137SP);
        setVersion(2);
        this.shapeType = shapeType.getValue();
        this.shapeId = i;
        this.persistenceFlags = i2;
        setInstance(this.shapeType);
    }

    int getShapeId() {
        return this.shapeId;
    }

    int getShapeType() {
        return this.shapeType;
    }

    @Override // jxl.biff.drawing.EscherAtom, jxl.biff.drawing.EscherRecord
    byte[] getData() {
        this.data = new byte[8];
        IntegerHelper.getFourBytes(this.shapeId, this.data, 0);
        IntegerHelper.getFourBytes(this.persistenceFlags, this.data, 4);
        return setHeaderData(this.data);
    }
}
