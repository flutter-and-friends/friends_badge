package com.uhf.api.cls;

import androidx.core.view.MotionEventCompat;
import androidx.core.view.ViewCompat;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class R2000CheckFlashSendData {
    byte[] crc;
    int data1;
    int data2;
    int data3;
    int data4;
    int paddress;
    int plength;

    public R2000CheckFlashSendData(int i, byte[] bArr) {
        this.plength = bArr.length / 4;
        this.paddress = i;
        for (int i2 = 0; i2 < bArr.length; i2++) {
            int i3 = i2 % 4;
            if (i3 == 0) {
                this.data1 += bArr[i2];
            } else if (i3 == 1) {
                this.data2 += bArr[i2];
            } else if (i3 == 2) {
                this.data3 += bArr[i2];
            } else if (i3 == 3) {
                this.data4 += bArr[i2];
            }
        }
        this.crc = new byte[4];
        byte[] bArr2 = this.crc;
        bArr2[0] = (byte) (this.data1 & 255);
        bArr2[1] = (byte) (this.data2 & 255);
        bArr2[2] = (byte) (this.data3 & 255);
        bArr2[3] = (byte) (this.data4 & 255);
    }

    public byte[] To_CmdData() {
        ArrayList arrayList = new ArrayList();
        int i = this.paddress;
        byte[] bArr = {(byte) ((i & ViewCompat.MEASURED_STATE_MASK) >> 24), (byte) ((i & 16711680) >> 16), (byte) ((i & MotionEventCompat.ACTION_POINTER_INDEX_MASK) >> 8), (byte) (i & 255)};
        int i2 = this.plength;
        byte[] bArr2 = {(byte) (((-16777216) & i2) >> 24), (byte) ((i2 & 16711680) >> 16), (byte) ((i2 & MotionEventCompat.ACTION_POINTER_INDEX_MASK) >> 8), (byte) (i2 & 255)};
        for (byte b : bArr) {
            arrayList.add(Byte.valueOf(b));
        }
        for (byte b2 : bArr2) {
            arrayList.add(Byte.valueOf(b2));
        }
        int i3 = 0;
        while (true) {
            byte[] bArr3 = this.crc;
            if (i3 >= bArr3.length) {
                break;
            }
            arrayList.add(Byte.valueOf(bArr3[i3]));
            i3++;
        }
        byte[] bArr4 = new byte[arrayList.size()];
        for (int i4 = 0; i4 < arrayList.size(); i4++) {
            bArr4[i4] = ((Byte) arrayList.get(i4)).byteValue();
        }
        return bArr4;
    }
}
