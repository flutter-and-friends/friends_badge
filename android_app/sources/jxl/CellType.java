package jxl;

/* loaded from: classes2.dex */
public final class CellType {
    private String description;
    public static final CellType EMPTY = new CellType("Empty");
    public static final CellType LABEL = new CellType("Label");
    public static final CellType NUMBER = new CellType("Number");
    public static final CellType BOOLEAN = new CellType("Boolean");
    public static final CellType ERROR = new CellType("Error");
    public static final CellType NUMBER_FORMULA = new CellType("Numerical Formula");
    public static final CellType DATE_FORMULA = new CellType("Date Formula");
    public static final CellType STRING_FORMULA = new CellType("String Formula");
    public static final CellType BOOLEAN_FORMULA = new CellType("Boolean Formula");
    public static final CellType FORMULA_ERROR = new CellType("Formula Error");
    public static final CellType DATE = new CellType("Date");

    private CellType(String str) {
        this.description = str;
    }

    public String toString() {
        return this.description;
    }
}
