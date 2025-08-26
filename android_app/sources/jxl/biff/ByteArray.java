package jxl.biff;

/* loaded from: classes2.dex */
public class ByteArray {
    private static final int defaultGrowSize = 1024;
    private byte[] bytes;
    private int growSize;
    private int pos;

    public ByteArray() {
        this(1024);
    }

    public ByteArray(int i) {
        this.growSize = i;
        this.bytes = new byte[1024];
        this.pos = 0;
    }

    public void add(byte b) {
        checkSize(1);
        byte[] bArr = this.bytes;
        int i = this.pos;
        bArr[i] = b;
        this.pos = i + 1;
    }

    public void add(byte[] bArr) {
        checkSize(bArr.length);
        System.arraycopy(bArr, 0, this.bytes, this.pos, bArr.length);
        this.pos += bArr.length;
    }

    public byte[] getBytes() {
        int i = this.pos;
        byte[] bArr = new byte[i];
        System.arraycopy(this.bytes, 0, bArr, 0, i);
        return bArr;
    }

    private void checkSize(int i) {
        while (true) {
            int i2 = this.pos;
            int i3 = i2 + i;
            byte[] bArr = this.bytes;
            if (i3 < bArr.length) {
                return;
            }
            byte[] bArr2 = new byte[bArr.length + this.growSize];
            System.arraycopy(bArr, 0, bArr2, 0, i2);
            this.bytes = bArr2;
        }
    }
}
