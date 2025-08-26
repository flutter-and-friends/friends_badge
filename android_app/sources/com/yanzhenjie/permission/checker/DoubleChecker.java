package com.yanzhenjie.permission.checker;

import android.content.Context;
import java.util.List;

/* loaded from: classes.dex */
public final class DoubleChecker implements PermissionChecker {
    private static final PermissionChecker STANDARD_CHECKER = new StandardChecker();
    private static final PermissionChecker STRICT_CHECKER = new StrictChecker();

    @Override // com.yanzhenjie.permission.checker.PermissionChecker
    public boolean hasPermission(Context context, String... strArr) {
        return STRICT_CHECKER.hasPermission(context, strArr) && STANDARD_CHECKER.hasPermission(context, strArr);
    }

    @Override // com.yanzhenjie.permission.checker.PermissionChecker
    public boolean hasPermission(Context context, List<String> list) {
        return STRICT_CHECKER.hasPermission(context, list) && STANDARD_CHECKER.hasPermission(context, list);
    }
}
