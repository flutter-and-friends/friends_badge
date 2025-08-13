package com.yuyh.library.imgsel.common;

import android.content.Context;
import android.widget.ImageView;
import java.io.Serializable;

/* loaded from: classes2.dex */
public interface ImageLoader extends Serializable {
    void displayImage(Context context, String str, ImageView imageView);
}
