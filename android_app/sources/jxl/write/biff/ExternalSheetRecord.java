package jxl.write.biff;

import java.util.ArrayList;
import java.util.Iterator;
import jxl.biff.IntegerHelper;
import jxl.biff.Type;
import jxl.biff.WritableRecordData;

/* loaded from: classes2.dex */
class ExternalSheetRecord extends WritableRecordData {
    private byte[] data;
    private ArrayList xtis;

    private static class XTI {
        int firstTab;
        int lastTab;
        int supbookIndex;

        XTI(int i, int i2, int i3) {
            this.supbookIndex = i;
            this.firstTab = i2;
            this.lastTab = i3;
        }

        void sheetInserted(int i) {
            int i2 = this.firstTab;
            if (i2 >= i) {
                this.firstTab = i2 + 1;
            }
            int i3 = this.lastTab;
            if (i3 >= i) {
                this.lastTab = i3 + 1;
            }
        }

        void sheetRemoved(int i) {
            if (this.firstTab == i) {
                this.firstTab = 0;
            }
            if (this.lastTab == i) {
                this.lastTab = 0;
            }
            int i2 = this.firstTab;
            if (i2 > i) {
                this.firstTab = i2 - 1;
            }
            int i3 = this.lastTab;
            if (i3 > i) {
                this.lastTab = i3 - 1;
            }
        }
    }

    public ExternalSheetRecord(jxl.read.biff.ExternalSheetRecord externalSheetRecord) {
        super(Type.EXTERNSHEET);
        this.xtis = new ArrayList(externalSheetRecord.getNumRecords());
        for (int i = 0; i < externalSheetRecord.getNumRecords(); i++) {
            this.xtis.add(new XTI(externalSheetRecord.getSupbookIndex(i), externalSheetRecord.getFirstTabIndex(i), externalSheetRecord.getLastTabIndex(i)));
        }
    }

    public ExternalSheetRecord() {
        super(Type.EXTERNSHEET);
        this.xtis = new ArrayList();
    }

    int getIndex(int i, int i2) {
        Iterator it = this.xtis.iterator();
        boolean z = false;
        int i3 = 0;
        while (it.hasNext() && !z) {
            XTI xti = (XTI) it.next();
            if (xti.supbookIndex == i && xti.firstTab == i2) {
                z = true;
            } else {
                i3++;
            }
        }
        if (z) {
            return i3;
        }
        this.xtis.add(new XTI(i, i2, i2));
        return this.xtis.size() - 1;
    }

    @Override // jxl.biff.WritableRecordData
    public byte[] getData() {
        int i = 2;
        byte[] bArr = new byte[(this.xtis.size() * 6) + 2];
        IntegerHelper.getTwoBytes(this.xtis.size(), bArr, 0);
        Iterator it = this.xtis.iterator();
        while (it.hasNext()) {
            XTI xti = (XTI) it.next();
            IntegerHelper.getTwoBytes(xti.supbookIndex, bArr, i);
            IntegerHelper.getTwoBytes(xti.firstTab, bArr, i + 2);
            IntegerHelper.getTwoBytes(xti.lastTab, bArr, i + 4);
            i += 6;
        }
        return bArr;
    }

    public int getSupbookIndex(int i) {
        return ((XTI) this.xtis.get(i)).supbookIndex;
    }

    public int getFirstTabIndex(int i) {
        return ((XTI) this.xtis.get(i)).firstTab;
    }

    public int getLastTabIndex(int i) {
        return ((XTI) this.xtis.get(i)).lastTab;
    }

    void sheetInserted(int i) {
        Iterator it = this.xtis.iterator();
        while (it.hasNext()) {
            ((XTI) it.next()).sheetInserted(i);
        }
    }

    void sheetRemoved(int i) {
        Iterator it = this.xtis.iterator();
        while (it.hasNext()) {
            ((XTI) it.next()).sheetRemoved(i);
        }
    }
}
