package jxl.biff.formula;

import common.Logger;

/* loaded from: classes2.dex */
abstract class ParseItem {
    static /* synthetic */ Class class$jxl$biff$formula$ParseItem;
    private static Logger logger;
    private ParseItem parent;
    private boolean volatileFunction = false;
    private boolean alternateCode = false;
    private boolean valid = true;

    abstract void adjustRelativeCellReferences(int i, int i2);

    abstract void columnInserted(int i, int i2, boolean z);

    abstract void columnRemoved(int i, int i2, boolean z);

    abstract byte[] getBytes();

    abstract void getString(StringBuffer stringBuffer);

    abstract void handleImportedCellReferences();

    abstract void rowInserted(int i, int i2, boolean z);

    abstract void rowRemoved(int i, int i2, boolean z);

    static {
        Class clsClass$ = class$jxl$biff$formula$ParseItem;
        if (clsClass$ == null) {
            clsClass$ = class$("jxl.biff.formula.ParseItem");
            class$jxl$biff$formula$ParseItem = clsClass$;
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

    protected void setParent(ParseItem parseItem) {
        this.parent = parseItem;
    }

    protected void setVolatile() {
        this.volatileFunction = true;
        ParseItem parseItem = this.parent;
        if (parseItem == null || parseItem.isVolatile()) {
            return;
        }
        this.parent.setVolatile();
    }

    protected final void setInvalid() {
        this.valid = false;
        ParseItem parseItem = this.parent;
        if (parseItem != null) {
            parseItem.setInvalid();
        }
    }

    final boolean isVolatile() {
        return this.volatileFunction;
    }

    final boolean isValid() {
        return this.valid;
    }

    protected void setAlternateCode() {
        this.alternateCode = true;
    }

    protected final boolean useAlternateCode() {
        return this.alternateCode;
    }
}
