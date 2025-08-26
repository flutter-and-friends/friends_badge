package jxl.write.biff;

import common.Logger;
import jxl.biff.StringHelper;
import jxl.biff.Type;
import jxl.biff.WritableRecordData;

/* loaded from: classes2.dex */
class ExternalNameRecord extends WritableRecordData {
    static /* synthetic */ Class class$jxl$write$biff$ExternalNameRecord;
    Logger logger;
    private String name;

    static /* synthetic */ Class class$(String str) {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e) {
            throw new NoClassDefFoundError(e.getMessage());
        }
    }

    public ExternalNameRecord(String str) {
        super(Type.EXTERNNAME);
        Class clsClass$ = class$jxl$write$biff$ExternalNameRecord;
        if (clsClass$ == null) {
            clsClass$ = class$("jxl.write.biff.ExternalNameRecord");
            class$jxl$write$biff$ExternalNameRecord = clsClass$;
        }
        this.logger = Logger.getLogger(clsClass$);
        this.name = str;
    }

    @Override // jxl.biff.WritableRecordData
    public byte[] getData() {
        byte[] bArr = new byte[(this.name.length() * 2) + 12];
        bArr[6] = (byte) this.name.length();
        bArr[7] = 1;
        StringHelper.getUnicodeBytes(this.name, bArr, 8);
        int length = (this.name.length() * 2) + 8;
        bArr[length] = 2;
        bArr[length + 1] = 0;
        bArr[length + 2] = 28;
        bArr[length + 3] = 23;
        return bArr;
    }
}
