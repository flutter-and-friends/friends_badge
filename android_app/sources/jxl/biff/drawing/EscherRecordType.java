package jxl.biff.drawing;

/* loaded from: classes2.dex */
final class EscherRecordType {
    private int value;
    private static EscherRecordType[] types = new EscherRecordType[0];
    public static final EscherRecordType UNKNOWN = new EscherRecordType(0);
    public static final EscherRecordType DGG_CONTAINER = new EscherRecordType(61440);
    public static final EscherRecordType BSTORE_CONTAINER = new EscherRecordType(61441);
    public static final EscherRecordType DG_CONTAINER = new EscherRecordType(61442);
    public static final EscherRecordType SPGR_CONTAINER = new EscherRecordType(61443);
    public static final EscherRecordType SP_CONTAINER = new EscherRecordType(61444);
    public static final EscherRecordType DGG = new EscherRecordType(61446);
    public static final EscherRecordType BSE = new EscherRecordType(61447);

    /* renamed from: DG */
    public static final EscherRecordType f1136DG = new EscherRecordType(61448);
    public static final EscherRecordType SPGR = new EscherRecordType(61449);

    /* renamed from: SP */
    public static final EscherRecordType f1137SP = new EscherRecordType(61450);
    public static final EscherRecordType OPT = new EscherRecordType(61451);
    public static final EscherRecordType CLIENT_ANCHOR = new EscherRecordType(61456);
    public static final EscherRecordType CLIENT_DATA = new EscherRecordType(61457);
    public static final EscherRecordType CLIENT_TEXT_BOX = new EscherRecordType(61453);
    public static final EscherRecordType SPLIT_MENU_COLORS = new EscherRecordType(61726);

    private EscherRecordType(int i) {
        this.value = i;
        EscherRecordType[] escherRecordTypeArr = types;
        EscherRecordType[] escherRecordTypeArr2 = new EscherRecordType[escherRecordTypeArr.length + 1];
        System.arraycopy(escherRecordTypeArr, 0, escherRecordTypeArr2, 0, escherRecordTypeArr.length);
        escherRecordTypeArr2[types.length] = this;
        types = escherRecordTypeArr2;
    }

    public int getValue() {
        return this.value;
    }

    public static EscherRecordType getType(int i) {
        EscherRecordType escherRecordType = UNKNOWN;
        int i2 = 0;
        while (true) {
            EscherRecordType[] escherRecordTypeArr = types;
            if (i2 >= escherRecordTypeArr.length) {
                return escherRecordType;
            }
            if (i == escherRecordTypeArr[i2].value) {
                return escherRecordTypeArr[i2];
            }
            i2++;
        }
    }
}
