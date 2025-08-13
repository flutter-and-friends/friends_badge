package jxl.write.biff;

import common.Logger;
import jxl.biff.XFRecord;
import jxl.write.DateFormat;
import jxl.write.DateFormats;
import jxl.write.NumberFormats;
import jxl.write.WritableCellFormat;
import jxl.write.WritableFont;
import jxl.write.WritableWorkbook;

/* loaded from: classes2.dex */
class Styles {
    static /* synthetic */ Class class$jxl$write$biff$Styles;
    private static Logger logger;
    private WritableCellFormat defaultDateFormat;
    private WritableFont arial10pt = null;
    private WritableFont hyperlinkFont = null;
    private WritableCellFormat normalStyle = null;
    private WritableCellFormat hyperlinkStyle = null;
    private WritableCellFormat hiddenStyle = null;

    static {
        Class clsClass$ = class$jxl$write$biff$Styles;
        if (clsClass$ == null) {
            clsClass$ = class$("jxl.write.biff.Styles");
            class$jxl$write$biff$Styles = clsClass$;
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

    private synchronized void initNormalStyle() {
        this.normalStyle = new WritableCellFormat(getArial10Pt(), NumberFormats.DEFAULT);
        this.normalStyle.setFont(getArial10Pt());
    }

    public WritableCellFormat getNormalStyle() {
        if (this.normalStyle == null) {
            initNormalStyle();
        }
        return this.normalStyle;
    }

    private synchronized void initHiddenStyle() {
        this.hiddenStyle = new WritableCellFormat(getArial10Pt(), new DateFormat(";;;"));
    }

    public WritableCellFormat getHiddenStyle() {
        if (this.hiddenStyle == null) {
            initHiddenStyle();
        }
        return this.hiddenStyle;
    }

    private synchronized void initHyperlinkStyle() {
        this.hyperlinkStyle = new WritableCellFormat(getHyperlinkFont(), NumberFormats.DEFAULT);
    }

    public WritableCellFormat getHyperlinkStyle() {
        if (this.hyperlinkStyle == null) {
            initHyperlinkStyle();
        }
        return this.hyperlinkStyle;
    }

    private synchronized void initArial10Pt() {
        this.arial10pt = new WritableFont(WritableWorkbook.ARIAL_10_PT);
    }

    public WritableFont getArial10Pt() {
        if (this.arial10pt == null) {
            initArial10Pt();
        }
        return this.arial10pt;
    }

    private synchronized void initHyperlinkFont() {
        this.hyperlinkFont = new WritableFont(WritableWorkbook.HYPERLINK_FONT);
    }

    public WritableFont getHyperlinkFont() {
        if (this.hyperlinkFont == null) {
            initHyperlinkFont();
        }
        return this.hyperlinkFont;
    }

    private synchronized void initDefaultDateFormat() {
        this.defaultDateFormat = new WritableCellFormat(DateFormats.DEFAULT);
    }

    public WritableCellFormat getDefaultDateFormat() {
        if (this.defaultDateFormat == null) {
            initDefaultDateFormat();
        }
        return this.defaultDateFormat;
    }

    public XFRecord getFormat(XFRecord xFRecord) {
        if (xFRecord == WritableWorkbook.NORMAL_STYLE) {
            xFRecord = getNormalStyle();
        } else if (xFRecord == WritableWorkbook.HYPERLINK_STYLE) {
            xFRecord = getHyperlinkStyle();
        } else if (xFRecord == WritableWorkbook.HIDDEN_STYLE) {
            xFRecord = getHiddenStyle();
        } else if (xFRecord == DateRecord.defaultDateFormat) {
            xFRecord = getDefaultDateFormat();
        }
        if (xFRecord.getFont() == WritableWorkbook.ARIAL_10_PT) {
            xFRecord.setFont(getArial10Pt());
        } else if (xFRecord.getFont() == WritableWorkbook.HYPERLINK_FONT) {
            xFRecord.setFont(getHyperlinkFont());
        }
        return xFRecord;
    }
}
