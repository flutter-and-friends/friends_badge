package jxl.write.biff;

import jxl.biff.IntegerHelper;
import jxl.biff.Type;
import jxl.biff.WritableRecordData;

/* loaded from: classes2.dex */
class CalcModeRecord extends WritableRecordData {
    private CalcMode calculationMode;
    static CalcMode manual = new CalcMode(0);
    static CalcMode automatic = new CalcMode(1);
    static CalcMode automaticNoTables = new CalcMode(-1);

    /* JADX INFO: Access modifiers changed from: private */
    static class CalcMode {
        int value;

        public CalcMode(int i) {
            this.value = i;
        }
    }

    public CalcModeRecord(CalcMode calcMode) {
        super(Type.CALCMODE);
        this.calculationMode = calcMode;
    }

    @Override // jxl.biff.WritableRecordData
    public byte[] getData() {
        byte[] bArr = new byte[2];
        IntegerHelper.getTwoBytes(this.calculationMode.value, bArr, 0);
        return bArr;
    }
}
