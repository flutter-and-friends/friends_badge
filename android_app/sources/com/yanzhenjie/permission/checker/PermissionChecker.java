package com.yanzhenjie.permission.checker;

import android.content.Context;
import java.util.List;

/* loaded from: classes.dex */
public interface PermissionChecker {
    boolean hasPermission(Context context, List<String> list);

    boolean hasPermission(Context context, String... strArr);
}
