package com.yanzhenjie.permission;

import android.os.Build;
import com.yanzhenjie.permission.install.InstallRequest;
import com.yanzhenjie.permission.install.NRequestFactory;
import com.yanzhenjie.permission.install.ORequestFactory;
import com.yanzhenjie.permission.notify.Notify;
import com.yanzhenjie.permission.notify.option.NotifyOption;
import com.yanzhenjie.permission.option.ActivityOption;
import com.yanzhenjie.permission.overlay.LRequestFactory;
import com.yanzhenjie.permission.overlay.MRequestFactory;
import com.yanzhenjie.permission.overlay.OverlayRequest;
import com.yanzhenjie.permission.runtime.Runtime;
import com.yanzhenjie.permission.runtime.option.ActivityRuntimeOption;
import com.yanzhenjie.permission.source.Source;

/* loaded from: classes.dex */
public class Boot implements ActivityOption {
    private static final InstallRequestFactory INSTALL_REQUEST_FACTORY;
    private static final OverlayRequestFactory OVERLAY_REQUEST_FACTORY;
    private Source mSource;

    public interface InstallRequestFactory {
        InstallRequest create(Source source);
    }

    public interface OverlayRequestFactory {
        OverlayRequest create(Source source);
    }

    static {
        if (Build.VERSION.SDK_INT >= 26) {
            INSTALL_REQUEST_FACTORY = new ORequestFactory();
        } else {
            INSTALL_REQUEST_FACTORY = new NRequestFactory();
        }
        if (Build.VERSION.SDK_INT >= 23) {
            OVERLAY_REQUEST_FACTORY = new MRequestFactory();
        } else {
            OVERLAY_REQUEST_FACTORY = new LRequestFactory();
        }
    }

    public Boot(Source source) {
        this.mSource = source;
    }

    @Override // com.yanzhenjie.permission.option.Option
    public ActivityRuntimeOption runtime() {
        return new Runtime(this.mSource);
    }

    @Override // com.yanzhenjie.permission.option.Option
    public InstallRequest install() {
        return INSTALL_REQUEST_FACTORY.create(this.mSource);
    }

    @Override // com.yanzhenjie.permission.option.Option
    public OverlayRequest overlay() {
        return OVERLAY_REQUEST_FACTORY.create(this.mSource);
    }

    @Override // com.yanzhenjie.permission.option.Option
    public NotifyOption notification() {
        return new Notify(this.mSource);
    }
}
