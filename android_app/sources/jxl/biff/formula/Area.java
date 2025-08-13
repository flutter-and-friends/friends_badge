package jxl.biff.formula;

import common.Assert;
import common.Logger;
import jxl.biff.CellReferenceHelper;
import jxl.biff.IntegerHelper;

/* loaded from: classes2.dex */
class Area extends Operand implements ParsedThing {
    static /* synthetic */ Class class$jxl$biff$formula$Area;
    private static Logger logger;
    private int columnFirst;
    private boolean columnFirstRelative;
    private int columnLast;
    private boolean columnLastRelative;
    private int rowFirst;
    private boolean rowFirstRelative;
    private int rowLast;
    private boolean rowLastRelative;

    @Override // jxl.biff.formula.ParseItem
    void handleImportedCellReferences() {
    }

    static {
        Class clsClass$ = class$jxl$biff$formula$Area;
        if (clsClass$ == null) {
            clsClass$ = class$("jxl.biff.formula.Area");
            class$jxl$biff$formula$Area = clsClass$;
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

    Area() {
    }

    Area(String str) {
        int iIndexOf = str.indexOf(":");
        Assert.verify(iIndexOf != -1);
        String strSubstring = str.substring(0, iIndexOf);
        String strSubstring2 = str.substring(iIndexOf + 1);
        this.columnFirst = CellReferenceHelper.getColumn(strSubstring);
        this.rowFirst = CellReferenceHelper.getRow(strSubstring);
        this.columnLast = CellReferenceHelper.getColumn(strSubstring2);
        this.rowLast = CellReferenceHelper.getRow(strSubstring2);
        this.columnFirstRelative = CellReferenceHelper.isColumnRelative(strSubstring);
        this.rowFirstRelative = CellReferenceHelper.isRowRelative(strSubstring);
        this.columnLastRelative = CellReferenceHelper.isColumnRelative(strSubstring2);
        this.rowLastRelative = CellReferenceHelper.isRowRelative(strSubstring2);
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
        this.rowFirst = IntegerHelper.getInt(bArr[i], bArr[i + 1]);
        this.rowLast = IntegerHelper.getInt(bArr[i + 2], bArr[i + 3]);
        int i2 = IntegerHelper.getInt(bArr[i + 4], bArr[i + 5]);
        this.columnFirst = i2 & 255;
        this.columnFirstRelative = (i2 & 16384) != 0;
        this.rowFirstRelative = (i2 & 32768) != 0;
        int i3 = IntegerHelper.getInt(bArr[i + 6], bArr[i + 7]);
        this.columnLast = i3 & 255;
        this.columnLastRelative = (i3 & 16384) != 0;
        this.rowLastRelative = (i3 & 32768) != 0;
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
        bArr[0] = !useAlternateCode() ? Token.AREA.getCode() : Token.AREA.getCode2();
        IntegerHelper.getTwoBytes(this.rowFirst, bArr, 1);
        IntegerHelper.getTwoBytes(this.rowLast, bArr, 3);
        int i = this.columnFirst;
        if (this.rowFirstRelative) {
            i |= 32768;
        }
        if (this.columnFirstRelative) {
            i |= 16384;
        }
        IntegerHelper.getTwoBytes(i, bArr, 5);
        int i2 = this.columnLast;
        if (this.rowLastRelative) {
            i2 |= 32768;
        }
        if (this.columnLastRelative) {
            i2 |= 16384;
        }
        IntegerHelper.getTwoBytes(i2, bArr, 7);
        return bArr;
    }

    @Override // jxl.biff.formula.Operand, jxl.biff.formula.ParseItem
    public void adjustRelativeCellReferences(int i, int i2) {
        if (this.columnFirstRelative) {
            this.columnFirst += i;
        }
        if (this.columnLastRelative) {
            this.columnLast += i;
        }
        if (this.rowFirstRelative) {
            this.rowFirst += i2;
        }
        if (this.rowLastRelative) {
            this.rowLast += i2;
        }
    }

    @Override // jxl.biff.formula.Operand, jxl.biff.formula.ParseItem
    void columnInserted(int i, int i2, boolean z) {
        if (z) {
            int i3 = this.columnFirst;
            if (i2 <= i3) {
                this.columnFirst = i3 + 1;
            }
            int i4 = this.columnLast;
            if (i2 <= i4) {
                this.columnLast = i4 + 1;
            }
        }
    }

    @Override // jxl.biff.formula.Operand, jxl.biff.formula.ParseItem
    void columnRemoved(int i, int i2, boolean z) {
        if (z) {
            int i3 = this.columnFirst;
            if (i2 < i3) {
                this.columnFirst = i3 - 1;
            }
            int i4 = this.columnLast;
            if (i2 <= i4) {
                this.columnLast = i4 - 1;
            }
        }
    }

    @Override // jxl.biff.formula.Operand, jxl.biff.formula.ParseItem
    void rowInserted(int i, int i2, boolean z) {
        if (z && this.rowLast != 65535) {
            int i3 = this.rowFirst;
            if (i2 <= i3) {
                this.rowFirst = i3 + 1;
            }
            int i4 = this.rowLast;
            if (i2 <= i4) {
                this.rowLast = i4 + 1;
            }
        }
    }

    @Override // jxl.biff.formula.Operand, jxl.biff.formula.ParseItem
    void rowRemoved(int i, int i2, boolean z) {
        if (z && this.rowLast != 65535) {
            int i3 = this.rowFirst;
            if (i2 < i3) {
                this.rowFirst = i3 - 1;
            }
            int i4 = this.rowLast;
            if (i2 <= i4) {
                this.rowLast = i4 - 1;
            }
        }
    }

    protected void setRangeData(int i, int i2, int i3, int i4, boolean z, boolean z2, boolean z3, boolean z4) {
        this.columnFirst = i;
        this.columnLast = i2;
        this.rowFirst = i3;
        this.rowLast = i4;
        this.columnFirstRelative = z;
        this.columnLastRelative = z2;
        this.rowFirstRelative = z3;
        this.rowLastRelative = z4;
    }
}
