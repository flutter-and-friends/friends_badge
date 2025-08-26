package top.zibin.luban;

import java.io.File;

/* loaded from: classes2.dex */
public interface OnCompressListener {
    void onError(Throwable th);

    void onStart();

    void onSuccess(File file);
}
