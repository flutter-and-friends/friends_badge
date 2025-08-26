package cn.manytag.rfidapi.ble.p007a;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import cn.manytag.rfidapi.ble.C0646a;
import cn.manytag.rfidapi.ble.callback.AbstractC0677b;
import cn.manytag.rfidapi.ble.data.BleDevice;
import cn.manytag.rfidapi.ble.data.C0687a;
import cn.manytag.rfidapi.ble.p008b.AbstractC0658a;
import cn.manytag.rfidapi.ble.p008b.C0659b;
import cn.manytag.rfidapi.ble.p008b.C0661d;
import cn.manytag.rfidapi.ble.p008b.C0662e;
import cn.manytag.rfidapi.ble.p010d.C0685a;

/* renamed from: cn.manytag.rfidapi.ble.a.d */
/* loaded from: classes.dex */
final class HandlerC0650d extends Handler {

    /* renamed from: a */
    final /* synthetic */ C0647a f169a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    HandlerC0650d(C0647a c0647a, Looper looper) {
        super(looper);
        this.f169a = c0647a;
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        AbstractC0677b abstractC0677b;
        BleDevice bleDevice;
        AbstractC0658a c0661d;
        switch (message.what) {
            case 1:
                this.f169a.m92j();
                this.f169a.m93k();
                this.f169a.m96l();
                if (this.f169a.f160m >= C0646a.m50a().m70g()) {
                    this.f169a.f155h = EnumC0649c.CONNECT_FAILURE;
                    C0646a.m50a().m67d().m135a(this.f169a);
                    int iM204a = ((C0687a) message.obj).m204a();
                    if (this.f169a.f148a != null) {
                        this.f169a.f148a.mo47a(this.f169a.f157j, new C0659b(this.f169a.f158k, iM204a));
                        return;
                    }
                    return;
                }
                C0685a.m203c("Connect fail, try reconnect " + C0646a.m50a().m71h() + " millisecond later");
                C0647a.m86e(this.f169a);
                Message messageObtainMessage = this.f169a.f159l.obtainMessage();
                messageObtainMessage.what = 3;
                this.f169a.f159l.sendMessageDelayed(messageObtainMessage, C0646a.m50a().m71h());
                return;
            case 2:
                this.f169a.f155h = EnumC0649c.CONNECT_DISCONNECT;
                C0646a.m50a().m67d().m139c(this.f169a);
                this.f169a.m115h();
                this.f169a.m93k();
                this.f169a.m96l();
                this.f169a.m111d();
                this.f169a.m112e();
                this.f169a.m110c();
                this.f169a.f159l.removeCallbacksAndMessages(null);
                C0687a c0687a = (C0687a) message.obj;
                boolean zM206b = c0687a.m206b();
                int iM204a2 = c0687a.m204a();
                if (this.f169a.f148a != null) {
                    this.f169a.f148a.mo48a(zM206b, this.f169a.f157j, this.f169a.f158k, iM204a2);
                    return;
                }
                return;
            case 3:
                C0647a c0647a = this.f169a;
                c0647a.m103a(c0647a.f157j, false, this.f169a.f148a, this.f169a.f160m);
                return;
            case 4:
                if (this.f169a.f158k == null || !this.f169a.f158k.discoverServices()) {
                    Message messageObtainMessage2 = this.f169a.f159l.obtainMessage();
                    messageObtainMessage2.what = 5;
                    this.f169a.f159l.sendMessage(messageObtainMessage2);
                    return;
                }
                return;
            case 5:
                this.f169a.m92j();
                this.f169a.m93k();
                this.f169a.m96l();
                this.f169a.f155h = EnumC0649c.CONNECT_FAILURE;
                C0646a.m50a().m67d().m135a(this.f169a);
                if (this.f169a.f148a != null) {
                    abstractC0677b = this.f169a.f148a;
                    bleDevice = this.f169a.f157j;
                    c0661d = new C0661d("GATT discover services exception occurred!");
                    break;
                } else {
                    return;
                }
            case 6:
                this.f169a.f155h = EnumC0649c.CONNECT_CONNECTED;
                this.f169a.f156i = false;
                C0646a.m50a().m67d().m135a(this.f169a);
                C0646a.m50a().m67d().m138b(this.f169a);
                int iM204a3 = ((C0687a) message.obj).m204a();
                if (this.f169a.f148a != null) {
                    this.f169a.f148a.mo46a(this.f169a.f157j, this.f169a.f158k, iM204a3);
                    return;
                }
                return;
            case 7:
                this.f169a.m92j();
                this.f169a.m93k();
                this.f169a.m96l();
                this.f169a.f155h = EnumC0649c.CONNECT_FAILURE;
                C0646a.m50a().m67d().m135a(this.f169a);
                if (this.f169a.f148a != null) {
                    abstractC0677b = this.f169a.f148a;
                    bleDevice = this.f169a.f157j;
                    c0661d = new C0662e();
                    break;
                } else {
                    return;
                }
            default:
                super.handleMessage(message);
                return;
        }
        abstractC0677b.mo47a(bleDevice, c0661d);
    }
}
