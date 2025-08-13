package cn.manytag.rfidapi.ble.p007a;

import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import cn.highlight.p004tx.ble.data.BleMsg;
import cn.manytag.rfidapi.ble.callback.AbstractC0678c;
import cn.manytag.rfidapi.ble.callback.AbstractC0679d;
import cn.manytag.rfidapi.ble.callback.AbstractC0680e;
import cn.manytag.rfidapi.ble.callback.AbstractC0681f;
import cn.manytag.rfidapi.ble.callback.AbstractC0682g;
import cn.manytag.rfidapi.ble.callback.AbstractC0684i;
import cn.manytag.rfidapi.ble.p008b.C0660c;
import cn.manytag.rfidapi.ble.p008b.C0662e;

/* renamed from: cn.manytag.rfidapi.ble.a.f */
/* loaded from: classes.dex */
class HandlerC0652f extends Handler {

    /* renamed from: a */
    final /* synthetic */ C0651e f175a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    HandlerC0652f(C0651e c0651e, Looper looper) {
        super(looper);
        this.f175a = c0651e;
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        super.handleMessage(message);
        int i = message.what;
        if (i == 49) {
            AbstractC0684i abstractC0684i = (AbstractC0684i) message.obj;
            if (abstractC0684i != null) {
                abstractC0684i.mo153a(new C0662e());
            }
            return;
        }
        if (i == 50) {
            this.f175a.m129c();
            AbstractC0684i abstractC0684i2 = (AbstractC0684i) message.obj;
            Bundle data = message.getData();
            int i2 = data.getInt(BleMsg.KEY_WRITE_BUNDLE_STATUS);
            byte[] byteArray = data.getByteArray(BleMsg.KEY_WRITE_BUNDLE_VALUE);
            if (abstractC0684i2 != null) {
                if (i2 == 0) {
                    abstractC0684i2.mo152a(1, 1, byteArray);
                    return;
                } else {
                    abstractC0684i2.mo153a(new C0660c(i2));
                    return;
                }
            }
            return;
        }
        if (i == 65) {
            AbstractC0681f abstractC0681f = (AbstractC0681f) message.obj;
            if (abstractC0681f != null) {
                abstractC0681f.m195a(new C0662e());
                return;
            }
            return;
        }
        if (i == 66) {
            this.f175a.m130d();
            AbstractC0681f abstractC0681f2 = (AbstractC0681f) message.obj;
            Bundle data2 = message.getData();
            int i3 = data2.getInt(BleMsg.KEY_READ_BUNDLE_STATUS);
            byte[] byteArray2 = data2.getByteArray(BleMsg.KEY_READ_BUNDLE_VALUE);
            if (abstractC0681f2 != null) {
                if (i3 == 0) {
                    abstractC0681f2.m196a(byteArray2);
                    return;
                } else {
                    abstractC0681f2.m195a(new C0660c(i3));
                    return;
                }
            }
            return;
        }
        if (i == 81) {
            AbstractC0682g abstractC0682g = (AbstractC0682g) message.obj;
            if (abstractC0682g != null) {
                abstractC0682g.m198a(new C0662e());
                return;
            }
            return;
        }
        if (i == 82) {
            this.f175a.m131e();
            AbstractC0682g abstractC0682g2 = (AbstractC0682g) message.obj;
            Bundle data3 = message.getData();
            int i4 = data3.getInt(BleMsg.KEY_READ_RSSI_BUNDLE_STATUS);
            int i5 = data3.getInt(BleMsg.KEY_READ_RSSI_BUNDLE_VALUE);
            if (abstractC0682g2 != null) {
                if (i4 == 0) {
                    abstractC0682g2.m197a(i5);
                    return;
                } else {
                    abstractC0682g2.m198a(new C0660c(i4));
                    return;
                }
            }
            return;
        }
        if (i == 97) {
            AbstractC0679d abstractC0679d = (AbstractC0679d) message.obj;
            if (abstractC0679d != null) {
                abstractC0679d.mo191a(new C0662e());
                return;
            }
            return;
        }
        if (i == 98) {
            this.f175a.m132f();
            AbstractC0679d abstractC0679d2 = (AbstractC0679d) message.obj;
            Bundle data4 = message.getData();
            int i6 = data4.getInt(BleMsg.KEY_SET_MTU_BUNDLE_STATUS);
            int i7 = data4.getInt(BleMsg.KEY_SET_MTU_BUNDLE_VALUE);
            if (abstractC0679d2 != null) {
                if (i6 == 0) {
                    abstractC0679d2.mo190a(i7);
                    return;
                } else {
                    abstractC0679d2.mo191a(new C0660c(i6));
                    return;
                }
            }
            return;
        }
        switch (i) {
            case 17:
                AbstractC0680e abstractC0680e = (AbstractC0680e) message.obj;
                if (abstractC0680e != null) {
                    abstractC0680e.mo192a(new C0662e());
                    break;
                }
                break;
            case 18:
                this.f175a.m124a();
                AbstractC0680e abstractC0680e2 = (AbstractC0680e) message.obj;
                int i8 = message.getData().getInt(BleMsg.KEY_NOTIFY_BUNDLE_STATUS);
                if (abstractC0680e2 != null) {
                    if (i8 != 0) {
                        abstractC0680e2.mo192a(new C0660c(i8));
                        break;
                    } else {
                        abstractC0680e2.mo194c();
                        break;
                    }
                }
                break;
            case 19:
                AbstractC0680e abstractC0680e3 = (AbstractC0680e) message.obj;
                byte[] byteArray3 = message.getData().getByteArray(BleMsg.KEY_NOTIFY_BUNDLE_VALUE);
                if (abstractC0680e3 != null) {
                    abstractC0680e3.mo193a(byteArray3);
                    break;
                }
                break;
            default:
                switch (i) {
                    case 33:
                        AbstractC0678c abstractC0678c = (AbstractC0678c) message.obj;
                        if (abstractC0678c != null) {
                            abstractC0678c.m187a(new C0662e());
                            break;
                        }
                        break;
                    case 34:
                        this.f175a.m128b();
                        AbstractC0678c abstractC0678c2 = (AbstractC0678c) message.obj;
                        int i9 = message.getData().getInt(BleMsg.KEY_INDICATE_BUNDLE_STATUS);
                        if (abstractC0678c2 != null) {
                            if (i9 != 0) {
                                abstractC0678c2.m187a(new C0660c(i9));
                                break;
                            } else {
                                abstractC0678c2.m189c();
                                break;
                            }
                        }
                        break;
                    case 35:
                        AbstractC0678c abstractC0678c3 = (AbstractC0678c) message.obj;
                        byte[] byteArray4 = message.getData().getByteArray(BleMsg.KEY_INDICATE_BUNDLE_VALUE);
                        if (abstractC0678c3 != null) {
                            abstractC0678c3.m188a(byteArray4);
                            break;
                        }
                        break;
                }
        }
    }
}
