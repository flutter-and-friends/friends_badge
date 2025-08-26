package com.yanzhenjie.permission.runtime;

import com.yanzhenjie.permission.runtime.Runtime;
import com.yanzhenjie.permission.source.Source;

/* loaded from: classes.dex */
public class MRequestFactory implements Runtime.PermissionRequestFactory {
    @Override // com.yanzhenjie.permission.runtime.Runtime.PermissionRequestFactory
    public PermissionRequest create(Source source) {
        return new MRequest(source);
    }
}
