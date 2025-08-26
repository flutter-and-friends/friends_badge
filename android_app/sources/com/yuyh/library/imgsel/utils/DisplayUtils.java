package com.yuyh.library.imgsel.utils;

import android.content.Context;

/* loaded from: classes2.dex */
public class DisplayUtils {
    public static int dip2px(Context context, float f) {
        return (int) ((f * context.getResources().getDisplayMetrics().density) + 0.5f);
    }
}
