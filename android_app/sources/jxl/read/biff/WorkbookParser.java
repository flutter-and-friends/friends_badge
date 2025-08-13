package jxl.read.biff;

import common.Assert;
import common.Logger;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import jxl.Cell;
import jxl.Range;
import jxl.Sheet;
import jxl.Workbook;
import jxl.WorkbookSettings;
import jxl.biff.CellReferenceHelper;
import jxl.biff.EmptyCell;
import jxl.biff.Fonts;
import jxl.biff.FormattingRecords;
import jxl.biff.RangeImpl;
import jxl.biff.StringHelper;
import jxl.biff.WorkbookMethods;
import jxl.biff.drawing.DrawingGroup;
import jxl.biff.drawing.MsoDrawingGroupRecord;
import jxl.biff.formula.ExternalSheet;
import jxl.read.biff.NameRecord;

/* loaded from: classes2.dex */
public class WorkbookParser extends Workbook implements ExternalSheet, WorkbookMethods {
    static /* synthetic */ Class class$jxl$read$biff$WorkbookParser;
    private static Logger logger;
    private ArrayList addInFunctions;
    private int bofs;
    private ButtonPropertySetRecord buttonPropertySet;
    private CountryRecord countryRecord;
    private DrawingGroup drawingGroup;
    private File excelFile;
    private ExternalSheetRecord externSheet;
    private SheetImpl lastSheet;
    private MsoDrawingGroupRecord msoDrawingGroup;
    private ArrayList nameTable;
    private boolean nineteenFour;
    private WorkbookSettings settings;
    private SSTRecord sharedStrings;
    private BOFRecord workbookBof;
    private ArrayList boundsheets = new ArrayList(10);
    private Fonts fonts = new Fonts();
    private FormattingRecords formattingRecords = new FormattingRecords(this.fonts);
    private ArrayList sheets = new ArrayList(10);
    private ArrayList supbooks = new ArrayList(10);
    private HashMap namedRecords = new HashMap();
    private int lastSheetIndex = -1;
    private boolean wbProtected = false;
    private boolean containsMacros = false;

    @Override // jxl.biff.formula.ExternalSheet
    public int getExternalSheetIndex(String str) {
        return 0;
    }

    @Override // jxl.biff.formula.ExternalSheet
    public int getLastExternalSheetIndex(String str) {
        return 0;
    }

    static {
        Class clsClass$ = class$jxl$read$biff$WorkbookParser;
        if (clsClass$ == null) {
            clsClass$ = class$("jxl.read.biff.WorkbookParser");
            class$jxl$read$biff$WorkbookParser = clsClass$;
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

    public WorkbookParser(File file, WorkbookSettings workbookSettings) {
        this.excelFile = file;
        this.settings = workbookSettings;
    }

    @Override // jxl.Workbook
    public Sheet[] getSheets() {
        return (Sheet[]) this.sheets.toArray(new Sheet[getNumberOfSheets()]);
    }

    @Override // jxl.biff.WorkbookMethods
    public Sheet getReadSheet(int i) {
        return getSheet(i);
    }

    @Override // jxl.Workbook
    public Sheet getSheet(int i) {
        SheetImpl sheetImpl = this.lastSheet;
        if (sheetImpl != null && this.lastSheetIndex == i) {
            return sheetImpl;
        }
        SheetImpl sheetImpl2 = this.lastSheet;
        if (sheetImpl2 != null) {
            sheetImpl2.clear();
            if (!this.settings.getGCDisabled()) {
                System.gc();
            }
        }
        this.lastSheet = (SheetImpl) this.sheets.get(i);
        this.lastSheetIndex = i;
        this.lastSheet.readSheet();
        return this.lastSheet;
    }

    @Override // jxl.Workbook
    public Sheet getSheet(String str) {
        Iterator it = this.boundsheets.iterator();
        boolean z = false;
        int i = 0;
        while (it.hasNext() && !z) {
            if (((BoundsheetRecord) it.next()).getName().equals(str)) {
                z = true;
            } else {
                i++;
            }
        }
        if (z) {
            return getSheet(i);
        }
        return null;
    }

    @Override // jxl.Workbook
    public String[] getSheetNames() {
        String[] strArr = new String[this.boundsheets.size()];
        for (int i = 0; i < strArr.length; i++) {
            strArr[i] = ((BoundsheetRecord) this.boundsheets.get(i)).getName();
        }
        return strArr;
    }

    @Override // jxl.biff.formula.ExternalSheet
    public int getExternalSheetIndex(int i) {
        if (this.workbookBof.isBiff7()) {
            return i;
        }
        Assert.verify(this.externSheet != null);
        return this.externSheet.getFirstTabIndex(i);
    }

    @Override // jxl.biff.formula.ExternalSheet
    public int getLastExternalSheetIndex(int i) {
        if (this.workbookBof.isBiff7()) {
            return i;
        }
        Assert.verify(this.externSheet != null);
        return this.externSheet.getLastTabIndex(i);
    }

    @Override // jxl.biff.formula.ExternalSheet
    public String getExternalSheetName(int i) {
        if (this.workbookBof.isBiff7()) {
            return ((BoundsheetRecord) this.boundsheets.get(i)).getName();
        }
        SupbookRecord supbookRecord = (SupbookRecord) this.supbooks.get(this.externSheet.getSupbookIndex(i));
        int firstTabIndex = this.externSheet.getFirstTabIndex(i);
        int lastTabIndex = this.externSheet.getLastTabIndex(i);
        if (supbookRecord.getType() == SupbookRecord.INTERNAL) {
            String name = firstTabIndex == 65535 ? "#REF" : ((BoundsheetRecord) this.boundsheets.get(firstTabIndex)).getName();
            String name2 = lastTabIndex != 65535 ? ((BoundsheetRecord) this.boundsheets.get(lastTabIndex)).getName() : "#REF";
            if (firstTabIndex != lastTabIndex) {
                StringBuffer stringBuffer = new StringBuffer();
                stringBuffer.append(name);
                stringBuffer.append(':');
                stringBuffer.append(name2);
                name = stringBuffer.toString();
            }
            if (name.indexOf(39) != -1) {
                name = StringHelper.replace(name, "'", "''");
            }
            if (name.indexOf(32) == -1) {
                return name;
            }
            StringBuffer stringBuffer2 = new StringBuffer();
            stringBuffer2.append('\'');
            stringBuffer2.append(name);
            stringBuffer2.append('\'');
            return stringBuffer2.toString();
        }
        if (supbookRecord.getType() != SupbookRecord.EXTERNAL) {
            return "[UNKNOWN]";
        }
        StringBuffer stringBuffer3 = new StringBuffer();
        java.io.File file = new java.io.File(supbookRecord.getFileName());
        stringBuffer3.append("'");
        stringBuffer3.append(file.getAbsolutePath());
        stringBuffer3.append("[");
        stringBuffer3.append(file.getName());
        stringBuffer3.append("]");
        stringBuffer3.append(firstTabIndex != 65535 ? supbookRecord.getSheetName(firstTabIndex) : "#REF");
        if (lastTabIndex != firstTabIndex) {
            stringBuffer3.append(supbookRecord.getSheetName(lastTabIndex));
        }
        stringBuffer3.append("'");
        return stringBuffer3.toString();
    }

    public String getLastExternalSheetName(int i) {
        if (this.workbookBof.isBiff7()) {
            return ((BoundsheetRecord) this.boundsheets.get(i)).getName();
        }
        SupbookRecord supbookRecord = (SupbookRecord) this.supbooks.get(this.externSheet.getSupbookIndex(i));
        int lastTabIndex = this.externSheet.getLastTabIndex(i);
        if (supbookRecord.getType() == SupbookRecord.INTERNAL) {
            return lastTabIndex == 65535 ? "#REF" : ((BoundsheetRecord) this.boundsheets.get(lastTabIndex)).getName();
        }
        if (supbookRecord.getType() != SupbookRecord.EXTERNAL) {
            return "[UNKNOWN]";
        }
        StringBuffer stringBuffer = new StringBuffer();
        java.io.File file = new java.io.File(supbookRecord.getFileName());
        stringBuffer.append("'");
        stringBuffer.append(file.getAbsolutePath());
        stringBuffer.append("[");
        stringBuffer.append(file.getName());
        stringBuffer.append("]");
        stringBuffer.append(lastTabIndex != 65535 ? supbookRecord.getSheetName(lastTabIndex) : "#REF");
        stringBuffer.append("'");
        return stringBuffer.toString();
    }

    @Override // jxl.Workbook
    public int getNumberOfSheets() {
        return this.sheets.size();
    }

    @Override // jxl.Workbook
    public void close() {
        SheetImpl sheetImpl = this.lastSheet;
        if (sheetImpl != null) {
            sheetImpl.clear();
        }
        this.excelFile.clear();
        if (this.settings.getGCDisabled()) {
            return;
        }
        System.gc();
    }

    final void addSheet(Sheet sheet) {
        this.sheets.add(sheet);
    }

    /*  JADX ERROR: JadxRuntimeException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Not found exit edge by exit block: B:135:0x0326
        	at jadx.core.dex.visitors.regions.maker.LoopRegionMaker.checkLoopExits(LoopRegionMaker.java:225)
        	at jadx.core.dex.visitors.regions.maker.LoopRegionMaker.makeLoopRegion(LoopRegionMaker.java:195)
        	at jadx.core.dex.visitors.regions.maker.LoopRegionMaker.process(LoopRegionMaker.java:62)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:89)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:66)
        	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:95)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:106)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:66)
        	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:95)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:106)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:66)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeMthRegion(RegionMaker.java:48)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:25)
        */
    /* JADX WARN: Path cross not found for [B:131:0x0310, B:134:0x0325], limit reached: 268 */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:134:0x0325 -> B:135:0x0326). Please report as a decompilation issue!!! */
    @Override // jxl.Workbook
    protected void parse() throws jxl.read.biff.BiffException, jxl.read.biff.PasswordException {
        /*
            Method dump skipped, instructions count: 1070
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: jxl.read.biff.WorkbookParser.parse():void");
    }

    public FormattingRecords getFormattingRecords() {
        return this.formattingRecords;
    }

    public ExternalSheetRecord getExternalSheetRecord() {
        return this.externSheet;
    }

    public MsoDrawingGroupRecord getMsoDrawingGroupRecord() {
        return this.msoDrawingGroup;
    }

    public SupbookRecord[] getSupbookRecords() {
        return (SupbookRecord[]) this.supbooks.toArray(new SupbookRecord[this.supbooks.size()]);
    }

    public NameRecord[] getNameRecords() {
        return (NameRecord[]) this.nameTable.toArray(new NameRecord[this.nameTable.size()]);
    }

    public Fonts getFonts() {
        return this.fonts;
    }

    @Override // jxl.Workbook
    public Cell getCell(String str) {
        return getSheet(CellReferenceHelper.getSheet(str)).getCell(str);
    }

    @Override // jxl.Workbook
    public Cell findCellByName(String str) {
        NameRecord nameRecord = (NameRecord) this.namedRecords.get(str);
        if (nameRecord == null) {
            return null;
        }
        NameRecord.NameRange[] ranges = nameRecord.getRanges();
        Sheet sheet = getSheet(getExternalSheetIndex(ranges[0].getExternalSheet()));
        int firstColumn = ranges[0].getFirstColumn();
        int firstRow = ranges[0].getFirstRow();
        if (firstColumn > sheet.getColumns() || firstRow > sheet.getRows()) {
            return new EmptyCell(firstColumn, firstRow);
        }
        return sheet.getCell(firstColumn, firstRow);
    }

    @Override // jxl.Workbook
    public Range[] findByName(String str) {
        NameRecord nameRecord = (NameRecord) this.namedRecords.get(str);
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

    @Override // jxl.Workbook
    public String[] getRangeNames() {
        Object[] array = this.namedRecords.keySet().toArray();
        String[] strArr = new String[array.length];
        System.arraycopy(array, 0, strArr, 0, array.length);
        return strArr;
    }

    @Override // jxl.biff.formula.ExternalSheet
    public BOFRecord getWorkbookBof() {
        return this.workbookBof;
    }

    @Override // jxl.Workbook
    public boolean isProtected() {
        return this.wbProtected;
    }

    public WorkbookSettings getSettings() {
        return this.settings;
    }

    @Override // jxl.biff.WorkbookMethods
    public String getName(int i) {
        Assert.verify(i >= 0 && i < this.nameTable.size());
        return ((NameRecord) this.nameTable.get(i)).getName();
    }

    @Override // jxl.biff.WorkbookMethods
    public int getNameIndex(String str) {
        NameRecord nameRecord = (NameRecord) this.namedRecords.get(str);
        if (nameRecord != null) {
            return nameRecord.getIndex();
        }
        return 0;
    }

    public DrawingGroup getDrawingGroup() {
        return this.drawingGroup;
    }

    public CompoundFile getCompoundFile() {
        return this.excelFile.getCompoundFile();
    }

    public boolean containsMacros() {
        return this.containsMacros;
    }

    public ButtonPropertySetRecord getButtonPropertySet() {
        return this.buttonPropertySet;
    }

    public CountryRecord getCountryRecord() {
        return this.countryRecord;
    }

    public String[] getAddInFunctionNames() {
        return (String[]) this.addInFunctions.toArray(new String[0]);
    }

    public int getIndex(Sheet sheet) {
        String name = sheet.getName();
        Iterator it = this.boundsheets.iterator();
        int i = -1;
        int i2 = 0;
        while (it.hasNext() && i == -1) {
            if (((BoundsheetRecord) it.next()).getName().equals(name)) {
                i = i2;
            } else {
                i2++;
            }
        }
        return i;
    }
}
