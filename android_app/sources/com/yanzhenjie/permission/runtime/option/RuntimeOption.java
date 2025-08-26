package com.yanzhenjie.permission.runtime.option;

import com.yanzhenjie.permission.runtime.PermissionRequest;

/* loaded from: classes.dex */
public interface RuntimeOption {
    PermissionRequest permission(String... strArr);

    PermissionRequest permission(String[]... strArr);
}
