package cn.manytag.rfidapi;

import cn.manytag.rfidapi.uhf.data.TagInfo;
import cn.manytag.rfidapi.uhf.listen.OnTagInfo;
import cn.manytag.rfidapi.uhf.util.Data_syn;
import cn.manytag.rfidapi.uhf.util.HexUtil;

/* loaded from: classes.dex */
class i implements cn.manytag.rfidapi.uhf.j {
    final /* synthetic */ OnTagInfo a;
    final /* synthetic */ Reader b;

    i(Reader reader, OnTagInfo onTagInfo) {
        this.b = reader;
        this.a = onTagInfo;
    }

    @Override // cn.manytag.rfidapi.uhf.j
    public void a(byte[] bArr) {
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
                if (this.a != null) {
                    this.a.onTagInfo(tagInfo);
                }
            }
        } catch (Exception unused) {
        }
    }
}
