package jxl.biff;

import cn.highlight.p004tx.app.CmdCenter;
import common.Assert;
import common.Logger;
import java.text.DateFormat;
import java.text.DecimalFormat;
import java.text.DecimalFormatSymbols;
import java.text.NumberFormat;
import java.text.SimpleDateFormat;
import jxl.WorkbookSettings;
import jxl.format.Alignment;
import jxl.format.Border;
import jxl.format.BorderLineStyle;
import jxl.format.CellFormat;
import jxl.format.Colour;
import jxl.format.Font;
import jxl.format.Format;
import jxl.format.Orientation;
import jxl.format.Pattern;
import jxl.format.VerticalAlignment;
import jxl.read.biff.Record;
import kotlin.jvm.internal.ByteCompanionObject;

/* loaded from: classes2.dex */
public class XFRecord extends WritableRecordData implements CellFormat {
    private static final int USE_ALIGNMENT = 16;
    private static final int USE_BACKGROUND = 64;
    private static final int USE_BORDER = 32;
    private static final int USE_DEFAULT_VALUE = 248;
    private static final int USE_FONT = 4;
    private static final int USE_FORMAT = 8;
    private static final int USE_PROTECTION = 128;
    public static final BiffType biff7;
    public static final BiffType biff8;
    protected static final XFType cell;
    static /* synthetic */ Class class$jxl$biff$XFRecord;
    private static final int[] dateFormats;
    private static final DateFormat[] javaDateFormats;
    private static NumberFormat[] javaNumberFormats;
    private static Logger logger;
    private static int[] numberFormats;
    protected static final XFType style;
    private Alignment align;
    private Colour backgroundColour;
    private BiffType biffType;
    private BorderLineStyle bottomBorder;
    private Colour bottomBorderColour;
    private boolean copied;
    private boolean date;
    private DateFormat dateFormat;
    private Format excelFormat;
    private FontRecord font;
    private int fontIndex;
    private DisplayFormat format;
    public int formatIndex;
    private boolean formatInfoInitialized;
    private FormattingRecords formattingRecords;
    private boolean hidden;
    private int indentation;
    private boolean initialized;
    private BorderLineStyle leftBorder;
    private Colour leftBorderColour;
    private boolean locked;
    private boolean number;
    private NumberFormat numberFormat;
    private int options;
    private Orientation orientation;
    private int parentFormat;
    private Pattern pattern;
    private boolean read;
    private BorderLineStyle rightBorder;
    private Colour rightBorderColour;
    private boolean shrinkToFit;
    private BorderLineStyle topBorder;
    private Colour topBorderColour;
    private byte usedAttributes;
    private VerticalAlignment valign;
    private boolean wrap;
    private XFType xfFormatType;
    private int xfIndex;

    static {
        Class clsClass$ = class$jxl$biff$XFRecord;
        if (clsClass$ == null) {
            clsClass$ = class$("jxl.biff.XFRecord");
            class$jxl$biff$XFRecord = clsClass$;
        }
        logger = Logger.getLogger(clsClass$);
        dateFormats = new int[]{14, 15, 16, 17, 18, 19, 20, 21, 22, 45, 46, 47};
        javaDateFormats = new DateFormat[]{SimpleDateFormat.getDateInstance(3), SimpleDateFormat.getDateInstance(2), new SimpleDateFormat("d-MMM"), new SimpleDateFormat("MMM-yy"), new SimpleDateFormat("h:mm a"), new SimpleDateFormat("h:mm:ss a"), new SimpleDateFormat("H:mm"), new SimpleDateFormat("H:mm:ss"), new SimpleDateFormat("M/d/yy H:mm"), new SimpleDateFormat("mm:ss"), new SimpleDateFormat("H:mm:ss"), new SimpleDateFormat("mm:ss.S")};
        numberFormats = new int[]{1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 37, 38, 39, 40, 41, 42, 43, 44, 48};
        javaNumberFormats = new NumberFormat[]{new DecimalFormat("0"), new DecimalFormat("0.00"), new DecimalFormat("#,##0"), new DecimalFormat("#,##0.00"), new DecimalFormat("$#,##0;($#,##0)"), new DecimalFormat("$#,##0;($#,##0)"), new DecimalFormat("$#,##0.00;($#,##0.00)"), new DecimalFormat("$#,##0.00;($#,##0.00)"), new DecimalFormat("0%"), new DecimalFormat("0.00%"), new DecimalFormat("0.00E00"), new DecimalFormat("#,##0;(#,##0)"), new DecimalFormat("#,##0;(#,##0)"), new DecimalFormat("#,##0.00;(#,##0.00)"), new DecimalFormat("#,##0.00;(#,##0.00)"), new DecimalFormat("#,##0;(#,##0)"), new DecimalFormat("$#,##0;($#,##0)"), new DecimalFormat("#,##0.00;(#,##0.00)"), new DecimalFormat("$#,##0.00;($#,##0.00)"), new DecimalFormat("##0.0E0")};
        biff8 = new BiffType();
        biff7 = new BiffType();
        cell = new XFType();
        style = new XFType();
    }

    static /* synthetic */ Class class$(String str) {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e) {
            throw new NoClassDefFoundError(e.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static class BiffType {
        private BiffType() {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    protected static class XFType {
        private XFType() {
        }
    }

    public XFRecord(Record record, WorkbookSettings workbookSettings, BiffType biffType) {
        super(record);
        this.biffType = biffType;
        byte[] data = getRecord().getData();
        this.fontIndex = IntegerHelper.getInt(data[0], data[1]);
        this.formatIndex = IntegerHelper.getInt(data[2], data[3]);
        this.date = false;
        this.number = false;
        int i = 0;
        while (true) {
            int[] iArr = dateFormats;
            if (i >= iArr.length || this.date) {
                break;
            }
            if (this.formatIndex == iArr[i]) {
                this.date = true;
                this.dateFormat = javaDateFormats[i];
            }
            i++;
        }
        int i2 = 0;
        while (true) {
            int[] iArr2 = numberFormats;
            if (i2 >= iArr2.length || this.number) {
                break;
            }
            if (this.formatIndex == iArr2[i2]) {
                this.number = true;
                DecimalFormat decimalFormat = (DecimalFormat) javaNumberFormats[i2].clone();
                decimalFormat.setDecimalFormatSymbols(new DecimalFormatSymbols(workbookSettings.getLocale()));
                this.numberFormat = decimalFormat;
            }
            i2++;
        }
        int i3 = IntegerHelper.getInt(data[4], data[5]);
        this.parentFormat = (65520 & i3) >> 4;
        this.xfFormatType = (i3 & 4) == 0 ? cell : style;
        this.locked = (i3 & 1) != 0;
        this.hidden = (i3 & 2) != 0;
        if (this.xfFormatType == cell && (this.parentFormat & 4095) == 4095) {
            this.parentFormat = 0;
            logger.warn("Invalid parent format found - ignoring");
        }
        this.initialized = false;
        this.read = true;
        this.formatInfoInitialized = false;
        this.copied = false;
    }

    public XFRecord(FontRecord fontRecord, DisplayFormat displayFormat) {
        super(Type.f1125XF);
        this.initialized = false;
        this.locked = true;
        this.hidden = false;
        this.align = Alignment.GENERAL;
        this.valign = VerticalAlignment.BOTTOM;
        this.orientation = Orientation.HORIZONTAL;
        this.wrap = false;
        this.leftBorder = BorderLineStyle.NONE;
        this.rightBorder = BorderLineStyle.NONE;
        this.topBorder = BorderLineStyle.NONE;
        this.bottomBorder = BorderLineStyle.NONE;
        this.leftBorderColour = Colour.AUTOMATIC;
        this.rightBorderColour = Colour.AUTOMATIC;
        this.topBorderColour = Colour.AUTOMATIC;
        this.bottomBorderColour = Colour.AUTOMATIC;
        this.pattern = Pattern.NONE;
        this.backgroundColour = Colour.DEFAULT_BACKGROUND;
        this.indentation = 0;
        this.shrinkToFit = false;
        this.usedAttributes = (byte) 124;
        this.parentFormat = 0;
        this.xfFormatType = null;
        this.font = fontRecord;
        this.format = displayFormat;
        this.biffType = biff8;
        this.read = false;
        this.copied = false;
        this.formatInfoInitialized = true;
        Assert.verify(this.font != null);
        Assert.verify(this.format != null);
    }

    protected XFRecord(XFRecord xFRecord) {
        super(Type.f1125XF);
        this.initialized = false;
        this.locked = xFRecord.locked;
        this.hidden = xFRecord.hidden;
        this.align = xFRecord.align;
        this.valign = xFRecord.valign;
        this.orientation = xFRecord.orientation;
        this.wrap = xFRecord.wrap;
        this.leftBorder = xFRecord.leftBorder;
        this.rightBorder = xFRecord.rightBorder;
        this.topBorder = xFRecord.topBorder;
        this.bottomBorder = xFRecord.bottomBorder;
        this.leftBorderColour = xFRecord.leftBorderColour;
        this.rightBorderColour = xFRecord.rightBorderColour;
        this.topBorderColour = xFRecord.topBorderColour;
        this.bottomBorderColour = xFRecord.bottomBorderColour;
        this.pattern = xFRecord.pattern;
        this.xfFormatType = xFRecord.xfFormatType;
        this.indentation = xFRecord.indentation;
        this.shrinkToFit = xFRecord.shrinkToFit;
        this.parentFormat = xFRecord.parentFormat;
        this.backgroundColour = xFRecord.backgroundColour;
        this.font = xFRecord.font;
        this.format = xFRecord.format;
        this.fontIndex = xFRecord.fontIndex;
        this.formatIndex = xFRecord.formatIndex;
        this.formatInfoInitialized = xFRecord.formatInfoInitialized;
        this.biffType = biff8;
        this.read = false;
        this.copied = true;
    }

    protected XFRecord(CellFormat cellFormat) {
        super(Type.f1125XF);
        Assert.verify(cellFormat != null);
        Assert.verify(cellFormat instanceof XFRecord);
        XFRecord xFRecord = (XFRecord) cellFormat;
        if (!xFRecord.formatInfoInitialized) {
            xFRecord.initializeFormatInformation();
        }
        this.locked = xFRecord.locked;
        this.hidden = xFRecord.hidden;
        this.align = xFRecord.align;
        this.valign = xFRecord.valign;
        this.orientation = xFRecord.orientation;
        this.wrap = xFRecord.wrap;
        this.leftBorder = xFRecord.leftBorder;
        this.rightBorder = xFRecord.rightBorder;
        this.topBorder = xFRecord.topBorder;
        this.bottomBorder = xFRecord.bottomBorder;
        this.leftBorderColour = xFRecord.leftBorderColour;
        this.rightBorderColour = xFRecord.rightBorderColour;
        this.topBorderColour = xFRecord.topBorderColour;
        this.bottomBorderColour = xFRecord.bottomBorderColour;
        this.pattern = xFRecord.pattern;
        this.xfFormatType = xFRecord.xfFormatType;
        this.parentFormat = xFRecord.parentFormat;
        this.indentation = xFRecord.indentation;
        this.shrinkToFit = xFRecord.shrinkToFit;
        this.backgroundColour = xFRecord.backgroundColour;
        this.font = new FontRecord(xFRecord.getFont());
        if (xFRecord.getFormat() == null) {
            if (xFRecord.format.isBuiltIn()) {
                this.format = xFRecord.format;
            } else {
                this.format = new FormatRecord((FormatRecord) xFRecord.format);
            }
        } else if (xFRecord.getFormat() instanceof BuiltInFormat) {
            this.excelFormat = (BuiltInFormat) xFRecord.excelFormat;
            this.format = (BuiltInFormat) xFRecord.excelFormat;
        } else {
            Assert.verify(xFRecord.formatInfoInitialized);
            Assert.verify(xFRecord.excelFormat instanceof FormatRecord);
            FormatRecord formatRecord = new FormatRecord((FormatRecord) xFRecord.excelFormat);
            this.excelFormat = formatRecord;
            this.format = formatRecord;
        }
        this.biffType = biff8;
        this.formatInfoInitialized = true;
        this.read = false;
        this.copied = false;
        this.initialized = false;
    }

    public DateFormat getDateFormat() {
        return this.dateFormat;
    }

    public NumberFormat getNumberFormat() {
        return this.numberFormat;
    }

    public int getFormatRecord() {
        return this.formatIndex;
    }

    public boolean isDate() {
        return this.date;
    }

    public boolean isNumber() {
        return this.number;
    }

    @Override // jxl.biff.WritableRecordData
    public byte[] getData() {
        if (!this.formatInfoInitialized) {
            initializeFormatInformation();
        }
        byte[] bArr = new byte[20];
        IntegerHelper.getTwoBytes(this.fontIndex, bArr, 0);
        IntegerHelper.getTwoBytes(this.formatIndex, bArr, 2);
        int i = getLocked() ? 1 : 0;
        if (getHidden()) {
            i |= 2;
        }
        if (this.xfFormatType == style) {
            i |= 4;
            this.parentFormat = 65535;
        }
        IntegerHelper.getTwoBytes((this.parentFormat << 4) | i, bArr, 4);
        int value = this.align.getValue();
        if (this.wrap) {
            value |= 8;
        }
        IntegerHelper.getTwoBytes(value | (this.valign.getValue() << 4) | (this.orientation.getValue() << 8), bArr, 6);
        bArr[9] = CmdCenter.CMD_openMoreCabinet;
        int value2 = (this.rightBorder.getValue() << 4) | this.leftBorder.getValue() | (this.topBorder.getValue() << 8) | (this.bottomBorder.getValue() << 12);
        IntegerHelper.getTwoBytes(value2, bArr, 10);
        if (value2 != 0) {
            byte value3 = (byte) this.leftBorderColour.getValue();
            byte value4 = (byte) this.rightBorderColour.getValue();
            byte value5 = (byte) this.topBorderColour.getValue();
            byte value6 = (byte) this.bottomBorderColour.getValue();
            int i2 = (value3 & ByteCompanionObject.MAX_VALUE) | ((value4 & ByteCompanionObject.MAX_VALUE) << 7);
            int i3 = (value5 & ByteCompanionObject.MAX_VALUE) | ((value6 & ByteCompanionObject.MAX_VALUE) << 7);
            IntegerHelper.getTwoBytes(i2, bArr, 12);
            IntegerHelper.getTwoBytes(i3, bArr, 14);
        }
        IntegerHelper.getTwoBytes(this.pattern.getValue() << 10, bArr, 16);
        IntegerHelper.getTwoBytes(this.backgroundColour.getValue() | 8192, bArr, 18);
        this.options |= this.indentation & 15;
        if (this.shrinkToFit) {
            this.options = 16 | this.options;
        } else {
            this.options &= 239;
        }
        bArr[8] = (byte) this.options;
        if (this.biffType == biff8) {
            bArr[9] = this.usedAttributes;
        }
        return bArr;
    }

    protected final boolean getLocked() {
        return this.locked;
    }

    protected final boolean getHidden() {
        return this.hidden;
    }

    protected final void setXFLocked(boolean z) {
        this.locked = z;
        this.usedAttributes = (byte) (this.usedAttributes | ByteCompanionObject.MIN_VALUE);
    }

    protected final void setXFCellOptions(int i) {
        this.options = i | this.options;
    }

    protected void setXFAlignment(Alignment alignment) {
        Assert.verify(!this.initialized);
        this.align = alignment;
        this.usedAttributes = (byte) (this.usedAttributes | CmdCenter.CMD_openMoreCabinet);
    }

    protected void setXFIndentation(int i) {
        Assert.verify(!this.initialized);
        this.indentation = i;
        this.usedAttributes = (byte) (this.usedAttributes | CmdCenter.CMD_openMoreCabinet);
    }

    protected void setXFShrinkToFit(boolean z) {
        Assert.verify(!this.initialized);
        this.shrinkToFit = z;
        this.usedAttributes = (byte) (this.usedAttributes | CmdCenter.CMD_openMoreCabinet);
    }

    @Override // jxl.format.CellFormat
    public Alignment getAlignment() {
        if (!this.formatInfoInitialized) {
            initializeFormatInformation();
        }
        return this.align;
    }

    @Override // jxl.format.CellFormat
    public int getIndentation() {
        if (!this.formatInfoInitialized) {
            initializeFormatInformation();
        }
        return this.indentation;
    }

    @Override // jxl.format.CellFormat
    public boolean isShrinkToFit() {
        if (!this.formatInfoInitialized) {
            initializeFormatInformation();
        }
        return this.shrinkToFit;
    }

    @Override // jxl.format.CellFormat
    public boolean isLocked() {
        if (!this.formatInfoInitialized) {
            initializeFormatInformation();
        }
        return this.locked;
    }

    @Override // jxl.format.CellFormat
    public VerticalAlignment getVerticalAlignment() {
        if (!this.formatInfoInitialized) {
            initializeFormatInformation();
        }
        return this.valign;
    }

    @Override // jxl.format.CellFormat
    public Orientation getOrientation() {
        if (!this.formatInfoInitialized) {
            initializeFormatInformation();
        }
        return this.orientation;
    }

    protected void setXFBackground(Colour colour, Pattern pattern) {
        Assert.verify(!this.initialized);
        this.backgroundColour = colour;
        this.pattern = pattern;
        this.usedAttributes = (byte) (this.usedAttributes | 64);
    }

    @Override // jxl.format.CellFormat
    public Colour getBackgroundColour() {
        if (!this.formatInfoInitialized) {
            initializeFormatInformation();
        }
        return this.backgroundColour;
    }

    @Override // jxl.format.CellFormat
    public Pattern getPattern() {
        if (!this.formatInfoInitialized) {
            initializeFormatInformation();
        }
        return this.pattern;
    }

    protected void setXFVerticalAlignment(VerticalAlignment verticalAlignment) {
        Assert.verify(!this.initialized);
        this.valign = verticalAlignment;
        this.usedAttributes = (byte) (this.usedAttributes | CmdCenter.CMD_openMoreCabinet);
    }

    protected void setXFOrientation(Orientation orientation) {
        Assert.verify(!this.initialized);
        this.orientation = orientation;
        this.usedAttributes = (byte) (this.usedAttributes | CmdCenter.CMD_openMoreCabinet);
    }

    protected void setXFWrap(boolean z) {
        Assert.verify(!this.initialized);
        this.wrap = z;
        this.usedAttributes = (byte) (this.usedAttributes | CmdCenter.CMD_openMoreCabinet);
    }

    @Override // jxl.format.CellFormat
    public boolean getWrap() {
        if (!this.formatInfoInitialized) {
            initializeFormatInformation();
        }
        return this.wrap;
    }

    protected void setXFBorder(Border border, BorderLineStyle borderLineStyle, Colour colour) {
        Assert.verify(!this.initialized);
        if (colour == Colour.BLACK) {
            colour = Colour.PALETTE_BLACK;
        }
        if (border == Border.LEFT) {
            this.leftBorder = borderLineStyle;
            this.leftBorderColour = colour;
        } else if (border == Border.RIGHT) {
            this.rightBorder = borderLineStyle;
            this.rightBorderColour = colour;
        } else if (border == Border.TOP) {
            this.topBorder = borderLineStyle;
            this.topBorderColour = colour;
        } else if (border == Border.BOTTOM) {
            this.bottomBorder = borderLineStyle;
            this.bottomBorderColour = colour;
        }
        this.usedAttributes = (byte) (this.usedAttributes | 32);
    }

    @Override // jxl.format.CellFormat
    public BorderLineStyle getBorder(Border border) {
        return getBorderLine(border);
    }

    @Override // jxl.format.CellFormat
    public BorderLineStyle getBorderLine(Border border) {
        if (border == Border.NONE || border == Border.ALL) {
            return BorderLineStyle.NONE;
        }
        if (!this.formatInfoInitialized) {
            initializeFormatInformation();
        }
        if (border == Border.LEFT) {
            return this.leftBorder;
        }
        if (border == Border.RIGHT) {
            return this.rightBorder;
        }
        if (border == Border.TOP) {
            return this.topBorder;
        }
        if (border == Border.BOTTOM) {
            return this.bottomBorder;
        }
        return BorderLineStyle.NONE;
    }

    @Override // jxl.format.CellFormat
    public Colour getBorderColour(Border border) {
        if (border == Border.NONE || border == Border.ALL) {
            return Colour.PALETTE_BLACK;
        }
        if (!this.formatInfoInitialized) {
            initializeFormatInformation();
        }
        if (border == Border.LEFT) {
            return this.leftBorderColour;
        }
        if (border == Border.RIGHT) {
            return this.rightBorderColour;
        }
        if (border == Border.TOP) {
            return this.topBorderColour;
        }
        if (border == Border.BOTTOM) {
            return this.bottomBorderColour;
        }
        return Colour.BLACK;
    }

    @Override // jxl.format.CellFormat
    public final boolean hasBorders() {
        if (!this.formatInfoInitialized) {
            initializeFormatInformation();
        }
        return (this.leftBorder == BorderLineStyle.NONE && this.rightBorder == BorderLineStyle.NONE && this.topBorder == BorderLineStyle.NONE && this.bottomBorder == BorderLineStyle.NONE) ? false : true;
    }

    public final void initialize(int i, FormattingRecords formattingRecords, Fonts fonts) throws NumFormatRecordsException {
        this.xfIndex = i;
        this.formattingRecords = formattingRecords;
        if (this.read || this.copied) {
            this.initialized = true;
            return;
        }
        if (!this.font.isInitialized()) {
            fonts.addFont(this.font);
        }
        if (!this.format.isInitialized()) {
            formattingRecords.addFormat(this.format);
        }
        this.fontIndex = this.font.getFontIndex();
        this.formatIndex = this.format.getFormatIndex();
        this.initialized = true;
    }

    public final void uninitialize() {
        if (this.initialized) {
            logger.warn("A default format has been initialized");
        }
        this.initialized = false;
    }

    final void setXFIndex(int i) {
        this.xfIndex = i;
    }

    public final int getXFIndex() {
        return this.xfIndex;
    }

    public final boolean isInitialized() {
        return this.initialized;
    }

    public final boolean isRead() {
        return this.read;
    }

    @Override // jxl.format.CellFormat
    public Format getFormat() {
        if (!this.formatInfoInitialized) {
            initializeFormatInformation();
        }
        return this.excelFormat;
    }

    @Override // jxl.format.CellFormat
    public Font getFont() {
        if (!this.formatInfoInitialized) {
            initializeFormatInformation();
        }
        return this.font;
    }

    private void initializeFormatInformation() {
        if (this.formatIndex < BuiltInFormat.builtIns.length && BuiltInFormat.builtIns[this.formatIndex] != null) {
            this.excelFormat = BuiltInFormat.builtIns[this.formatIndex];
        } else {
            this.excelFormat = this.formattingRecords.getFormatRecord(this.formatIndex);
        }
        this.font = this.formattingRecords.getFonts().getFont(this.fontIndex);
        byte[] data = getRecord().getData();
        int i = IntegerHelper.getInt(data[4], data[5]);
        this.parentFormat = (65520 & i) >> 4;
        this.xfFormatType = (i & 4) == 0 ? cell : style;
        this.locked = (i & 1) != 0;
        this.hidden = (i & 2) != 0;
        if (this.xfFormatType == cell && (this.parentFormat & 4095) == 4095) {
            this.parentFormat = 0;
            logger.warn("Invalid parent format found - ignoring");
        }
        int i2 = IntegerHelper.getInt(data[6], data[7]);
        if ((i2 & 8) != 0) {
            this.wrap = true;
        }
        this.align = Alignment.getAlignment(i2 & 7);
        this.valign = VerticalAlignment.getAlignment((i2 >> 4) & 7);
        this.orientation = Orientation.getOrientation((i2 >> 8) & 255);
        int i3 = IntegerHelper.getInt(data[8], data[9]);
        this.indentation = i3 & 15;
        this.shrinkToFit = (i3 & 16) != 0;
        if (this.biffType == biff8) {
            this.usedAttributes = data[9];
        }
        int i4 = IntegerHelper.getInt(data[10], data[11]);
        this.leftBorder = BorderLineStyle.getStyle(i4 & 7);
        this.rightBorder = BorderLineStyle.getStyle((i4 >> 4) & 7);
        this.topBorder = BorderLineStyle.getStyle((i4 >> 8) & 7);
        this.bottomBorder = BorderLineStyle.getStyle((i4 >> 12) & 7);
        int i5 = IntegerHelper.getInt(data[12], data[13]);
        this.leftBorderColour = Colour.getInternalColour(i5 & 127);
        this.rightBorderColour = Colour.getInternalColour((i5 & 16256) >> 7);
        int i6 = IntegerHelper.getInt(data[14], data[15]);
        this.topBorderColour = Colour.getInternalColour(i6 & 127);
        this.bottomBorderColour = Colour.getInternalColour((i6 & 16256) >> 7);
        if (this.biffType == biff8) {
            this.pattern = Pattern.getPattern((IntegerHelper.getInt(data[16], data[17]) & 64512) >> 10);
            this.backgroundColour = Colour.getInternalColour(IntegerHelper.getInt(data[18], data[19]) & 63);
            if (this.backgroundColour == Colour.UNKNOWN || this.backgroundColour == Colour.DEFAULT_BACKGROUND1) {
                this.backgroundColour = Colour.DEFAULT_BACKGROUND;
            }
        } else {
            this.pattern = Pattern.NONE;
            this.backgroundColour = Colour.DEFAULT_BACKGROUND;
        }
        this.formatInfoInitialized = true;
    }

    public int hashCode() {
        if (!this.formatInfoInitialized) {
            initializeFormatInformation();
        }
        int i = ((((((629 + (this.hidden ? 1 : 0)) * 37) + (this.locked ? 1 : 0)) * 37) + (this.wrap ? 1 : 0)) * 37) + (this.shrinkToFit ? 1 : 0);
        XFType xFType = this.xfFormatType;
        if (xFType == cell) {
            i = (i * 37) + 1;
        } else if (xFType == style) {
            i = (i * 37) + 2;
        }
        return (37 * ((((((((((((((((((((((((((((((i * 37) + (this.align.getValue() + 1)) * 37) + (this.valign.getValue() + 1)) * 37) + this.orientation.getValue()) ^ this.leftBorder.getDescription().hashCode()) ^ this.rightBorder.getDescription().hashCode()) ^ this.topBorder.getDescription().hashCode()) ^ this.bottomBorder.getDescription().hashCode()) * 37) + this.leftBorderColour.getValue()) * 37) + this.rightBorderColour.getValue()) * 37) + this.topBorderColour.getValue()) * 37) + this.bottomBorderColour.getValue()) * 37) + this.backgroundColour.getValue()) * 37) + this.pattern.getValue() + 1) * 37) + this.usedAttributes) * 37) + this.parentFormat) * 37) + this.fontIndex) * 37) + this.formatIndex)) + this.indentation;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof XFRecord)) {
            return false;
        }
        XFRecord xFRecord = (XFRecord) obj;
        if (!this.formatInfoInitialized) {
            initializeFormatInformation();
        }
        if (!xFRecord.formatInfoInitialized) {
            xFRecord.initializeFormatInformation();
        }
        if (this.xfFormatType == xFRecord.xfFormatType && this.parentFormat == xFRecord.parentFormat && this.locked == xFRecord.locked && this.hidden == xFRecord.hidden && this.usedAttributes == xFRecord.usedAttributes && this.align == xFRecord.align && this.valign == xFRecord.valign && this.orientation == xFRecord.orientation && this.wrap == xFRecord.wrap && this.shrinkToFit == xFRecord.shrinkToFit && this.indentation == xFRecord.indentation && this.leftBorder == xFRecord.leftBorder && this.rightBorder == xFRecord.rightBorder && this.topBorder == xFRecord.topBorder && this.bottomBorder == xFRecord.bottomBorder && this.leftBorderColour == xFRecord.leftBorderColour && this.rightBorderColour == xFRecord.rightBorderColour && this.topBorderColour == xFRecord.topBorderColour && this.bottomBorderColour == xFRecord.bottomBorderColour && this.backgroundColour == xFRecord.backgroundColour && this.pattern == xFRecord.pattern) {
            if (this.initialized && xFRecord.initialized) {
                if (this.fontIndex != xFRecord.fontIndex || this.formatIndex != xFRecord.formatIndex) {
                    return false;
                }
            } else if (!this.font.equals(xFRecord.font) || !this.format.equals(xFRecord.format)) {
            }
            return true;
        }
        return false;
    }

    void setFormatIndex(int i) {
        this.formatIndex = i;
    }

    public int getFontIndex() {
        return this.fontIndex;
    }

    void setFontIndex(int i) {
        this.fontIndex = i;
    }

    protected void setXFDetails(XFType xFType, int i) {
        this.xfFormatType = xFType;
        this.parentFormat = i;
    }

    void rationalize(IndexMapping indexMapping) {
        this.xfIndex = indexMapping.getNewIndex(this.xfIndex);
        if (this.xfFormatType == cell) {
            this.parentFormat = indexMapping.getNewIndex(this.parentFormat);
        }
    }

    public void setFont(FontRecord fontRecord) {
        this.font = fontRecord;
    }
}
