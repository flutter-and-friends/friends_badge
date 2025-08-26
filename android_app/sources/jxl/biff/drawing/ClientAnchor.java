package jxl.biff.drawing;

import common.Logger;
import jxl.biff.IntegerHelper;

/* loaded from: classes2.dex */
class ClientAnchor extends EscherAtom {
    static /* synthetic */ Class class$jxl$biff$drawing$ClientAnchor;
    private static final Logger logger;
    private byte[] data;
    private int properties;

    /* renamed from: x1 */
    private double f1127x1;

    /* renamed from: x2 */
    private double f1128x2;

    /* renamed from: y1 */
    private double f1129y1;

    /* renamed from: y2 */
    private double f1130y2;

    static {
        Class clsClass$ = class$jxl$biff$drawing$ClientAnchor;
        if (clsClass$ == null) {
            clsClass$ = class$("jxl.biff.drawing.ClientAnchor");
            class$jxl$biff$drawing$ClientAnchor = clsClass$;
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

    public ClientAnchor(EscherRecordData escherRecordData) {
        super(escherRecordData);
        byte[] bytes = getBytes();
        this.properties = IntegerHelper.getInt(bytes[0], bytes[1]);
        this.f1127x1 = IntegerHelper.getInt(bytes[2], bytes[3]) + (IntegerHelper.getInt(bytes[4], bytes[5]) / 1024.0d);
        this.f1129y1 = IntegerHelper.getInt(bytes[6], bytes[7]) + (IntegerHelper.getInt(bytes[8], bytes[9]) / 256.0d);
        this.f1128x2 = IntegerHelper.getInt(bytes[10], bytes[11]) + (IntegerHelper.getInt(bytes[12], bytes[13]) / 1024.0d);
        this.f1130y2 = IntegerHelper.getInt(bytes[14], bytes[15]) + (IntegerHelper.getInt(bytes[16], bytes[17]) / 256.0d);
    }

    public ClientAnchor(double d, double d2, double d3, double d4, int i) {
        super(EscherRecordType.CLIENT_ANCHOR);
        this.f1127x1 = d;
        this.f1129y1 = d2;
        this.f1128x2 = d3;
        this.f1130y2 = d4;
        this.properties = i;
    }

    @Override // jxl.biff.drawing.EscherAtom, jxl.biff.drawing.EscherRecord
    byte[] getData() {
        this.data = new byte[18];
        IntegerHelper.getTwoBytes(this.properties, this.data, 0);
        IntegerHelper.getTwoBytes((int) this.f1127x1, this.data, 2);
        IntegerHelper.getTwoBytes((int) ((this.f1127x1 - ((int) r0)) * 1024.0d), this.data, 4);
        IntegerHelper.getTwoBytes((int) this.f1129y1, this.data, 6);
        IntegerHelper.getTwoBytes((int) ((this.f1129y1 - ((int) r0)) * 256.0d), this.data, 8);
        IntegerHelper.getTwoBytes((int) this.f1128x2, this.data, 10);
        IntegerHelper.getTwoBytes((int) ((this.f1128x2 - ((int) r0)) * 1024.0d), this.data, 12);
        IntegerHelper.getTwoBytes((int) this.f1130y2, this.data, 14);
        IntegerHelper.getTwoBytes((int) ((this.f1130y2 - ((int) r0)) * 256.0d), this.data, 16);
        return setHeaderData(this.data);
    }

    double getX1() {
        return this.f1127x1;
    }

    double getY1() {
        return this.f1129y1;
    }

    double getX2() {
        return this.f1128x2;
    }

    double getY2() {
        return this.f1130y2;
    }

    int getProperties() {
        return this.properties;
    }
}
