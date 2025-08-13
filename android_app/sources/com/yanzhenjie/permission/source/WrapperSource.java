package com.yanzhenjie.permission.source;

import android.content.Context;
import android.content.Intent;

/* loaded from: classes.dex */
public class WrapperSource extends Source {
    private Source mSource;

    public WrapperSource(Source source) {
        this.mSource = source;
    }

    @Override // com.yanzhenjie.permission.source.Source
    public Context getContext() {
        return this.mSource.getContext();
    }

    @Override // com.yanzhenjie.permission.source.Source
    public void startActivity(Intent intent) {
        this.mSource.startActivity(intent);
    }

    @Override // com.yanzhenjie.permission.source.Source
    public void startActivityForResult(Intent intent, int i) {
        this.mSource.startActivityForResult(intent, i);
    }

    @Override // com.yanzhenjie.permission.source.Source
    public boolean isShowRationalePermission(String str) {
        return this.mSource.isShowRationalePermission(str);
    }
}
