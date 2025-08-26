package jxl.biff.formula;

import common.Assert;
import jxl.biff.IntegerHelper;
import jxl.biff.WorkbookMethods;

/* loaded from: classes2.dex */
class NameRange extends Operand implements ParsedThing {
    private int index;
    private String name;
    private WorkbookMethods nameTable;

    public NameRange(WorkbookMethods workbookMethods) {
        this.nameTable = workbookMethods;
        Assert.verify(this.nameTable != null);
    }

    public NameRange(String str, WorkbookMethods workbookMethods) throws FormulaException {
        this.name = str;
        this.nameTable = workbookMethods;
        this.index = this.nameTable.getNameIndex(this.name);
        int i = this.index;
        if (i < 0) {
            throw new FormulaException(FormulaException.CELL_NAME_NOT_FOUND, this.name);
        }
        this.index = i + 1;
    }

    @Override // jxl.biff.formula.ParsedThing
    public int read(byte[] bArr, int i) {
        this.index = IntegerHelper.getInt(bArr[i], bArr[i + 1]);
        this.name = this.nameTable.getName(this.index - 1);
        return 4;
    }

    @Override // jxl.biff.formula.ParseItem
    byte[] getBytes() {
        byte[] bArr = new byte[5];
        bArr[0] = Token.NAMED_RANGE.getCode();
        IntegerHelper.getTwoBytes(this.index, bArr, 1);
        return bArr;
    }

    @Override // jxl.biff.formula.ParseItem
    public void getString(StringBuffer stringBuffer) {
        stringBuffer.append(this.name);
    }

    @Override // jxl.biff.formula.ParseItem
    void handleImportedCellReferences() {
        setInvalid();
    }
}
