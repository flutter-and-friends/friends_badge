package jxl.biff;

import common.Logger;
import jxl.read.biff.Record;

/* loaded from: classes2.dex */
public abstract class WritableRecordData extends RecordData implements ByteData {
    static /* synthetic */ Class class$jxl$biff$WritableRecordData = null;
    private static Logger logger = null;
    protected static final int maxRecordLength = 8228;

    protected abstract byte[] getData();

    static {
        Class clsClass$ = class$jxl$biff$WritableRecordData;
        if (clsClass$ == null) {
            clsClass$ = class$("jxl.biff.WritableRecordData");
            class$jxl$biff$WritableRecordData = clsClass$;
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

    protected WritableRecordData(Type type) {
        super(type);
    }

    protected WritableRecordData(Record record) {
        super(record);
    }

    @Override // jxl.biff.ByteData
    public final byte[] getBytes() {
        byte[] data = getData();
        int length = data.length;
        if (data.length > 8224) {
            data = handleContinueRecords(data);
            length = 8224;
        }
        byte[] bArr = new byte[data.length + 4];
        System.arraycopy(data, 0, bArr, 4, data.length);
        IntegerHelper.getTwoBytes(getCode(), bArr, 0);
        IntegerHelper.getTwoBytes(length, bArr, 2);
        return bArr;
    }

    private byte[] handleContinueRecords(byte[] bArr) {
        int length = ((bArr.length - 8224) / 8224) + 1;
        byte[] bArr2 = new byte[bArr.length + (length * 4)];
        System.arraycopy(bArr, 0, bArr2, 0, 8224);
        int i = 8224;
        int i2 = 8224;
        for (int i3 = 0; i3 < length; i3++) {
            int iMin = Math.min(bArr.length - i, 8224);
            IntegerHelper.getTwoBytes(Type.CONTINUE.value, bArr2, i2);
            IntegerHelper.getTwoBytes(iMin, bArr2, i2 + 2);
            System.arraycopy(bArr, i, bArr2, i2 + 4, iMin);
            i += iMin;
            i2 += iMin + 4;
        }
        return bArr2;
    }
}
