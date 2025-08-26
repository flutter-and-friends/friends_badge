package jxl.write.biff;

import java.util.ArrayList;
import java.util.Iterator;
import jxl.biff.IntegerHelper;
import jxl.biff.StringHelper;
import jxl.biff.Type;
import jxl.biff.WritableRecordData;

/* loaded from: classes2.dex */
class SSTContinueRecord extends WritableRecordData {
    private static int maxBytes = 8224;
    private int byteCount;
    private byte[] data;
    private String firstString;
    private int firstStringLength;
    private boolean includeLength;
    private ArrayList stringLengths;
    private ArrayList strings;

    public SSTContinueRecord() {
        super(Type.CONTINUE);
        this.byteCount = 0;
        this.strings = new ArrayList(50);
        this.stringLengths = new ArrayList(50);
    }

    public int setFirstString(String str, boolean z) {
        int length;
        this.includeLength = z;
        this.firstStringLength = str.length();
        if (!this.includeLength) {
            length = (str.length() * 2) + 1;
        } else {
            length = (str.length() * 2) + 3;
        }
        int i = maxBytes;
        if (length <= i) {
            this.firstString = str;
            this.byteCount += length;
            return 0;
        }
        int i2 = (this.includeLength ? i - 4 : i - 2) / 2;
        this.firstString = str.substring(0, i2);
        this.byteCount = maxBytes - 1;
        return str.length() - i2;
    }

    public int getOffset() {
        return this.byteCount;
    }

    public int add(String str) {
        int length = (str.length() * 2) + 3;
        if (this.byteCount >= maxBytes - 5) {
            return str.length();
        }
        this.stringLengths.add(new Integer(str.length()));
        int i = this.byteCount;
        int i2 = length + i;
        int i3 = maxBytes;
        if (i2 < i3) {
            this.strings.add(str);
            this.byteCount += length;
            return 0;
        }
        int i4 = (i3 - 3) - i;
        if (i4 % 2 != 0) {
            i4--;
        }
        int i5 = i4 / 2;
        this.strings.add(str.substring(0, i5));
        this.byteCount += (i5 * 2) + 3;
        return str.length() - i5;
    }

    @Override // jxl.biff.WritableRecordData
    public byte[] getData() {
        int i;
        this.data = new byte[this.byteCount];
        int i2 = 0;
        if (this.includeLength) {
            IntegerHelper.getTwoBytes(this.firstStringLength, this.data, 0);
            this.data[2] = 1;
            i = 3;
        } else {
            this.data[0] = 1;
            i = 1;
        }
        StringHelper.getUnicodeBytes(this.firstString, this.data, i);
        int length = i + (this.firstString.length() * 2);
        Iterator it = this.strings.iterator();
        while (it.hasNext()) {
            String str = (String) it.next();
            IntegerHelper.getTwoBytes(((Integer) this.stringLengths.get(i2)).intValue(), this.data, length);
            byte[] bArr = this.data;
            bArr[length + 2] = 1;
            StringHelper.getUnicodeBytes(str, bArr, length + 3);
            length += (str.length() * 2) + 3;
            i2++;
        }
        return this.data;
    }
}
