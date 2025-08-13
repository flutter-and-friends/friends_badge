package com.yanzhenjie.permission.source;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Build;

/* loaded from: classes.dex */
public class ActivitySource extends Source {
    private Activity mActivity;

    public ActivitySource(Activity activity) {
        this.mActivity = activity;
    }

    @Override // com.yanzhenjie.permission.source.Source
    public Context getContext() {
        return this.mActivity;
    }

    @Override // com.yanzhenjie.permission.source.Source
    public void startActivity(Intent intent) {
        this.mActivity.startActivity(intent);
    }

    @Override // com.yanzhenjie.permission.source.Source
    public void startActivityForResult(Intent intent, int i) {
        this.mActivity.startActivityForResult(intent, i);
    }

    @Override // com.yanzhenjie.permission.source.Source
    public boolean isShowRationalePermission(String str) {
        if (Build.VERSION.SDK_INT < 23) {
            return false;
        }
        return this.mActivity.shouldShowRequestPermissionRationale(str);
    }
}
