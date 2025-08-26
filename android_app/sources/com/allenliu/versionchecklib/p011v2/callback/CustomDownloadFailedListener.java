package com.allenliu.versionchecklib.p011v2.callback;

import android.app.Dialog;
import android.content.Context;
import com.allenliu.versionchecklib.p011v2.builder.UIData;

/* loaded from: classes.dex */
public interface CustomDownloadFailedListener {
    Dialog getCustomDownloadFailed(Context context, UIData uIData);
}
