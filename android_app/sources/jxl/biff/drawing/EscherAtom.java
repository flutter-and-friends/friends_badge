package jxl.biff.drawing;

import common.Logger;

/* loaded from: classes2.dex */
class EscherAtom extends EscherRecord {
    static /* synthetic */ Class class$jxl$biff$drawing$EscherAtom;
    private static Logger logger;

    static {
        Class clsClass$ = class$jxl$biff$drawing$EscherAtom;
        if (clsClass$ == null) {
            clsClass$ = class$("jxl.biff.drawing.EscherAtom");
            class$jxl$biff$drawing$EscherAtom = clsClass$;
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

    public EscherAtom(EscherRecordData escherRecordData) {
        super(escherRecordData);
    }

    protected EscherAtom(EscherRecordType escherRecordType) {
        super(escherRecordType);
    }

    @Override // jxl.biff.drawing.EscherRecord
    byte[] getData() {
        Logger logger2 = logger;
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("escher atom getData called on object of type ");
        stringBuffer.append(getClass().getName());
        stringBuffer.append(" code ");
        stringBuffer.append(Integer.toString(getType().getValue(), 16));
        logger2.warn(stringBuffer.toString());
        return null;
    }
}
