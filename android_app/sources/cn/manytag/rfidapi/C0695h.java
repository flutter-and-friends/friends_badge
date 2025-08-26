package cn.manytag.rfidapi;

import cn.manytag.rfidapi.uhf.InterfaceC0704f;
import cn.manytag.rfidapi.uhf.data.InventoryTag;
import cn.manytag.rfidapi.uhf.listen.OnInventoryTag;
import cn.manytag.rfidapi.uhf.util.Data_syn;

/* renamed from: cn.manytag.rfidapi.h */
/* loaded from: classes.dex */
class C0695h implements InterfaceC0704f {

    /* renamed from: a */
    final /* synthetic */ OnInventoryTag f253a;

    /* renamed from: b */
    final /* synthetic */ Reader f254b;

    C0695h(Reader reader, OnInventoryTag onInventoryTag) {
        this.f254b = reader;
        this.f253a = onInventoryTag;
    }

    @Override // cn.manytag.rfidapi.uhf.InterfaceC0704f
    /* renamed from: a */
    public void mo211a(byte[] bArr) {
        if (bArr != null && bArr[2] == 64) {
            String strSubstring = Data_syn.Bytes2HexString(bArr).substring(10, r3.length() - 6);
            InventoryTag inventoryTag = new InventoryTag();
            inventoryTag.setTag(strSubstring);
            OnInventoryTag onInventoryTag = this.f253a;
            if (onInventoryTag != null) {
                onInventoryTag.onInventoryTag(inventoryTag);
            }
        }
    }
}
