package jxl.biff;

import common.Assert;
import common.Logger;
import java.io.IOException;
import java.text.DateFormat;
import java.text.NumberFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import jxl.format.Colour;
import jxl.format.RGB;
import jxl.write.biff.File;

/* loaded from: classes2.dex */
public class FormattingRecords {
    static /* synthetic */ Class class$jxl$biff$FormattingRecords = null;
    private static final int customFormatStartIndex = 164;
    private static Logger logger = null;
    private static final int maxFormatRecordsIndex = 441;
    private static final int minXFRecords = 21;
    private Fonts fonts;
    private PaletteRecord palette;
    private ArrayList xfRecords = new ArrayList(10);
    private HashMap formats = new HashMap(10);
    private ArrayList formatsList = new ArrayList(10);
    private int nextCustomIndexNumber = customFormatStartIndex;

    static {
        Class clsClass$ = class$jxl$biff$FormattingRecords;
        if (clsClass$ == null) {
            clsClass$ = class$("jxl.biff.FormattingRecords");
            class$jxl$biff$FormattingRecords = clsClass$;
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

    public FormattingRecords(Fonts fonts) {
        this.fonts = fonts;
    }

    public final void addStyle(XFRecord xFRecord) throws NumFormatRecordsException {
        if (!xFRecord.isInitialized()) {
            xFRecord.initialize(this.xfRecords.size(), this, this.fonts);
            this.xfRecords.add(xFRecord);
        } else if (xFRecord.getXFIndex() >= this.xfRecords.size()) {
            this.xfRecords.add(xFRecord);
        }
    }

    public final void addFormat(DisplayFormat displayFormat) throws NumFormatRecordsException {
        if (displayFormat.isInitialized() && displayFormat.getFormatIndex() >= maxFormatRecordsIndex) {
            logger.warn("Format index exceeds Excel maximum - assigning custom number");
            displayFormat.initialize(this.nextCustomIndexNumber);
            this.nextCustomIndexNumber++;
        }
        if (!displayFormat.isInitialized()) {
            displayFormat.initialize(this.nextCustomIndexNumber);
            this.nextCustomIndexNumber++;
        }
        if (this.nextCustomIndexNumber > maxFormatRecordsIndex) {
            this.nextCustomIndexNumber = maxFormatRecordsIndex;
            throw new NumFormatRecordsException();
        }
        if (displayFormat.getFormatIndex() >= this.nextCustomIndexNumber) {
            this.nextCustomIndexNumber = displayFormat.getFormatIndex() + 1;
        }
        if (displayFormat.isBuiltIn()) {
            return;
        }
        this.formatsList.add(displayFormat);
        this.formats.put(new Integer(displayFormat.getFormatIndex()), displayFormat);
    }

    public final boolean isDate(int i) {
        XFRecord xFRecord = (XFRecord) this.xfRecords.get(i);
        if (xFRecord.isDate()) {
            return true;
        }
        FormatRecord formatRecord = (FormatRecord) this.formats.get(new Integer(xFRecord.getFormatRecord()));
        if (formatRecord == null) {
            return false;
        }
        return formatRecord.isDate();
    }

    public final DateFormat getDateFormat(int i) {
        XFRecord xFRecord = (XFRecord) this.xfRecords.get(i);
        if (xFRecord.isDate()) {
            return xFRecord.getDateFormat();
        }
        FormatRecord formatRecord = (FormatRecord) this.formats.get(new Integer(xFRecord.getFormatRecord()));
        if (formatRecord != null && formatRecord.isDate()) {
            return formatRecord.getDateFormat();
        }
        return null;
    }

    public final NumberFormat getNumberFormat(int i) {
        XFRecord xFRecord = (XFRecord) this.xfRecords.get(i);
        if (xFRecord.isNumber()) {
            return xFRecord.getNumberFormat();
        }
        FormatRecord formatRecord = (FormatRecord) this.formats.get(new Integer(xFRecord.getFormatRecord()));
        if (formatRecord != null && formatRecord.isNumber()) {
            return formatRecord.getNumberFormat();
        }
        return null;
    }

    FormatRecord getFormatRecord(int i) {
        return (FormatRecord) this.formats.get(new Integer(i));
    }

    public void write(File file) throws IOException {
        Iterator it = this.formatsList.iterator();
        while (it.hasNext()) {
            file.write((FormatRecord) it.next());
        }
        Iterator it2 = this.xfRecords.iterator();
        while (it2.hasNext()) {
            file.write((XFRecord) it2.next());
        }
        file.write(new BuiltInStyle(16, 3));
        file.write(new BuiltInStyle(17, 6));
        file.write(new BuiltInStyle(18, 4));
        file.write(new BuiltInStyle(19, 7));
        file.write(new BuiltInStyle(0, 0));
        file.write(new BuiltInStyle(20, 5));
    }

    protected final Fonts getFonts() {
        return this.fonts;
    }

    public final XFRecord getXFRecord(int i) {
        return (XFRecord) this.xfRecords.get(i);
    }

    protected final int getNumberOfFormatRecords() {
        return this.formatsList.size();
    }

    public IndexMapping rationalizeFonts() {
        return this.fonts.rationalize();
    }

    public IndexMapping rationalize(IndexMapping indexMapping, IndexMapping indexMapping2) {
        Iterator it = this.xfRecords.iterator();
        while (it.hasNext()) {
            XFRecord xFRecord = (XFRecord) it.next();
            if (xFRecord.getFormatRecord() >= customFormatStartIndex) {
                xFRecord.setFormatIndex(indexMapping2.getNewIndex(xFRecord.getFormatRecord()));
            }
            xFRecord.setFontIndex(indexMapping.getNewIndex(xFRecord.getFontIndex()));
        }
        int i = 21;
        ArrayList arrayList = new ArrayList(21);
        IndexMapping indexMapping3 = new IndexMapping(this.xfRecords.size());
        int iMin = Math.min(21, this.xfRecords.size());
        for (int i2 = 0; i2 < iMin; i2++) {
            arrayList.add(this.xfRecords.get(i2));
            indexMapping3.setMapping(i2, i2);
        }
        if (iMin < 21) {
            logger.warn("There are less than the expected minimum number of XF records");
            return indexMapping3;
        }
        int i3 = 0;
        while (i < this.xfRecords.size()) {
            XFRecord xFRecord2 = (XFRecord) this.xfRecords.get(i);
            Iterator it2 = arrayList.iterator();
            int i4 = i3;
            boolean z = false;
            while (it2.hasNext() && !z) {
                XFRecord xFRecord3 = (XFRecord) it2.next();
                if (xFRecord3.equals(xFRecord2)) {
                    indexMapping3.setMapping(i, indexMapping3.getNewIndex(xFRecord3.getXFIndex()));
                    i4++;
                    z = true;
                }
            }
            if (!z) {
                arrayList.add(xFRecord2);
                indexMapping3.setMapping(i, i - i4);
            }
            i++;
            i3 = i4;
        }
        Iterator it3 = this.xfRecords.iterator();
        while (it3.hasNext()) {
            ((XFRecord) it3.next()).rationalize(indexMapping3);
        }
        this.xfRecords = arrayList;
        return indexMapping3;
    }

    public IndexMapping rationalizeDisplayFormats() {
        ArrayList arrayList = new ArrayList();
        IndexMapping indexMapping = new IndexMapping(this.nextCustomIndexNumber);
        Iterator it = this.formatsList.iterator();
        int i = 0;
        while (it.hasNext()) {
            DisplayFormat displayFormat = (DisplayFormat) it.next();
            Assert.verify(!displayFormat.isBuiltIn());
            Iterator it2 = arrayList.iterator();
            int i2 = i;
            boolean z = false;
            while (it2.hasNext() && !z) {
                DisplayFormat displayFormat2 = (DisplayFormat) it2.next();
                if (displayFormat2.equals(displayFormat)) {
                    indexMapping.setMapping(displayFormat.getFormatIndex(), indexMapping.getNewIndex(displayFormat2.getFormatIndex()));
                    i2++;
                    z = true;
                }
            }
            if (!z) {
                arrayList.add(displayFormat);
                if (displayFormat.getFormatIndex() - i2 > maxFormatRecordsIndex) {
                    logger.warn("Too many number formats - using default format.");
                }
                indexMapping.setMapping(displayFormat.getFormatIndex(), displayFormat.getFormatIndex() - i2);
            }
            i = i2;
        }
        this.formatsList = arrayList;
        Iterator it3 = this.formatsList.iterator();
        while (it3.hasNext()) {
            DisplayFormat displayFormat3 = (DisplayFormat) it3.next();
            displayFormat3.initialize(indexMapping.getNewIndex(displayFormat3.getFormatIndex()));
        }
        return indexMapping;
    }

    public PaletteRecord getPalette() {
        return this.palette;
    }

    public void setPalette(PaletteRecord paletteRecord) {
        this.palette = paletteRecord;
    }

    public void setColourRGB(Colour colour, int i, int i2, int i3) {
        if (this.palette == null) {
            this.palette = new PaletteRecord();
        }
        this.palette.setColourRGB(colour, i, i2, i3);
    }

    public RGB getColourRGB(Colour colour) {
        PaletteRecord paletteRecord = this.palette;
        if (paletteRecord == null) {
            return colour.getDefaultRGB();
        }
        return paletteRecord.getColourRGB(colour);
    }
}
