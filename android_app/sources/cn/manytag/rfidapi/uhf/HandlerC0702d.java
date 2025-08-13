package cn.manytag.rfidapi.uhf;

import android.os.Handler;
import android.os.Message;
import cn.manytag.rfidapi.uhf.data.BleData;

/* renamed from: cn.manytag.rfidapi.uhf.d */
/* loaded from: classes.dex */
class HandlerC0702d extends Handler {

    /* renamed from: a */
    final /* synthetic */ C0699a f278a;

    HandlerC0702d(C0699a c0699a) {
        this.f278a = c0699a;
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        byte[] bArrM222b;
        BleData bleData = (BleData) message.obj;
        if (bleData == null || bleData.getDataList() == null) {
            return;
        }
        try {
            bArrM222b = C0699a.m222b(bleData.getDataList());
        } catch (Exception e) {
            e.printStackTrace();
            return;
        }
        if (this.f278a.m221b(bArrM222b)) {
            byte b = bArrM222b[2];
            if (b != -1 && b != 2) {
                if (b == 64) {
                    if (this.f278a.f263b != null) {
                        this.f278a.f263b.mo211a(bArrM222b);
                    }
                    if (this.f278a.f264c != null) {
                        this.f278a.f264c.mo212a(bArrM222b);
                        return;
                    }
                    return;
                }
                if (b == 66) {
                    if (this.f278a.f269h != null) {
                        this.f278a.f269h.mo49a(bArrM222b);
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
                                        if (this.f278a.f268g != null) {
                                            this.f278a.f268g.mo214a(bArrM222b);
                                            break;
                                        }
                                        break;
                                    case 51:
                                        if (this.f278a.f267f != null) {
                                            this.f278a.f267f.mo213a(bArrM222b);
                                            break;
                                        }
                                        break;
                                }
                        }
                        return;
                    }
                }
                if (this.f278a.f265d != null) {
                    this.f278a.m224c(bArrM222b);
                    return;
                }
                return;
            }
            if (this.f278a.f266e != null) {
                this.f278a.f266e.mo210a(bArrM222b);
            }
        }
    }
}
