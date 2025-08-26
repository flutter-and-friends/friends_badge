package jxl.write.biff;

import common.Logger;
import jxl.biff.Type;
import jxl.biff.WritableRecordData;

/* loaded from: classes2.dex */
class ArbitraryRecord extends WritableRecordData {
    static /* synthetic */ Class class$jxl$write$biff$ArbitraryRecord;
    private static Logger logger;
    private byte[] data;

    static {
        Class clsClass$ = class$jxl$write$biff$ArbitraryRecord;
        if (clsClass$ == null) {
            clsClass$ = class$("jxl.write.biff.ArbitraryRecord");
            class$jxl$write$biff$ArbitraryRecord = clsClass$;
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

    public ArbitraryRecord(int i, byte[] bArr) {
        super(Type.createType(i));
        this.data = bArr;
        Logger logger2 = logger;
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("ArbitraryRecord of type ");
        stringBuffer.append(i);
        stringBuffer.append(" created");
        logger2.warn(stringBuffer.toString());
    }

    @Override // jxl.biff.WritableRecordData
    public byte[] getData() {
        return this.data;
    }
}
