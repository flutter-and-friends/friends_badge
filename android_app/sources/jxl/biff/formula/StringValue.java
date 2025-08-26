package jxl.biff.formula;

import common.Logger;
import jxl.WorkbookSettings;
import jxl.biff.StringHelper;

/* loaded from: classes2.dex */
class StringValue extends Operand implements ParsedThing {
    static /* synthetic */ Class class$jxl$biff$formula$StringValue;
    private static final Logger logger;
    private WorkbookSettings settings;
    private String value;

    @Override // jxl.biff.formula.ParseItem
    void handleImportedCellReferences() {
    }

    static {
        Class clsClass$ = class$jxl$biff$formula$StringValue;
        if (clsClass$ == null) {
            clsClass$ = class$("jxl.biff.formula.StringValue");
            class$jxl$biff$formula$StringValue = clsClass$;
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

    public StringValue(WorkbookSettings workbookSettings) {
        this.settings = workbookSettings;
    }

    public StringValue(String str) {
        this.value = str;
    }

    @Override // jxl.biff.formula.ParsedThing
    public int read(byte[] bArr, int i) {
        int i2 = bArr[i] & 255;
        if ((bArr[i + 1] & 1) == 0) {
            this.value = StringHelper.getString(bArr, i2, i + 2, this.settings);
        } else {
            this.value = StringHelper.getUnicodeString(bArr, i2, i + 2);
            i2 *= 2;
        }
        return i2 + 2;
    }

    @Override // jxl.biff.formula.ParseItem
    byte[] getBytes() {
        byte[] bArr = new byte[(this.value.length() * 2) + 3];
        bArr[0] = Token.STRING.getCode();
        bArr[1] = (byte) this.value.length();
        bArr[2] = 1;
        StringHelper.getUnicodeBytes(this.value, bArr, 3);
        return bArr;
    }

    @Override // jxl.biff.formula.ParseItem
    public void getString(StringBuffer stringBuffer) {
        stringBuffer.append("\"");
        stringBuffer.append(this.value);
        stringBuffer.append("\"");
    }
}
