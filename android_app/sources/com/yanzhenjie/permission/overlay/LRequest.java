package com.yanzhenjie.permission.overlay;

import com.yanzhenjie.permission.RequestExecutor;
import com.yanzhenjie.permission.bridge.BridgeRequest;
import com.yanzhenjie.permission.bridge.RequestManager;
import com.yanzhenjie.permission.source.Source;

/* loaded from: classes.dex */
class LRequest extends BaseRequest implements RequestExecutor, BridgeRequest.Callback {
    private Source mSource;

    LRequest(Source source) {
        super(source);
        this.mSource = source;
    }

    @Override // com.yanzhenjie.permission.overlay.OverlayRequest
    public void start() {
        if (tryDisplayDialog(this.mSource.getContext())) {
            callbackSucceed();
        } else {
            showRationale(this);
        }
    }

    @Override // com.yanzhenjie.permission.RequestExecutor
    public void execute() {
        BridgeRequest bridgeRequest = new BridgeRequest(this.mSource);
        bridgeRequest.setType(5);
        bridgeRequest.setCallback(this);
        RequestManager.get().add(bridgeRequest);
    }

    @Override // com.yanzhenjie.permission.RequestExecutor
    public void cancel() {
        callbackFailed();
    }

    @Override // com.yanzhenjie.permission.bridge.BridgeRequest.Callback
    public void onCallback() {
        if (tryDisplayDialog(this.mSource.getContext())) {
            callbackSucceed();
        } else {
            callbackFailed();
        }
    }
}
