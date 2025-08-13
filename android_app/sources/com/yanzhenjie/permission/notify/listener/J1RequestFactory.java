package com.yanzhenjie.permission.notify.listener;

import com.yanzhenjie.permission.notify.Notify;
import com.yanzhenjie.permission.source.Source;

/* loaded from: classes.dex */
public class J1RequestFactory implements Notify.ListenerRequestFactory {
    @Override // com.yanzhenjie.permission.notify.Notify.ListenerRequestFactory
    public ListenerRequest create(Source source) {
        return new J1Request(source);
    }
}
