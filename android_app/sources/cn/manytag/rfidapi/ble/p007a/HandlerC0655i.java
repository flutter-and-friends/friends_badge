package cn.manytag.rfidapi.ble.p007a;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;

/* renamed from: cn.manytag.rfidapi.ble.a.i */
/* loaded from: classes.dex */
class HandlerC0655i extends Handler {

    /* renamed from: a */
    final /* synthetic */ C0654h f190a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    HandlerC0655i(C0654h c0654h, Looper looper) {
        super(looper);
        this.f190a = c0654h;
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        super.handleMessage(message);
        if (message.what == 51) {
            this.f190a.m144b();
        }
    }
}
