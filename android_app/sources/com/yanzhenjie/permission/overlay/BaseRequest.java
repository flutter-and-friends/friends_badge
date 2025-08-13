package com.yanzhenjie.permission.overlay;

import android.app.Dialog;
import android.content.Context;
import android.os.Build;
import com.darsh.multipleimageselect.helpers.Constants;
import com.yanzhenjie.permission.Action;
import com.yanzhenjie.permission.C1443R;
import com.yanzhenjie.permission.Rationale;
import com.yanzhenjie.permission.RequestExecutor;
import com.yanzhenjie.permission.source.Source;

/* loaded from: classes.dex */
abstract class BaseRequest implements OverlayRequest {
    private Action<Void> mDenied;
    private Action<Void> mGranted;
    private Rationale<Void> mRationale = new Rationale<Void>() { // from class: com.yanzhenjie.permission.overlay.BaseRequest.1
        @Override // com.yanzhenjie.permission.Rationale
        public void showRationale(Context context, Void r2, RequestExecutor requestExecutor) {
            requestExecutor.execute();
        }
    };
    private Source mSource;

    BaseRequest(Source source) {
        this.mSource = source;
    }

    @Override // com.yanzhenjie.permission.overlay.OverlayRequest
    public final OverlayRequest rationale(Rationale<Void> rationale) {
        this.mRationale = rationale;
        return this;
    }

    @Override // com.yanzhenjie.permission.overlay.OverlayRequest
    public final OverlayRequest onGranted(Action<Void> action) {
        this.mGranted = action;
        return this;
    }

    @Override // com.yanzhenjie.permission.overlay.OverlayRequest
    public final OverlayRequest onDenied(Action<Void> action) {
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

    static boolean tryDisplayDialog(Context context) {
        Dialog dialog = new Dialog(context, C1443R.style.Permission_Theme);
        dialog.getWindow().setType(Build.VERSION.SDK_INT >= 26 ? 2038 : Constants.PERMISSION_GRANTED);
        try {
            dialog.show();
            if (!dialog.isShowing()) {
                return true;
            }
            dialog.dismiss();
            return true;
        } catch (Exception unused) {
            if (dialog.isShowing()) {
                dialog.dismiss();
            }
            return false;
        } catch (Throwable th) {
            if (dialog.isShowing()) {
                dialog.dismiss();
            }
            throw th;
        }
    }
}
