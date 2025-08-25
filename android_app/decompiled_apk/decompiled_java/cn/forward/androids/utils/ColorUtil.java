package cn.forward.androids.utils;

import android.graphics.Color;

/* loaded from: classes.dex */
public class ColorUtil {
    public static int computeGradientColor(int i, int i2, float f) {
        if (f < 0.0f) {
            f = 0.0f;
        }
        if (f > 1.0f) {
            f = 1.0f;
        }
        return Color.argb(Math.round(Color.alpha(i) + ((Color.alpha(i2) - Color.alpha(i)) * f)), Math.round(Color.red(i) + ((Color.red(i2) - Color.red(i)) * f)), Math.round(Color.green(i) + ((Color.green(i2) - Color.green(i)) * f)), Math.round(Color.blue(i) + ((Color.blue(i2) - Color.blue(i)) * f)));
    }
}
