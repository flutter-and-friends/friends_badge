package cn.manytag.rfidapi;

import cn.manytag.rfidapi.uhf.InterfaceC0703e;
import cn.manytag.rfidapi.uhf.data.FindTagStatus;
import cn.manytag.rfidapi.uhf.listen.OnFindTag;

/* renamed from: cn.manytag.rfidapi.b */
/* loaded from: classes.dex */
class C0645b implements InterfaceC0703e {

    /* renamed from: a */
    final /* synthetic */ OnFindTag f135a;

    /* renamed from: b */
    final /* synthetic */ Reader f136b;

    C0645b(Reader reader, OnFindTag onFindTag) {
        this.f136b = reader;
        this.f135a = onFindTag;
    }

    @Override // cn.manytag.rfidapi.uhf.InterfaceC0703e
    /* renamed from: a */
    public void mo49a(byte[] bArr) {
        OnFindTag onFindTag;
        FindTagStatus findTagStatus;
        if (bArr != null && bArr[2] == 66) {
            byte b = bArr[5];
            if (b == 0) {
                onFindTag = this.f135a;
                findTagStatus = FindTagStatus.SET_FAIL;
            } else if (b == 1) {
                onFindTag = this.f135a;
                findTagStatus = FindTagStatus.SET_SUCCESS;
            } else if (b == 2) {
                onFindTag = this.f135a;
                findTagStatus = FindTagStatus.FIND_FAIL;
            } else {
                if (b != 3) {
                    return;
                }
                onFindTag = this.f135a;
                findTagStatus = FindTagStatus.FIND_SUCCESS;
            }
            onFindTag.onFindTag(findTagStatus);
        }
    }
}
