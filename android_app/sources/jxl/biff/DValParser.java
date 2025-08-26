package jxl.biff;

import common.Logger;

/* loaded from: classes2.dex */
public class DValParser {
    private static int PROMPT_BOX_AT_CELL_MASK;
    private static int PROMPT_BOX_VISIBLE_MASK;
    private static int VALIDITY_DATA_CACHED_MASK;
    static /* synthetic */ Class class$jxl$biff$DValParser;
    private static Logger logger;
    private int numDVRecords;
    private int objectId;
    private boolean promptBoxAtCell;
    private boolean promptBoxVisible;
    private boolean validityDataCached;

    static {
        Class clsClass$ = class$jxl$biff$DValParser;
        if (clsClass$ == null) {
            clsClass$ = class$("jxl.biff.DValParser");
            class$jxl$biff$DValParser = clsClass$;
        }
        logger = Logger.getLogger(clsClass$);
        PROMPT_BOX_VISIBLE_MASK = 1;
        PROMPT_BOX_AT_CELL_MASK = 2;
        VALIDITY_DATA_CACHED_MASK = 4;
    }

    static /* synthetic */ Class class$(String str) {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e) {
            throw new NoClassDefFoundError(e.getMessage());
        }
    }

    public DValParser(byte[] bArr) {
        int i = IntegerHelper.getInt(bArr[0], bArr[1]);
        this.promptBoxVisible = (PROMPT_BOX_VISIBLE_MASK & i) != 0;
        this.promptBoxAtCell = (PROMPT_BOX_AT_CELL_MASK & i) != 0;
        this.validityDataCached = (i & VALIDITY_DATA_CACHED_MASK) != 0;
        this.objectId = IntegerHelper.getInt(bArr[10], bArr[11], bArr[12], bArr[13]);
        this.numDVRecords = IntegerHelper.getInt(bArr[14], bArr[15], bArr[16], bArr[17]);
    }

    public DValParser(int i, int i2) {
        this.objectId = i;
        this.numDVRecords = i2;
        this.validityDataCached = true;
    }

    public byte[] getData() {
        byte[] bArr = new byte[18];
        int i = this.promptBoxVisible ? PROMPT_BOX_VISIBLE_MASK | 0 : 0;
        if (this.promptBoxAtCell) {
            i |= PROMPT_BOX_AT_CELL_MASK;
        }
        if (this.validityDataCached) {
            i |= VALIDITY_DATA_CACHED_MASK;
        }
        IntegerHelper.getTwoBytes(i, bArr, 0);
        IntegerHelper.getFourBytes(this.objectId, bArr, 10);
        IntegerHelper.getFourBytes(this.numDVRecords, bArr, 14);
        return bArr;
    }

    public void dvRemoved() {
        this.numDVRecords--;
    }

    public int getNumberOfDVRecords() {
        return this.numDVRecords;
    }

    public int getObjectId() {
        return this.objectId;
    }

    public void dvAdded() {
        this.numDVRecords++;
    }
}
