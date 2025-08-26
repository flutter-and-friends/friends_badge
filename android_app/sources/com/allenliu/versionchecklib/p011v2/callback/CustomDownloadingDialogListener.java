package com.allenliu.versionchecklib.p011v2.callback;

import android.app.Dialog;
import android.content.Context;
import com.allenliu.versionchecklib.p011v2.builder.UIData;

/* loaded from: classes.dex */
public interface CustomDownloadingDialogListener {
    Dialog getCustomDownloadingDialog(Context context, int i, UIData uIData);

    void updateUI(Dialog dialog, int i, UIData uIData);
}
