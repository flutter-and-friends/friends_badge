package jxl.biff.formula;

import common.Logger;
import jxl.Cell;
import jxl.biff.CellReferenceHelper;
import jxl.biff.IntegerHelper;

/* loaded from: classes2.dex */
class CellReference extends Operand implements ParsedThing {
    static /* synthetic */ Class class$jxl$biff$formula$CellReference;
    private static Logger logger;
    private int column;
    private boolean columnRelative;
    private Cell relativeTo;
    private int row;
    private boolean rowRelative;

    @Override // jxl.biff.formula.ParseItem
    void handleImportedCellReferences() {
    }

    static {
        Class clsClass$ = class$jxl$biff$formula$CellReference;
        if (clsClass$ == null) {
            clsClass$ = class$("jxl.biff.formula.CellReference");
            class$jxl$biff$formula$CellReference = clsClass$;
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

    public CellReference(Cell cell) {
        this.relativeTo = cell;
    }

    public CellReference() {
    }

    public CellReference(String str) {
        this.column = CellReferenceHelper.getColumn(str);
        this.row = CellReferenceHelper.getRow(str);
        this.columnRelative = CellReferenceHelper.isColumnRelative(str);
        this.rowRelative = CellReferenceHelper.isRowRelative(str);
    }

    @Override // jxl.biff.formula.ParsedThing
    public int read(byte[] bArr, int i) {
        this.row = IntegerHelper.getInt(bArr[i], bArr[i + 1]);
        int i2 = IntegerHelper.getInt(bArr[i + 2], bArr[i + 3]);
        this.column = i2 & 255;
        this.columnRelative = (i2 & 16384) != 0;
        this.rowRelative = (i2 & 32768) != 0;
        return 4;
    }

    public int getColumn() {
        return this.column;
    }

    public int getRow() {
        return this.row;
    }

    @Override // jxl.biff.formula.ParseItem
    public void getString(StringBuffer stringBuffer) {
        CellReferenceHelper.getCellReference(this.column, !this.columnRelative, this.row, !this.rowRelative, stringBuffer);
    }

    @Override // jxl.biff.formula.ParseItem
    byte[] getBytes() {
        byte[] bArr = new byte[5];
        bArr[0] = !useAlternateCode() ? Token.REF.getCode() : Token.REF.getCode2();
        IntegerHelper.getTwoBytes(this.row, bArr, 1);
        int i = this.column;
        if (this.rowRelative) {
            i |= 32768;
        }
        if (this.columnRelative) {
            i |= 16384;
        }
        IntegerHelper.getTwoBytes(i, bArr, 3);
        return bArr;
    }

    @Override // jxl.biff.formula.Operand, jxl.biff.formula.ParseItem
    public void adjustRelativeCellReferences(int i, int i2) {
        if (this.columnRelative) {
            this.column += i;
        }
        if (this.rowRelative) {
            this.row += i2;
        }
    }

    @Override // jxl.biff.formula.Operand, jxl.biff.formula.ParseItem
    public void columnInserted(int i, int i2, boolean z) {
        int i3;
        if (z && (i3 = this.column) >= i2) {
            this.column = i3 + 1;
        }
    }

    @Override // jxl.biff.formula.Operand, jxl.biff.formula.ParseItem
    void columnRemoved(int i, int i2, boolean z) {
        int i3;
        if (z && (i3 = this.column) >= i2) {
            this.column = i3 - 1;
        }
    }

    @Override // jxl.biff.formula.Operand, jxl.biff.formula.ParseItem
    void rowInserted(int i, int i2, boolean z) {
        int i3;
        if (z && (i3 = this.row) >= i2) {
            this.row = i3 + 1;
        }
    }

    @Override // jxl.biff.formula.Operand, jxl.biff.formula.ParseItem
    void rowRemoved(int i, int i2, boolean z) {
        int i3;
        if (z && (i3 = this.row) >= i2) {
            this.row = i3 - 1;
        }
    }
}
