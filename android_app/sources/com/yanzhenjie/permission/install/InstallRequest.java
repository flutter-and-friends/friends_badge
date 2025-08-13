package com.yanzhenjie.permission.install;

import com.yanzhenjie.permission.Action;
import com.yanzhenjie.permission.Rationale;
import java.io.File;

/* loaded from: classes.dex */
public interface InstallRequest {
    InstallRequest file(File file);

    InstallRequest onDenied(Action<File> action);

    InstallRequest onGranted(Action<File> action);

    InstallRequest rationale(Rationale<File> rationale);

    void start();
}
