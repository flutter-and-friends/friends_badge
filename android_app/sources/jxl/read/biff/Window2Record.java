package jxl.read.biff;

import common.Logger;
import jxl.biff.IntegerHelper;
import jxl.biff.RecordData;

/* loaded from: classes2.dex */
class Window2Record extends RecordData {
    public static final Biff7 biff7;
    static /* synthetic */ Class class$jxl$read$biff$Window2Record;
    private static Logger logger;
    private boolean displayZeroValues;
    private boolean frozenNotSplit;
    private boolean frozenPanes;
    private int normalMagnification;
    private int pageBreakPreviewMagnification;
    private boolean pageBreakPreviewMode;
    private boolean selected;
    private boolean showGridLines;

    static {
        Class clsClass$ = class$jxl$read$biff$Window2Record;
        if (clsClass$ == null) {
            clsClass$ = class$("jxl.read.biff.Window2Record");
            class$jxl$read$biff$Window2Record = clsClass$;
        }
        logger = Logger.getLogger(clsClass$);
        biff7 = new Biff7();
    }

    static /* synthetic */ Class class$(String str) {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e) {
            throw new NoClassDefFoundError(e.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    static class Biff7 {
        private Biff7() {
        }
    }

    public Window2Record(Record record) {
        super(record);
        byte[] data = record.getData();
        int i = IntegerHelper.getInt(data[0], data[1]);
        this.selected = (i & 512) != 0;
        this.showGridLines = (i & 2) != 0;
        this.frozenPanes = (i & 8) != 0;
        this.displayZeroValues = (i & 16) != 0;
        this.frozenNotSplit = (i & 256) != 0;
        this.pageBreakPreviewMode = (i & 2048) != 0;
        this.pageBreakPreviewMagnification = IntegerHelper.getInt(data[10], data[11]);
        this.normalMagnification = IntegerHelper.getInt(data[12], data[13]);
    }

    public Window2Record(Record record, Biff7 biff72) {
        super(record);
        byte[] data = record.getData();
        int i = IntegerHelper.getInt(data[0], data[1]);
        this.selected = (i & 512) != 0;
        this.showGridLines = (i & 2) != 0;
        this.frozenPanes = (i & 8) != 0;
        this.displayZeroValues = (i & 16) != 0;
        this.frozenNotSplit = (i & 256) != 0;
        this.pageBreakPreviewMode = (i & 2048) != 0;
    }

    public boolean isSelected() {
        return this.selected;
    }

    public boolean getShowGridLines() {
        return this.showGridLines;
    }

    public boolean getDisplayZeroValues() {
        return this.displayZeroValues;
    }

    public boolean getFrozen() {
        return this.frozenPanes;
    }

    public boolean getFrozenNotSplit() {
        return this.frozenNotSplit;
    }

    public boolean isPageBreakPreview() {
        return this.pageBreakPreviewMode;
    }

    public int getPageBreakPreviewMagnificaiton() {
        return this.pageBreakPreviewMagnification;
    }

    public int getNormalMagnificaiton() {
        return this.normalMagnification;
    }
}
