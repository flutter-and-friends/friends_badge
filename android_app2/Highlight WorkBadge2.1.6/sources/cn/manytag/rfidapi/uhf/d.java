package cn.manytag.rfidapi.uhf;

import android.os.Handler;
import android.os.Message;
import cn.manytag.rfidapi.uhf.data.BleData;

/* loaded from: classes.dex */
class d extends Handler {
    final /* synthetic */ a a;

    d(a aVar) {
        this.a = aVar;
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        byte[] bArrB;
        BleData bleData = (BleData) message.obj;
        if (bleData == null || bleData.getDataList() == null) {
            return;
        }
        try {
            bArrB = a.b(bleData.getDataList());
        } catch (Exception e) {
            e.printStackTrace();
            return;
        }
        if (this.a.b(bArrB)) {
            byte b = bArrB[2];
            if (b != -1 && b != 2) {
                if (b == 64) {
                    if (this.a.b != null) {
                        this.a.b.a(bArrB);
                    }
                    if (this.a.c != null) {
                        this.a.c.a(bArrB);
                        return;
                    }
                    return;
                }
                if (b == 66) {
                    if (this.a.h != null) {
                        this.a.h.a(bArrB);
                        return;
                    }
                    return;
                }
                if (b != 16) {
                    if (b != 17) {
                        switch (b) {
                            case 32:
                            case 34:
                                break;
                            case 33:
                            case 35:
                                break;
                            default:
                                switch (b) {
                                    case 49:
                                        if (this.a.g != null) {
                                            this.a.g.a(bArrB);
                                            break;
                                        }
                                        break;
                                    case 51:
                                        if (this.a.f != null) {
                                            this.a.f.a(bArrB);
                                            break;
                                        }
                                        break;
                                }
                        }
                        return;
                    }
                }
                if (this.a.d != null) {
                    this.a.c(bArrB);
                    return;
                }
                return;
            }
            if (this.a.e != null) {
                this.a.e.a(bArrB);
            }
        }
    }
}
