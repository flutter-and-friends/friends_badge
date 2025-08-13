package me.shaohui.advancedluban;

import java.io.File;
import java.util.List;

/* loaded from: classes2.dex */
public interface OnMultiCompressListener {
    void onError(Throwable th);

    void onStart();

    void onSuccess(List<File> list);
}
