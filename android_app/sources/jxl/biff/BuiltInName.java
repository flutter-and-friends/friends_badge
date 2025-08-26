package jxl.biff;

/* loaded from: classes2.dex */
public class BuiltInName {
    private String name;
    private int value;
    private static BuiltInName[] builtInNames = new BuiltInName[0];
    public static final BuiltInName CONSOLIDATE_AREA = new BuiltInName("Consolidate_Area", 0);
    public static final BuiltInName AUTO_OPEN = new BuiltInName("Auto_Open", 1);
    public static final BuiltInName AUTO_CLOSE = new BuiltInName("Auto_Open", 2);
    public static final BuiltInName EXTRACT = new BuiltInName("Extract", 3);
    public static final BuiltInName DATABASE = new BuiltInName("Database", 4);
    public static final BuiltInName CRITERIA = new BuiltInName("Criteria", 5);
    public static final BuiltInName PRINT_AREA = new BuiltInName("Print_Area", 6);
    public static final BuiltInName PRINT_TITLES = new BuiltInName("Print_Titles", 7);
    public static final BuiltInName RECORDER = new BuiltInName("Recorder", 8);
    public static final BuiltInName DATA_FORM = new BuiltInName("Data_Form", 9);
    public static final BuiltInName AUTO_ACTIVATE = new BuiltInName("Auto_Activate", 10);
    public static final BuiltInName AUTO_DEACTIVATE = new BuiltInName("Auto_Deactivate", 11);
    public static final BuiltInName SHEET_TITLE = new BuiltInName("Sheet_Title", 11);
    public static final BuiltInName FILTER_DATABASE = new BuiltInName("_FilterDatabase", 13);

    private BuiltInName(String str, int i) {
        this.name = str;
        this.value = i;
        BuiltInName[] builtInNameArr = builtInNames;
        builtInNames = new BuiltInName[builtInNameArr.length + 1];
        System.arraycopy(builtInNameArr, 0, builtInNames, 0, builtInNameArr.length);
        builtInNames[builtInNameArr.length] = this;
    }

    public String getName() {
        return this.name;
    }

    public int getValue() {
        return this.value;
    }

    public static BuiltInName getBuiltInName(int i) {
        BuiltInName builtInName = FILTER_DATABASE;
        int i2 = 0;
        while (true) {
            BuiltInName[] builtInNameArr = builtInNames;
            if (i2 >= builtInNameArr.length) {
                return builtInName;
            }
            if (builtInNameArr[i2].getValue() == i) {
                builtInName = builtInNames[i2];
            }
            i2++;
        }
    }
}
