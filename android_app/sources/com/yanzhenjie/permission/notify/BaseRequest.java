package com.yanzhenjie.permission.notify;

import android.content.Context;
import com.yanzhenjie.permission.Action;
import com.yanzhenjie.permission.Rationale;
import com.yanzhenjie.permission.RequestExecutor;
import com.yanzhenjie.permission.source.Source;

/* loaded from: classes.dex */
abstract class BaseRequest implements PermissionRequest {
    private Action<Void> mDenied;
    private Action<Void> mGranted;
    private Rationale<Void> mRationale = new Rationale<Void>() { // from class: com.yanzhenjie.permission.notify.BaseRequest.1
        @Override // com.yanzhenjie.permission.Rationale
        public void showRationale(Context context, Void r2, RequestExecutor requestExecutor) {
            requestExecutor.execute();
        }
    };
    private Source mSource;

    BaseRequest(Source source) {
        this.mSource = source;
    }

    @Override // com.yanzhenjie.permission.notify.PermissionRequest
    public final PermissionRequest rationale(Rationale<Void> rationale) {
        this.mRationale = rationale;
        return this;
    }

    @Override // com.yanzhenjie.permission.notify.PermissionRequest
    public final PermissionRequest onGranted(Action<Void> action) {
        this.mGranted = action;
        return this;
    }

    @Override // com.yanzhenjie.permission.notify.PermissionRequest
    public final PermissionRequest onDenied(Action<Void> action) {
        this.mDenied = action;
        return this;
    }

    final void showRationale(RequestExecutor requestExecutor) {
        this.mRationale.showRationale(this.mSource.getContext(), null, requestExecutor);
    }

    final void callbackSucceed() {
        Action<Void> action = this.mGranted;
        if (action != null) {
            action.onAction(null);
        }
    }

    final void callbackFailed() {
        Action<Void> action = this.mDenied;
        if (action != null) {
            action.onAction(null);
        }
    }
}
