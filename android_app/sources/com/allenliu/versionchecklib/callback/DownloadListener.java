package com.allenliu.versionchecklib.callback;

import java.io.File;

/* loaded from: classes.dex */
public interface DownloadListener {
    void onCheckerDownloadFail();

    void onCheckerDownloadSuccess(File file);

    void onCheckerDownloading(int i);

    void onCheckerStartDownload();
}
