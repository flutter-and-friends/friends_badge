package jxl.write.biff;

import jxl.biff.IntegerHelper;
import jxl.biff.Type;
import jxl.biff.WritableRecordData;

/* loaded from: classes2.dex */
class PasswordRecord extends WritableRecordData {
    private byte[] data;
    private String password;

    private int rotLeft15Bit(int i, int i2) {
        int i3 = i & 32767;
        while (i2 > 0) {
            i3 = (i3 & 16384) != 0 ? ((i3 << 1) & 32767) + 1 : (i3 << 1) & 32767;
            i2--;
        }
        return i3;
    }

    public PasswordRecord(String str) {
        super(Type.PASSWORD);
        this.password = str;
        if (str == null) {
            this.data = new byte[2];
            IntegerHelper.getTwoBytes(0, this.data, 0);
            return;
        }
        byte[] bytes = str.getBytes();
        int i = 0;
        int iRotLeft15Bit = 0;
        while (i < bytes.length) {
            byte b = bytes[i];
            i++;
            iRotLeft15Bit ^= rotLeft15Bit(b, i);
        }
        int length = (bytes.length ^ iRotLeft15Bit) ^ 52811;
        this.data = new byte[2];
        IntegerHelper.getTwoBytes(length, this.data, 0);
    }

    public PasswordRecord(int i) {
        super(Type.PASSWORD);
        this.data = new byte[2];
        IntegerHelper.getTwoBytes(i, this.data, 0);
    }

    @Override // jxl.biff.WritableRecordData
    public byte[] getData() {
        return this.data;
    }
}
