package jxl.read.biff;

import common.Logger;
import jxl.biff.IntegerHelper;
import jxl.biff.RecordData;

/* loaded from: classes2.dex */
public class RowRecord extends RecordData {
    static /* synthetic */ Class class$jxl$read$biff$RowRecord = null;
    private static final int defaultHeightIndicator = 255;
    private static Logger logger;
    private boolean collapsed;
    private boolean defaultFormat;
    private boolean matchesDefFontHeight;
    private int rowHeight;
    private int rowNumber;
    private int xfIndex;

    static {
        Class clsClass$ = class$jxl$read$biff$RowRecord;
        if (clsClass$ == null) {
            clsClass$ = class$("jxl.read.biff.RowRecord");
            class$jxl$read$biff$RowRecord = clsClass$;
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

    RowRecord(Record record) {
        super(record);
        byte[] data = getRecord().getData();
        this.rowNumber = IntegerHelper.getInt(data[0], data[1]);
        this.rowHeight = IntegerHelper.getInt(data[6], data[7]);
        int i = IntegerHelper.getInt(data[12], data[13], data[14], data[15]);
        this.collapsed = (i & 32) != 0;
        this.matchesDefFontHeight = (i & 64) == 0;
        this.defaultFormat = (i & 128) != 0;
        this.xfIndex = (i & 268369920) >> 16;
    }

    boolean isDefaultHeight() {
        return this.rowHeight == 255;
    }

    public boolean matchesDefaultFontHeight() {
        return this.matchesDefFontHeight;
    }

    public int getRowNumber() {
        return this.rowNumber;
    }

    public int getRowHeight() {
        return this.rowHeight;
    }

    public boolean isCollapsed() {
        return this.collapsed;
    }

    public int getXFIndex() {
        return this.xfIndex;
    }

    public boolean hasDefaultFormat() {
        return this.defaultFormat;
    }
}
