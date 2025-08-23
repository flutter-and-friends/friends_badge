package cn.manytag.rfidapi;

import cn.manytag.rfidapi.uhf.data.FindTagStatus;
import cn.manytag.rfidapi.uhf.listen.OnFindTag;

/* loaded from: classes.dex */
class b implements cn.manytag.rfidapi.uhf.e {
    final /* synthetic */ OnFindTag a;
    final /* synthetic */ Reader b;

    b(Reader reader, OnFindTag onFindTag) {
        this.b = reader;
        this.a = onFindTag;
    }

    @Override // cn.manytag.rfidapi.uhf.e
    public void a(byte[] bArr) {
        OnFindTag onFindTag;
        FindTagStatus findTagStatus;
        if (bArr != null && bArr[2] == 66) {
            byte b = bArr[5];
            if (b == 0) {
                onFindTag = this.a;
                findTagStatus = FindTagStatus.SET_FAIL;
            } else if (b == 1) {
                onFindTag = this.a;
                findTagStatus = FindTagStatus.SET_SUCCESS;
            } else if (b == 2) {
                onFindTag = this.a;
                findTagStatus = FindTagStatus.FIND_FAIL;
            } else {
                if (b != 3) {
                    return;
                }
                onFindTag = this.a;
                findTagStatus = FindTagStatus.FIND_SUCCESS;
            }
            onFindTag.onFindTag(findTagStatus);
        }
    }
}
