package com.allenliu.versionchecklib.callback;

import java.io.File;

/* loaded from: classes.dex */
public interface APKDownloadListener {
    void onDownloadFail();

    void onDownloadSuccess(File file);

    void onDownloading(int i);
}
