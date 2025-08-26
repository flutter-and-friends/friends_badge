package jxl;

import common.Assert;
import jxl.biff.SheetRangeImpl;
import jxl.format.PageOrientation;
import jxl.format.PaperSize;

/* loaded from: classes2.dex */
public final class SheetSettings {
    private static final int DEFAULT_DEFAULT_COLUMN_WIDTH = 8;
    public static final int DEFAULT_DEFAULT_ROW_HEIGHT = 255;
    private static final double DEFAULT_FOOTER_MARGIN = 0.5d;
    private static final double DEFAULT_HEADER_MARGIN = 0.5d;
    private static final double DEFAULT_HEIGHT_MARGIN = 1.0d;
    private static final int DEFAULT_NORMAL_MAGNIFICATION = 100;
    private static final int DEFAULT_PAGE_BREAK_PREVIEW_MAGNIFICATION = 60;
    private static final int DEFAULT_PRINT_RESOLUTION = 300;
    private static final double DEFAULT_WIDTH_MARGIN = 0.75d;
    private static final int DEFAULT_ZOOM_FACTOR = 100;
    private boolean automaticFormulaCalculation;
    private double bottomMargin;
    private int copies;
    private int defaultColumnWidth;
    private int defaultRowHeight;
    private boolean displayZeroValues;
    private int fitHeight;
    private boolean fitToPages;
    private int fitWidth;
    private HeaderFooter footer;
    private double footerMargin;
    private HeaderFooter header;
    private double headerMargin;
    private boolean hidden;
    private boolean horizontalCentre;
    private int horizontalFreeze;
    private int horizontalPrintResolution;
    private double leftMargin;
    private int normalMagnification;
    private PageOrientation orientation;
    private int pageBreakPreviewMagnification;
    private boolean pageBreakPreviewMode;
    private int pageStart;
    private PaperSize paperSize;
    private String password;
    private int passwordHash;
    private Range printArea;
    private boolean printGridLines;
    private boolean printHeaders;
    private boolean recalculateFormulasBeforeSave;
    private double rightMargin;
    private int scaleFactor;
    private boolean selected;
    private Sheet sheet;
    private boolean sheetProtected;
    private boolean showGridLines;
    private double topMargin;
    private boolean verticalCentre;
    private int verticalFreeze;
    private int verticalPrintResolution;
    private int zoomFactor;
    private static final PageOrientation DEFAULT_ORIENTATION = PageOrientation.PORTRAIT;
    private static final PaperSize DEFAULT_PAPER_SIZE = PaperSize.f1151A4;

    public double getDefaultHeightMargin() {
        return DEFAULT_HEIGHT_MARGIN;
    }

    public double getDefaultWidthMargin() {
        return DEFAULT_WIDTH_MARGIN;
    }

    public SheetSettings(Sheet sheet) {
        this.sheet = sheet;
        this.orientation = DEFAULT_ORIENTATION;
        this.paperSize = DEFAULT_PAPER_SIZE;
        this.sheetProtected = false;
        this.hidden = false;
        this.selected = false;
        this.headerMargin = 0.5d;
        this.footerMargin = 0.5d;
        this.horizontalPrintResolution = DEFAULT_PRINT_RESOLUTION;
        this.verticalPrintResolution = DEFAULT_PRINT_RESOLUTION;
        this.leftMargin = DEFAULT_WIDTH_MARGIN;
        this.rightMargin = DEFAULT_WIDTH_MARGIN;
        this.topMargin = DEFAULT_HEIGHT_MARGIN;
        this.bottomMargin = DEFAULT_HEIGHT_MARGIN;
        this.fitToPages = false;
        this.showGridLines = true;
        this.printGridLines = false;
        this.printHeaders = false;
        this.pageBreakPreviewMode = false;
        this.displayZeroValues = true;
        this.defaultColumnWidth = 8;
        this.defaultRowHeight = 255;
        this.zoomFactor = 100;
        this.pageBreakPreviewMagnification = 60;
        this.normalMagnification = 100;
        this.horizontalFreeze = 0;
        this.verticalFreeze = 0;
        this.copies = 1;
        this.header = new HeaderFooter();
        this.footer = new HeaderFooter();
        this.automaticFormulaCalculation = true;
        this.recalculateFormulasBeforeSave = true;
    }

    public SheetSettings(SheetSettings sheetSettings, Sheet sheet) {
        Assert.verify(sheetSettings != null);
        this.sheet = sheet;
        this.orientation = sheetSettings.orientation;
        this.paperSize = sheetSettings.paperSize;
        this.sheetProtected = sheetSettings.sheetProtected;
        this.hidden = sheetSettings.hidden;
        this.selected = false;
        this.headerMargin = sheetSettings.headerMargin;
        this.footerMargin = sheetSettings.footerMargin;
        this.scaleFactor = sheetSettings.scaleFactor;
        this.pageStart = sheetSettings.pageStart;
        this.fitWidth = sheetSettings.fitWidth;
        this.fitHeight = sheetSettings.fitHeight;
        this.horizontalPrintResolution = sheetSettings.horizontalPrintResolution;
        this.verticalPrintResolution = sheetSettings.verticalPrintResolution;
        this.leftMargin = sheetSettings.leftMargin;
        this.rightMargin = sheetSettings.rightMargin;
        this.topMargin = sheetSettings.topMargin;
        this.bottomMargin = sheetSettings.bottomMargin;
        this.fitToPages = sheetSettings.fitToPages;
        this.password = sheetSettings.password;
        this.passwordHash = sheetSettings.passwordHash;
        this.defaultColumnWidth = sheetSettings.defaultColumnWidth;
        this.defaultRowHeight = sheetSettings.defaultRowHeight;
        this.zoomFactor = sheetSettings.zoomFactor;
        this.pageBreakPreviewMagnification = sheetSettings.pageBreakPreviewMagnification;
        this.normalMagnification = sheetSettings.normalMagnification;
        this.showGridLines = sheetSettings.showGridLines;
        this.displayZeroValues = sheetSettings.displayZeroValues;
        this.pageBreakPreviewMode = sheetSettings.pageBreakPreviewMode;
        this.horizontalFreeze = sheetSettings.horizontalFreeze;
        this.verticalFreeze = sheetSettings.verticalFreeze;
        this.horizontalCentre = sheetSettings.horizontalCentre;
        this.verticalCentre = sheetSettings.verticalCentre;
        this.copies = sheetSettings.copies;
        this.header = new HeaderFooter(sheetSettings.header);
        this.footer = new HeaderFooter(sheetSettings.footer);
        this.automaticFormulaCalculation = sheetSettings.automaticFormulaCalculation;
        this.recalculateFormulasBeforeSave = sheetSettings.recalculateFormulasBeforeSave;
        if (sheetSettings.printArea != null) {
            this.printArea = new SheetRangeImpl(this.sheet, sheetSettings.getPrintArea().getTopLeft().getColumn(), sheetSettings.getPrintArea().getTopLeft().getRow(), sheetSettings.getPrintArea().getBottomRight().getColumn(), sheetSettings.getPrintArea().getBottomRight().getRow());
        }
    }

    public void setOrientation(PageOrientation pageOrientation) {
        this.orientation = pageOrientation;
    }

    public PageOrientation getOrientation() {
        return this.orientation;
    }

    public void setPaperSize(PaperSize paperSize) {
        this.paperSize = paperSize;
    }

    public PaperSize getPaperSize() {
        return this.paperSize;
    }

    public boolean isProtected() {
        return this.sheetProtected;
    }

    public void setProtected(boolean z) {
        this.sheetProtected = z;
    }

    public void setHeaderMargin(double d) {
        this.headerMargin = d;
    }

    public double getHeaderMargin() {
        return this.headerMargin;
    }

    public void setFooterMargin(double d) {
        this.footerMargin = d;
    }

    public double getFooterMargin() {
        return this.footerMargin;
    }

    public void setHidden(boolean z) {
        this.hidden = z;
    }

    public boolean isHidden() {
        return this.hidden;
    }

    public void setSelected() {
        setSelected(true);
    }

    public void setSelected(boolean z) {
        this.selected = z;
    }

    public boolean isSelected() {
        return this.selected;
    }

    public void setScaleFactor(int i) {
        this.scaleFactor = i;
        this.fitToPages = false;
    }

    public int getScaleFactor() {
        return this.scaleFactor;
    }

    public void setPageStart(int i) {
        this.pageStart = i;
    }

    public int getPageStart() {
        return this.pageStart;
    }

    public void setFitWidth(int i) {
        this.fitWidth = i;
        this.fitToPages = true;
    }

    public int getFitWidth() {
        return this.fitWidth;
    }

    public void setFitHeight(int i) {
        this.fitHeight = i;
        this.fitToPages = true;
    }

    public int getFitHeight() {
        return this.fitHeight;
    }

    public void setHorizontalPrintResolution(int i) {
        this.horizontalPrintResolution = i;
    }

    public int getHorizontalPrintResolution() {
        return this.horizontalPrintResolution;
    }

    public void setVerticalPrintResolution(int i) {
        this.verticalPrintResolution = i;
    }

    public int getVerticalPrintResolution() {
        return this.verticalPrintResolution;
    }

    public void setRightMargin(double d) {
        this.rightMargin = d;
    }

    public double getRightMargin() {
        return this.rightMargin;
    }

    public void setLeftMargin(double d) {
        this.leftMargin = d;
    }

    public double getLeftMargin() {
        return this.leftMargin;
    }

    public void setTopMargin(double d) {
        this.topMargin = d;
    }

    public double getTopMargin() {
        return this.topMargin;
    }

    public void setBottomMargin(double d) {
        this.bottomMargin = d;
    }

    public double getBottomMargin() {
        return this.bottomMargin;
    }

    public boolean getFitToPages() {
        return this.fitToPages;
    }

    public void setFitToPages(boolean z) {
        this.fitToPages = z;
    }

    public String getPassword() {
        return this.password;
    }

    public void setPassword(String str) {
        this.password = str;
    }

    public int getPasswordHash() {
        return this.passwordHash;
    }

    public void setPasswordHash(int i) {
        this.passwordHash = i;
    }

    public int getDefaultColumnWidth() {
        return this.defaultColumnWidth;
    }

    public void setDefaultColumnWidth(int i) {
        this.defaultColumnWidth = i;
    }

    public int getDefaultRowHeight() {
        return this.defaultRowHeight;
    }

    public void setDefaultRowHeight(int i) {
        this.defaultRowHeight = i;
    }

    public int getZoomFactor() {
        return this.zoomFactor;
    }

    public void setZoomFactor(int i) {
        this.zoomFactor = i;
    }

    public int getPageBreakPreviewMagnification() {
        return this.pageBreakPreviewMagnification;
    }

    public void setPageBreakPreviewMagnification(int i) {
        this.pageBreakPreviewMagnification = i;
    }

    public int getNormalMagnification() {
        return this.normalMagnification;
    }

    public void setNormalMagnification(int i) {
        this.normalMagnification = i;
    }

    public boolean getDisplayZeroValues() {
        return this.displayZeroValues;
    }

    public void setDisplayZeroValues(boolean z) {
        this.displayZeroValues = z;
    }

    public boolean getShowGridLines() {
        return this.showGridLines;
    }

    public void setShowGridLines(boolean z) {
        this.showGridLines = z;
    }

    public boolean getPageBreakPreviewMode() {
        return this.pageBreakPreviewMode;
    }

    public void setPageBreakPreviewMode(boolean z) {
        this.pageBreakPreviewMode = z;
    }

    public boolean getPrintGridLines() {
        return this.printGridLines;
    }

    public void setPrintGridLines(boolean z) {
        this.printGridLines = z;
    }

    public boolean getPrintHeaders() {
        return this.printHeaders;
    }

    public void setPrintHeaders(boolean z) {
        this.printHeaders = z;
    }

    public int getHorizontalFreeze() {
        return this.horizontalFreeze;
    }

    public void setHorizontalFreeze(int i) {
        this.horizontalFreeze = Math.max(i, 0);
    }

    public int getVerticalFreeze() {
        return this.verticalFreeze;
    }

    public void setVerticalFreeze(int i) {
        this.verticalFreeze = Math.max(i, 0);
    }

    public void setCopies(int i) {
        this.copies = i;
    }

    public int getCopies() {
        return this.copies;
    }

    public HeaderFooter getHeader() {
        return this.header;
    }

    public void setHeader(HeaderFooter headerFooter) {
        this.header = headerFooter;
    }

    public void setFooter(HeaderFooter headerFooter) {
        this.footer = headerFooter;
    }

    public HeaderFooter getFooter() {
        return this.footer;
    }

    public boolean isHorizontalCentre() {
        return this.horizontalCentre;
    }

    public void setHorizontalCentre(boolean z) {
        this.horizontalCentre = z;
    }

    public boolean isVerticalCentre() {
        return this.verticalCentre;
    }

    public void setVerticalCentre(boolean z) {
        this.verticalCentre = z;
    }

    public void setAutomaticFormulaCalculation(boolean z) {
        this.automaticFormulaCalculation = z;
    }

    public boolean getAutomaticFormulaCalculation() {
        return this.automaticFormulaCalculation;
    }

    public void setRecalculateFormulasBeforeSave(boolean z) {
        this.recalculateFormulasBeforeSave = z;
    }

    public boolean getRecalculateFormulasBeforeSave() {
        return this.recalculateFormulasBeforeSave;
    }

    public void setPrintArea(int i, int i2, int i3, int i4) {
        this.printArea = new SheetRangeImpl(this.sheet, i, i2, i3, i4);
    }

    public Range getPrintArea() {
        return this.printArea;
    }
}
