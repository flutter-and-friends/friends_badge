package jxl.biff.drawing;

import common.Logger;
import jxl.biff.IntegerHelper;
import jxl.biff.Type;
import jxl.biff.WritableRecordData;
import jxl.read.biff.Record;

/* loaded from: classes2.dex */
public class NoteRecord extends WritableRecordData {
    static /* synthetic */ Class class$jxl$biff$drawing$NoteRecord;
    private static Logger logger;
    private int column;
    private byte[] data;
    private int objectId;
    private int row;

    static {
        Class clsClass$ = class$jxl$biff$drawing$NoteRecord;
        if (clsClass$ == null) {
            clsClass$ = class$("jxl.biff.drawing.NoteRecord");
            class$jxl$biff$drawing$NoteRecord = clsClass$;
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

    public NoteRecord(Record record) {
        super(record);
        this.data = getRecord().getData();
        byte[] bArr = this.data;
        this.row = IntegerHelper.getInt(bArr[0], bArr[1]);
        byte[] bArr2 = this.data;
        this.column = IntegerHelper.getInt(bArr2[2], bArr2[3]);
        byte[] bArr3 = this.data;
        this.objectId = IntegerHelper.getInt(bArr3[6], bArr3[7]);
    }

    public NoteRecord(byte[] bArr) {
        super(Type.NOTE);
        this.data = bArr;
    }

    public NoteRecord(int i, int i2, int i3) {
        super(Type.NOTE);
        this.row = i2;
        this.column = i;
        this.objectId = i3;
    }

    @Override // jxl.biff.WritableRecordData
    public byte[] getData() {
        byte[] bArr = this.data;
        if (bArr != null) {
            return bArr;
        }
        this.data = new byte[12];
        IntegerHelper.getTwoBytes(this.row, this.data, 0);
        IntegerHelper.getTwoBytes(this.column, this.data, 2);
        IntegerHelper.getTwoBytes(this.objectId, this.data, 6);
        IntegerHelper.getTwoBytes(0, this.data, 8);
        return this.data;
    }

    int getRow() {
        return this.row;
    }

    int getColumn() {
        return this.column;
    }

    public int getObjectId() {
        return this.objectId;
    }
}
