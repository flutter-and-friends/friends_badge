package com.p013gg.reader.api.utils;

/* loaded from: classes.dex */
public class RingBuffer {
    private byte[] Buffer = null;
    private int DataCount = 0;
    private int DataStart = 0;
    private int DataEnd = 0;

    public byte[] getBuffer() {
        return this.Buffer;
    }

    public void setBuffer(byte[] bArr) {
        this.Buffer = bArr;
    }

    public int getDataCount() {
        return this.DataCount;
    }

    public void setDataCount(int i) {
        this.DataCount = i;
    }

    public int getDataStart() {
        return this.DataStart;
    }

    public void setDataStart(int i) {
        this.DataStart = i;
    }

    public int getDataEnd() {
        return this.DataEnd;
    }

    public void setDataEnd(int i) {
        this.DataEnd = i;
    }

    public RingBuffer(int i) {
        setDataCount(0);
        setDataStart(0);
        setDataEnd(0);
        setBuffer(new byte[i]);
    }

    public byte Index(int i) throws Exception {
        if (i >= this.DataCount) {
            throw new Exception("环形缓冲区异常，索引溢出");
        }
        int i2 = this.DataStart;
        int i3 = i2 + i;
        byte[] bArr = this.Buffer;
        if (i3 < bArr.length) {
            return bArr[i2 + i];
        }
        return bArr[(i2 + i) - bArr.length];
    }

    public int GetReserveCount() {
        return this.Buffer.length - this.DataCount;
    }

    public void Clear() {
        this.DataCount = 0;
        this.DataStart = 0;
        this.DataEnd = 0;
    }

    public void Clear(int i) {
        if (i >= this.DataCount) {
            this.DataCount = 0;
            this.DataStart = 0;
            this.DataEnd = 0;
            return;
        }
        int i2 = this.DataStart;
        int i3 = i2 + i;
        byte[] bArr = this.Buffer;
        if (i3 >= bArr.length) {
            this.DataStart = (i2 + i) - bArr.length;
        } else {
            this.DataStart = i2 + i;
        }
        this.DataCount -= i;
    }

    public void WriteBuffer(byte[] bArr, int i, int i2) throws Exception {
        byte[] bArr2 = this.Buffer;
        if (bArr2.length - this.DataCount >= i2) {
            int i3 = this.DataEnd;
            if (i3 + i2 < bArr2.length) {
                System.arraycopy(bArr, i, bArr2, i3, i2);
                this.DataEnd += i2;
                this.DataCount += i2;
                return;
            }
            int length = (i3 + i2) - bArr2.length;
            int i4 = i2 - length;
            System.arraycopy(bArr, i, bArr2, i3, i4);
            this.DataEnd = 0;
            int i5 = i + i4;
            this.DataCount += i4;
            if (length != 0) {
                System.arraycopy(bArr, i5, this.Buffer, this.DataEnd, length);
            }
            this.DataEnd += length;
            this.DataCount += length;
        }
    }

    public void WriteBuffer(byte[] bArr) throws Exception {
        WriteBuffer(bArr, 0, bArr.length);
    }

    public void ReadBuffer(byte[] bArr, int i, int i2) throws Exception {
        if (i2 > this.DataCount) {
            throw new Exception("环形缓冲区异常，读取长度大于数据长度");
        }
        int i3 = this.DataStart;
        int i4 = i3 + i2;
        byte[] bArr2 = this.Buffer;
        if (i4 < bArr2.length) {
            System.arraycopy(bArr2, i3, bArr, i, i2);
            return;
        }
        int length = (i3 + i2) - bArr2.length;
        int i5 = i2 - length;
        System.arraycopy(bArr2, i3, bArr, i, i5);
        int i6 = i + i5;
        if (length != 0) {
            System.arraycopy(this.Buffer, 0, bArr, i6, length);
        }
    }
}
