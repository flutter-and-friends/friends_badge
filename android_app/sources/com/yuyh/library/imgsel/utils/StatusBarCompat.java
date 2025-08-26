package com.yuyh.library.imgsel.utils;

import android.R;
import android.app.Activity;
import android.content.Context;
import android.device.scanner.configuration.PropertyID;
import android.os.Build;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.content.ContextCompat;
import com.yuyh.library.imgsel.C1457R;

/* loaded from: classes2.dex */
public class StatusBarCompat {
    public static View compat(Activity activity, int i, boolean z) {
        int color = ContextCompat.getColor(activity, C1457R.color.colorPrimary);
        if (color == i) {
            compatTransStatusBar(activity, 0, z);
        } else {
            compatTransStatusBar(activity, i, z);
        }
        if (Build.VERSION.SDK_INT < 19) {
            return null;
        }
        ViewGroup viewGroup = (ViewGroup) activity.findViewById(R.id.content);
        View childAt = viewGroup.getChildAt(0);
        if (childAt != null && childAt.getMeasuredHeight() == getStatusBarHeight(activity)) {
            childAt.setBackgroundColor(i);
            return childAt;
        }
        View view = new View(activity);
        ViewGroup.LayoutParams layoutParams = new ViewGroup.LayoutParams(-1, getStatusBarHeight(activity));
        view.setBackgroundColor(color);
        viewGroup.addView(view, layoutParams);
        return view;
    }

    public static void compatTransStatusBar(Activity activity, int i, boolean z) {
        if (Build.VERSION.SDK_INT >= 19) {
            activity.getWindow().getDecorView().setSystemUiVisibility(z ? 9216 : PropertyID.UPCA_ENABLE);
            if (Build.VERSION.SDK_INT >= 21) {
                if (AndroidRomUtil.isEMUI()) {
                    activity.getWindow().addFlags(67108864);
                } else {
                    activity.getWindow().addFlags(Integer.MIN_VALUE);
                }
                activity.getWindow().setStatusBarColor(i);
                return;
            }
            activity.getWindow().addFlags(67108864);
        }
    }

    public static int getStatusBarHeight(Context context) {
        int identifier = context.getResources().getIdentifier("status_bar_height", "dimen", "android");
        if (identifier > 0) {
            return context.getResources().getDimensionPixelSize(identifier);
        }
        return 0;
    }
}
