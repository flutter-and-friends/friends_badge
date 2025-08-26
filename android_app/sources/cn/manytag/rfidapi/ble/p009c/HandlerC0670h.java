package cn.manytag.rfidapi.ble.p009c;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import cn.manytag.rfidapi.ble.data.BleDevice;
import java.lang.ref.WeakReference;

/* renamed from: cn.manytag.rfidapi.ble.c.h */
/* loaded from: classes.dex */
final class HandlerC0670h extends Handler {

    /* renamed from: a */
    private final WeakReference f219a;

    HandlerC0670h(Looper looper, AbstractC0663a abstractC0663a) {
        super(looper);
        this.f219a = new WeakReference(abstractC0663a);
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        BleDevice bleDevice;
        AbstractC0663a abstractC0663a = (AbstractC0663a) this.f219a.get();
        if (abstractC0663a == null || message.what != 0 || (bleDevice = (BleDevice) message.obj) == null) {
            return;
        }
        abstractC0663a.m158c(bleDevice);
    }
}
