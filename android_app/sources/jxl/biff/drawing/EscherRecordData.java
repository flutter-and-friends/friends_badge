package jxl.biff.drawing;

import common.Logger;
import jxl.biff.IntegerHelper;

/* loaded from: classes2.dex */
final class EscherRecordData {
    static /* synthetic */ Class class$jxl$biff$drawing$EscherRecordData;
    private static Logger logger;
    private boolean container;
    private EscherStream escherStream;
    private int instance;
    private int length;
    private int pos;
    private int recordId;
    private int streamLength;
    private EscherRecordType type;
    private int version;

    static {
        Class clsClass$ = class$jxl$biff$drawing$EscherRecordData;
        if (clsClass$ == null) {
            clsClass$ = class$("jxl.biff.drawing.EscherRecordData");
            class$jxl$biff$drawing$EscherRecordData = clsClass$;
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

    public EscherRecordData(EscherStream escherStream, int i) {
        this.escherStream = escherStream;
        this.pos = i;
        byte[] data = this.escherStream.getData();
        this.streamLength = data.length;
        int i2 = this.pos;
        int i3 = IntegerHelper.getInt(data[i2], data[i2 + 1]);
        this.instance = (65520 & i3) >> 4;
        this.version = i3 & 15;
        int i4 = this.pos;
        this.recordId = IntegerHelper.getInt(data[i4 + 2], data[i4 + 3]);
        int i5 = this.pos;
        this.length = IntegerHelper.getInt(data[i5 + 4], data[i5 + 5], data[i5 + 6], data[i5 + 7]);
        if (this.version == 15) {
            this.container = true;
        } else {
            this.container = false;
        }
    }

    public EscherRecordData(EscherRecordType escherRecordType) {
        this.type = escherRecordType;
        this.recordId = this.type.getValue();
    }

    public boolean isContainer() {
        return this.container;
    }

    public int getLength() {
        return this.length;
    }

    public int getRecordId() {
        return this.recordId;
    }

    EscherStream getDrawingGroup() {
        return this.escherStream;
    }

    int getPos() {
        return this.pos;
    }

    EscherRecordType getType() {
        if (this.type == null) {
            this.type = EscherRecordType.getType(this.recordId);
        }
        return this.type;
    }

    int getInstance() {
        return this.instance;
    }

    void setContainer(boolean z) {
        this.container = z;
    }

    void setInstance(int i) {
        this.instance = i;
    }

    void setLength(int i) {
        this.length = i;
    }

    void setVersion(int i) {
        this.version = i;
    }

    byte[] setHeaderData(byte[] bArr) {
        byte[] bArr2 = new byte[bArr.length + 8];
        System.arraycopy(bArr, 0, bArr2, 8, bArr.length);
        if (this.container) {
            this.version = 15;
        }
        IntegerHelper.getTwoBytes((this.instance << 4) | this.version, bArr2, 0);
        IntegerHelper.getTwoBytes(this.recordId, bArr2, 2);
        IntegerHelper.getFourBytes(bArr.length, bArr2, 4);
        return bArr2;
    }

    EscherStream getEscherStream() {
        return this.escherStream;
    }

    byte[] getBytes() {
        byte[] bArr = new byte[this.length];
        System.arraycopy(this.escherStream.getData(), this.pos + 8, bArr, 0, this.length);
        return bArr;
    }

    int getStreamLength() {
        return this.streamLength;
    }
}
