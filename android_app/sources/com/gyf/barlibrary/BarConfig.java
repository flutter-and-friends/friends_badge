package com.gyf.barlibrary;

import android.R;
import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.os.Build;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.Display;

/* loaded from: classes.dex */
class BarConfig {
    private static final String NAV_BAR_HEIGHT_LANDSCAPE_RES_NAME = "navigation_bar_height_landscape";
    private static final String NAV_BAR_HEIGHT_RES_NAME = "navigation_bar_height";
    private static final String NAV_BAR_WIDTH_RES_NAME = "navigation_bar_width";
    private static final String STATUS_BAR_HEIGHT_RES_NAME = "status_bar_height";
    private final int mActionBarHeight;
    private final boolean mHasNavigationBar;
    private final boolean mInPortrait;
    private final int mNavigationBarHeight;
    private final int mNavigationBarWidth;
    private final float mSmallestWidthDp;
    private final int mStatusBarHeight;

    public BarConfig(Activity activity) {
        Resources resources = activity.getResources();
        this.mInPortrait = resources.getConfiguration().orientation == 1;
        this.mSmallestWidthDp = getSmallestWidthDp(activity);
        this.mStatusBarHeight = getInternalDimensionSize(resources, STATUS_BAR_HEIGHT_RES_NAME);
        this.mActionBarHeight = getActionBarHeight(activity);
        this.mNavigationBarHeight = getNavigationBarHeight(activity);
        this.mNavigationBarWidth = getNavigationBarWidth(activity);
        this.mHasNavigationBar = this.mNavigationBarHeight > 0;
    }

    private int getActionBarHeight(Context context) {
        if (Build.VERSION.SDK_INT < 14) {
            return 0;
        }
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(R.attr.actionBarSize, typedValue, true);
        return TypedValue.complexToDimensionPixelSize(typedValue.data, context.getResources().getDisplayMetrics());
    }

    private int getNavigationBarHeight(Context context) {
        Resources resources = context.getResources();
        if (Build.VERSION.SDK_INT < 14 || !hasNavBar((Activity) context)) {
            return 0;
        }
        return getInternalDimensionSize(resources, this.mInPortrait ? NAV_BAR_HEIGHT_RES_NAME : NAV_BAR_HEIGHT_LANDSCAPE_RES_NAME);
    }

    private int getNavigationBarWidth(Context context) {
        Resources resources = context.getResources();
        if (Build.VERSION.SDK_INT < 14 || !hasNavBar((Activity) context)) {
            return 0;
        }
        return getInternalDimensionSize(resources, NAV_BAR_WIDTH_RES_NAME);
    }

    private static boolean hasNavBar(Activity activity) {
        Display defaultDisplay = activity.getWindowManager().getDefaultDisplay();
        DisplayMetrics displayMetrics = new DisplayMetrics();
        if (Build.VERSION.SDK_INT >= 17) {
            defaultDisplay.getRealMetrics(displayMetrics);
        }
        int i = displayMetrics.heightPixels;
        int i2 = displayMetrics.widthPixels;
        DisplayMetrics displayMetrics2 = new DisplayMetrics();
        defaultDisplay.getMetrics(displayMetrics2);
        return i2 - displayMetrics2.widthPixels > 0 || i - displayMetrics2.heightPixels > 0;
    }

    private int getInternalDimensionSize(Resources resources, String str) throws IllegalAccessException, InstantiationException, ClassNotFoundException, NumberFormatException {
        try {
            Class<?> cls = Class.forName("com.android.internal.R$dimen");
            int i = Integer.parseInt(cls.getField(str).get(cls.newInstance()).toString());
            if (i > 0) {
                return resources.getDimensionPixelSize(i);
            }
            return 0;
        } catch (Exception e) {
            e.printStackTrace();
            return 0;
        }
    }

    private float getSmallestWidthDp(Activity activity) {
        DisplayMetrics displayMetrics = new DisplayMetrics();
        if (Build.VERSION.SDK_INT >= 16) {
            activity.getWindowManager().getDefaultDisplay().getRealMetrics(displayMetrics);
        } else {
            activity.getWindowManager().getDefaultDisplay().getMetrics(displayMetrics);
        }
        return Math.min(displayMetrics.widthPixels / displayMetrics.density, displayMetrics.heightPixels / displayMetrics.density);
    }

    public boolean isNavigationAtBottom() {
        return this.mSmallestWidthDp >= 600.0f || this.mInPortrait;
    }

    public int getStatusBarHeight() {
        return this.mStatusBarHeight;
    }

    public int getActionBarHeight() {
        return this.mActionBarHeight;
    }

    public boolean hasNavigtionBar() {
        return this.mHasNavigationBar;
    }

    public int getNavigationBarHeight() {
        return this.mNavigationBarHeight;
    }

    public int getNavigationBarWidth() {
        return this.mNavigationBarWidth;
    }
}
