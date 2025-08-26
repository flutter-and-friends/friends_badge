package jxl.read.biff;

import common.Assert;
import common.Logger;
import java.util.ArrayList;
import jxl.WorkbookSettings;
import jxl.biff.BuiltInName;
import jxl.biff.IntegerHelper;
import jxl.biff.RecordData;
import jxl.biff.StringHelper;

/* loaded from: classes2.dex */
public class NameRecord extends RecordData {
    private static final int areaReference = 59;
    public static Biff7 biff7 = null;
    private static final int builtIn = 32;
    private static final int cellReference = 58;
    static /* synthetic */ Class class$jxl$read$biff$NameRecord = null;
    private static final int commandMacro = 12;
    private static Logger logger = null;
    private static final int subExpression = 41;
    private static final int union = 16;
    private BuiltInName builtInName;
    private int index;
    private boolean isbiff8;
    private String name;
    private ArrayList ranges;
    private int sheetRef;

    static {
        Class clsClass$ = class$jxl$read$biff$NameRecord;
        if (clsClass$ == null) {
            clsClass$ = class$("jxl.read.biff.NameRecord");
            class$jxl$read$biff$NameRecord = clsClass$;
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

    public class NameRange {
        private int columnFirst;
        private int columnLast;
        private int externalSheet;
        private int rowFirst;
        private int rowLast;

        NameRange(int i, int i2, int i3, int i4, int i5) {
            this.columnFirst = i2;
            this.rowFirst = i3;
            this.columnLast = i4;
            this.rowLast = i5;
            this.externalSheet = i;
        }

        public int getFirstColumn() {
            return this.columnFirst;
        }

        public int getFirstRow() {
            return this.rowFirst;
        }

        public int getLastColumn() {
            return this.columnLast;
        }

        public int getLastRow() {
            return this.rowLast;
        }

        public int getExternalSheet() {
            return this.externalSheet;
        }
    }

    NameRecord(Record record, WorkbookSettings workbookSettings, int i) {
        super(record);
        this.sheetRef = 0;
        this.index = i;
        this.isbiff8 = true;
        try {
            this.ranges = new ArrayList();
            byte[] data = getRecord().getData();
            int i2 = IntegerHelper.getInt(data[0], data[1]);
            byte b = data[3];
            this.sheetRef = IntegerHelper.getInt(data[8], data[9]);
            if ((i2 & 32) != 0) {
                this.builtInName = BuiltInName.getBuiltInName(data[15]);
            } else {
                this.name = StringHelper.getString(data, b, 15, workbookSettings);
            }
            if ((i2 & 12) != 0) {
                return;
            }
            int i3 = b + 15;
            if (data[i3] == 58) {
                int i4 = IntegerHelper.getInt(data[i3 + 1], data[i3 + 2]);
                int i5 = IntegerHelper.getInt(data[i3 + 3], data[i3 + 4]);
                int i6 = IntegerHelper.getInt(data[i3 + 5], data[i3 + 6]);
                int i7 = i6 & 255;
                Assert.verify((i6 & 786432) == 0);
                this.ranges.add(new NameRange(i4, i7, i5, i7, i5));
                return;
            }
            if (data[i3] == 59) {
                for (int i8 = i3; i8 < data.length; i8 += 11) {
                    int i9 = IntegerHelper.getInt(data[i8 + 1], data[i8 + 2]);
                    int i10 = IntegerHelper.getInt(data[i8 + 3], data[i8 + 4]);
                    int i11 = IntegerHelper.getInt(data[i8 + 5], data[i8 + 6]);
                    int i12 = IntegerHelper.getInt(data[i8 + 7], data[i8 + 8]);
                    int i13 = i12 & 255;
                    Assert.verify((i12 & 786432) == 0);
                    int i14 = IntegerHelper.getInt(data[i8 + 9], data[i8 + 10]);
                    int i15 = i14 & 255;
                    Assert.verify((i14 & 786432) == 0);
                    this.ranges.add(new NameRange(i9, i13, i10, i15, i11));
                }
                return;
            }
            if (data[i3] == 41) {
                if (i3 < data.length && data[i3] != 58 && data[i3] != 59) {
                    if (data[i3] == 41) {
                        i3 += 3;
                    } else if (data[i3] == 16) {
                        i3++;
                    }
                }
                int i16 = i3;
                while (i16 < data.length) {
                    int i17 = IntegerHelper.getInt(data[i16 + 1], data[i16 + 2]);
                    int i18 = IntegerHelper.getInt(data[i16 + 3], data[i16 + 4]);
                    int i19 = IntegerHelper.getInt(data[i16 + 5], data[i16 + 6]);
                    int i20 = IntegerHelper.getInt(data[i16 + 7], data[i16 + 8]);
                    int i21 = i20 & 255;
                    Assert.verify((i20 & 786432) == 0);
                    int i22 = IntegerHelper.getInt(data[i16 + 9], data[i16 + 10]);
                    int i23 = i22 & 255;
                    Assert.verify((i22 & 786432) == 0);
                    this.ranges.add(new NameRange(i17, i21, i18, i23, i19));
                    i16 += 11;
                    if (i16 < data.length && data[i16] != 58 && data[i16] != 59) {
                        if (data[i16] == 41) {
                            i16 += 3;
                        } else if (data[i16] == 16) {
                            i16++;
                        }
                    }
                }
            }
        } catch (Throwable unused) {
            logger.warn("Cannot read name");
            this.name = "ERROR";
        }
    }

    NameRecord(Record record, WorkbookSettings workbookSettings, int i, Biff7 biff72) {
        super(record);
        this.sheetRef = 0;
        this.index = i;
        this.isbiff8 = false;
        try {
            this.ranges = new ArrayList();
            byte[] data = getRecord().getData();
            byte b = data[3];
            this.sheetRef = IntegerHelper.getInt(data[8], data[9]);
            this.name = StringHelper.getString(data, b, 14, workbookSettings);
            int i2 = b + 14;
            if (i2 >= data.length) {
                return;
            }
            if (data[i2] == 58) {
                int i3 = IntegerHelper.getInt(data[i2 + 11], data[i2 + 12]);
                int i4 = IntegerHelper.getInt(data[i2 + 15], data[i2 + 16]);
                byte b2 = data[i2 + 17];
                this.ranges.add(new NameRange(i3, b2, i4, b2, i4));
                return;
            }
            if (data[i2] == 59) {
                while (i2 < data.length) {
                    this.ranges.add(new NameRange(IntegerHelper.getInt(data[i2 + 11], data[i2 + 12]), data[i2 + 19], IntegerHelper.getInt(data[i2 + 15], data[i2 + 16]), data[i2 + 20], IntegerHelper.getInt(data[i2 + 17], data[i2 + 18])));
                    i2 += 21;
                }
                return;
            }
            if (data[i2] == 41) {
                if (i2 < data.length && data[i2] != 58 && data[i2] != 59) {
                    if (data[i2] == 41) {
                        i2 += 3;
                    } else {
                        if (data[i2] != 16) {
                            i2++;
                        }
                        i2++;
                    }
                }
                while (i2 < data.length) {
                    this.ranges.add(new NameRange(IntegerHelper.getInt(data[i2 + 11], data[i2 + 12]), data[i2 + 19], IntegerHelper.getInt(data[i2 + 15], data[i2 + 16]), data[i2 + 20], IntegerHelper.getInt(data[i2 + 17], data[i2 + 18])));
                    i2 += 21;
                    if (i2 < data.length && data[i2] != 58 && data[i2] != 59) {
                        if (data[i2] == 41) {
                            i2 += 3;
                        } else if (data[i2] == 16) {
                            i2++;
                        }
                    }
                }
            }
        } catch (Throwable unused) {
            logger.warn("Cannot read name.");
            this.name = "ERROR";
        }
    }

    public String getName() {
        return this.name;
    }

    public BuiltInName getBuiltInName() {
        return this.builtInName;
    }

    public NameRange[] getRanges() {
        return (NameRange[]) this.ranges.toArray(new NameRange[this.ranges.size()]);
    }

    int getIndex() {
        return this.index;
    }

    public int getSheetRef() {
        return this.sheetRef;
    }

    public void setSheetRef(int i) {
        this.sheetRef = i;
    }

    public byte[] getData() {
        return getRecord().getData();
    }

    public boolean isBiff8() {
        return this.isbiff8;
    }

    public boolean isGlobal() {
        return this.sheetRef == 0;
    }
}
