package jxl.biff.drawing;

import common.Logger;

/* loaded from: classes2.dex */
class SpgrContainer extends EscherContainer {
    static /* synthetic */ Class class$jxl$biff$drawing$SpgrContainer;
    private static final Logger logger;

    static {
        Class clsClass$ = class$jxl$biff$drawing$SpgrContainer;
        if (clsClass$ == null) {
            clsClass$ = class$("jxl.biff.drawing.SpgrContainer");
            class$jxl$biff$drawing$SpgrContainer = clsClass$;
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

    public SpgrContainer() {
        super(EscherRecordType.SPGR_CONTAINER);
    }

    public SpgrContainer(EscherRecordData escherRecordData) {
        super(escherRecordData);
    }
}
