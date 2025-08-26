package jxl.biff.formula;

import jxl.Cell;
import jxl.biff.CellReferenceHelper;
import jxl.biff.IntegerHelper;

/* loaded from: classes2.dex */
class SharedFormulaArea extends Operand implements ParsedThing {
    private int columnFirst;
    private boolean columnFirstRelative;
    private int columnLast;
    private boolean columnLastRelative;
    private Cell relativeTo;
    private int rowFirst;
    private boolean rowFirstRelative;
    private int rowLast;
    private boolean rowLastRelative;

    @Override // jxl.biff.formula.ParseItem
    void handleImportedCellReferences() {
    }

    public SharedFormulaArea(Cell cell) {
        this.relativeTo = cell;
    }

    int getFirstColumn() {
        return this.columnFirst;
    }

    int getFirstRow() {
        return this.rowFirst;
    }

    int getLastColumn() {
        return this.columnLast;
    }

    int getLastRow() {
        return this.rowLast;
    }

    @Override // jxl.biff.formula.ParsedThing
    public int read(byte[] bArr, int i) {
        this.rowFirst = IntegerHelper.getShort(bArr[i], bArr[i + 1]);
        this.rowLast = IntegerHelper.getShort(bArr[i + 2], bArr[i + 3]);
        int i2 = IntegerHelper.getInt(bArr[i + 4], bArr[i + 5]);
        this.columnFirst = i2 & 255;
        this.columnFirstRelative = (i2 & 16384) != 0;
        this.rowFirstRelative = (i2 & 32768) != 0;
        if (this.columnFirstRelative) {
            this.columnFirst = this.relativeTo.getColumn() + this.columnFirst;
        }
        if (this.rowFirstRelative) {
            this.rowFirst = this.relativeTo.getRow() + this.rowFirst;
        }
        int i3 = IntegerHelper.getInt(bArr[i + 6], bArr[i + 7]);
        this.columnLast = i3 & 255;
        this.columnLastRelative = (i3 & 16384) != 0;
        this.rowLastRelative = (i3 & 32768) != 0;
        if (this.columnLastRelative) {
            this.columnLast = this.relativeTo.getColumn() + this.columnLast;
        }
        if (!this.rowLastRelative) {
            return 8;
        }
        this.rowLast = this.relativeTo.getRow() + this.rowLast;
        return 8;
    }

    @Override // jxl.biff.formula.ParseItem
    public void getString(StringBuffer stringBuffer) {
        CellReferenceHelper.getCellReference(this.columnFirst, this.rowFirst, stringBuffer);
        stringBuffer.append(':');
        CellReferenceHelper.getCellReference(this.columnLast, this.rowLast, stringBuffer);
    }

    @Override // jxl.biff.formula.ParseItem
    byte[] getBytes() {
        byte[] bArr = new byte[9];
        bArr[0] = Token.AREA.getCode();
        IntegerHelper.getTwoBytes(this.rowFirst, bArr, 1);
        IntegerHelper.getTwoBytes(this.rowLast, bArr, 3);
        IntegerHelper.getTwoBytes(this.columnFirst, bArr, 5);
        IntegerHelper.getTwoBytes(this.columnLast, bArr, 7);
        return bArr;
    }
}
