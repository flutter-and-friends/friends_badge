package cn.manytag.rfidapi;

import cn.manytag.rfidapi.uhf.InterfaceC0707i;
import cn.manytag.rfidapi.uhf.MST1126;
import cn.manytag.rfidapi.uhf.data.Setting;
import cn.manytag.rfidapi.uhf.listen.OnSetting;
import java.nio.charset.StandardCharsets;

/* renamed from: cn.manytag.rfidapi.g */
/* loaded from: classes.dex */
class C0694g implements InterfaceC0707i {

    /* renamed from: a */
    final /* synthetic */ Setting f250a;

    /* renamed from: b */
    final /* synthetic */ OnSetting f251b;

    /* renamed from: c */
    final /* synthetic */ Reader f252c;

    C0694g(Reader reader, Setting setting, OnSetting onSetting) {
        this.f252c = reader;
        this.f250a = setting;
        this.f251b = onSetting;
    }

    @Override // cn.manytag.rfidapi.uhf.InterfaceC0707i
    /* renamed from: a */
    public void mo210a(byte[] bArr) {
        String str;
        if (bArr == null) {
            return;
        }
        byte b = bArr[2];
        if (b == 2 || b == 33 || b == 17 || b == 53 || b == 35 || b == -1) {
            boolean z = false;
            if (b == -1) {
                if (-1 == bArr[5]) {
                    int iByteToInt = this.f252c.byteToInt(bArr[6]);
                    byte[] bArr2 = new byte[iByteToInt];
                    System.arraycopy(bArr, 7, bArr2, 0, iByteToInt);
                    String str2 = new String(bArr2, StandardCharsets.US_ASCII);
                    byte[] bArr3 = new byte[3];
                    System.arraycopy(bArr, iByteToInt + 8, bArr3, 0, 3);
                    str = str2 + ";" + this.f252c.byteToInt(bArr3[0]) + "." + this.f252c.byteToInt(bArr3[1]) + "." + this.f252c.byteToInt(bArr3[2]);
                } else {
                    str = this.f252c.byteToInt(bArr[6]) + "." + this.f252c.byteToInt(bArr[7]) + "." + this.f252c.byteToInt(bArr[8]);
                }
                this.f250a.setVersion(str);
            } else if (b == 2) {
                this.f250a.setGattery(bArr[5]);
            } else if (b == 17) {
                if (bArr[5] == 6) {
                    z = true;
                } else {
                    byte b2 = bArr[5];
                }
                this.f250a.setSound(z);
            } else if (b == 33) {
                this.f250a.setPower(bArr[5]);
            } else if (b == 35) {
                String str3 = bArr[5] == 1 ? MST1126.CHINA1 : null;
                if (bArr[5] == 2) {
                    str3 = MST1126.CHINA2;
                }
                if (bArr[5] == 4) {
                    str3 = MST1126.EUROPE;
                }
                if (bArr[5] == 8) {
                    str3 = MST1126.USA;
                }
                if (bArr[5] == 22) {
                    str3 = MST1126.KOREA;
                }
                if (bArr[5] == 50) {
                    str3 = MST1126.JAPAN;
                }
                this.f250a.setWorkingFrequency(str3);
            } else if (b == 53) {
                byte b3 = bArr[6];
                byte b4 = bArr[8];
                this.f250a.setReadingCycle(b3);
                this.f250a.setRestCycle(b4);
            }
            OnSetting onSetting = this.f251b;
            if (onSetting != null) {
                onSetting.onSetting(this.f250a);
            }
        }
    }
}
