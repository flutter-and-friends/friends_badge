package jxl.write.biff;

import common.Assert;
import common.Logger;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import jxl.Range;
import jxl.Sheet;
import jxl.Workbook;
import jxl.WorkbookSettings;
import jxl.biff.BuiltInName;
import jxl.biff.CellReferenceHelper;
import jxl.biff.CountryCode;
import jxl.biff.Fonts;
import jxl.biff.FormattingRecords;
import jxl.biff.IndexMapping;
import jxl.biff.IntegerHelper;
import jxl.biff.RangeImpl;
import jxl.biff.WorkbookMethods;
import jxl.biff.drawing.Drawing;
import jxl.biff.drawing.DrawingGroup;
import jxl.biff.drawing.DrawingGroupObject;
import jxl.biff.drawing.Origin;
import jxl.biff.formula.ExternalSheet;
import jxl.format.Colour;
import jxl.format.RGB;
import jxl.read.biff.WorkbookParser;
import jxl.write.WritableCell;
import jxl.write.WritableSheet;
import jxl.write.WritableWorkbook;
import jxl.write.biff.NameRecord;

/* loaded from: classes2.dex */
public class WritableWorkbookImpl extends WritableWorkbook implements ExternalSheet, WorkbookMethods {
    static /* synthetic */ Class class$jxl$write$biff$WritableWorkbookImpl;
    private static Logger logger;
    private String[] addInFunctionNames;
    private ButtonPropertySetRecord buttonPropertySet;
    private boolean closeStream;
    private boolean containsMacros;
    private CountryRecord countryRecord;
    private DrawingGroup drawingGroup;
    private ExternalSheetRecord externSheet;
    private Fonts fonts;
    private FormattingRecords formatRecords;
    private HashMap nameRecords;
    private ArrayList names;
    private File outputFile;
    private ArrayList rcirCells;
    private WorkbookSettings settings;
    private SharedStrings sharedStrings;
    private ArrayList sheets;
    private Styles styles;
    private ArrayList supbooks;
    private boolean wbProtected;

    @Override // jxl.biff.formula.ExternalSheet
    public jxl.read.biff.BOFRecord getWorkbookBof() {
        return null;
    }

    static {
        Class clsClass$ = class$jxl$write$biff$WritableWorkbookImpl;
        if (clsClass$ == null) {
            clsClass$ = class$("jxl.write.biff.WritableWorkbookImpl");
            class$jxl$write$biff$WritableWorkbookImpl = clsClass$;
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

    public WritableWorkbookImpl(OutputStream outputStream, boolean z, WorkbookSettings workbookSettings) throws IOException {
        this.outputFile = new File(outputStream, workbookSettings, null);
        this.sheets = new ArrayList();
        this.sharedStrings = new SharedStrings();
        this.nameRecords = new HashMap();
        this.closeStream = z;
        this.wbProtected = false;
        this.containsMacros = false;
        this.settings = workbookSettings;
        this.rcirCells = new ArrayList();
        this.styles = new Styles();
        WritableWorkbook.ARIAL_10_PT.uninitialize();
        WritableWorkbook.HYPERLINK_FONT.uninitialize();
        WritableWorkbook.NORMAL_STYLE.uninitialize();
        WritableWorkbook.HYPERLINK_STYLE.uninitialize();
        WritableWorkbook.HIDDEN_STYLE.uninitialize();
        DateRecord.defaultDateFormat.uninitialize();
        this.fonts = new WritableFonts(this);
        this.formatRecords = new WritableFormattingRecords(this.fonts, this.styles);
    }

    public WritableWorkbookImpl(OutputStream outputStream, Workbook workbook, boolean z, WorkbookSettings workbookSettings) throws IndexOutOfBoundsException, IOException {
        WorkbookParser workbookParser = (WorkbookParser) workbook;
        WritableWorkbook.ARIAL_10_PT.uninitialize();
        WritableWorkbook.HYPERLINK_FONT.uninitialize();
        WritableWorkbook.NORMAL_STYLE.uninitialize();
        WritableWorkbook.HYPERLINK_STYLE.uninitialize();
        WritableWorkbook.HIDDEN_STYLE.uninitialize();
        DateRecord.defaultDateFormat.uninitialize();
        this.closeStream = z;
        this.sheets = new ArrayList();
        this.sharedStrings = new SharedStrings();
        this.nameRecords = new HashMap();
        this.fonts = workbookParser.getFonts();
        this.formatRecords = workbookParser.getFormattingRecords();
        this.wbProtected = false;
        this.settings = workbookSettings;
        this.rcirCells = new ArrayList();
        this.styles = new Styles();
        this.outputFile = new File(outputStream, workbookSettings, workbookParser.getCompoundFile());
        this.containsMacros = false;
        if (!workbookSettings.getPropertySetsDisabled()) {
            this.containsMacros = workbookParser.containsMacros();
        }
        if (workbookParser.getCountryRecord() != null) {
            this.countryRecord = new CountryRecord(workbookParser.getCountryRecord());
        }
        this.addInFunctionNames = workbookParser.getAddInFunctionNames();
        if (workbookParser.getExternalSheetRecord() != null) {
            this.externSheet = new ExternalSheetRecord(workbookParser.getExternalSheetRecord());
            jxl.read.biff.SupbookRecord[] supbookRecords = workbookParser.getSupbookRecords();
            this.supbooks = new ArrayList(supbookRecords.length);
            for (jxl.read.biff.SupbookRecord supbookRecord : supbookRecords) {
                if (supbookRecord.getType() == jxl.read.biff.SupbookRecord.INTERNAL || supbookRecord.getType() == jxl.read.biff.SupbookRecord.EXTERNAL) {
                    this.supbooks.add(new SupbookRecord(supbookRecord, this.settings));
                } else if (supbookRecord.getType() != jxl.read.biff.SupbookRecord.ADDIN) {
                    logger.warn("unsupported supbook type - ignoring");
                }
            }
        }
        if (workbookParser.getDrawingGroup() != null) {
            this.drawingGroup = new DrawingGroup(workbookParser.getDrawingGroup());
        }
        if (this.containsMacros && workbookParser.getButtonPropertySet() != null) {
            this.buttonPropertySet = new ButtonPropertySetRecord(workbookParser.getButtonPropertySet());
        }
        if (!this.settings.getNamesDisabled()) {
            jxl.read.biff.NameRecord[] nameRecords = workbookParser.getNameRecords();
            this.names = new ArrayList(nameRecords.length);
            for (int i = 0; i < nameRecords.length; i++) {
                if (nameRecords[i].isBiff8()) {
                    NameRecord nameRecord = new NameRecord(nameRecords[i], i);
                    this.names.add(nameRecord);
                    this.nameRecords.put(nameRecord.getName(), nameRecord);
                } else {
                    logger.warn("Cannot copy Biff7 name records - ignoring");
                }
            }
        }
        copyWorkbook(workbook);
        DrawingGroup drawingGroup = this.drawingGroup;
        if (drawingGroup != null) {
            drawingGroup.updateData(workbookParser.getDrawingGroup());
        }
    }

    @Override // jxl.write.WritableWorkbook
    public WritableSheet[] getSheets() {
        WritableSheet[] writableSheetArr = new WritableSheet[getNumberOfSheets()];
        for (int i = 0; i < getNumberOfSheets(); i++) {
            writableSheetArr[i] = getSheet(i);
        }
        return writableSheetArr;
    }

    @Override // jxl.write.WritableWorkbook
    public String[] getSheetNames() {
        String[] strArr = new String[getNumberOfSheets()];
        for (int i = 0; i < strArr.length; i++) {
            strArr[i] = getSheet(i).getName();
        }
        return strArr;
    }

    @Override // jxl.biff.WorkbookMethods
    public Sheet getReadSheet(int i) {
        return getSheet(i);
    }

    @Override // jxl.write.WritableWorkbook
    public WritableSheet getSheet(int i) {
        return (WritableSheet) this.sheets.get(i);
    }

    @Override // jxl.write.WritableWorkbook
    public WritableSheet getSheet(String str) {
        Iterator it = this.sheets.iterator();
        boolean z = false;
        WritableSheet writableSheet = null;
        while (it.hasNext() && !z) {
            writableSheet = (WritableSheet) it.next();
            if (writableSheet.getName().equals(str)) {
                z = true;
            }
        }
        if (z) {
            return writableSheet;
        }
        return null;
    }

    @Override // jxl.write.WritableWorkbook
    public int getNumberOfSheets() {
        return this.sheets.size();
    }

    @Override // jxl.write.WritableWorkbook
    public void close() throws IOException, JxlWriteException {
        this.outputFile.close(this.closeStream);
    }

    @Override // jxl.write.WritableWorkbook
    public void setOutputFile(java.io.File file) throws IOException {
        this.outputFile.setOutputFile(new FileOutputStream(file));
    }

    private WritableSheet createSheet(String str, int i, boolean z) {
        ExternalSheetRecord externalSheetRecord;
        WritableSheetImpl writableSheetImpl = new WritableSheetImpl(str, this.outputFile, this.formatRecords, this.sharedStrings, this.settings, this);
        if (i <= 0) {
            this.sheets.add(0, writableSheetImpl);
            i = 0;
        } else if (i > this.sheets.size()) {
            i = this.sheets.size();
            this.sheets.add(writableSheetImpl);
        } else {
            this.sheets.add(i, writableSheetImpl);
        }
        if (z && (externalSheetRecord = this.externSheet) != null) {
            externalSheetRecord.sheetInserted(i);
        }
        ArrayList arrayList = this.supbooks;
        if (arrayList != null && arrayList.size() > 0) {
            SupbookRecord supbookRecord = (SupbookRecord) this.supbooks.get(0);
            if (supbookRecord.getType() == SupbookRecord.INTERNAL) {
                supbookRecord.adjustInternal(this.sheets.size());
            }
        }
        return writableSheetImpl;
    }

    @Override // jxl.write.WritableWorkbook
    public WritableSheet createSheet(String str, int i) {
        return createSheet(str, i, true);
    }

    @Override // jxl.write.WritableWorkbook
    public void removeSheet(int i) {
        if (i <= 0) {
            this.sheets.remove(0);
            i = 0;
        } else if (i >= this.sheets.size()) {
            i = this.sheets.size() - 1;
            ArrayList arrayList = this.sheets;
            arrayList.remove(arrayList.size() - 1);
        } else {
            this.sheets.remove(i);
        }
        ExternalSheetRecord externalSheetRecord = this.externSheet;
        if (externalSheetRecord != null) {
            externalSheetRecord.sheetRemoved(i);
        }
        ArrayList arrayList2 = this.supbooks;
        if (arrayList2 != null && arrayList2.size() > 0) {
            SupbookRecord supbookRecord = (SupbookRecord) this.supbooks.get(0);
            if (supbookRecord.getType() == SupbookRecord.INTERNAL) {
                supbookRecord.adjustInternal(this.sheets.size());
            }
        }
        ArrayList arrayList3 = this.names;
        if (arrayList3 == null || arrayList3.size() <= 0) {
            return;
        }
        for (int i2 = 0; i2 < this.names.size(); i2++) {
            NameRecord nameRecord = (NameRecord) this.names.get(i2);
            int sheetRef = nameRecord.getSheetRef();
            int i3 = i + 1;
            if (sheetRef == i3) {
                nameRecord.setSheetRef(0);
            } else if (sheetRef > i3) {
                if (sheetRef < 1) {
                    sheetRef = 1;
                }
                nameRecord.setSheetRef(sheetRef - 1);
            }
        }
    }

    @Override // jxl.write.WritableWorkbook
    public WritableSheet moveSheet(int i, int i2) {
        int iMin = Math.min(Math.max(i, 0), this.sheets.size() - 1);
        int iMin2 = Math.min(Math.max(i2, 0), this.sheets.size() - 1);
        WritableSheet writableSheet = (WritableSheet) this.sheets.remove(iMin);
        this.sheets.add(iMin2, writableSheet);
        return writableSheet;
    }

    @Override // jxl.write.WritableWorkbook
    public void write() throws IOException {
        for (int i = 0; i < getNumberOfSheets(); i++) {
            WritableSheetImpl writableSheetImpl = (WritableSheetImpl) getSheet(i);
            writableSheetImpl.checkMergedBorders();
            Range printArea = writableSheetImpl.getSettings().getPrintArea();
            if (printArea != null) {
                addNameArea(BuiltInName.PRINT_AREA, (WritableSheet) writableSheetImpl, printArea.getTopLeft().getColumn(), printArea.getTopLeft().getRow(), printArea.getBottomRight().getColumn(), printArea.getBottomRight().getRow(), false);
            }
        }
        if (!this.settings.getRationalizationDisabled()) {
            rationalize();
        }
        this.outputFile.write(new BOFRecord(BOFRecord.workbookGlobals));
        this.outputFile.write(new InterfaceHeaderRecord());
        this.outputFile.write(new MMSRecord(0, 0));
        this.outputFile.write(new InterfaceEndRecord());
        this.outputFile.write(new WriteAccessRecord());
        this.outputFile.write(new CodepageRecord());
        this.outputFile.write(new DSFRecord());
        this.outputFile.write(new TabIdRecord(getNumberOfSheets()));
        if (this.containsMacros) {
            this.outputFile.write(new ObjProjRecord());
        }
        ButtonPropertySetRecord buttonPropertySetRecord = this.buttonPropertySet;
        if (buttonPropertySetRecord != null) {
            this.outputFile.write(buttonPropertySetRecord);
        }
        this.outputFile.write(new FunctionGroupCountRecord());
        this.outputFile.write(new WindowProtectRecord(false));
        this.outputFile.write(new ProtectRecord(this.wbProtected));
        this.outputFile.write(new PasswordRecord((String) null));
        this.outputFile.write(new Prot4RevRecord(false));
        this.outputFile.write(new Prot4RevPassRecord());
        this.outputFile.write(new Window1Record());
        this.outputFile.write(new BackupRecord(false));
        this.outputFile.write(new HideobjRecord(false));
        this.outputFile.write(new NineteenFourRecord(false));
        this.outputFile.write(new PrecisionRecord(false));
        this.outputFile.write(new RefreshAllRecord(false));
        this.outputFile.write(new BookboolRecord(true));
        this.fonts.write(this.outputFile);
        this.formatRecords.write(this.outputFile);
        if (this.formatRecords.getPalette() != null) {
            this.outputFile.write(this.formatRecords.getPalette());
        }
        this.outputFile.write(new UsesElfsRecord());
        int[] iArr = new int[getNumberOfSheets()];
        for (int i2 = 0; i2 < getNumberOfSheets(); i2++) {
            iArr[i2] = this.outputFile.getPos();
            WritableSheet sheet = getSheet(i2);
            BoundsheetRecord boundsheetRecord = new BoundsheetRecord(sheet.getName());
            if (sheet.getSettings().isHidden()) {
                boundsheetRecord.setHidden();
            }
            if (((WritableSheetImpl) this.sheets.get(i2)).isChartOnly()) {
                boundsheetRecord.setChartOnly();
            }
            this.outputFile.write(boundsheetRecord);
        }
        if (this.countryRecord == null) {
            CountryCode countryCode = CountryCode.getCountryCode(this.settings.getExcelDisplayLanguage());
            if (countryCode == CountryCode.UNKNOWN) {
                Logger logger2 = logger;
                StringBuffer stringBuffer = new StringBuffer();
                stringBuffer.append("Unknown country code ");
                stringBuffer.append(this.settings.getExcelDisplayLanguage());
                stringBuffer.append(" using ");
                stringBuffer.append(CountryCode.USA.getCode());
                logger2.warn(stringBuffer.toString());
                countryCode = CountryCode.USA;
            }
            CountryCode countryCode2 = CountryCode.getCountryCode(this.settings.getExcelRegionalSettings());
            this.countryRecord = new CountryRecord(countryCode, countryCode2);
            if (countryCode2 == CountryCode.UNKNOWN) {
                Logger logger3 = logger;
                StringBuffer stringBuffer2 = new StringBuffer();
                stringBuffer2.append("Unknown country code ");
                stringBuffer2.append(this.settings.getExcelDisplayLanguage());
                stringBuffer2.append(" using ");
                stringBuffer2.append(CountryCode.f1121UK.getCode());
                logger3.warn(stringBuffer2.toString());
                CountryCode countryCode3 = CountryCode.f1121UK;
            }
        }
        this.outputFile.write(this.countryRecord);
        String[] strArr = this.addInFunctionNames;
        if (strArr != null && strArr.length > 0) {
            this.outputFile.write(new SupbookRecord());
            int i3 = 0;
            while (true) {
                String[] strArr2 = this.addInFunctionNames;
                if (i3 >= strArr2.length) {
                    break;
                }
                this.outputFile.write(new ExternalNameRecord(strArr2[i3]));
                i3++;
            }
        }
        if (this.externSheet != null) {
            for (int i4 = 0; i4 < this.supbooks.size(); i4++) {
                this.outputFile.write((SupbookRecord) this.supbooks.get(i4));
            }
            this.outputFile.write(this.externSheet);
        }
        if (this.names != null) {
            for (int i5 = 0; i5 < this.names.size(); i5++) {
                this.outputFile.write((NameRecord) this.names.get(i5));
            }
        }
        DrawingGroup drawingGroup = this.drawingGroup;
        if (drawingGroup != null) {
            drawingGroup.write(this.outputFile);
        }
        this.sharedStrings.write(this.outputFile);
        this.outputFile.write(new EOFRecord());
        boolean z = false;
        for (int i6 = 0; i6 < getNumberOfSheets() && !z; i6++) {
            if (((WritableSheetImpl) getSheet(i6)).getSettings().isSelected()) {
                z = true;
            }
        }
        if (!z) {
            ((WritableSheetImpl) getSheet(0)).getSettings().setSelected(true);
        }
        for (int i7 = 0; i7 < getNumberOfSheets(); i7++) {
            File file = this.outputFile;
            file.setData(IntegerHelper.getFourBytes(file.getPos()), iArr[i7] + 4);
            ((WritableSheetImpl) getSheet(i7)).write();
        }
    }

    private void copyWorkbook(Workbook workbook) throws IndexOutOfBoundsException {
        int numberOfSheets = workbook.getNumberOfSheets();
        this.wbProtected = workbook.isProtected();
        for (int i = 0; i < numberOfSheets; i++) {
            Sheet sheet = workbook.getSheet(i);
            ((WritableSheetImpl) createSheet(sheet.getName(), i, false)).copy(sheet);
        }
    }

    @Override // jxl.write.WritableWorkbook
    public void copySheet(int i, String str, int i2) {
        ((WritableSheetImpl) createSheet(str, i2)).copy(getSheet(i));
    }

    @Override // jxl.write.WritableWorkbook
    public void copySheet(String str, String str2, int i) {
        ((WritableSheetImpl) createSheet(str2, i)).copy(getSheet(str));
    }

    @Override // jxl.write.WritableWorkbook
    public void setProtected(boolean z) {
        this.wbProtected = z;
    }

    private void rationalize() {
        IndexMapping indexMappingRationalizeFonts = this.formatRecords.rationalizeFonts();
        IndexMapping indexMappingRationalizeDisplayFormats = this.formatRecords.rationalizeDisplayFormats();
        IndexMapping indexMappingRationalize = this.formatRecords.rationalize(indexMappingRationalizeFonts, indexMappingRationalizeDisplayFormats);
        for (int i = 0; i < this.sheets.size(); i++) {
            ((WritableSheetImpl) this.sheets.get(i)).rationalize(indexMappingRationalize, indexMappingRationalizeFonts, indexMappingRationalizeDisplayFormats);
        }
    }

    private int getInternalSheetIndex(String str) {
        String[] sheetNames = getSheetNames();
        for (int i = 0; i < sheetNames.length; i++) {
            if (str.equals(sheetNames[i])) {
                return i;
            }
        }
        return -1;
    }

    @Override // jxl.biff.formula.ExternalSheet
    public String getExternalSheetName(int i) {
        SupbookRecord supbookRecord = (SupbookRecord) this.supbooks.get(this.externSheet.getSupbookIndex(i));
        int firstTabIndex = this.externSheet.getFirstTabIndex(i);
        if (supbookRecord.getType() == SupbookRecord.INTERNAL) {
            return getSheet(firstTabIndex).getName();
        }
        if (supbookRecord.getType() != SupbookRecord.EXTERNAL) {
            return "[UNKNOWN]";
        }
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(supbookRecord.getFileName());
        stringBuffer.append(supbookRecord.getSheetName(firstTabIndex));
        return stringBuffer.toString();
    }

    public String getLastExternalSheetName(int i) {
        SupbookRecord supbookRecord = (SupbookRecord) this.supbooks.get(this.externSheet.getSupbookIndex(i));
        int lastTabIndex = this.externSheet.getLastTabIndex(i);
        if (supbookRecord.getType() == SupbookRecord.INTERNAL) {
            return getSheet(lastTabIndex).getName();
        }
        if (supbookRecord.getType() != SupbookRecord.EXTERNAL) {
            return "[UNKNOWN]";
        }
        Assert.verify(false);
        return "[UNKNOWN]";
    }

    @Override // jxl.biff.formula.ExternalSheet
    public int getExternalSheetIndex(int i) {
        ExternalSheetRecord externalSheetRecord = this.externSheet;
        if (externalSheetRecord == null) {
            return i;
        }
        Assert.verify(externalSheetRecord != null);
        return this.externSheet.getFirstTabIndex(i);
    }

    @Override // jxl.biff.formula.ExternalSheet
    public int getLastExternalSheetIndex(int i) {
        ExternalSheetRecord externalSheetRecord = this.externSheet;
        if (externalSheetRecord == null) {
            return i;
        }
        Assert.verify(externalSheetRecord != null);
        return this.externSheet.getLastTabIndex(i);
    }

    @Override // jxl.biff.formula.ExternalSheet
    public int getExternalSheetIndex(String str) {
        if (this.externSheet == null) {
            this.externSheet = new ExternalSheetRecord();
            this.supbooks = new ArrayList();
            this.supbooks.add(new SupbookRecord(getNumberOfSheets(), this.settings));
        }
        Iterator it = this.sheets.iterator();
        boolean z = false;
        int i = 0;
        while (it.hasNext() && !z) {
            if (((WritableSheetImpl) it.next()).getName().equals(str)) {
                z = true;
            } else {
                i++;
            }
        }
        if (z) {
            SupbookRecord supbookRecord = (SupbookRecord) this.supbooks.get(0);
            if (supbookRecord.getType() != SupbookRecord.INTERNAL || supbookRecord.getNumberOfSheets() != getNumberOfSheets()) {
                Logger logger2 = logger;
                StringBuffer stringBuffer = new StringBuffer();
                stringBuffer.append("Cannot find sheet ");
                stringBuffer.append(str);
                stringBuffer.append(" in supbook record");
                logger2.warn(stringBuffer.toString());
            }
            return this.externSheet.getIndex(0, i);
        }
        int iLastIndexOf = str.lastIndexOf(93);
        int iLastIndexOf2 = str.lastIndexOf(91);
        int size = -1;
        if (iLastIndexOf == -1 || iLastIndexOf2 == -1) {
            return -1;
        }
        String strSubstring = str.substring(iLastIndexOf + 1);
        String strSubstring2 = str.substring(iLastIndexOf2 + 1, iLastIndexOf);
        String strSubstring3 = str.substring(0, iLastIndexOf2);
        StringBuffer stringBuffer2 = new StringBuffer();
        stringBuffer2.append(strSubstring3);
        stringBuffer2.append(strSubstring2);
        String string = stringBuffer2.toString();
        SupbookRecord supbookRecord2 = null;
        boolean z2 = false;
        for (int i2 = 0; i2 < this.supbooks.size() && !z2; i2++) {
            supbookRecord2 = (SupbookRecord) this.supbooks.get(i2);
            if (supbookRecord2.getType() == SupbookRecord.EXTERNAL && supbookRecord2.getFileName().equals(string)) {
                size = i2;
                z2 = true;
            }
        }
        if (!z2) {
            supbookRecord2 = new SupbookRecord(string, this.settings);
            size = this.supbooks.size();
            this.supbooks.add(supbookRecord2);
        }
        return this.externSheet.getIndex(size, supbookRecord2.getSheetIndex(strSubstring));
    }

    @Override // jxl.biff.formula.ExternalSheet
    public int getLastExternalSheetIndex(String str) {
        if (this.externSheet == null) {
            this.externSheet = new ExternalSheetRecord();
            this.supbooks = new ArrayList();
            this.supbooks.add(new SupbookRecord(getNumberOfSheets(), this.settings));
        }
        Iterator it = this.sheets.iterator();
        boolean z = false;
        int i = 0;
        while (it.hasNext() && !z) {
            if (((WritableSheetImpl) it.next()).getName().equals(str)) {
                z = true;
            } else {
                i++;
            }
        }
        if (!z) {
            return -1;
        }
        SupbookRecord supbookRecord = (SupbookRecord) this.supbooks.get(0);
        Assert.verify(supbookRecord.getType() == SupbookRecord.INTERNAL && supbookRecord.getNumberOfSheets() == getNumberOfSheets());
        return this.externSheet.getIndex(0, i);
    }

    @Override // jxl.write.WritableWorkbook
    public void setColourRGB(Colour colour, int i, int i2, int i3) {
        this.formatRecords.setColourRGB(colour, i, i2, i3);
    }

    public RGB getColourRGB(Colour colour) {
        return this.formatRecords.getColourRGB(colour);
    }

    @Override // jxl.biff.WorkbookMethods
    public String getName(int i) {
        Assert.verify(i >= 0 && i < this.names.size());
        return ((NameRecord) this.names.get(i)).getName();
    }

    @Override // jxl.biff.WorkbookMethods
    public int getNameIndex(String str) {
        NameRecord nameRecord = (NameRecord) this.nameRecords.get(str);
        if (nameRecord != null) {
            return nameRecord.getIndex();
        }
        return -1;
    }

    void addRCIRCell(CellValue cellValue) {
        this.rcirCells.add(cellValue);
    }

    void columnInserted(WritableSheetImpl writableSheetImpl, int i) {
        int externalSheetIndex = getExternalSheetIndex(writableSheetImpl.getName());
        Iterator it = this.rcirCells.iterator();
        while (it.hasNext()) {
            ((CellValue) it.next()).columnInserted(writableSheetImpl, externalSheetIndex, i);
        }
    }

    void columnRemoved(WritableSheetImpl writableSheetImpl, int i) {
        int externalSheetIndex = getExternalSheetIndex(writableSheetImpl.getName());
        Iterator it = this.rcirCells.iterator();
        while (it.hasNext()) {
            ((CellValue) it.next()).columnRemoved(writableSheetImpl, externalSheetIndex, i);
        }
    }

    void rowInserted(WritableSheetImpl writableSheetImpl, int i) {
        int externalSheetIndex = getExternalSheetIndex(writableSheetImpl.getName());
        Iterator it = this.rcirCells.iterator();
        while (it.hasNext()) {
            ((CellValue) it.next()).rowInserted(writableSheetImpl, externalSheetIndex, i);
        }
    }

    void rowRemoved(WritableSheetImpl writableSheetImpl, int i) {
        int externalSheetIndex = getExternalSheetIndex(writableSheetImpl.getName());
        Iterator it = this.rcirCells.iterator();
        while (it.hasNext()) {
            ((CellValue) it.next()).rowRemoved(writableSheetImpl, externalSheetIndex, i);
        }
    }

    @Override // jxl.write.WritableWorkbook
    public WritableCell findCellByName(String str) {
        NameRecord nameRecord = (NameRecord) this.nameRecords.get(str);
        if (nameRecord == null) {
            return null;
        }
        NameRecord.NameRange[] ranges = nameRecord.getRanges();
        return getSheet(getExternalSheetIndex(ranges[0].getExternalSheet())).getWritableCell(ranges[0].getFirstColumn(), ranges[0].getFirstRow());
    }

    @Override // jxl.write.WritableWorkbook
    public Range[] findByName(String str) {
        NameRecord nameRecord = (NameRecord) this.nameRecords.get(str);
        if (nameRecord == null) {
            return null;
        }
        NameRecord.NameRange[] ranges = nameRecord.getRanges();
        Range[] rangeArr = new Range[ranges.length];
        for (int i = 0; i < ranges.length; i++) {
            rangeArr[i] = new RangeImpl(this, getExternalSheetIndex(ranges[i].getExternalSheet()), ranges[i].getFirstColumn(), ranges[i].getFirstRow(), getLastExternalSheetIndex(ranges[i].getExternalSheet()), ranges[i].getLastColumn(), ranges[i].getLastRow());
        }
        return rangeArr;
    }

    void addDrawing(DrawingGroupObject drawingGroupObject) {
        if (this.drawingGroup == null) {
            this.drawingGroup = new DrawingGroup(Origin.WRITE);
        }
        this.drawingGroup.add(drawingGroupObject);
    }

    void removeDrawing(Drawing drawing) {
        Assert.verify(this.drawingGroup != null);
        this.drawingGroup.remove(drawing);
    }

    DrawingGroup getDrawingGroup() {
        return this.drawingGroup;
    }

    DrawingGroup createDrawingGroup() {
        if (this.drawingGroup == null) {
            this.drawingGroup = new DrawingGroup(Origin.WRITE);
        }
        return this.drawingGroup;
    }

    @Override // jxl.write.WritableWorkbook
    public String[] getRangeNames() {
        ArrayList arrayList = this.names;
        if (arrayList == null) {
            return new String[0];
        }
        String[] strArr = new String[arrayList.size()];
        for (int i = 0; i < this.names.size(); i++) {
            strArr[i] = ((NameRecord) this.names.get(i)).getName();
        }
        return strArr;
    }

    @Override // jxl.write.WritableWorkbook
    public void removeRangeName(String str) {
        Iterator it = this.names.iterator();
        boolean z = false;
        int i = 0;
        while (it.hasNext() && !z) {
            if (((NameRecord) it.next()).getName().equals(str)) {
                z = true;
            } else {
                i++;
            }
        }
        if (z) {
            this.names.remove(i);
        }
    }

    Styles getStyles() {
        return this.styles;
    }

    @Override // jxl.write.WritableWorkbook
    public void addNameArea(String str, WritableSheet writableSheet, int i, int i2, int i3, int i4) {
        addNameArea(str, writableSheet, i, i2, i3, i4, true);
    }

    void addNameArea(String str, WritableSheet writableSheet, int i, int i2, int i3, int i4, boolean z) {
        if (this.names == null) {
            this.names = new ArrayList();
        }
        NameRecord nameRecord = new NameRecord(str, this.names.size(), getExternalSheetIndex(writableSheet.getName()), i2, i4, i, i3, z);
        this.names.add(nameRecord);
        this.nameRecords.put(str, nameRecord);
    }

    void addNameArea(BuiltInName builtInName, WritableSheet writableSheet, int i, int i2, int i3, int i4, boolean z) {
        if (this.names == null) {
            this.names = new ArrayList();
        }
        NameRecord nameRecord = new NameRecord(builtInName, getInternalSheetIndex(writableSheet.getName()), getExternalSheetIndex(writableSheet.getName()), i2, i4, i, i3, z);
        this.names.add(nameRecord);
        this.nameRecords.put(builtInName, nameRecord);
    }

    WorkbookSettings getSettings() {
        return this.settings;
    }

    @Override // jxl.write.WritableWorkbook
    public WritableCell getWritableCell(String str) {
        return getSheet(CellReferenceHelper.getSheet(str)).getWritableCell(str);
    }

    @Override // jxl.write.WritableWorkbook
    public WritableSheet importSheet(String str, int i, Sheet sheet) {
        WritableSheet writableSheetCreateSheet = createSheet(str, i);
        ((WritableSheetImpl) writableSheetCreateSheet).importSheet(sheet);
        return writableSheetCreateSheet;
    }
}
