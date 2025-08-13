package com.yanzhenjie.permission.source;

import android.app.Fragment;
import android.content.Context;
import android.content.Intent;
import android.os.Build;

/* loaded from: classes.dex */
public class FragmentSource extends Source {
    private Fragment mFragment;

    public FragmentSource(Fragment fragment) {
        this.mFragment = fragment;
    }

    @Override // com.yanzhenjie.permission.source.Source
    public Context getContext() {
        return this.mFragment.getActivity();
    }

    @Override // com.yanzhenjie.permission.source.Source
    public void startActivity(Intent intent) {
        this.mFragment.startActivity(intent);
    }

    @Override // com.yanzhenjie.permission.source.Source
    public void startActivityForResult(Intent intent, int i) {
        this.mFragment.startActivityForResult(intent, i);
    }

    @Override // com.yanzhenjie.permission.source.Source
    public boolean isShowRationalePermission(String str) {
        if (Build.VERSION.SDK_INT < 23) {
            return false;
        }
        return this.mFragment.shouldShowRequestPermissionRationale(str);
    }
}
