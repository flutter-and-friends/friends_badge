package jxl.write.biff;

import java.util.ArrayList;
import java.util.Iterator;
import jxl.biff.IntegerHelper;
import jxl.biff.Type;
import jxl.biff.WritableRecordData;

/* loaded from: classes2.dex */
class DBCellRecord extends WritableRecordData {
    private int cellOffset;
    private ArrayList cellRowPositions;
    private int position;
    private int rowPos;

    public DBCellRecord(int i) {
        super(Type.DBCELL);
        this.rowPos = i;
        this.cellRowPositions = new ArrayList(10);
    }

    void setCellOffset(int i) {
        this.cellOffset = i;
    }

    void addCellRowPosition(int i) {
        this.cellRowPositions.add(new Integer(i));
    }

    void setPosition(int i) {
        this.position = i;
    }

    @Override // jxl.biff.WritableRecordData
    protected byte[] getData() {
        int i = 4;
        byte[] bArr = new byte[(this.cellRowPositions.size() * 2) + 4];
        IntegerHelper.getFourBytes(this.position - this.rowPos, bArr, 0);
        int i2 = this.cellOffset;
        Iterator it = this.cellRowPositions.iterator();
        while (it.hasNext()) {
            int iIntValue = ((Integer) it.next()).intValue();
            IntegerHelper.getTwoBytes(iIntValue - i2, bArr, i);
            i += 2;
            i2 = iIntValue;
        }
        return bArr;
    }
}
