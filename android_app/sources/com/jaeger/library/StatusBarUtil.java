package com.jaeger.library;

import android.app.Activity;
import android.content.Context;
import android.device.scanner.configuration.PropertyID;
import android.graphics.Color;
import android.os.Build;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.LinearLayout;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.view.ViewCompat;
import androidx.drawerlayout.widget.DrawerLayout;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* loaded from: classes.dex */
public class StatusBarUtil {
    public static final int DEFAULT_STATUS_BAR_ALPHA = 112;
    private static final int FAKE_STATUS_BAR_VIEW_ID = C1252R.id.statusbarutil_fake_status_bar_view;
    private static final int FAKE_TRANSLUCENT_VIEW_ID = C1252R.id.statusbarutil_translucent_view;
    private static final int TAG_KEY_HAVE_SET_OFFSET = -123;

    private static int calculateStatusColor(int i, int i2) {
        if (i2 == 0) {
            return i;
        }
        float f = 1.0f - (i2 / 255.0f);
        return ((int) (((i & 255) * f) + 0.5d)) | (((int) ((((i >> 16) & 255) * f) + 0.5d)) << 16) | ViewCompat.MEASURED_STATE_MASK | (((int) ((((i >> 8) & 255) * f) + 0.5d)) << 8);
    }

    public static void setColor(Activity activity, int i) {
        setColor(activity, i, 112);
    }

    public static void setColor(Activity activity, int i, int i2) {
        if (Build.VERSION.SDK_INT >= 21) {
            activity.getWindow().addFlags(Integer.MIN_VALUE);
            activity.getWindow().clearFlags(67108864);
            activity.getWindow().setStatusBarColor(calculateStatusColor(i, i2));
        } else if (Build.VERSION.SDK_INT >= 19) {
            activity.getWindow().addFlags(67108864);
            ViewGroup viewGroup = (ViewGroup) activity.getWindow().getDecorView();
            View viewFindViewById = viewGroup.findViewById(FAKE_STATUS_BAR_VIEW_ID);
            if (viewFindViewById != null) {
                if (viewFindViewById.getVisibility() == 8) {
                    viewFindViewById.setVisibility(0);
                }
                viewFindViewById.setBackgroundColor(calculateStatusColor(i, i2));
            } else {
                viewGroup.addView(createStatusBarView(activity, i, i2));
            }
            setRootView(activity);
        }
    }

    public static void setColorForSwipeBack(Activity activity, int i) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        setColorForSwipeBack(activity, i, 112);
    }

    public static void setColorForSwipeBack(Activity activity, int i, int i2) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        if (Build.VERSION.SDK_INT >= 19) {
            ViewGroup viewGroup = (ViewGroup) activity.findViewById(android.R.id.content);
            View childAt = viewGroup.getChildAt(0);
            int statusBarHeight = getStatusBarHeight(activity);
            if (childAt != null && (childAt instanceof CoordinatorLayout)) {
                final CoordinatorLayout coordinatorLayout = (CoordinatorLayout) childAt;
                if (Build.VERSION.SDK_INT < 21) {
                    coordinatorLayout.setFitsSystemWindows(false);
                    viewGroup.setBackgroundColor(calculateStatusColor(i, i2));
                    if (viewGroup.getPaddingTop() < statusBarHeight) {
                        viewGroup.setPadding(0, statusBarHeight, 0, 0);
                        coordinatorLayout.post(new Runnable() { // from class: com.jaeger.library.StatusBarUtil.1
                            @Override // java.lang.Runnable
                            public void run() {
                                coordinatorLayout.requestLayout();
                            }
                        });
                    }
                } else {
                    coordinatorLayout.setStatusBarBackgroundColor(calculateStatusColor(i, i2));
                }
            } else {
                viewGroup.setPadding(0, statusBarHeight, 0, 0);
                viewGroup.setBackgroundColor(calculateStatusColor(i, i2));
            }
            setTransparentForWindow(activity);
        }
    }

    public static void setColorNoTranslucent(Activity activity, int i) {
        setColor(activity, i, 0);
    }

    @Deprecated
    public static void setColorDiff(Activity activity, int i) {
        if (Build.VERSION.SDK_INT < 19) {
            return;
        }
        transparentStatusBar(activity);
        ViewGroup viewGroup = (ViewGroup) activity.findViewById(android.R.id.content);
        View viewFindViewById = viewGroup.findViewById(FAKE_STATUS_BAR_VIEW_ID);
        if (viewFindViewById != null) {
            if (viewFindViewById.getVisibility() == 8) {
                viewFindViewById.setVisibility(0);
            }
            viewFindViewById.setBackgroundColor(i);
        } else {
            viewGroup.addView(createStatusBarView(activity, i));
        }
        setRootView(activity);
    }

    public static void setTranslucent(Activity activity) {
        setTranslucent(activity, 112);
    }

    public static void setTranslucent(Activity activity, int i) {
        if (Build.VERSION.SDK_INT < 19) {
            return;
        }
        setTransparent(activity);
        addTranslucentView(activity, i);
    }

    public static void setTranslucentForCoordinatorLayout(Activity activity, int i) {
        if (Build.VERSION.SDK_INT < 19) {
            return;
        }
        transparentStatusBar(activity);
        addTranslucentView(activity, i);
    }

    public static void setTransparent(Activity activity) {
        if (Build.VERSION.SDK_INT < 19) {
            return;
        }
        transparentStatusBar(activity);
        setRootView(activity);
    }

    @Deprecated
    public static void setTranslucentDiff(Activity activity) {
        if (Build.VERSION.SDK_INT >= 19) {
            activity.getWindow().addFlags(67108864);
            setRootView(activity);
        }
    }

    public static void setColorForDrawerLayout(Activity activity, DrawerLayout drawerLayout, int i) {
        setColorForDrawerLayout(activity, drawerLayout, i, 112);
    }

    public static void setColorNoTranslucentForDrawerLayout(Activity activity, DrawerLayout drawerLayout, int i) {
        setColorForDrawerLayout(activity, drawerLayout, i, 0);
    }

    public static void setColorForDrawerLayout(Activity activity, DrawerLayout drawerLayout, int i, int i2) {
        if (Build.VERSION.SDK_INT < 19) {
            return;
        }
        if (Build.VERSION.SDK_INT >= 21) {
            activity.getWindow().addFlags(Integer.MIN_VALUE);
            activity.getWindow().clearFlags(67108864);
            activity.getWindow().setStatusBarColor(0);
        } else {
            activity.getWindow().addFlags(67108864);
        }
        ViewGroup viewGroup = (ViewGroup) drawerLayout.getChildAt(0);
        View viewFindViewById = viewGroup.findViewById(FAKE_STATUS_BAR_VIEW_ID);
        if (viewFindViewById != null) {
            if (viewFindViewById.getVisibility() == 8) {
                viewFindViewById.setVisibility(0);
            }
            viewFindViewById.setBackgroundColor(i);
        } else {
            viewGroup.addView(createStatusBarView(activity, i), 0);
        }
        if (!(viewGroup instanceof LinearLayout) && viewGroup.getChildAt(1) != null) {
            viewGroup.getChildAt(1).setPadding(viewGroup.getPaddingLeft(), getStatusBarHeight(activity) + viewGroup.getPaddingTop(), viewGroup.getPaddingRight(), viewGroup.getPaddingBottom());
        }
        setDrawerLayoutProperty(drawerLayout, viewGroup);
        addTranslucentView(activity, i2);
    }

    private static void setDrawerLayoutProperty(DrawerLayout drawerLayout, ViewGroup viewGroup) {
        ViewGroup viewGroup2 = (ViewGroup) drawerLayout.getChildAt(1);
        drawerLayout.setFitsSystemWindows(false);
        viewGroup.setFitsSystemWindows(false);
        viewGroup.setClipToPadding(true);
        viewGroup2.setFitsSystemWindows(false);
    }

    @Deprecated
    public static void setColorForDrawerLayoutDiff(Activity activity, DrawerLayout drawerLayout, int i) {
        if (Build.VERSION.SDK_INT >= 19) {
            activity.getWindow().addFlags(67108864);
            ViewGroup viewGroup = (ViewGroup) drawerLayout.getChildAt(0);
            View viewFindViewById = viewGroup.findViewById(FAKE_STATUS_BAR_VIEW_ID);
            if (viewFindViewById != null) {
                if (viewFindViewById.getVisibility() == 8) {
                    viewFindViewById.setVisibility(0);
                }
                viewFindViewById.setBackgroundColor(calculateStatusColor(i, 112));
            } else {
                viewGroup.addView(createStatusBarView(activity, i), 0);
            }
            if (!(viewGroup instanceof LinearLayout) && viewGroup.getChildAt(1) != null) {
                viewGroup.getChildAt(1).setPadding(0, getStatusBarHeight(activity), 0, 0);
            }
            setDrawerLayoutProperty(drawerLayout, viewGroup);
        }
    }

    public static void setTranslucentForDrawerLayout(Activity activity, DrawerLayout drawerLayout) {
        setTranslucentForDrawerLayout(activity, drawerLayout, 112);
    }

    public static void setTranslucentForDrawerLayout(Activity activity, DrawerLayout drawerLayout, int i) {
        if (Build.VERSION.SDK_INT < 19) {
            return;
        }
        setTransparentForDrawerLayout(activity, drawerLayout);
        addTranslucentView(activity, i);
    }

    public static void setTransparentForDrawerLayout(Activity activity, DrawerLayout drawerLayout) {
        if (Build.VERSION.SDK_INT < 19) {
            return;
        }
        if (Build.VERSION.SDK_INT >= 21) {
            activity.getWindow().addFlags(Integer.MIN_VALUE);
            activity.getWindow().clearFlags(67108864);
            activity.getWindow().setStatusBarColor(0);
        } else {
            activity.getWindow().addFlags(67108864);
        }
        ViewGroup viewGroup = (ViewGroup) drawerLayout.getChildAt(0);
        if (!(viewGroup instanceof LinearLayout) && viewGroup.getChildAt(1) != null) {
            viewGroup.getChildAt(1).setPadding(0, getStatusBarHeight(activity), 0, 0);
        }
        setDrawerLayoutProperty(drawerLayout, viewGroup);
    }

    @Deprecated
    public static void setTranslucentForDrawerLayoutDiff(Activity activity, DrawerLayout drawerLayout) {
        if (Build.VERSION.SDK_INT >= 19) {
            activity.getWindow().addFlags(67108864);
            ViewGroup viewGroup = (ViewGroup) drawerLayout.getChildAt(0);
            viewGroup.setFitsSystemWindows(true);
            viewGroup.setClipToPadding(true);
            ((ViewGroup) drawerLayout.getChildAt(1)).setFitsSystemWindows(false);
            drawerLayout.setFitsSystemWindows(false);
        }
    }

    public static void setTransparentForImageView(Activity activity, View view) {
        setTranslucentForImageView(activity, 0, view);
    }

    public static void setTranslucentForImageView(Activity activity, View view) {
        setTranslucentForImageView(activity, 112, view);
    }

    public static void setTranslucentForImageView(Activity activity, int i, View view) {
        if (Build.VERSION.SDK_INT < 19) {
            return;
        }
        setTransparentForWindow(activity);
        addTranslucentView(activity, i);
        if (view != null) {
            Object tag = view.getTag(TAG_KEY_HAVE_SET_OFFSET);
            if (tag == null || !((Boolean) tag).booleanValue()) {
                ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
                marginLayoutParams.setMargins(marginLayoutParams.leftMargin, marginLayoutParams.topMargin + getStatusBarHeight(activity), marginLayoutParams.rightMargin, marginLayoutParams.bottomMargin);
                view.setTag(TAG_KEY_HAVE_SET_OFFSET, true);
            }
        }
    }

    public static void setTranslucentForImageViewInFragment(Activity activity, View view) {
        setTranslucentForImageViewInFragment(activity, 112, view);
    }

    public static void setTransparentForImageViewInFragment(Activity activity, View view) {
        setTranslucentForImageViewInFragment(activity, 0, view);
    }

    public static void setTranslucentForImageViewInFragment(Activity activity, int i, View view) {
        setTranslucentForImageView(activity, i, view);
        if (Build.VERSION.SDK_INT < 19 || Build.VERSION.SDK_INT >= 21) {
            return;
        }
        clearPreviousSetting(activity);
    }

    public static void hideFakeStatusBarView(Activity activity) {
        ViewGroup viewGroup = (ViewGroup) activity.getWindow().getDecorView();
        View viewFindViewById = viewGroup.findViewById(FAKE_STATUS_BAR_VIEW_ID);
        if (viewFindViewById != null) {
            viewFindViewById.setVisibility(8);
        }
        View viewFindViewById2 = viewGroup.findViewById(FAKE_TRANSLUCENT_VIEW_ID);
        if (viewFindViewById2 != null) {
            viewFindViewById2.setVisibility(8);
        }
    }

    public static void setLightMode(Activity activity) throws IllegalAccessException, NoSuchFieldException, NoSuchMethodException, ClassNotFoundException, SecurityException, IllegalArgumentException, InvocationTargetException {
        setMIUIStatusBarDarkIcon(activity, true);
        setMeizuStatusBarDarkIcon(activity, true);
        if (Build.VERSION.SDK_INT >= 23) {
            activity.getWindow().getDecorView().setSystemUiVisibility(9216);
        }
    }

    public static void setDarkMode(Activity activity) throws IllegalAccessException, NoSuchFieldException, NoSuchMethodException, ClassNotFoundException, SecurityException, IllegalArgumentException, InvocationTargetException {
        setMIUIStatusBarDarkIcon(activity, false);
        setMeizuStatusBarDarkIcon(activity, false);
        if (Build.VERSION.SDK_INT >= 23) {
            activity.getWindow().getDecorView().setSystemUiVisibility(1024);
        }
    }

    private static void setMIUIStatusBarDarkIcon(Activity activity, boolean z) throws IllegalAccessException, NoSuchMethodException, ClassNotFoundException, SecurityException, IllegalArgumentException, InvocationTargetException {
        Class<?> cls = activity.getWindow().getClass();
        try {
            Class<?> cls2 = Class.forName("android.view.MiuiWindowManager$LayoutParams");
            int i = cls2.getField("EXTRA_FLAG_STATUS_BAR_DARK_MODE").getInt(cls2);
            Method method = cls.getMethod("setExtraFlags", Integer.TYPE, Integer.TYPE);
            Window window = activity.getWindow();
            Object[] objArr = new Object[2];
            objArr[0] = Integer.valueOf(z ? i : 0);
            objArr[1] = Integer.valueOf(i);
            method.invoke(window, objArr);
        } catch (Exception unused) {
        }
    }

    private static void setMeizuStatusBarDarkIcon(Activity activity, boolean z) throws IllegalAccessException, NoSuchFieldException, IllegalArgumentException {
        try {
            WindowManager.LayoutParams attributes = activity.getWindow().getAttributes();
            Field declaredField = WindowManager.LayoutParams.class.getDeclaredField("MEIZU_FLAG_DARK_STATUS_BAR_ICON");
            Field declaredField2 = WindowManager.LayoutParams.class.getDeclaredField("meizuFlags");
            declaredField.setAccessible(true);
            declaredField2.setAccessible(true);
            int i = declaredField.getInt(null);
            int i2 = declaredField2.getInt(attributes);
            declaredField2.setInt(attributes, z ? i2 | i : (~i) & i2);
            activity.getWindow().setAttributes(attributes);
        } catch (Exception unused) {
        }
    }

    private static void clearPreviousSetting(Activity activity) {
        ViewGroup viewGroup = (ViewGroup) activity.getWindow().getDecorView();
        View viewFindViewById = viewGroup.findViewById(FAKE_STATUS_BAR_VIEW_ID);
        if (viewFindViewById != null) {
            viewGroup.removeView(viewFindViewById);
            ((ViewGroup) ((ViewGroup) activity.findViewById(android.R.id.content)).getChildAt(0)).setPadding(0, 0, 0, 0);
        }
    }

    private static void addTranslucentView(Activity activity, int i) {
        ViewGroup viewGroup = (ViewGroup) activity.findViewById(android.R.id.content);
        View viewFindViewById = viewGroup.findViewById(FAKE_TRANSLUCENT_VIEW_ID);
        if (viewFindViewById != null) {
            if (viewFindViewById.getVisibility() == 8) {
                viewFindViewById.setVisibility(0);
            }
            viewFindViewById.setBackgroundColor(Color.argb(i, 0, 0, 0));
            return;
        }
        viewGroup.addView(createTranslucentStatusBarView(activity, i));
    }

    private static View createStatusBarView(Activity activity, int i) {
        return createStatusBarView(activity, i, 0);
    }

    private static View createStatusBarView(Activity activity, int i, int i2) {
        View view = new View(activity);
        view.setLayoutParams(new LinearLayout.LayoutParams(-1, getStatusBarHeight(activity)));
        view.setBackgroundColor(calculateStatusColor(i, i2));
        view.setId(FAKE_STATUS_BAR_VIEW_ID);
        return view;
    }

    private static void setRootView(Activity activity) {
        ViewGroup viewGroup = (ViewGroup) activity.findViewById(android.R.id.content);
        int childCount = viewGroup.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = viewGroup.getChildAt(i);
            if (childAt instanceof ViewGroup) {
                childAt.setFitsSystemWindows(true);
                ((ViewGroup) childAt).setClipToPadding(true);
            }
        }
    }

    private static void setTransparentForWindow(Activity activity) {
        if (Build.VERSION.SDK_INT >= 21) {
            activity.getWindow().setStatusBarColor(0);
            activity.getWindow().getDecorView().setSystemUiVisibility(PropertyID.UPCA_ENABLE);
        } else if (Build.VERSION.SDK_INT >= 19) {
            activity.getWindow().setFlags(67108864, 67108864);
        }
    }

    private static void transparentStatusBar(Activity activity) {
        if (Build.VERSION.SDK_INT >= 21) {
            activity.getWindow().addFlags(Integer.MIN_VALUE);
            activity.getWindow().clearFlags(67108864);
            activity.getWindow().addFlags(134217728);
            activity.getWindow().setStatusBarColor(0);
            return;
        }
        activity.getWindow().addFlags(67108864);
    }

    private static View createTranslucentStatusBarView(Activity activity, int i) {
        View view = new View(activity);
        view.setLayoutParams(new LinearLayout.LayoutParams(-1, getStatusBarHeight(activity)));
        view.setBackgroundColor(Color.argb(i, 0, 0, 0));
        view.setId(FAKE_TRANSLUCENT_VIEW_ID);
        return view;
    }

    private static int getStatusBarHeight(Context context) {
        return context.getResources().getDimensionPixelSize(context.getResources().getIdentifier("status_bar_height", "dimen", "android"));
    }
}
