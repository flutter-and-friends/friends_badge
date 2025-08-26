package com.yanzhenjie.permission.notify;

import android.os.Build;
import com.yanzhenjie.permission.notify.listener.J1RequestFactory;
import com.yanzhenjie.permission.notify.listener.J2RequestFactory;
import com.yanzhenjie.permission.notify.listener.ListenerRequest;
import com.yanzhenjie.permission.notify.option.NotifyOption;
import com.yanzhenjie.permission.source.Source;

/* loaded from: classes.dex */
public class Notify implements NotifyOption {
    private static final ListenerRequestFactory LISTENER_REQUEST_FACTORY;
    private static final PermissionRequestFactory PERMISSION_REQUEST_FACTORY;
    private Source mSource;

    public interface ListenerRequestFactory {
        ListenerRequest create(Source source);
    }

    public interface PermissionRequestFactory {
        PermissionRequest create(Source source);
    }

    static {
        if (Build.VERSION.SDK_INT >= 26) {
            PERMISSION_REQUEST_FACTORY = new ORequestFactory();
        } else {
            PERMISSION_REQUEST_FACTORY = new NRequestFactory();
        }
        if (Build.VERSION.SDK_INT >= 18) {
            LISTENER_REQUEST_FACTORY = new J2RequestFactory();
        } else {
            LISTENER_REQUEST_FACTORY = new J1RequestFactory();
        }
    }

    public Notify(Source source) {
        this.mSource = source;
    }

    @Override // com.yanzhenjie.permission.notify.option.NotifyOption
    public PermissionRequest permission() {
        return PERMISSION_REQUEST_FACTORY.create(this.mSource);
    }

    @Override // com.yanzhenjie.permission.notify.option.NotifyOption
    public ListenerRequest listener() {
        return LISTENER_REQUEST_FACTORY.create(this.mSource);
    }
}
