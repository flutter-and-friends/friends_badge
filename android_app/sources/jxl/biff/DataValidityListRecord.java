package jxl.biff;

import jxl.read.biff.Record;

/* loaded from: classes2.dex */
public class DataValidityListRecord extends WritableRecordData {
    private byte[] data;
    private DValParser dvalParser;
    private int numSettings;
    private int objectId;

    public DataValidityListRecord(Record record) {
        super(record);
        this.data = getRecord().getData();
        byte[] bArr = this.data;
        this.objectId = IntegerHelper.getInt(bArr[10], bArr[11], bArr[12], bArr[13]);
        byte[] bArr2 = this.data;
        this.numSettings = IntegerHelper.getInt(bArr2[14], bArr2[15], bArr2[16], bArr2[17]);
    }

    public DataValidityListRecord(DValParser dValParser) {
        super(Type.DVAL);
        this.dvalParser = dValParser;
    }

    DataValidityListRecord(DataValidityListRecord dataValidityListRecord) {
        super(Type.DVAL);
        this.data = dataValidityListRecord.getData();
    }

    int getNumberOfSettings() {
        return this.numSettings;
    }

    @Override // jxl.biff.WritableRecordData
    public byte[] getData() {
        DValParser dValParser = this.dvalParser;
        if (dValParser == null) {
            return this.data;
        }
        return dValParser.getData();
    }

    void dvRemoved() {
        if (this.dvalParser == null) {
            this.dvalParser = new DValParser(this.data);
        }
        this.dvalParser.dvRemoved();
    }

    void dvAdded() {
        if (this.dvalParser == null) {
            this.dvalParser = new DValParser(this.data);
        }
        this.dvalParser.dvAdded();
    }

    public boolean hasDVRecords() {
        DValParser dValParser = this.dvalParser;
        return dValParser == null || dValParser.getNumberOfDVRecords() > 0;
    }

    public int getObjectId() {
        DValParser dValParser = this.dvalParser;
        if (dValParser == null) {
            return this.objectId;
        }
        return dValParser.getObjectId();
    }
}
