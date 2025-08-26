package com.blankj.utilcode.util;

import android.R;
import android.app.Activity;
import android.content.res.Resources;
import android.graphics.Rect;
import android.os.Bundle;
import android.os.Handler;
import android.os.ResultReceiver;
import android.util.Log;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.inputmethod.InputMethodManager;
import android.widget.FrameLayout;
import java.lang.reflect.Field;

/* loaded from: classes.dex */
public final class KeyboardUtils {
    private static ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener;
    private static OnSoftInputChangedListener onSoftInputChangedListener;
    private static int sContentViewInvisibleHeightPre5497;
    private static int sDecorViewDelta;
    private static int sDecorViewInvisibleHeightPre;

    public interface OnSoftInputChangedListener {
        void onSoftInputChanged(int i);
    }

    private KeyboardUtils() {
        throw new UnsupportedOperationException("u can't instantiate me...");
    }

    public static void showSoftInput(Activity activity) {
        showSoftInput(activity, 2);
    }

    public static void showSoftInput(Activity activity, int i) {
        View currentFocus = activity.getCurrentFocus();
        if (currentFocus == null) {
            currentFocus = new View(activity);
        }
        showSoftInput(currentFocus, i);
    }

    public static void showSoftInput(View view) {
        showSoftInput(view, 2);
    }

    public static void showSoftInput(View view, int i) {
        InputMethodManager inputMethodManager = (InputMethodManager) Utils.getApp().getSystemService("input_method");
        if (inputMethodManager == null) {
            return;
        }
        view.setFocusable(true);
        view.setFocusableInTouchMode(true);
        view.requestFocus();
        inputMethodManager.showSoftInput(view, i, new ResultReceiver(new Handler()) { // from class: com.blankj.utilcode.util.KeyboardUtils.1
            @Override // android.os.ResultReceiver
            protected void onReceiveResult(int i2, Bundle bundle) {
                if (i2 == 1 || i2 == 3) {
                    KeyboardUtils.toggleSoftInput();
                }
            }
        });
    }

    public static void hideSoftInput(Activity activity) {
        View currentFocus = activity.getCurrentFocus();
        if (currentFocus == null) {
            currentFocus = new View(activity);
        }
        hideSoftInput(currentFocus);
    }

    public static void hideSoftInput(View view) {
        InputMethodManager inputMethodManager = (InputMethodManager) Utils.getApp().getSystemService("input_method");
        if (inputMethodManager == null) {
            return;
        }
        inputMethodManager.hideSoftInputFromWindow(view.getWindowToken(), 0, new ResultReceiver(new Handler()) { // from class: com.blankj.utilcode.util.KeyboardUtils.2
            @Override // android.os.ResultReceiver
            protected void onReceiveResult(int i, Bundle bundle) {
                if (i == 0 || i == 2) {
                    KeyboardUtils.toggleSoftInput();
                }
            }
        });
    }

    public static void toggleSoftInput() {
        ((InputMethodManager) Utils.getApp().getSystemService("input_method")).toggleSoftInput(2, 0);
    }

    public static boolean isSoftInputVisible(Activity activity) {
        return getDecorViewInvisibleHeight(activity) > 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int getDecorViewInvisibleHeight(Activity activity) {
        View decorView = activity.getWindow().getDecorView();
        if (decorView == null) {
            return sDecorViewInvisibleHeightPre;
        }
        Rect rect = new Rect();
        decorView.getWindowVisibleDisplayFrame(rect);
        Log.d("KeyboardUtils", "getDecorViewInvisibleHeight: " + (decorView.getBottom() - rect.bottom));
        int iAbs = Math.abs(decorView.getBottom() - rect.bottom);
        if (iAbs <= getNavBarHeight()) {
            sDecorViewDelta = iAbs;
            return 0;
        }
        return iAbs - sDecorViewDelta;
    }

    public static void registerSoftInputChangedListener(final Activity activity, OnSoftInputChangedListener onSoftInputChangedListener2) {
        if ((activity.getWindow().getAttributes().flags & 512) != 0) {
            activity.getWindow().clearFlags(512);
        }
        FrameLayout frameLayout = (FrameLayout) activity.findViewById(R.id.content);
        sDecorViewInvisibleHeightPre = getDecorViewInvisibleHeight(activity);
        onSoftInputChangedListener = onSoftInputChangedListener2;
        onGlobalLayoutListener = new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.blankj.utilcode.util.KeyboardUtils.3
            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public void onGlobalLayout() {
                int decorViewInvisibleHeight;
                if (KeyboardUtils.onSoftInputChangedListener == null || KeyboardUtils.sDecorViewInvisibleHeightPre == (decorViewInvisibleHeight = KeyboardUtils.getDecorViewInvisibleHeight(activity))) {
                    return;
                }
                KeyboardUtils.onSoftInputChangedListener.onSoftInputChanged(decorViewInvisibleHeight);
                int unused = KeyboardUtils.sDecorViewInvisibleHeightPre = decorViewInvisibleHeight;
            }
        };
        frameLayout.getViewTreeObserver().addOnGlobalLayoutListener(onGlobalLayoutListener);
    }

    public static void unregisterSoftInputChangedListener(Activity activity) {
        activity.findViewById(R.id.content).getViewTreeObserver().removeOnGlobalLayoutListener(onGlobalLayoutListener);
        onSoftInputChangedListener = null;
        onGlobalLayoutListener = null;
    }

    public static void fixAndroidBug5497(final Activity activity) {
        FrameLayout frameLayout = (FrameLayout) activity.findViewById(R.id.content);
        final View childAt = frameLayout.getChildAt(0);
        final int paddingBottom = childAt.getPaddingBottom();
        sContentViewInvisibleHeightPre5497 = getContentViewInvisibleHeight(activity);
        frameLayout.getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.blankj.utilcode.util.KeyboardUtils.4
            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public void onGlobalLayout() {
                int contentViewInvisibleHeight = KeyboardUtils.getContentViewInvisibleHeight(activity);
                if (KeyboardUtils.sContentViewInvisibleHeightPre5497 != contentViewInvisibleHeight) {
                    View view = childAt;
                    view.setPadding(view.getPaddingLeft(), childAt.getPaddingTop(), childAt.getPaddingRight(), paddingBottom + KeyboardUtils.getDecorViewInvisibleHeight(activity));
                    int unused = KeyboardUtils.sContentViewInvisibleHeightPre5497 = contentViewInvisibleHeight;
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int getContentViewInvisibleHeight(Activity activity) {
        View viewFindViewById = activity.findViewById(R.id.content);
        if (viewFindViewById == null) {
            return sContentViewInvisibleHeightPre5497;
        }
        Rect rect = new Rect();
        viewFindViewById.getWindowVisibleDisplayFrame(rect);
        Log.d("KeyboardUtils", "getContentViewInvisibleHeight: " + (viewFindViewById.getBottom() - rect.bottom));
        int iAbs = Math.abs(viewFindViewById.getBottom() - rect.bottom);
        if (iAbs <= getStatusBarHeight() + getNavBarHeight()) {
            return 0;
        }
        return iAbs;
    }

    public static void fixSoftInputLeaks(Activity activity) {
        InputMethodManager inputMethodManager;
        if (activity == null || (inputMethodManager = (InputMethodManager) Utils.getApp().getSystemService("input_method")) == null) {
            return;
        }
        for (String str : new String[]{"mLastSrvView", "mCurRootView", "mServedView", "mNextServedView"}) {
            try {
                Field declaredField = InputMethodManager.class.getDeclaredField(str);
                if (declaredField != null) {
                    if (!declaredField.isAccessible()) {
                        declaredField.setAccessible(true);
                    }
                    Object obj = declaredField.get(inputMethodManager);
                    if ((obj instanceof View) && ((View) obj).getRootView() == activity.getWindow().getDecorView().getRootView()) {
                        declaredField.set(inputMethodManager, null);
                    }
                }
            } catch (Throwable unused) {
            }
        }
    }

    public static void clickBlankArea2HideSoftInput() {
        Log.i("KeyboardUtils", "Please refer to the following code.");
    }

    private static int getStatusBarHeight() {
        Resources system = Resources.getSystem();
        return system.getDimensionPixelSize(system.getIdentifier("status_bar_height", "dimen", "android"));
    }

    private static int getNavBarHeight() {
        Resources system = Resources.getSystem();
        int identifier = system.getIdentifier("navigation_bar_height", "dimen", "android");
        if (identifier != 0) {
            return system.getDimensionPixelSize(identifier);
        }
        return 0;
    }
}
