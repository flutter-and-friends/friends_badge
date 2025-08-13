package com.yanzhenjie.permission.runtime;

import com.yanzhenjie.permission.Action;
import com.yanzhenjie.permission.Rationale;
import java.util.List;

/* loaded from: classes.dex */
public interface PermissionRequest {
    PermissionRequest onDenied(Action<List<String>> action);

    PermissionRequest onGranted(Action<List<String>> action);

    PermissionRequest permission(String... strArr);

    PermissionRequest rationale(Rationale<List<String>> rationale);

    void start();
}
