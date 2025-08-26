package jxl.write.biff;

import common.Logger;
import jxl.SheetSettings;
import jxl.biff.DoubleHelper;
import jxl.biff.IntegerHelper;
import jxl.biff.Type;
import jxl.biff.WritableRecordData;
import jxl.format.PageOrientation;
import jxl.format.PaperSize;

/* loaded from: classes2.dex */
class SetupRecord extends WritableRecordData {
    static /* synthetic */ Class class$jxl$write$biff$SetupRecord;
    private int copies;
    private byte[] data;
    private int fitHeight;
    private int fitWidth;
    private double footerMargin;
    private double headerMargin;
    private int horizontalPrintResolution;
    Logger logger;
    private PageOrientation orientation;
    private int pageStart;
    private int paperSize;
    private int scaleFactor;
    private int verticalPrintResolution;

    static /* synthetic */ Class class$(String str) {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e) {
            throw new NoClassDefFoundError(e.getMessage());
        }
    }

    public SetupRecord() {
        super(Type.SETUP);
        Class clsClass$ = class$jxl$write$biff$SetupRecord;
        if (clsClass$ == null) {
            clsClass$ = class$("jxl.write.biff.SetupRecord");
            class$jxl$write$biff$SetupRecord = clsClass$;
        }
        this.logger = Logger.getLogger(clsClass$);
        this.orientation = PageOrientation.PORTRAIT;
        this.headerMargin = 0.5d;
        this.footerMargin = 0.5d;
        this.paperSize = PaperSize.f1151A4.getValue();
        this.horizontalPrintResolution = 300;
        this.verticalPrintResolution = 300;
        this.copies = 1;
    }

    public SetupRecord(SheetSettings sheetSettings) {
        super(Type.SETUP);
        Class clsClass$ = class$jxl$write$biff$SetupRecord;
        if (clsClass$ == null) {
            clsClass$ = class$("jxl.write.biff.SetupRecord");
            class$jxl$write$biff$SetupRecord = clsClass$;
        }
        this.logger = Logger.getLogger(clsClass$);
        this.orientation = sheetSettings.getOrientation();
        this.headerMargin = sheetSettings.getHeaderMargin();
        this.footerMargin = sheetSettings.getFooterMargin();
        this.paperSize = sheetSettings.getPaperSize().getValue();
        this.horizontalPrintResolution = sheetSettings.getHorizontalPrintResolution();
        this.verticalPrintResolution = sheetSettings.getVerticalPrintResolution();
        this.fitWidth = sheetSettings.getFitWidth();
        this.fitHeight = sheetSettings.getFitHeight();
        this.pageStart = sheetSettings.getPageStart();
        this.scaleFactor = sheetSettings.getScaleFactor();
        this.copies = sheetSettings.getCopies();
    }

    public SetupRecord(jxl.read.biff.SetupRecord setupRecord) {
        super(Type.SETUP);
        Class clsClass$ = class$jxl$write$biff$SetupRecord;
        if (clsClass$ == null) {
            clsClass$ = class$("jxl.write.biff.SetupRecord");
            class$jxl$write$biff$SetupRecord = clsClass$;
        }
        this.logger = Logger.getLogger(clsClass$);
        this.orientation = setupRecord.isPortrait() ? PageOrientation.PORTRAIT : PageOrientation.LANDSCAPE;
        this.paperSize = setupRecord.getPaperSize();
        this.headerMargin = setupRecord.getHeaderMargin();
        this.footerMargin = setupRecord.getFooterMargin();
        this.scaleFactor = setupRecord.getScaleFactor();
        this.pageStart = setupRecord.getPageStart();
        this.fitWidth = setupRecord.getFitWidth();
        this.fitHeight = setupRecord.getFitHeight();
        this.horizontalPrintResolution = setupRecord.getHorizontalPrintResolution();
        this.verticalPrintResolution = setupRecord.getVerticalPrintResolution();
        this.copies = setupRecord.getCopies();
    }

    public void setOrientation(PageOrientation pageOrientation) {
        this.orientation = pageOrientation;
    }

    public void setMargins(double d, double d2) {
        this.headerMargin = d;
        this.footerMargin = d2;
    }

    public void setPaperSize(PaperSize paperSize) {
        this.paperSize = paperSize.getValue();
    }

    @Override // jxl.biff.WritableRecordData
    public byte[] getData() {
        this.data = new byte[34];
        IntegerHelper.getTwoBytes(this.paperSize, this.data, 0);
        IntegerHelper.getTwoBytes(this.scaleFactor, this.data, 2);
        IntegerHelper.getTwoBytes(this.pageStart, this.data, 4);
        IntegerHelper.getTwoBytes(this.fitWidth, this.data, 6);
        IntegerHelper.getTwoBytes(this.fitHeight, this.data, 8);
        int i = this.orientation == PageOrientation.PORTRAIT ? 2 : 0;
        if (this.pageStart != 0) {
            i |= 128;
        }
        IntegerHelper.getTwoBytes(i, this.data, 10);
        IntegerHelper.getTwoBytes(this.horizontalPrintResolution, this.data, 12);
        IntegerHelper.getTwoBytes(this.verticalPrintResolution, this.data, 14);
        DoubleHelper.getIEEEBytes(this.headerMargin, this.data, 16);
        DoubleHelper.getIEEEBytes(this.footerMargin, this.data, 24);
        IntegerHelper.getTwoBytes(this.copies, this.data, 32);
        return this.data;
    }
}
