package cn.highlight.p004tx.serialport;

/* loaded from: classes.dex */
public class DataBuffer {
    private static final Object lock = new Object();
    private byte[] LocalBuffer = new byte[204800];
    private int startIndex = 0;
    private int endIndex = 0;

    public void Add(byte[] bArr) {
        try {
            synchronized (lock) {
                if (this.startIndex <= this.endIndex) {
                    if ((this.LocalBuffer.length - 1) - this.endIndex >= bArr.length) {
                        System.arraycopy(bArr, 0, this.LocalBuffer, this.endIndex, bArr.length);
                        this.endIndex += bArr.length;
                    } else if (this.startIndex + ((this.LocalBuffer.length - 1) - this.endIndex) >= bArr.length) {
                        int length = ((this.LocalBuffer.length - 1) - this.endIndex) + 1;
                        System.arraycopy(bArr, 0, this.LocalBuffer, this.endIndex, length);
                        System.arraycopy(bArr, length, this.LocalBuffer, 0, bArr.length - length);
                        this.endIndex = bArr.length - length;
                    } else {
                        byte[] bArr2 = new byte[this.LocalBuffer.length + (bArr.length * 2)];
                        System.arraycopy(this.LocalBuffer, 0, bArr2, 0, this.LocalBuffer.length);
                        System.arraycopy(bArr, 0, bArr2, this.endIndex, bArr.length);
                        this.endIndex += bArr.length;
                        this.LocalBuffer = bArr2;
                    }
                } else if (this.startIndex - this.endIndex >= bArr.length) {
                    System.arraycopy(bArr, 0, this.LocalBuffer, this.endIndex, bArr.length);
                    this.endIndex += bArr.length;
                } else {
                    byte[] bArr3 = new byte[this.LocalBuffer.length + (bArr.length * 2)];
                    System.arraycopy(this.LocalBuffer, 0, bArr3, 0, this.endIndex - 1);
                    System.arraycopy(bArr, 0, bArr3, this.endIndex, bArr.length);
                    this.endIndex += bArr.length;
                    System.arraycopy(this.LocalBuffer, this.startIndex, bArr3, bArr3.length - (this.LocalBuffer.length - this.startIndex), this.LocalBuffer.length - this.startIndex);
                    this.startIndex = bArr3.length - (this.LocalBuffer.length - this.startIndex);
                    this.LocalBuffer = bArr3;
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public byte[] GetFullPackBuf() {
        int i;
        boolean z;
        boolean z2;
        int i2;
        boolean z3;
        boolean z4;
        try {
            synchronized (lock) {
                int i3 = this.startIndex;
                int i4 = this.startIndex;
                if (this.startIndex < this.endIndex) {
                    while (true) {
                        if (i3 >= this.endIndex - 1) {
                            i2 = i4;
                            z3 = false;
                            break;
                        }
                        if ((this.LocalBuffer[i3] & 255) == 187) {
                            i2 = i3 + 1;
                            if ((this.LocalBuffer[i2] & 255) == 1) {
                                z3 = true;
                                break;
                            }
                        }
                        i3++;
                    }
                    if (!z3) {
                        if ((this.LocalBuffer[this.startIndex] & 255) != 187) {
                            this.startIndex++;
                        }
                        return null;
                    }
                    while (true) {
                        if (i2 >= this.endIndex - 1) {
                            z4 = false;
                            break;
                        }
                        if ((this.LocalBuffer[i2] & 255) == 126) {
                            z4 = true;
                            break;
                        }
                        if ((this.LocalBuffer[i2] & 255) == 187 && (this.LocalBuffer[i2 + 1] & 255) == 1) {
                            i3 = i2;
                        }
                        i2++;
                    }
                    if (!z4) {
                        return null;
                    }
                    int i5 = (i2 - i3) + 1;
                    byte[] bArr = new byte[i5];
                    System.arraycopy(this.LocalBuffer, i3, bArr, 0, i5);
                    if (!CheckRcv(bArr)) {
                        return null;
                    }
                    this.startIndex = i2 + 1;
                    if (this.startIndex > this.endIndex) {
                        this.startIndex = this.endIndex;
                    }
                    return bArr;
                }
                if (this.startIndex <= this.endIndex) {
                    return null;
                }
                byte[] bArr2 = new byte[(this.LocalBuffer.length - this.startIndex) + 1 + this.endIndex + 1];
                System.arraycopy(this.LocalBuffer, this.startIndex, bArr2, 0, this.LocalBuffer.length - this.startIndex);
                System.arraycopy(this.LocalBuffer, 0, bArr2, this.LocalBuffer.length - this.startIndex, this.endIndex + 1);
                int i6 = 0;
                while (true) {
                    if (i6 >= bArr2.length - 2) {
                        i = i4;
                        z = false;
                        break;
                    }
                    if ((bArr2[i6] & 255) == 187) {
                        i = i6 + 1;
                        if ((bArr2[i] & 255) == 1) {
                            z = true;
                            break;
                        }
                    }
                    i6++;
                }
                if (!z) {
                    if ((this.LocalBuffer[this.startIndex] & 255) != 187) {
                        this.startIndex++;
                        if (this.startIndex > this.LocalBuffer.length) {
                            this.startIndex = 0;
                            if (this.startIndex > this.endIndex) {
                                this.startIndex = this.endIndex;
                            }
                        }
                    }
                    return null;
                }
                while (true) {
                    if (i >= bArr2.length - 2) {
                        z2 = false;
                        break;
                    }
                    if ((bArr2[i] & 255) == 126) {
                        z2 = true;
                        break;
                    }
                    if ((bArr2[i] & 255) == 187 && (bArr2[i + 1] & 255) == 1) {
                        i6 = i;
                    }
                    i++;
                }
                if (!z2) {
                    return null;
                }
                int i7 = (i - i6) + 1;
                byte[] bArr3 = new byte[i7];
                System.arraycopy(bArr2, i6, bArr3, 0, i7);
                if (!CheckRcv(bArr3)) {
                    return null;
                }
                this.startIndex += i + 1;
                if (this.startIndex > this.LocalBuffer.length) {
                    this.startIndex = (this.startIndex - this.LocalBuffer.length) - 1;
                    if (this.startIndex > this.endIndex) {
                        this.startIndex = this.endIndex;
                    }
                }
                return bArr3;
            }
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    private boolean CheckRcv(byte[] bArr) {
        return bArr != null && bArr.length >= 5 && bArr[0] == -69 && bArr[bArr.length - 1] == 126 && getCheck(bArr) == bArr[bArr.length + (-2)];
    }

    private byte getCheck(byte[] bArr) {
        int i = 0;
        for (short s = 1; s < bArr.length - 2; s = (short) (s + 1)) {
            i += bArr[s];
        }
        return (byte) (i & 255);
    }

    public void cleanBuffer() {
        this.LocalBuffer = null;
        this.LocalBuffer = new byte[204800];
    }
}
