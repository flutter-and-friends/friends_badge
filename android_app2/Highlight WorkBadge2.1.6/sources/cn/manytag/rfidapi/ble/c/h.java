package cn.manytag.rfidapi.ble.c;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import cn.manytag.rfidapi.ble.data.BleDevice;
import java.lang.ref.WeakReference;

/* loaded from: classes.dex */
final class h extends Handler {
    private final WeakReference a;

    h(Looper looper, a aVar) {
        super(looper);
        this.a = new WeakReference(aVar);
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        BleDevice bleDevice;
        a aVar = (a) this.a.get();
        if (aVar == null || message.what != 0 || (bleDevice = (BleDevice) message.obj) == null) {
            return;
        }
        aVar.c(bleDevice);
    }
}
