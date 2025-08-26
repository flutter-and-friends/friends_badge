package com.yanzhenjie.permission.checker;

import android.app.AppOpsManager;
import android.content.Context;
import android.os.Build;
import android.os.Process;
import android.text.TextUtils;
import java.util.Arrays;
import java.util.List;

/* loaded from: classes.dex */
public final class StandardChecker implements PermissionChecker {
    private static final int MODE_ASK = 4;

    @Override // com.yanzhenjie.permission.checker.PermissionChecker
    public boolean hasPermission(Context context, String... strArr) {
        return hasPermission(context, Arrays.asList(strArr));
    }

    @Override // com.yanzhenjie.permission.checker.PermissionChecker
    public boolean hasPermission(Context context, List<String> list) {
        if (Build.VERSION.SDK_INT < 23) {
            return true;
        }
        AppOpsManager appOpsManager = null;
        for (String str : list) {
            if (context.checkPermission(str, Process.myPid(), Process.myUid()) == -1) {
                return false;
            }
            String strPermissionToOp = AppOpsManager.permissionToOp(str);
            if (!TextUtils.isEmpty(strPermissionToOp)) {
                if (appOpsManager == null) {
                    appOpsManager = (AppOpsManager) context.getSystemService("appops");
                }
                int iCheckOpNoThrow = appOpsManager.checkOpNoThrow(strPermissionToOp, Process.myUid(), context.getPackageName());
                if (iCheckOpNoThrow != 0 && iCheckOpNoThrow != 4) {
                    return false;
                }
            }
        }
        return true;
    }
}
