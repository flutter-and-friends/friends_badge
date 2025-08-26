package com.yanzhenjie.permission.runtime;

import android.content.Context;
import android.os.AsyncTask;
import android.util.Log;
import com.yanzhenjie.permission.Action;
import com.yanzhenjie.permission.Rationale;
import com.yanzhenjie.permission.RequestExecutor;
import com.yanzhenjie.permission.bridge.BridgeRequest;
import com.yanzhenjie.permission.bridge.RequestManager;
import com.yanzhenjie.permission.checker.DoubleChecker;
import com.yanzhenjie.permission.checker.PermissionChecker;
import com.yanzhenjie.permission.checker.StandardChecker;
import com.yanzhenjie.permission.source.Source;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* loaded from: classes.dex */
class MRequest implements PermissionRequest, RequestExecutor, BridgeRequest.Callback {
    private Action<List<String>> mDenied;
    private String[] mDeniedPermissions;
    private Action<List<String>> mGranted;
    private String[] mPermissions;
    private Rationale<List<String>> mRationale = new Rationale<List<String>>() { // from class: com.yanzhenjie.permission.runtime.MRequest.1
        @Override // com.yanzhenjie.permission.Rationale
        public void showRationale(Context context, List<String> list, RequestExecutor requestExecutor) {
            requestExecutor.execute();
        }
    };
    private Source mSource;
    private static final PermissionChecker STANDARD_CHECKER = new StandardChecker();
    private static final PermissionChecker DOUBLE_CHECKER = new DoubleChecker();

    MRequest(Source source) {
        this.mSource = source;
    }

    @Override // com.yanzhenjie.permission.runtime.PermissionRequest
    public PermissionRequest permission(String... strArr) {
        this.mPermissions = strArr;
        return this;
    }

    @Override // com.yanzhenjie.permission.runtime.PermissionRequest
    public PermissionRequest rationale(Rationale<List<String>> rationale) {
        this.mRationale = rationale;
        return this;
    }

    @Override // com.yanzhenjie.permission.runtime.PermissionRequest
    public PermissionRequest onGranted(Action<List<String>> action) {
        this.mGranted = action;
        return this;
    }

    @Override // com.yanzhenjie.permission.runtime.PermissionRequest
    public PermissionRequest onDenied(Action<List<String>> action) {
        this.mDenied = action;
        return this;
    }

    @Override // com.yanzhenjie.permission.runtime.PermissionRequest
    public void start() {
        List<String> deniedPermissions = getDeniedPermissions(STANDARD_CHECKER, this.mSource, this.mPermissions);
        this.mDeniedPermissions = (String[]) deniedPermissions.toArray(new String[deniedPermissions.size()]);
        String[] strArr = this.mDeniedPermissions;
        if (strArr.length > 0) {
            List<String> rationalePermissions = getRationalePermissions(this.mSource, strArr);
            if (rationalePermissions.size() > 0) {
                this.mRationale.showRationale(this.mSource.getContext(), rationalePermissions, this);
                return;
            } else {
                execute();
                return;
            }
        }
        onCallback();
    }

    @Override // com.yanzhenjie.permission.RequestExecutor
    public void execute() {
        BridgeRequest bridgeRequest = new BridgeRequest(this.mSource);
        bridgeRequest.setType(2);
        bridgeRequest.setPermissions(this.mDeniedPermissions);
        bridgeRequest.setCallback(this);
        RequestManager.get().add(bridgeRequest);
    }

    @Override // com.yanzhenjie.permission.RequestExecutor
    public void cancel() {
        onCallback();
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [com.yanzhenjie.permission.runtime.MRequest$2] */
    @Override // com.yanzhenjie.permission.bridge.BridgeRequest.Callback
    public void onCallback() {
        new AsyncTask<Void, Void, List<String>>() { // from class: com.yanzhenjie.permission.runtime.MRequest.2
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // android.os.AsyncTask
            public List<String> doInBackground(Void... voidArr) {
                return MRequest.getDeniedPermissions(MRequest.DOUBLE_CHECKER, MRequest.this.mSource, MRequest.this.mPermissions);
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // android.os.AsyncTask
            public void onPostExecute(List<String> list) {
                if (list.isEmpty()) {
                    MRequest.this.callbackSucceed();
                } else {
                    MRequest.this.callbackFailed(list);
                }
            }
        }.execute(new Void[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void callbackSucceed() {
        if (this.mGranted != null) {
            List<String> listAsList = Arrays.asList(this.mPermissions);
            try {
                this.mGranted.onAction(listAsList);
            } catch (Exception e) {
                Log.e("AndPermission", "Please check the onGranted() method body for bugs.", e);
                Action<List<String>> action = this.mDenied;
                if (action != null) {
                    action.onAction(listAsList);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void callbackFailed(List<String> list) {
        Action<List<String>> action = this.mDenied;
        if (action != null) {
            action.onAction(list);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static List<String> getDeniedPermissions(PermissionChecker permissionChecker, Source source, String... strArr) {
        ArrayList arrayList = new ArrayList(1);
        for (String str : strArr) {
            if (!permissionChecker.hasPermission(source.getContext(), str)) {
                arrayList.add(str);
            }
        }
        return arrayList;
    }

    private static List<String> getRationalePermissions(Source source, String... strArr) {
        ArrayList arrayList = new ArrayList(1);
        for (String str : strArr) {
            if (source.isShowRationalePermission(str)) {
                arrayList.add(str);
            }
        }
        return arrayList;
    }
}
