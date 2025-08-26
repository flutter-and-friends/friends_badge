package com.uhf.api.cls;

import java.util.ArrayList;

/* loaded from: classes.dex */
public class R2000WriteFlashSendData {
    byte[] data;
    int writeaddress;
    byte writeflag;
    int writelength;

    public R2000WriteFlashSendData(int i, int i2, byte[] bArr) {
        this.writeaddress = i2;
        this.writeflag = (byte) i;
        this.writelength = bArr.length / 4;
        this.data = bArr;
    }

    public byte[] To_CmdData() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(Byte.valueOf(this.writeflag));
        int i = this.writeaddress;
        byte[] bArr = {(byte) (((-16777216) & i) >> 24), (byte) ((16711680 & i) >> 16), (byte) ((65280 & i) >> 8), (byte) (i & 255)};
        for (byte b : bArr) {
            arrayList.add(Byte.valueOf(b));
        }
        arrayList.add(Byte.valueOf((byte) this.writelength));
        int i2 = 0;
        while (true) {
            byte[] bArr2 = this.data;
            if (i2 >= bArr2.length) {
                break;
            }
            arrayList.add(Byte.valueOf(bArr2[i2]));
            i2++;
        }
        byte[] bArr3 = new byte[arrayList.size()];
        for (int i3 = 0; i3 < arrayList.size(); i3++) {
            bArr3[i3] = ((Byte) arrayList.get(i3)).byteValue();
        }
        return bArr3;
    }
}
