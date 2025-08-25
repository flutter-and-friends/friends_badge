package cn.highlight.tx.ble.callback;

import android.os.Handler;

/* loaded from: classes.dex */
public abstract class BleBaseCallbackHighlight {
    private Handler handler;
    private String key;

    public String getKey() {
        return this.key;
    }

    public void setKey(String str) {
        this.key = str;
    }

    public Handler getHandler() {
        return this.handler;
    }

    public void setHandler(Handler handler) {
        this.handler = handler;
    }
}
