package com.yanzhenjie.permission.source;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.Build;
import java.lang.reflect.Method;

/* loaded from: classes.dex */
public class ContextSource extends Source {
    private Context mContext;

    public ContextSource(Context context) {
        this.mContext = context;
    }

    @Override // com.yanzhenjie.permission.source.Source
    public Context getContext() {
        return this.mContext;
    }

    @Override // com.yanzhenjie.permission.source.Source
    public void startActivity(Intent intent) {
        intent.addFlags(268435456);
        this.mContext.startActivity(intent);
    }

    @Override // com.yanzhenjie.permission.source.Source
    public void startActivityForResult(Intent intent, int i) {
        throw new UnsupportedOperationException("Unsupported operation.");
    }

    @Override // com.yanzhenjie.permission.source.Source
    public boolean isShowRationalePermission(String str) throws NoSuchMethodException, SecurityException {
        if (Build.VERSION.SDK_INT < 23) {
            return false;
        }
        PackageManager packageManager = this.mContext.getPackageManager();
        try {
            Method method = packageManager.getClass().getMethod("shouldShowRequestPermissionRationale", String.class);
            if (!method.isAccessible()) {
                method.setAccessible(true);
            }
            return ((Boolean) method.invoke(packageManager, str)).booleanValue();
        } catch (Exception unused) {
            return false;
        }
    }
}
