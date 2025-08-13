package com.yanzhenjie.permission.install;

import com.yanzhenjie.permission.RequestExecutor;
import com.yanzhenjie.permission.bridge.BridgeRequest;
import com.yanzhenjie.permission.bridge.RequestManager;
import com.yanzhenjie.permission.source.Source;

/* loaded from: classes.dex */
class ORequest extends BaseRequest implements RequestExecutor, BridgeRequest.Callback {
    private Source mSource;

    ORequest(Source source) {
        super(source);
        this.mSource = source;
    }

    @Override // com.yanzhenjie.permission.install.InstallRequest
    public void start() {
        if (this.mSource.canRequestPackageInstalls()) {
            callbackSucceed();
            install();
        } else {
            showRationale(this);
        }
    }

    @Override // com.yanzhenjie.permission.RequestExecutor
    public void execute() {
        BridgeRequest bridgeRequest = new BridgeRequest(this.mSource);
        bridgeRequest.setType(3);
        bridgeRequest.setCallback(this);
        RequestManager.get().add(bridgeRequest);
    }

    @Override // com.yanzhenjie.permission.RequestExecutor
    public void cancel() {
        callbackFailed();
    }

    @Override // com.yanzhenjie.permission.bridge.BridgeRequest.Callback
    public void onCallback() {
        if (this.mSource.canRequestPackageInstalls()) {
            callbackSucceed();
            install();
        } else {
            callbackFailed();
        }
    }
}
