package com.yuyh.library.imgsel.common;

import java.io.File;
import java.io.Serializable;

/* loaded from: classes2.dex */
public interface Callback extends Serializable {
    void onCameraShot(File file);

    void onImageSelected(String str);

    void onImageUnselected(String str);

    void onPreviewChanged(int i, int i2, boolean z);

    void onSingleImageSelected(String str);
}
