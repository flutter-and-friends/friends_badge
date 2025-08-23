package cn.highlight.tx.listener;

import java.io.File;

/* loaded from: classes.dex */
public interface OnOpenSerialPortListener {

    public enum Status {
        NO_READ_WRITE_PERMISSION,
        OPEN_FAIL
    }

    void onFail(File file, Status status);

    void onSuccess(File file);
}
