package jxl.read.biff;

import common.Logger;
import java.util.ArrayList;
import jxl.biff.IntegerHelper;
import jxl.biff.Type;

/* loaded from: classes2.dex */
public final class Record {
    static /* synthetic */ Class class$jxl$read$biff$Record;
    private static final Logger logger;
    private int code;
    private ArrayList continueRecords;
    private byte[] data;
    private int dataPos;
    private File file;
    private int length;
    private Type type;

    static {
        Class clsClass$ = class$jxl$read$biff$Record;
        if (clsClass$ == null) {
            clsClass$ = class$("jxl.read.biff.Record");
            class$jxl$read$biff$Record = clsClass$;
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

    Record(byte[] bArr, int i, File file) {
        this.code = IntegerHelper.getInt(bArr[i], bArr[i + 1]);
        this.length = IntegerHelper.getInt(bArr[i + 2], bArr[i + 3]);
        this.file = file;
        this.file.skip(4);
        this.dataPos = file.getPos();
        this.file.skip(this.length);
        this.type = Type.getType(this.code);
    }

    public Type getType() {
        return this.type;
    }

    public int getLength() {
        return this.length;
    }

    public byte[] getData() {
        if (this.data == null) {
            this.data = this.file.read(this.dataPos, this.length);
        }
        ArrayList arrayList = this.continueRecords;
        if (arrayList != null) {
            byte[][] bArr = new byte[arrayList.size()][];
            int length = 0;
            for (int i = 0; i < this.continueRecords.size(); i++) {
                bArr[i] = ((Record) this.continueRecords.get(i)).getData();
                length += bArr[i].length;
            }
            byte[] bArr2 = this.data;
            byte[] bArr3 = new byte[bArr2.length + length];
            System.arraycopy(bArr2, 0, bArr3, 0, bArr2.length);
            int length2 = this.data.length;
            for (byte[] bArr4 : bArr) {
                System.arraycopy(bArr4, 0, bArr3, length2, bArr4.length);
                length2 += bArr4.length;
            }
            this.data = bArr3;
        }
        return this.data;
    }

    public int getCode() {
        return this.code;
    }

    void setType(Type type) {
        this.type = type;
    }

    public void addContinueRecord(Record record) {
        if (this.continueRecords == null) {
            this.continueRecords = new ArrayList();
        }
        this.continueRecords.add(record);
    }
}
