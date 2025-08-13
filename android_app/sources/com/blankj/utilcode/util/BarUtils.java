package com.blankj.utilcode.util;

import android.R;
import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.Resources;
import android.device.scanner.configuration.PropertyID;
import android.graphics.Point;
import android.os.Build;
import android.util.Log;
import android.util.TypedValue;
import android.view.Display;
import android.view.KeyCharacterMap;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import androidx.drawerlayout.widget.DrawerLayout;
import java.lang.reflect.InvocationTargetException;

/* loaded from: classes.dex */
public final class BarUtils {
    private static final int KEY_OFFSET = -123;
    private static final String TAG_OFFSET = "TAG_OFFSET";
    private static final String TAG_STATUS_BAR = "TAG_STATUS_BAR";

    private BarUtils() {
        throw new UnsupportedOperationException("u can't instantiate me...");
    }

    public static int getStatusBarHeight() {
        Resources system = Resources.getSystem();
        return system.getDimensionPixelSize(system.getIdentifier("status_bar_height", "dimen", "android"));
    }

    public static void setStatusBarVisibility(Activity activity, boolean z) {
        if (activity == null) {
            throw new NullPointerException("Argument 'activity' of type Activity (#0 out of 2, zero-based) is marked by @android.support.annotation.NonNull but got null for it");
        }
        setStatusBarVisibility(activity.getWindow(), z);
    }

    public static void setStatusBarVisibility(Window window, boolean z) {
        if (window == null) {
            throw new NullPointerException("Argument 'window' of type Window (#0 out of 2, zero-based) is marked by @android.support.annotation.NonNull but got null for it");
        }
        if (z) {
            window.clearFlags(1024);
            showStatusBarView(window);
            addMarginTopEqualStatusBarHeight(window);
        } else {
            window.addFlags(1024);
            hideStatusBarView(window);
            subtractMarginTopEqualStatusBarHeight(window);
        }
    }

    public static boolean isStatusBarVisible(Activity activity) {
        if (activity != null) {
            return (activity.getWindow().getAttributes().flags & 1024) == 0;
        }
        throw new NullPointerException("Argument 'activity' of type Activity (#0 out of 1, zero-based) is marked by @android.support.annotation.NonNull but got null for it");
    }

    public static void setStatusBarLightMode(Activity activity, boolean z) {
        if (activity == null) {
            throw new NullPointerException("Argument 'activity' of type Activity (#0 out of 2, zero-based) is marked by @android.support.annotation.NonNull but got null for it");
        }
        setStatusBarLightMode(activity.getWindow(), z);
    }

    public static void setStatusBarLightMode(Window window, boolean z) {
        View decorView;
        if (window == null) {
            throw new NullPointerException("Argument 'window' of type Window (#0 out of 2, zero-based) is marked by @android.support.annotation.NonNull but got null for it");
        }
        if (Build.VERSION.SDK_INT < 23 || (decorView = window.getDecorView()) == null) {
            return;
        }
        int systemUiVisibility = decorView.getSystemUiVisibility();
        decorView.setSystemUiVisibility(z ? systemUiVisibility | 8192 : systemUiVisibility & (-8193));
    }

    public static boolean isStatusBarLightMode(Activity activity) {
        if (activity == null) {
            throw new NullPointerException("Argument 'activity' of type Activity (#0 out of 1, zero-based) is marked by @android.support.annotation.NonNull but got null for it");
        }
        return isStatusBarLightMode(activity.getWindow());
    }

    public static boolean isStatusBarLightMode(Window window) {
        View decorView;
        if (window != null) {
            return (Build.VERSION.SDK_INT < 23 || (decorView = window.getDecorView()) == null || (decorView.getSystemUiVisibility() & 8192) == 0) ? false : true;
        }
        throw new NullPointerException("Argument 'window' of type Window (#0 out of 1, zero-based) is marked by @android.support.annotation.NonNull but got null for it");
    }

    public static void addMarginTopEqualStatusBarHeight(View view) {
        if (view == null) {
            throw new NullPointerException("Argument 'view' of type View (#0 out of 1, zero-based) is marked by @android.support.annotation.NonNull but got null for it");
        }
        if (Build.VERSION.SDK_INT < 19) {
            return;
        }
        view.setTag(TAG_OFFSET);
        Object tag = view.getTag(KEY_OFFSET);
        if (tag == null || !((Boolean) tag).booleanValue()) {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
            marginLayoutParams.setMargins(marginLayoutParams.leftMargin, marginLayoutParams.topMargin + getStatusBarHeight(), marginLayoutParams.rightMargin, marginLayoutParams.bottomMargin);
            view.setTag(KEY_OFFSET, true);
        }
    }

    public static void subtractMarginTopEqualStatusBarHeight(View view) {
        Object tag;
        if (view == null) {
            throw new NullPointerException("Argument 'view' of type View (#0 out of 1, zero-based) is marked by @android.support.annotation.NonNull but got null for it");
        }
        if (Build.VERSION.SDK_INT >= 19 && (tag = view.getTag(KEY_OFFSET)) != null && ((Boolean) tag).booleanValue()) {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
            marginLayoutParams.setMargins(marginLayoutParams.leftMargin, marginLayoutParams.topMargin - getStatusBarHeight(), marginLayoutParams.rightMargin, marginLayoutParams.bottomMargin);
            view.setTag(KEY_OFFSET, false);
        }
    }

    private static void addMarginTopEqualStatusBarHeight(Window window) {
        View viewFindViewWithTag;
        if (Build.VERSION.SDK_INT >= 19 && (viewFindViewWithTag = window.getDecorView().findViewWithTag(TAG_OFFSET)) != null) {
            addMarginTopEqualStatusBarHeight(viewFindViewWithTag);
        }
    }

    private static void subtractMarginTopEqualStatusBarHeight(Window window) {
        View viewFindViewWithTag;
        if (Build.VERSION.SDK_INT >= 19 && (viewFindViewWithTag = window.getDecorView().findViewWithTag(TAG_OFFSET)) != null) {
            subtractMarginTopEqualStatusBarHeight(viewFindViewWithTag);
        }
    }

    public static View setStatusBarColor(Activity activity, int i) {
        if (activity == null) {
            throw new NullPointerException("Argument 'activity' of type Activity (#0 out of 2, zero-based) is marked by @android.support.annotation.NonNull but got null for it");
        }
        return setStatusBarColor(activity, i, false);
    }

    public static View setStatusBarColor(Activity activity, int i, boolean z) {
        if (activity == null) {
            throw new NullPointerException("Argument 'activity' of type Activity (#0 out of 3, zero-based) is marked by @android.support.annotation.NonNull but got null for it");
        }
        if (Build.VERSION.SDK_INT < 19) {
            return null;
        }
        transparentStatusBar(activity);
        return applyStatusBarColor(activity, i, z);
    }

    public static void setStatusBarColor(View view, int i) {
        Activity activityByView;
        if (view == null) {
            throw new NullPointerException("Argument 'fakeStatusBar' of type View (#0 out of 2, zero-based) is marked by @android.support.annotation.NonNull but got null for it");
        }
        if (Build.VERSION.SDK_INT >= 19 && (activityByView = getActivityByView(view)) != null) {
            transparentStatusBar(activityByView);
            view.setVisibility(0);
            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            layoutParams.width = -1;
            layoutParams.height = getStatusBarHeight();
            view.setBackgroundColor(i);
        }
    }

    public static void setStatusBarCustom(View view) {
        Activity activityByView;
        if (view == null) {
            throw new NullPointerException("Argument 'fakeStatusBar' of type View (#0 out of 1, zero-based) is marked by @android.support.annotation.NonNull but got null for it");
        }
        if (Build.VERSION.SDK_INT >= 19 && (activityByView = getActivityByView(view)) != null) {
            transparentStatusBar(activityByView);
            view.setVisibility(0);
            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            if (layoutParams == null) {
                view.setLayoutParams(new ViewGroup.LayoutParams(-1, getStatusBarHeight()));
            } else {
                layoutParams.width = -1;
                layoutParams.height = getStatusBarHeight();
            }
        }
    }

    public static void setStatusBarColor4Drawer(DrawerLayout drawerLayout, View view, int i) {
        if (drawerLayout == null) {
            throw new NullPointerException("Argument 'drawer' of type DrawerLayout (#0 out of 3, zero-based) is marked by @android.support.annotation.NonNull but got null for it");
        }
        if (view == null) {
            throw new NullPointerException("Argument 'fakeStatusBar' of type View (#1 out of 3, zero-based) is marked by @android.support.annotation.NonNull but got null for it");
        }
        setStatusBarColor4Drawer(drawerLayout, view, i, false);
    }

    public static void setStatusBarColor4Drawer(DrawerLayout drawerLayout, View view, int i, boolean z) {
        Activity activityByView;
        if (drawerLayout == null) {
            throw new NullPointerException("Argument 'drawer' of type DrawerLayout (#0 out of 4, zero-based) is marked by @android.support.annotation.NonNull but got null for it");
        }
        if (view == null) {
            throw new NullPointerException("Argument 'fakeStatusBar' of type View (#1 out of 4, zero-based) is marked by @android.support.annotation.NonNull but got null for it");
        }
        if (Build.VERSION.SDK_INT >= 19 && (activityByView = getActivityByView(view)) != null) {
            transparentStatusBar(activityByView);
            drawerLayout.setFitsSystemWindows(false);
            setStatusBarColor(view, i);
            int childCount = drawerLayout.getChildCount();
            for (int i2 = 0; i2 < childCount; i2++) {
                drawerLayout.getChildAt(i2).setFitsSystemWindows(false);
            }
            if (z) {
                hideStatusBarView(activityByView);
            } else {
                setStatusBarColor(activityByView, i, false);
            }
        }
    }

    private static View applyStatusBarColor(Activity activity, int i, boolean z) {
        ViewGroup viewGroup;
        if (z) {
            viewGroup = (ViewGroup) activity.getWindow().getDecorView();
        } else {
            viewGroup = (ViewGroup) activity.findViewById(R.id.content);
        }
        View viewFindViewWithTag = viewGroup.findViewWithTag(TAG_STATUS_BAR);
        if (viewFindViewWithTag != null) {
            if (viewFindViewWithTag.getVisibility() == 8) {
                viewFindViewWithTag.setVisibility(0);
            }
            viewFindViewWithTag.setBackgroundColor(i);
            return viewFindViewWithTag;
        }
        View viewCreateStatusBarView = createStatusBarView(activity, i);
        viewGroup.addView(viewCreateStatusBarView);
        return viewCreateStatusBarView;
    }

    private static void hideStatusBarView(Activity activity) {
        hideStatusBarView(activity.getWindow());
    }

    private static void hideStatusBarView(Window window) {
        View viewFindViewWithTag = ((ViewGroup) window.getDecorView()).findViewWithTag(TAG_STATUS_BAR);
        if (viewFindViewWithTag == null) {
            return;
        }
        viewFindViewWithTag.setVisibility(8);
    }

    private static void showStatusBarView(Window window) {
        View viewFindViewWithTag = ((ViewGroup) window.getDecorView()).findViewWithTag(TAG_STATUS_BAR);
        if (viewFindViewWithTag == null) {
            return;
        }
        viewFindViewWithTag.setVisibility(0);
    }

    private static View createStatusBarView(Activity activity, int i) {
        View view = new View(activity);
        view.setLayoutParams(new ViewGroup.LayoutParams(-1, getStatusBarHeight()));
        view.setBackgroundColor(i);
        view.setTag(TAG_STATUS_BAR);
        return view;
    }

    private static void transparentStatusBar(Activity activity) {
        if (Build.VERSION.SDK_INT < 19) {
            return;
        }
        Window window = activity.getWindow();
        if (Build.VERSION.SDK_INT >= 21) {
            window.addFlags(Integer.MIN_VALUE);
            if (Build.VERSION.SDK_INT >= 23) {
                window.getDecorView().setSystemUiVisibility(1280 | (window.getDecorView().getSystemUiVisibility() & 8192));
            } else {
                window.getDecorView().setSystemUiVisibility(PropertyID.UPCA_ENABLE);
            }
            window.setStatusBarColor(0);
            return;
        }
        window.addFlags(67108864);
    }

    public static int getActionBarHeight() {
        TypedValue typedValue = new TypedValue();
        if (Utils.getApp().getTheme().resolveAttribute(R.attr.actionBarSize, typedValue, true)) {
            return TypedValue.complexToDimensionPixelSize(typedValue.data, Utils.getApp().getResources().getDisplayMetrics());
        }
        return 0;
    }

    public static void setNotificationBarVisibility(boolean z) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        String str;
        if (z) {
            str = Build.VERSION.SDK_INT <= 16 ? "expand" : "expandNotificationsPanel";
        } else {
            str = Build.VERSION.SDK_INT <= 16 ? "collapse" : "collapsePanels";
        }
        invokePanels(str);
    }

    private static void invokePanels(String str) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        try {
            Class.forName("android.app.StatusBarManager").getMethod(str, new Class[0]).invoke(Utils.getApp().getSystemService("statusbar"), new Object[0]);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static int getNavBarHeight() {
        Resources system = Resources.getSystem();
        int identifier = system.getIdentifier("navigation_bar_height", "dimen", "android");
        if (identifier != 0) {
            return system.getDimensionPixelSize(identifier);
        }
        return 0;
    }

    public static void setNavBarVisibility(Activity activity, boolean z) {
        if (activity == null) {
            throw new NullPointerException("Argument 'activity' of type Activity (#0 out of 2, zero-based) is marked by @android.support.annotation.NonNull but got null for it");
        }
        if (Build.VERSION.SDK_INT < 19) {
            return;
        }
        setNavBarVisibility(activity.getWindow(), z);
    }

    public static void setNavBarVisibility(Window window, boolean z) {
        if (window == null) {
            throw new NullPointerException("Argument 'window' of type Window (#0 out of 2, zero-based) is marked by @android.support.annotation.NonNull but got null for it");
        }
        if (Build.VERSION.SDK_INT < 19) {
            return;
        }
        ViewGroup viewGroup = (ViewGroup) window.getDecorView();
        int childCount = viewGroup.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = viewGroup.getChildAt(i);
            int id = childAt.getId();
            if (id != -1 && "navigationBarBackground".equals(Utils.getApp().getResources().getResourceEntryName(id))) {
                childAt.setVisibility(z ? 0 : 4);
            }
        }
        if (z) {
            viewGroup.setSystemUiVisibility(viewGroup.getSystemUiVisibility() & (-4611));
        } else {
            viewGroup.setSystemUiVisibility(viewGroup.getSystemUiVisibility() | 4610);
        }
    }

    public static boolean isNavBarVisible(Activity activity) {
        if (activity == null) {
            throw new NullPointerException("Argument 'activity' of type Activity (#0 out of 1, zero-based) is marked by @android.support.annotation.NonNull but got null for it");
        }
        return isNavBarVisible(activity.getWindow());
    }

    public static boolean isNavBarVisible(Window window) {
        boolean z;
        if (window == null) {
            throw new NullPointerException("Argument 'window' of type Window (#0 out of 1, zero-based) is marked by @android.support.annotation.NonNull but got null for it");
        }
        ViewGroup viewGroup = (ViewGroup) window.getDecorView();
        int childCount = viewGroup.getChildCount();
        int i = 0;
        while (true) {
            if (i >= childCount) {
                z = false;
                break;
            }
            View childAt = viewGroup.getChildAt(i);
            int id = childAt.getId();
            if (id != -1 && "navigationBarBackground".equals(Utils.getApp().getResources().getResourceEntryName(id)) && childAt.getVisibility() == 0) {
                z = true;
                break;
            }
            i++;
        }
        return z ? (viewGroup.getSystemUiVisibility() & 2) == 0 : z;
    }

    public static void setNavBarColor(Activity activity, int i) {
        if (activity == null) {
            throw new NullPointerException("Argument 'activity' of type Activity (#0 out of 2, zero-based) is marked by @android.support.annotation.NonNull but got null for it");
        }
        setNavBarColor(activity.getWindow(), i);
    }

    public static void setNavBarColor(Window window, int i) {
        if (window == null) {
            throw new NullPointerException("Argument 'window' of type Window (#0 out of 2, zero-based) is marked by @android.support.annotation.NonNull but got null for it");
        }
        window.setNavigationBarColor(i);
    }

    public static int getNavBarColor(Activity activity) {
        if (activity == null) {
            throw new NullPointerException("Argument 'activity' of type Activity (#0 out of 1, zero-based) is marked by @android.support.annotation.NonNull but got null for it");
        }
        return getNavBarColor(activity.getWindow());
    }

    public static int getNavBarColor(Window window) {
        if (window == null) {
            throw new NullPointerException("Argument 'window' of type Window (#0 out of 1, zero-based) is marked by @android.support.annotation.NonNull but got null for it");
        }
        return window.getNavigationBarColor();
    }

    public static boolean isSupportNavBar() {
        if (Build.VERSION.SDK_INT < 17) {
            return (ViewConfiguration.get(Utils.getApp()).hasPermanentMenuKey() || KeyCharacterMap.deviceHasKey(4)) ? false : true;
        }
        WindowManager windowManager = (WindowManager) Utils.getApp().getSystemService("window");
        if (windowManager == null) {
            return false;
        }
        Display defaultDisplay = windowManager.getDefaultDisplay();
        Point point = new Point();
        Point point2 = new Point();
        defaultDisplay.getSize(point);
        defaultDisplay.getRealSize(point2);
        return (point2.y == point.y && point2.x == point.x) ? false : true;
    }

    private static Activity getActivityByView(View view) {
        if (view == null) {
            throw new NullPointerException("Argument 'view' of type View (#0 out of 1, zero-based) is marked by @android.support.annotation.NonNull but got null for it");
        }
        for (Context context = view.getContext(); context instanceof ContextWrapper; context = ((ContextWrapper) context).getBaseContext()) {
            if (context instanceof Activity) {
                return (Activity) context;
            }
        }
        Log.e("BarUtils", "the view's Context is not an Activity.");
        return null;
    }
}
