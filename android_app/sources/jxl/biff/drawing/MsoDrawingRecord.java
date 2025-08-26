package jxl.biff.drawing;

import common.Logger;
import jxl.biff.Type;
import jxl.biff.WritableRecordData;
import jxl.read.biff.Record;

/* loaded from: classes2.dex */
public class MsoDrawingRecord extends WritableRecordData {
    static /* synthetic */ Class class$jxl$biff$drawing$MsoDrawingRecord;
    private static Logger logger;
    private byte[] data;
    private boolean first;

    static {
        Class clsClass$ = class$jxl$biff$drawing$MsoDrawingRecord;
        if (clsClass$ == null) {
            clsClass$ = class$("jxl.biff.drawing.MsoDrawingRecord");
            class$jxl$biff$drawing$MsoDrawingRecord = clsClass$;
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

    public MsoDrawingRecord(Record record) {
        super(record);
        this.data = getRecord().getData();
        this.first = false;
    }

    public MsoDrawingRecord(byte[] bArr) {
        super(Type.MSODRAWING);
        this.data = bArr;
        this.first = false;
    }

    @Override // jxl.biff.WritableRecordData
    public byte[] getData() {
        return this.data;
    }

    @Override // jxl.biff.RecordData
    public Record getRecord() {
        return super.getRecord();
    }

    public void setFirst() {
        this.first = true;
    }

    public boolean isFirst() {
        return this.first;
    }
}
