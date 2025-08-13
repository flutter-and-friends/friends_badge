package jxl.read.biff;

import common.Logger;
import jxl.biff.IntegerHelper;
import jxl.biff.RecordData;

/* loaded from: classes2.dex */
class MulBlankRecord extends RecordData {
    static /* synthetic */ Class class$jxl$read$biff$MulBlankRecord;
    private static Logger logger;
    private int colFirst;
    private int colLast;
    private int numblanks;
    private int row;
    private int[] xfIndices;

    static {
        Class clsClass$ = class$jxl$read$biff$MulBlankRecord;
        if (clsClass$ == null) {
            clsClass$ = class$("jxl.read.biff.MulBlankRecord");
            class$jxl$read$biff$MulBlankRecord = clsClass$;
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

    public MulBlankRecord(Record record) {
        super(record);
        byte[] data = getRecord().getData();
        int length = getRecord().getLength();
        this.row = IntegerHelper.getInt(data[0], data[1]);
        this.colFirst = IntegerHelper.getInt(data[2], data[3]);
        this.colLast = IntegerHelper.getInt(data[length - 2], data[length - 1]);
        this.numblanks = (this.colLast - this.colFirst) + 1;
        this.xfIndices = new int[this.numblanks];
        readBlanks(data);
    }

    private void readBlanks(byte[] bArr) {
        int i = 4;
        for (int i2 = 0; i2 < this.numblanks; i2++) {
            this.xfIndices[i2] = IntegerHelper.getInt(bArr[i], bArr[i + 1]);
            i += 2;
        }
    }

    public int getRow() {
        return this.row;
    }

    public int getFirstColumn() {
        return this.colFirst;
    }

    public int getNumberOfColumns() {
        return this.numblanks;
    }

    public int getXFIndex(int i) {
        return this.xfIndices[i];
    }
}
