package jxl.biff.drawing;

import common.Logger;

/* loaded from: classes2.dex */
class ClientData extends EscherAtom {
    static /* synthetic */ Class class$jxl$biff$drawing$ClientData;
    private static Logger logger;
    private byte[] data;

    static {
        Class clsClass$ = class$jxl$biff$drawing$ClientData;
        if (clsClass$ == null) {
            clsClass$ = class$("jxl.biff.drawing.ClientData");
            class$jxl$biff$drawing$ClientData = clsClass$;
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

    public ClientData(EscherRecordData escherRecordData) {
        super(escherRecordData);
    }

    public ClientData() {
        super(EscherRecordType.CLIENT_DATA);
    }

    @Override // jxl.biff.drawing.EscherAtom, jxl.biff.drawing.EscherRecord
    byte[] getData() {
        this.data = new byte[0];
        return setHeaderData(this.data);
    }
}
