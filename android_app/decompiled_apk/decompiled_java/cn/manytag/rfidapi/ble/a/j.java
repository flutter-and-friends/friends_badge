package cn.manytag.rfidapi.ble.a;

/* loaded from: classes.dex */
class j extends cn.manytag.rfidapi.ble.callback.i {
    final /* synthetic */ h a;

    j(h hVar) {
        this.a = hVar;
    }

    @Override // cn.manytag.rfidapi.ble.callback.i
    public void a(int i, int i2, byte[] bArr) {
        int size = this.a.l - this.a.k.size();
        if (this.a.j != null) {
            this.a.j.a(size, this.a.l, bArr);
        }
        if (this.a.h) {
            this.a.b.sendMessageDelayed(this.a.b.obtainMessage(51), this.a.i);
        }
    }

    @Override // cn.manytag.rfidapi.ble.callback.i
    public void a(cn.manytag.rfidapi.ble.b.a aVar) {
        if (this.a.j != null) {
            this.a.j.a(new cn.manytag.rfidapi.ble.b.d("exception occur while writing: " + aVar.a()));
        }
        if (this.a.h) {
            this.a.b.sendMessageDelayed(this.a.b.obtainMessage(51), this.a.i);
        }
    }
}
