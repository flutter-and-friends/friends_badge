package jxl.write.biff;

import jxl.biff.Type;
import jxl.biff.WritableRecordData;

/* loaded from: classes2.dex */
class ButtonPropertySetRecord extends WritableRecordData {
    private byte[] data;

    public ButtonPropertySetRecord(jxl.read.biff.ButtonPropertySetRecord buttonPropertySetRecord) {
        super(Type.BUTTONPROPERTYSET);
        this.data = buttonPropertySetRecord.getData();
    }

    public ButtonPropertySetRecord(ButtonPropertySetRecord buttonPropertySetRecord) {
        super(Type.BUTTONPROPERTYSET);
        this.data = buttonPropertySetRecord.getData();
    }

    @Override // jxl.biff.WritableRecordData
    public byte[] getData() {
        return this.data;
    }
}
