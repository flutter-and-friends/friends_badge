package cn.manytag.rfidapi.ble.a;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;

/* loaded from: classes.dex */
class i extends Handler {
    final /* synthetic */ h a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    i(h hVar, Looper looper) {
        super(looper);
        this.a = hVar;
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        super.handleMessage(message);
        if (message.what == 51) {
            this.a.b();
        }
    }
}
