package net.lucode.hackware.magicindicator.buildins;

import android.content.Context;

/* loaded from: classes2.dex */
public final class UIUtil {
    public static int dip2px(Context context, double d) {
        return (int) ((d * context.getResources().getDisplayMetrics().density) + 0.5d);
    }

    public static int getScreenWidth(Context context) {
        return context.getResources().getDisplayMetrics().widthPixels;
    }
}
