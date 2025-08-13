package com.yanzhenjie.permission.runtime;

import android.os.AsyncTask;
import android.util.Log;
import com.yanzhenjie.permission.Action;
import com.yanzhenjie.permission.Rationale;
import com.yanzhenjie.permission.checker.PermissionChecker;
import com.yanzhenjie.permission.checker.StrictChecker;
import com.yanzhenjie.permission.source.Source;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* loaded from: classes.dex */
class LRequest implements PermissionRequest {
    private static final PermissionChecker STRICT_CHECKER = new StrictChecker();
    private Action<List<String>> mDenied;
    private Action<List<String>> mGranted;
    private String[] mPermissions;
    private Source mSource;

    @Override // com.yanzhenjie.permission.runtime.PermissionRequest
    public PermissionRequest rationale(Rationale<List<String>> rationale) {
        return this;
    }

    LRequest(Source source) {
        this.mSource = source;
    }

    @Override // com.yanzhenjie.permission.runtime.PermissionRequest
    public PermissionRequest permission(String... strArr) {
        this.mPermissions = strArr;
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

    /* JADX WARN: Type inference failed for: r0v0, types: [com.yanzhenjie.permission.runtime.LRequest$1] */
    @Override // com.yanzhenjie.permission.runtime.PermissionRequest
    public void start() {
        new AsyncTask<Void, Void, List<String>>() { // from class: com.yanzhenjie.permission.runtime.LRequest.1
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // android.os.AsyncTask
            public List<String> doInBackground(Void... voidArr) {
                return LRequest.getDeniedPermissions(LRequest.STRICT_CHECKER, LRequest.this.mSource, LRequest.this.mPermissions);
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // android.os.AsyncTask
            public void onPostExecute(List<String> list) {
                if (list.isEmpty()) {
                    LRequest.this.callbackSucceed();
                } else {
                    LRequest.this.callbackFailed(list);
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
}
