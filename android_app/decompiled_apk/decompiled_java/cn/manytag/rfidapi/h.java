package cn.manytag.rfidapi;

import cn.manytag.rfidapi.uhf.data.InventoryTag;
import cn.manytag.rfidapi.uhf.listen.OnInventoryTag;
import cn.manytag.rfidapi.uhf.util.Data_syn;

/* loaded from: classes.dex */
class h implements cn.manytag.rfidapi.uhf.f {
    final /* synthetic */ OnInventoryTag a;
    final /* synthetic */ Reader b;

    h(Reader reader, OnInventoryTag onInventoryTag) {
        this.b = reader;
        this.a = onInventoryTag;
    }

    @Override // cn.manytag.rfidapi.uhf.f
    public void a(byte[] bArr) {
        if (bArr != null && bArr[2] == 64) {
            String strSubstring = Data_syn.Bytes2HexString(bArr).substring(10, r3.length() - 6);
            InventoryTag inventoryTag = new InventoryTag();
            inventoryTag.setTag(strSubstring);
            OnInventoryTag onInventoryTag = this.a;
            if (onInventoryTag != null) {
                onInventoryTag.onInventoryTag(inventoryTag);
            }
        }
    }
}
