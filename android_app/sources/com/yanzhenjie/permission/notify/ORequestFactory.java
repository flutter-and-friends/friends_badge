package com.yanzhenjie.permission.notify;

import com.yanzhenjie.permission.notify.Notify;
import com.yanzhenjie.permission.source.Source;

/* loaded from: classes.dex */
public class ORequestFactory implements Notify.PermissionRequestFactory {
    @Override // com.yanzhenjie.permission.notify.Notify.PermissionRequestFactory
    public PermissionRequest create(Source source) {
        return new ORequest(source);
    }
}
