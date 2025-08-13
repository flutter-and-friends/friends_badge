package com.yanzhenjie.permission.overlay;

import com.yanzhenjie.permission.Action;
import com.yanzhenjie.permission.Rationale;

/* loaded from: classes.dex */
public interface OverlayRequest {
    OverlayRequest onDenied(Action<Void> action);

    OverlayRequest onGranted(Action<Void> action);

    OverlayRequest rationale(Rationale<Void> rationale);

    void start();
}
