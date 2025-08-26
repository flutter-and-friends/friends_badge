package com.blankj.utilcode.util;

import android.content.res.Resources;
import android.util.DisplayMetrics;
import android.util.Log;
import java.lang.reflect.Field;

/* loaded from: classes.dex */
public final class AdaptScreenUtils {
    private static boolean isInitMiui = false;
    private static Field mTmpMetricsField;

    public static Resources adaptWidth(Resources resources, int i) {
        float f = (r0.widthPixels * 72.0f) / i;
        getDisplayMetrics(resources).xdpi = f;
        setAppDmXdpi(f);
        return resources;
    }

    public static Resources adaptHeight(Resources resources, int i) {
        float f = (r0.heightPixels * 72.0f) / i;
        getDisplayMetrics(resources).xdpi = f;
        setAppDmXdpi(f);
        return resources;
    }

    public static Resources closeAdapt(Resources resources) {
        DisplayMetrics displayMetrics = getDisplayMetrics(resources);
        float f = displayMetrics.density * 72.0f;
        displayMetrics.xdpi = f;
        setAppDmXdpi(f);
        return resources;
    }

    public static int pt2Px(float f) {
        return (int) (((f * Utils.getApp().getResources().getDisplayMetrics().xdpi) / 72.0f) + 0.5d);
    }

    public static int px2Pt(float f) {
        return (int) (((f * 72.0f) / Utils.getApp().getResources().getDisplayMetrics().xdpi) + 0.5d);
    }

    private static void setAppDmXdpi(float f) {
        Utils.getApp().getResources().getDisplayMetrics().xdpi = f;
    }

    private static DisplayMetrics getDisplayMetrics(Resources resources) {
        DisplayMetrics miuiTmpMetrics = getMiuiTmpMetrics(resources);
        return miuiTmpMetrics == null ? resources.getDisplayMetrics() : miuiTmpMetrics;
    }

    private static DisplayMetrics getMiuiTmpMetrics(Resources resources) {
        DisplayMetrics displayMetrics;
        if (!isInitMiui) {
            String simpleName = resources.getClass().getSimpleName();
            if ("MiuiResources".equals(simpleName) || "XResources".equals(simpleName)) {
                try {
                    mTmpMetricsField = Resources.class.getDeclaredField("mTmpMetrics");
                    mTmpMetricsField.setAccessible(true);
                    displayMetrics = (DisplayMetrics) mTmpMetricsField.get(resources);
                } catch (Exception unused) {
                    Log.e("AdaptScreenUtils", "no field of mTmpMetrics in resources.");
                }
            } else {
                displayMetrics = null;
            }
            isInitMiui = true;
            return displayMetrics;
        }
        Field field = mTmpMetricsField;
        if (field == null) {
            return null;
        }
        try {
            return (DisplayMetrics) field.get(resources);
        } catch (Exception unused2) {
            return null;
        }
    }
}
