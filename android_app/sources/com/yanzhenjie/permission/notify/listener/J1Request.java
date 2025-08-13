package com.yanzhenjie.permission.notify.listener;

import com.yanzhenjie.permission.RequestExecutor;
import com.yanzhenjie.permission.source.Source;

/* loaded from: classes.dex */
class J1Request extends BaseRequest implements RequestExecutor {
    @Override // com.yanzhenjie.permission.RequestExecutor
    public void cancel() {
    }

    @Override // com.yanzhenjie.permission.RequestExecutor
    public void execute() {
    }

    J1Request(Source source) {
        super(source);
    }

    @Override // com.yanzhenjie.permission.notify.listener.ListenerRequest
    public void start() {
        callbackSucceed();
    }
}
