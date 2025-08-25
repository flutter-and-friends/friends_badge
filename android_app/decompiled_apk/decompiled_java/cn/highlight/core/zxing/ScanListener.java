package cn.highlight.core.zxing;

import android.os.Bundle;

/* loaded from: classes.dex */
public interface ScanListener {
    void scanError(Exception exc);

    void scanResult(Result result, Bundle bundle);
}
