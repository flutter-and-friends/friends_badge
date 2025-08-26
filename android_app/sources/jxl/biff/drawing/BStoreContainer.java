package jxl.biff.drawing;

import common.Logger;

/* loaded from: classes2.dex */
class BStoreContainer extends EscherContainer {
    static /* synthetic */ Class class$jxl$biff$drawing$BStoreContainer;
    private static Logger logger;
    private int numBlips;

    static {
        Class clsClass$ = class$jxl$biff$drawing$BStoreContainer;
        if (clsClass$ == null) {
            clsClass$ = class$("jxl.biff.drawing.BStoreContainer");
            class$jxl$biff$drawing$BStoreContainer = clsClass$;
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

    public BStoreContainer(EscherRecordData escherRecordData) {
        super(escherRecordData);
        this.numBlips = getInstance();
    }

    public BStoreContainer() {
        super(EscherRecordType.BSTORE_CONTAINER);
    }

    void setNumBlips(int i) {
        this.numBlips = i;
        setInstance(this.numBlips);
    }

    public int getNumBlips() {
        return this.numBlips;
    }

    public BlipStoreEntry getDrawing(int i) {
        return (BlipStoreEntry) getChildren()[i];
    }
}
