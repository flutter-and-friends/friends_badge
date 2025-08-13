package com.yanzhenjie.permission.notify.listener;

import com.yanzhenjie.permission.Action;
import com.yanzhenjie.permission.Rationale;

/* loaded from: classes.dex */
public interface ListenerRequest {
    ListenerRequest onDenied(Action<Void> action);

    ListenerRequest onGranted(Action<Void> action);

    ListenerRequest rationale(Rationale<Void> rationale);

    void start();
}
