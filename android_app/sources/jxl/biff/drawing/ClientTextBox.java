package jxl.biff.drawing;

import common.Logger;

/* loaded from: classes2.dex */
class ClientTextBox extends EscherAtom {
    static /* synthetic */ Class class$jxl$biff$drawing$ClientTextBox;
    private static Logger logger;
    private byte[] data;

    static {
        Class clsClass$ = class$jxl$biff$drawing$ClientTextBox;
        if (clsClass$ == null) {
            clsClass$ = class$("jxl.biff.drawing.ClientTextBox");
            class$jxl$biff$drawing$ClientTextBox = clsClass$;
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

    public ClientTextBox(EscherRecordData escherRecordData) {
        super(escherRecordData);
    }

    public ClientTextBox() {
        super(EscherRecordType.CLIENT_TEXT_BOX);
    }

    @Override // jxl.biff.drawing.EscherAtom, jxl.biff.drawing.EscherRecord
    byte[] getData() {
        this.data = new byte[0];
        return setHeaderData(this.data);
    }
}
