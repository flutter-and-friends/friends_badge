package jxl.write.biff;

import jxl.biff.IntegerHelper;
import jxl.biff.Type;
import jxl.biff.WritableRecordData;

/* loaded from: classes2.dex */
class BackupRecord extends WritableRecordData {
    private boolean backup;
    private byte[] data;

    public BackupRecord(boolean z) {
        super(Type.BACKUP);
        this.backup = z;
        this.data = new byte[2];
        if (this.backup) {
            IntegerHelper.getTwoBytes(1, this.data, 0);
        }
    }

    @Override // jxl.biff.WritableRecordData
    public byte[] getData() {
        return this.data;
    }
}
