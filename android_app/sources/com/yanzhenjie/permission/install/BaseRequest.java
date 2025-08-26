package com.yanzhenjie.permission.install;

import android.content.Context;
import android.content.Intent;
import com.yanzhenjie.permission.Action;
import com.yanzhenjie.permission.AndPermission;
import com.yanzhenjie.permission.Rationale;
import com.yanzhenjie.permission.RequestExecutor;
import com.yanzhenjie.permission.source.Source;
import java.io.File;

/* loaded from: classes.dex */
abstract class BaseRequest implements InstallRequest {
    private Action<File> mDenied;
    private File mFile;
    private Action<File> mGranted;
    private Rationale<File> mRationale = new Rationale<File>() { // from class: com.yanzhenjie.permission.install.BaseRequest.1
        @Override // com.yanzhenjie.permission.Rationale
        public void showRationale(Context context, File file, RequestExecutor requestExecutor) {
            requestExecutor.execute();
        }
    };
    private Source mSource;

    BaseRequest(Source source) {
        this.mSource = source;
    }

    @Override // com.yanzhenjie.permission.install.InstallRequest
    public final InstallRequest file(File file) {
        this.mFile = file;
        return this;
    }

    @Override // com.yanzhenjie.permission.install.InstallRequest
    public final InstallRequest rationale(Rationale<File> rationale) {
        this.mRationale = rationale;
        return this;
    }

    @Override // com.yanzhenjie.permission.install.InstallRequest
    public final InstallRequest onGranted(Action<File> action) {
        this.mGranted = action;
        return this;
    }

    @Override // com.yanzhenjie.permission.install.InstallRequest
    public final InstallRequest onDenied(Action<File> action) {
        this.mDenied = action;
        return this;
    }

    final void showRationale(RequestExecutor requestExecutor) {
        this.mRationale.showRationale(this.mSource.getContext(), null, requestExecutor);
    }

    final void install() {
        Intent intent = new Intent("android.intent.action.INSTALL_PACKAGE");
        intent.setFlags(268435456);
        intent.addFlags(1);
        intent.setDataAndType(AndPermission.getFileUri(this.mSource.getContext(), this.mFile), "application/vnd.android.package-archive");
        this.mSource.startActivity(intent);
    }

    final void callbackSucceed() {
        Action<File> action = this.mGranted;
        if (action != null) {
            action.onAction(this.mFile);
        }
    }

    final void callbackFailed() {
        Action<File> action = this.mDenied;
        if (action != null) {
            action.onAction(this.mFile);
        }
    }
}
