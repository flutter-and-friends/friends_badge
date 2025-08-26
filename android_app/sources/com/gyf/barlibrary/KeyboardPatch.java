package com.gyf.barlibrary;

import android.R;
import android.app.Activity;
import android.app.Dialog;
import android.graphics.Rect;
import android.os.Build;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.Window;
import android.widget.FrameLayout;

/* loaded from: classes.dex */
public class KeyboardPatch {
    private int actionBarHeight;
    private int keyboardHeightPrevious;
    private Activity mActivity;
    private BarParams mBarParams;
    private View mChildView;
    private View mContentView;
    private View mDecorView;
    private Window mWindow;
    private boolean navigationAtBottom;
    private int navigationBarHeight;
    private ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener;
    private int paddingBottom;
    private int paddingLeft;
    private int paddingRight;
    private int paddingTop;
    private int statusBarHeight;

    private KeyboardPatch(Activity activity) {
        this(activity, ((FrameLayout) activity.getWindow().getDecorView().findViewById(R.id.content)).getChildAt(0));
    }

    private KeyboardPatch(Activity activity, View view) {
        this(activity, null, "", view);
    }

    private KeyboardPatch(Activity activity, Dialog dialog, String str) {
        this(activity, dialog, str, dialog.getWindow().findViewById(R.id.content));
    }

    private KeyboardPatch(Activity activity, Dialog dialog, String str, View view) {
        BarParams barParams;
        this.onGlobalLayoutListener = new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.gyf.barlibrary.KeyboardPatch.1
            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public void onGlobalLayout() {
                int i;
                int height;
                int i2;
                if (KeyboardPatch.this.navigationAtBottom) {
                    Rect rect = new Rect();
                    KeyboardPatch.this.mDecorView.getWindowVisibleDisplayFrame(rect);
                    if (KeyboardPatch.this.mBarParams.systemWindows) {
                        int height2 = (KeyboardPatch.this.mContentView.getHeight() - rect.bottom) - KeyboardPatch.this.navigationBarHeight;
                        if (KeyboardPatch.this.mBarParams.onKeyboardListener != null) {
                            KeyboardPatch.this.mBarParams.onKeyboardListener.onKeyboardChange(height2 > KeyboardPatch.this.navigationBarHeight, height2);
                            return;
                        }
                        return;
                    }
                    if (KeyboardPatch.this.mChildView != null) {
                        if (KeyboardPatch.this.mBarParams.isSupportActionBar) {
                            height = KeyboardPatch.this.mContentView.getHeight() + KeyboardPatch.this.statusBarHeight + KeyboardPatch.this.actionBarHeight;
                            i2 = rect.bottom;
                        } else if (KeyboardPatch.this.mBarParams.fits) {
                            height = KeyboardPatch.this.mContentView.getHeight() + KeyboardPatch.this.statusBarHeight;
                            i2 = rect.bottom;
                        } else {
                            height = KeyboardPatch.this.mContentView.getHeight();
                            i2 = rect.bottom;
                        }
                        int i3 = height - i2;
                        int i4 = KeyboardPatch.this.mBarParams.fullScreen ? i3 - KeyboardPatch.this.navigationBarHeight : i3;
                        if (KeyboardPatch.this.mBarParams.fullScreen && i3 == KeyboardPatch.this.navigationBarHeight) {
                            i3 -= KeyboardPatch.this.navigationBarHeight;
                        }
                        if (i4 != KeyboardPatch.this.keyboardHeightPrevious) {
                            KeyboardPatch.this.mContentView.setPadding(KeyboardPatch.this.paddingLeft, KeyboardPatch.this.paddingTop, KeyboardPatch.this.paddingRight, i3 + KeyboardPatch.this.paddingBottom);
                            KeyboardPatch.this.keyboardHeightPrevious = i4;
                            if (KeyboardPatch.this.mBarParams.onKeyboardListener != null) {
                                KeyboardPatch.this.mBarParams.onKeyboardListener.onKeyboardChange(i4 > KeyboardPatch.this.navigationBarHeight, i4);
                                return;
                            }
                            return;
                        }
                        return;
                    }
                    int height3 = KeyboardPatch.this.mContentView.getHeight() - rect.bottom;
                    if (!KeyboardPatch.this.mBarParams.navigationBarEnable || !KeyboardPatch.this.mBarParams.navigationBarWithKitkatEnable) {
                        i = height3;
                    } else if (Build.VERSION.SDK_INT == 19 || OSUtils.isEMUI3_1() || KeyboardPatch.this.mBarParams.fullScreen) {
                        int i5 = KeyboardPatch.this.navigationBarHeight;
                        i = height3 - i5;
                        if (KeyboardPatch.this.mBarParams.fullScreen && height3 == KeyboardPatch.this.navigationBarHeight) {
                            height3 -= KeyboardPatch.this.navigationBarHeight;
                        }
                    } else {
                        i = height3;
                        if (KeyboardPatch.this.mBarParams.fullScreen) {
                            height3 -= KeyboardPatch.this.navigationBarHeight;
                        }
                    }
                    if (i != KeyboardPatch.this.keyboardHeightPrevious) {
                        if (KeyboardPatch.this.mBarParams.isSupportActionBar) {
                            KeyboardPatch.this.mContentView.setPadding(0, KeyboardPatch.this.statusBarHeight + KeyboardPatch.this.actionBarHeight, 0, height3);
                        } else if (KeyboardPatch.this.mBarParams.fits) {
                            KeyboardPatch.this.mContentView.setPadding(0, KeyboardPatch.this.statusBarHeight, 0, height3);
                        } else {
                            KeyboardPatch.this.mContentView.setPadding(0, 0, 0, height3);
                        }
                        KeyboardPatch.this.keyboardHeightPrevious = i;
                        if (KeyboardPatch.this.mBarParams.onKeyboardListener != null) {
                            KeyboardPatch.this.mBarParams.onKeyboardListener.onKeyboardChange(i > KeyboardPatch.this.navigationBarHeight, i);
                        }
                    }
                }
            }
        };
        this.mActivity = activity;
        this.mWindow = dialog != null ? dialog.getWindow() : activity.getWindow();
        this.mDecorView = this.mWindow.getDecorView();
        this.mContentView = view == null ? this.mWindow.getDecorView().findViewById(R.id.content) : view;
        if (dialog != null) {
            barParams = ImmersionBar.with(activity, dialog, str).getBarParams();
        } else {
            barParams = ImmersionBar.with(activity).getBarParams();
        }
        this.mBarParams = barParams;
        if (this.mBarParams == null) {
            throw new IllegalArgumentException("先使用ImmersionBar初始化");
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v4, types: [android.view.View] */
    private KeyboardPatch(Activity activity, Window window) {
        this.onGlobalLayoutListener = new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.gyf.barlibrary.KeyboardPatch.1
            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public void onGlobalLayout() {
                int i;
                int height;
                int i2;
                if (KeyboardPatch.this.navigationAtBottom) {
                    Rect rect = new Rect();
                    KeyboardPatch.this.mDecorView.getWindowVisibleDisplayFrame(rect);
                    if (KeyboardPatch.this.mBarParams.systemWindows) {
                        int height2 = (KeyboardPatch.this.mContentView.getHeight() - rect.bottom) - KeyboardPatch.this.navigationBarHeight;
                        if (KeyboardPatch.this.mBarParams.onKeyboardListener != null) {
                            KeyboardPatch.this.mBarParams.onKeyboardListener.onKeyboardChange(height2 > KeyboardPatch.this.navigationBarHeight, height2);
                            return;
                        }
                        return;
                    }
                    if (KeyboardPatch.this.mChildView != null) {
                        if (KeyboardPatch.this.mBarParams.isSupportActionBar) {
                            height = KeyboardPatch.this.mContentView.getHeight() + KeyboardPatch.this.statusBarHeight + KeyboardPatch.this.actionBarHeight;
                            i2 = rect.bottom;
                        } else if (KeyboardPatch.this.mBarParams.fits) {
                            height = KeyboardPatch.this.mContentView.getHeight() + KeyboardPatch.this.statusBarHeight;
                            i2 = rect.bottom;
                        } else {
                            height = KeyboardPatch.this.mContentView.getHeight();
                            i2 = rect.bottom;
                        }
                        int i3 = height - i2;
                        int i4 = KeyboardPatch.this.mBarParams.fullScreen ? i3 - KeyboardPatch.this.navigationBarHeight : i3;
                        if (KeyboardPatch.this.mBarParams.fullScreen && i3 == KeyboardPatch.this.navigationBarHeight) {
                            i3 -= KeyboardPatch.this.navigationBarHeight;
                        }
                        if (i4 != KeyboardPatch.this.keyboardHeightPrevious) {
                            KeyboardPatch.this.mContentView.setPadding(KeyboardPatch.this.paddingLeft, KeyboardPatch.this.paddingTop, KeyboardPatch.this.paddingRight, i3 + KeyboardPatch.this.paddingBottom);
                            KeyboardPatch.this.keyboardHeightPrevious = i4;
                            if (KeyboardPatch.this.mBarParams.onKeyboardListener != null) {
                                KeyboardPatch.this.mBarParams.onKeyboardListener.onKeyboardChange(i4 > KeyboardPatch.this.navigationBarHeight, i4);
                                return;
                            }
                            return;
                        }
                        return;
                    }
                    int height3 = KeyboardPatch.this.mContentView.getHeight() - rect.bottom;
                    if (!KeyboardPatch.this.mBarParams.navigationBarEnable || !KeyboardPatch.this.mBarParams.navigationBarWithKitkatEnable) {
                        i = height3;
                    } else if (Build.VERSION.SDK_INT == 19 || OSUtils.isEMUI3_1() || KeyboardPatch.this.mBarParams.fullScreen) {
                        int i5 = KeyboardPatch.this.navigationBarHeight;
                        i = height3 - i5;
                        if (KeyboardPatch.this.mBarParams.fullScreen && height3 == KeyboardPatch.this.navigationBarHeight) {
                            height3 -= KeyboardPatch.this.navigationBarHeight;
                        }
                    } else {
                        i = height3;
                        if (KeyboardPatch.this.mBarParams.fullScreen) {
                            height3 -= KeyboardPatch.this.navigationBarHeight;
                        }
                    }
                    if (i != KeyboardPatch.this.keyboardHeightPrevious) {
                        if (KeyboardPatch.this.mBarParams.isSupportActionBar) {
                            KeyboardPatch.this.mContentView.setPadding(0, KeyboardPatch.this.statusBarHeight + KeyboardPatch.this.actionBarHeight, 0, height3);
                        } else if (KeyboardPatch.this.mBarParams.fits) {
                            KeyboardPatch.this.mContentView.setPadding(0, KeyboardPatch.this.statusBarHeight, 0, height3);
                        } else {
                            KeyboardPatch.this.mContentView.setPadding(0, 0, 0, height3);
                        }
                        KeyboardPatch.this.keyboardHeightPrevious = i;
                        if (KeyboardPatch.this.mBarParams.onKeyboardListener != null) {
                            KeyboardPatch.this.mBarParams.onKeyboardListener.onKeyboardChange(i > KeyboardPatch.this.navigationBarHeight, i);
                        }
                    }
                }
            }
        };
        this.mActivity = activity;
        this.mWindow = window;
        this.mDecorView = this.mWindow.getDecorView();
        FrameLayout frameLayout = (FrameLayout) this.mDecorView.findViewById(R.id.content);
        this.mChildView = frameLayout.getChildAt(0);
        ?? r3 = this.mChildView;
        this.mContentView = r3 != 0 ? r3 : frameLayout;
        this.paddingLeft = this.mContentView.getPaddingLeft();
        this.paddingTop = this.mContentView.getPaddingTop();
        this.paddingRight = this.mContentView.getPaddingRight();
        this.paddingBottom = this.mContentView.getPaddingBottom();
        BarConfig barConfig = new BarConfig(this.mActivity);
        this.statusBarHeight = barConfig.getStatusBarHeight();
        this.navigationBarHeight = barConfig.getNavigationBarHeight();
        this.actionBarHeight = barConfig.getActionBarHeight();
        this.navigationAtBottom = barConfig.isNavigationAtBottom();
    }

    public static KeyboardPatch patch(Activity activity) {
        return new KeyboardPatch(activity);
    }

    public static KeyboardPatch patch(Activity activity, View view) {
        return new KeyboardPatch(activity, view);
    }

    public static KeyboardPatch patch(Activity activity, Dialog dialog, String str) {
        return new KeyboardPatch(activity, dialog, str);
    }

    public static KeyboardPatch patch(Activity activity, Dialog dialog, String str, View view) {
        return new KeyboardPatch(activity, dialog, str, view);
    }

    protected static KeyboardPatch patch(Activity activity, Window window) {
        return new KeyboardPatch(activity, window);
    }

    protected void setBarParams(BarParams barParams) {
        this.mBarParams = barParams;
    }

    public void enable() {
        enable(18);
    }

    public void enable(int i) {
        if (Build.VERSION.SDK_INT >= 19) {
            this.mWindow.setSoftInputMode(i);
            this.mDecorView.getViewTreeObserver().addOnGlobalLayoutListener(this.onGlobalLayoutListener);
        }
    }

    public void disable() {
        disable(18);
    }

    public void disable(int i) {
        if (Build.VERSION.SDK_INT >= 19) {
            this.mWindow.setSoftInputMode(i);
            this.mDecorView.getViewTreeObserver().removeOnGlobalLayoutListener(this.onGlobalLayoutListener);
        }
    }
}
