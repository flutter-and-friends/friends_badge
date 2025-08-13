package jxl.biff;

import android.device.PrinterManager;
import jxl.read.biff.Record;

/* loaded from: classes2.dex */
public class WorkspaceInformationRecord extends WritableRecordData {
    private static final int defaultOptions = 1217;
    private static final int fitToPages = 256;
    private int wsoptions;

    public WorkspaceInformationRecord(Record record) {
        super(record);
        byte[] data = getRecord().getData();
        this.wsoptions = IntegerHelper.getInt(data[0], data[1]);
    }

    public WorkspaceInformationRecord() {
        super(Type.WSBOOL);
        this.wsoptions = defaultOptions;
    }

    public boolean getFitToPages() {
        return (this.wsoptions & 256) != 0;
    }

    public void setFitToPages(boolean z) {
        this.wsoptions = z ? this.wsoptions | 256 : this.wsoptions & PrinterManager.PRNSTS_ERR_DRIVER;
    }

    @Override // jxl.biff.WritableRecordData
    public byte[] getData() {
        byte[] bArr = new byte[2];
        IntegerHelper.getTwoBytes(this.wsoptions, bArr, 0);
        return bArr;
    }
}
