package com.jaredrummler.materialspinner;

import android.content.Context;
import android.graphics.Color;
import android.graphics.drawable.Drawable;
import android.os.Build;

/* loaded from: classes.dex */
final class Utils {
    Utils() {
    }

    static int darker(int i, float f) {
        return Color.argb(Color.alpha(i), Math.max((int) (Color.red(i) * f), 0), Math.max((int) (Color.green(i) * f), 0), Math.max((int) (Color.blue(i) * f), 0));
    }

    static int lighter(int i, float f) {
        float f2 = 1.0f - f;
        return Color.argb(Color.alpha(i), (int) ((((Color.red(i) * f2) / 255.0f) + f) * 255.0f), (int) ((((Color.green(i) * f2) / 255.0f) + f) * 255.0f), (int) ((((Color.blue(i) * f2) / 255.0f) + f) * 255.0f));
    }

    static boolean isRtl(Context context) {
        return Build.VERSION.SDK_INT >= 17 && context.getResources().getConfiguration().getLayoutDirection() == 1;
    }

    static Drawable getDrawable(Context context, int i) {
        if (Build.VERSION.SDK_INT >= 21) {
            return context.getDrawable(i);
        }
        return context.getResources().getDrawable(i);
    }
}
