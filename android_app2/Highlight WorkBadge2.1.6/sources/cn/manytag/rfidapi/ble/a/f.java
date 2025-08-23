package cn.manytag.rfidapi.ble.a;

import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import cn.highlight.tx.ble.data.BleMsg;

/* loaded from: classes.dex */
class f extends Handler {
    final /* synthetic */ e a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    f(e eVar, Looper looper) {
        super(looper);
        this.a = eVar;
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        super.handleMessage(message);
        int i = message.what;
        if (i == 49) {
            cn.manytag.rfidapi.ble.callback.i iVar = (cn.manytag.rfidapi.ble.callback.i) message.obj;
            if (iVar != null) {
                iVar.a(new cn.manytag.rfidapi.ble.b.e());
            }
            return;
        }
        if (i == 50) {
            this.a.c();
            cn.manytag.rfidapi.ble.callback.i iVar2 = (cn.manytag.rfidapi.ble.callback.i) message.obj;
            Bundle data = message.getData();
            int i2 = data.getInt(BleMsg.KEY_WRITE_BUNDLE_STATUS);
            byte[] byteArray = data.getByteArray(BleMsg.KEY_WRITE_BUNDLE_VALUE);
            if (iVar2 != null) {
                if (i2 == 0) {
                    iVar2.a(1, 1, byteArray);
                    return;
                } else {
                    iVar2.a(new cn.manytag.rfidapi.ble.b.c(i2));
                    return;
                }
            }
            return;
        }
        if (i == 65) {
            cn.manytag.rfidapi.ble.callback.f fVar = (cn.manytag.rfidapi.ble.callback.f) message.obj;
            if (fVar != null) {
                fVar.a(new cn.manytag.rfidapi.ble.b.e());
                return;
            }
            return;
        }
        if (i == 66) {
            this.a.d();
            cn.manytag.rfidapi.ble.callback.f fVar2 = (cn.manytag.rfidapi.ble.callback.f) message.obj;
            Bundle data2 = message.getData();
            int i3 = data2.getInt(BleMsg.KEY_READ_BUNDLE_STATUS);
            byte[] byteArray2 = data2.getByteArray(BleMsg.KEY_READ_BUNDLE_VALUE);
            if (fVar2 != null) {
                if (i3 == 0) {
                    fVar2.a(byteArray2);
                    return;
                } else {
                    fVar2.a(new cn.manytag.rfidapi.ble.b.c(i3));
                    return;
                }
            }
            return;
        }
        if (i == 81) {
            cn.manytag.rfidapi.ble.callback.g gVar = (cn.manytag.rfidapi.ble.callback.g) message.obj;
            if (gVar != null) {
                gVar.a(new cn.manytag.rfidapi.ble.b.e());
                return;
            }
            return;
        }
        if (i == 82) {
            this.a.e();
            cn.manytag.rfidapi.ble.callback.g gVar2 = (cn.manytag.rfidapi.ble.callback.g) message.obj;
            Bundle data3 = message.getData();
            int i4 = data3.getInt(BleMsg.KEY_READ_RSSI_BUNDLE_STATUS);
            int i5 = data3.getInt(BleMsg.KEY_READ_RSSI_BUNDLE_VALUE);
            if (gVar2 != null) {
                if (i4 == 0) {
                    gVar2.a(i5);
                    return;
                } else {
                    gVar2.a(new cn.manytag.rfidapi.ble.b.c(i4));
                    return;
                }
            }
            return;
        }
        if (i == 97) {
            cn.manytag.rfidapi.ble.callback.d dVar = (cn.manytag.rfidapi.ble.callback.d) message.obj;
            if (dVar != null) {
                dVar.a(new cn.manytag.rfidapi.ble.b.e());
                return;
            }
            return;
        }
        if (i == 98) {
            this.a.f();
            cn.manytag.rfidapi.ble.callback.d dVar2 = (cn.manytag.rfidapi.ble.callback.d) message.obj;
            Bundle data4 = message.getData();
            int i6 = data4.getInt(BleMsg.KEY_SET_MTU_BUNDLE_STATUS);
            int i7 = data4.getInt(BleMsg.KEY_SET_MTU_BUNDLE_VALUE);
            if (dVar2 != null) {
                if (i6 == 0) {
                    dVar2.a(i7);
                    return;
                } else {
                    dVar2.a(new cn.manytag.rfidapi.ble.b.c(i6));
                    return;
                }
            }
            return;
        }
        switch (i) {
            case 17:
                cn.manytag.rfidapi.ble.callback.e eVar = (cn.manytag.rfidapi.ble.callback.e) message.obj;
                if (eVar != null) {
                    eVar.a(new cn.manytag.rfidapi.ble.b.e());
                    break;
                }
                break;
            case 18:
                this.a.a();
                cn.manytag.rfidapi.ble.callback.e eVar2 = (cn.manytag.rfidapi.ble.callback.e) message.obj;
                int i8 = message.getData().getInt(BleMsg.KEY_NOTIFY_BUNDLE_STATUS);
                if (eVar2 != null) {
                    if (i8 != 0) {
                        eVar2.a(new cn.manytag.rfidapi.ble.b.c(i8));
                        break;
                    } else {
                        eVar2.c();
                        break;
                    }
                }
                break;
            case 19:
                cn.manytag.rfidapi.ble.callback.e eVar3 = (cn.manytag.rfidapi.ble.callback.e) message.obj;
                byte[] byteArray3 = message.getData().getByteArray(BleMsg.KEY_NOTIFY_BUNDLE_VALUE);
                if (eVar3 != null) {
                    eVar3.a(byteArray3);
                    break;
                }
                break;
            default:
                switch (i) {
                    case 33:
                        cn.manytag.rfidapi.ble.callback.c cVar = (cn.manytag.rfidapi.ble.callback.c) message.obj;
                        if (cVar != null) {
                            cVar.a(new cn.manytag.rfidapi.ble.b.e());
                            break;
                        }
                        break;
                    case 34:
                        this.a.b();
                        cn.manytag.rfidapi.ble.callback.c cVar2 = (cn.manytag.rfidapi.ble.callback.c) message.obj;
                        int i9 = message.getData().getInt(BleMsg.KEY_INDICATE_BUNDLE_STATUS);
                        if (cVar2 != null) {
                            if (i9 != 0) {
                                cVar2.a(new cn.manytag.rfidapi.ble.b.c(i9));
                                break;
                            } else {
                                cVar2.c();
                                break;
                            }
                        }
                        break;
                    case 35:
                        cn.manytag.rfidapi.ble.callback.c cVar3 = (cn.manytag.rfidapi.ble.callback.c) message.obj;
                        byte[] byteArray4 = message.getData().getByteArray(BleMsg.KEY_INDICATE_BUNDLE_VALUE);
                        if (cVar3 != null) {
                            cVar3.a(byteArray4);
                            break;
                        }
                        break;
                }
        }
    }
}
