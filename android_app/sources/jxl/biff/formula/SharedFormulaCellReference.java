package jxl.biff.formula;

import common.Logger;
import jxl.Cell;
import jxl.biff.CellReferenceHelper;
import jxl.biff.IntegerHelper;

/* loaded from: classes2.dex */
class SharedFormulaCellReference extends Operand implements ParsedThing {
    static /* synthetic */ Class class$jxl$biff$formula$SharedFormulaCellReference;
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
        Class clsClass$ = class$jxl$biff$formula$SharedFormulaCellReference;
        if (clsClass$ == null) {
            clsClass$ = class$("jxl.biff.formula.SharedFormulaCellReference");
            class$jxl$biff$formula$SharedFormulaCellReference = clsClass$;
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

    public SharedFormulaCellReference(Cell cell) {
        this.relativeTo = cell;
    }

    @Override // jxl.biff.formula.ParsedThing
    public int read(byte[] bArr, int i) {
        Cell cell;
        Cell cell2;
        this.row = IntegerHelper.getShort(bArr[i], bArr[i + 1]);
        int i2 = IntegerHelper.getInt(bArr[i + 2], bArr[i + 3]);
        this.column = (byte) (i2 & 255);
        this.columnRelative = (i2 & 16384) != 0;
        this.rowRelative = (i2 & 32768) != 0;
        if (this.columnRelative && (cell2 = this.relativeTo) != null) {
            this.column = cell2.getColumn() + this.column;
        }
        if (!this.rowRelative || (cell = this.relativeTo) == null) {
            return 4;
        }
        this.row = cell.getRow() + this.row;
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
        CellReferenceHelper.getCellReference(this.column, this.row, stringBuffer);
    }

    @Override // jxl.biff.formula.ParseItem
    byte[] getBytes() {
        byte[] bArr = new byte[5];
        bArr[0] = Token.REF.getCode();
        IntegerHelper.getTwoBytes(this.row, bArr, 1);
        int i = this.column;
        if (this.columnRelative) {
            i |= 16384;
        }
        if (this.rowRelative) {
            i |= 32768;
        }
        IntegerHelper.getTwoBytes(i, bArr, 3);
        return bArr;
    }
}
