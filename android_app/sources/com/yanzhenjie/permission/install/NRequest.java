package com.yanzhenjie.permission.install;

import com.yanzhenjie.permission.source.Source;

/* loaded from: classes.dex */
class NRequest extends BaseRequest {
    NRequest(Source source) {
        super(source);
    }

    @Override // com.yanzhenjie.permission.install.InstallRequest
    public void start() {
        callbackSucceed();
        install();
    }
}
