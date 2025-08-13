package cn.manytag.rfidapi;

import cn.manytag.rfidapi.uhf.InterfaceC0708j;
import cn.manytag.rfidapi.uhf.data.TagInfo;
import cn.manytag.rfidapi.uhf.listen.OnTagInfo;
import cn.manytag.rfidapi.uhf.util.Data_syn;
import cn.manytag.rfidapi.uhf.util.HexUtil;

/* renamed from: cn.manytag.rfidapi.i */
/* loaded from: classes.dex */
class C0696i implements InterfaceC0708j {

    /* renamed from: a */
    final /* synthetic */ OnTagInfo f255a;

    /* renamed from: b */
    final /* synthetic */ Reader f256b;

    C0696i(Reader reader, OnTagInfo onTagInfo) {
        this.f256b = reader;
        this.f255a = onTagInfo;
    }

    @Override // cn.manytag.rfidapi.uhf.InterfaceC0708j
    /* renamed from: a */
    public void mo212a(byte[] bArr) {
        if (bArr == null) {
            return;
        }
        try {
            if (bArr[2] == 64) {
                String strBytes2HexString = Data_syn.Bytes2HexString(bArr);
                String strSubstring = strBytes2HexString.substring(10, strBytes2HexString.length() - 10);
                byte[] bArr2 = new byte[2];
                System.arraycopy(bArr, bArr.length - 5, bArr2, 0, 2);
                float fDeciMal = Data_syn.deciMal((HexUtil.hexTo10(bArr2) - 65535) + 1, 10);
                TagInfo tagInfo = new TagInfo();
                tagInfo.setEpc(strSubstring);
                tagInfo.setRssi(fDeciMal);
                if (this.f255a != null) {
                    this.f255a.onTagInfo(tagInfo);
                }
            }
        } catch (Exception unused) {
        }
    }
}
