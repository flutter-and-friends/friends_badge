package jxl.biff.formula;

import common.Logger;
import jxl.biff.IntegerHelper;

/* loaded from: classes2.dex */
class IntegerValue extends NumberValue implements ParsedThing {
    static /* synthetic */ Class class$jxl$biff$formula$IntegerValue;
    private static Logger logger;
    private boolean outOfRange;
    private double value;

    @Override // jxl.biff.formula.ParseItem
    void handleImportedCellReferences() {
    }

    static {
        Class clsClass$ = class$jxl$biff$formula$IntegerValue;
        if (clsClass$ == null) {
            clsClass$ = class$("jxl.biff.formula.IntegerValue");
            class$jxl$biff$formula$IntegerValue = clsClass$;
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

    public IntegerValue() {
        this.outOfRange = false;
    }

    public IntegerValue(String str) {
        try {
            this.value = Integer.parseInt(str);
        } catch (NumberFormatException e) {
            logger.warn(e, e);
            this.value = 0.0d;
        }
        double d = this.value;
        this.outOfRange = d != ((double) ((short) ((int) d)));
    }

    @Override // jxl.biff.formula.ParsedThing
    public int read(byte[] bArr, int i) {
        this.value = IntegerHelper.getInt(bArr[i], bArr[i + 1]);
        return 2;
    }

    @Override // jxl.biff.formula.ParseItem
    byte[] getBytes() {
        byte[] bArr = {Token.INTEGER.getCode(), 0, 0};
        IntegerHelper.getTwoBytes((int) this.value, bArr, 1);
        return bArr;
    }

    @Override // jxl.biff.formula.NumberValue
    public double getValue() {
        return this.value;
    }

    boolean isOutOfRange() {
        return this.outOfRange;
    }
}
