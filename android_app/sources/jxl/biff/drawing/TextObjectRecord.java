package jxl.biff.drawing;

import android.device.scanner.configuration.PropertyID;
import common.Logger;
import jxl.biff.IntegerHelper;
import jxl.biff.Type;
import jxl.biff.WritableRecordData;
import jxl.read.biff.Record;

/* loaded from: classes2.dex */
public class TextObjectRecord extends WritableRecordData {
    static /* synthetic */ Class class$jxl$biff$drawing$TextObjectRecord;
    private static Logger logger;
    private byte[] data;
    private int textLength;

    static {
        Class clsClass$ = class$jxl$biff$drawing$TextObjectRecord;
        if (clsClass$ == null) {
            clsClass$ = class$("jxl.biff.drawing.TextObjectRecord");
            class$jxl$biff$drawing$TextObjectRecord = clsClass$;
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

    TextObjectRecord(String str) {
        super(Type.TXO);
        this.textLength = str.length();
    }

    public TextObjectRecord(Record record) {
        super(record);
        this.data = getRecord().getData();
        byte[] bArr = this.data;
        this.textLength = IntegerHelper.getInt(bArr[10], bArr[11]);
    }

    public TextObjectRecord(byte[] bArr) {
        super(Type.TXO);
        this.data = bArr;
    }

    @Override // jxl.biff.WritableRecordData
    public byte[] getData() {
        byte[] bArr = this.data;
        if (bArr != null) {
            return bArr;
        }
        this.data = new byte[18];
        IntegerHelper.getTwoBytes(PropertyID.I25_ENABLE_CHECK, this.data, 0);
        IntegerHelper.getTwoBytes(this.textLength, this.data, 10);
        IntegerHelper.getTwoBytes(16, this.data, 12);
        return this.data;
    }
}
