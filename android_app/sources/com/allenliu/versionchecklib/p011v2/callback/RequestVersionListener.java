package com.allenliu.versionchecklib.p011v2.callback;

import com.allenliu.versionchecklib.p011v2.builder.UIData;

/* loaded from: classes.dex */
public interface RequestVersionListener {
    void onRequestVersionFailure(String str);

    UIData onRequestVersionSuccess(String str);
}
