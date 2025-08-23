package cn.manytag.rfidapi.ble.a;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import cn.manytag.rfidapi.ble.data.BleDevice;

/* loaded from: classes.dex */
final class d extends Handler {
    final /* synthetic */ a a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    d(a aVar, Looper looper) {
        super(looper);
        this.a = aVar;
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        cn.manytag.rfidapi.ble.callback.b bVar;
        BleDevice bleDevice;
        cn.manytag.rfidapi.ble.b.a dVar;
        switch (message.what) {
            case 1:
                this.a.j();
                this.a.k();
                this.a.l();
                if (this.a.m >= cn.manytag.rfidapi.ble.a.a().g()) {
                    this.a.h = c.CONNECT_FAILURE;
                    cn.manytag.rfidapi.ble.a.a().d().a(this.a);
                    int iA = ((cn.manytag.rfidapi.ble.data.a) message.obj).a();
                    if (this.a.a != null) {
                        this.a.a.a(this.a.j, new cn.manytag.rfidapi.ble.b.b(this.a.k, iA));
                        return;
                    }
                    return;
                }
                cn.manytag.rfidapi.ble.d.a.c("Connect fail, try reconnect " + cn.manytag.rfidapi.ble.a.a().h() + " millisecond later");
                a.e(this.a);
                Message messageObtainMessage = this.a.l.obtainMessage();
                messageObtainMessage.what = 3;
                this.a.l.sendMessageDelayed(messageObtainMessage, cn.manytag.rfidapi.ble.a.a().h());
                return;
            case 2:
                this.a.h = c.CONNECT_DISCONNECT;
                cn.manytag.rfidapi.ble.a.a().d().c(this.a);
                this.a.h();
                this.a.k();
                this.a.l();
                this.a.d();
                this.a.e();
                this.a.c();
                this.a.l.removeCallbacksAndMessages(null);
                cn.manytag.rfidapi.ble.data.a aVar = (cn.manytag.rfidapi.ble.data.a) message.obj;
                boolean zB = aVar.b();
                int iA2 = aVar.a();
                if (this.a.a != null) {
                    this.a.a.a(zB, this.a.j, this.a.k, iA2);
                    return;
                }
                return;
            case 3:
                a aVar2 = this.a;
                aVar2.a(aVar2.j, false, this.a.a, this.a.m);
                return;
            case 4:
                if (this.a.k == null || !this.a.k.discoverServices()) {
                    Message messageObtainMessage2 = this.a.l.obtainMessage();
                    messageObtainMessage2.what = 5;
                    this.a.l.sendMessage(messageObtainMessage2);
                    return;
                }
                return;
            case 5:
                this.a.j();
                this.a.k();
                this.a.l();
                this.a.h = c.CONNECT_FAILURE;
                cn.manytag.rfidapi.ble.a.a().d().a(this.a);
                if (this.a.a != null) {
                    bVar = this.a.a;
                    bleDevice = this.a.j;
                    dVar = new cn.manytag.rfidapi.ble.b.d("GATT discover services exception occurred!");
                    break;
                } else {
                    return;
                }
            case 6:
                this.a.h = c.CONNECT_CONNECTED;
                this.a.i = false;
                cn.manytag.rfidapi.ble.a.a().d().a(this.a);
                cn.manytag.rfidapi.ble.a.a().d().b(this.a);
                int iA3 = ((cn.manytag.rfidapi.ble.data.a) message.obj).a();
                if (this.a.a != null) {
                    this.a.a.a(this.a.j, this.a.k, iA3);
                    return;
                }
                return;
            case 7:
                this.a.j();
                this.a.k();
                this.a.l();
                this.a.h = c.CONNECT_FAILURE;
                cn.manytag.rfidapi.ble.a.a().d().a(this.a);
                if (this.a.a != null) {
                    bVar = this.a.a;
                    bleDevice = this.a.j;
                    dVar = new cn.manytag.rfidapi.ble.b.e();
                    break;
                } else {
                    return;
                }
            default:
                super.handleMessage(message);
                return;
        }
        bVar.a(bleDevice, dVar);
    }
}
