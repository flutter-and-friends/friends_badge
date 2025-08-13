package jxl.read.biff;

import jxl.biff.IntegerHelper;
import jxl.biff.RecordData;
import jxl.biff.Type;

/* loaded from: classes2.dex */
class PasswordRecord extends RecordData {
    private String password;
    private int passwordHash;

    public PasswordRecord(Record record) {
        super(Type.PASSWORD);
        byte[] data = record.getData();
        this.passwordHash = IntegerHelper.getInt(data[0], data[1]);
    }

    public int getPasswordHash() {
        return this.passwordHash;
    }
}
