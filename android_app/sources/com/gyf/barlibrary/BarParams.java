package com.gyf.barlibrary;

import android.database.ContentObserver;
import android.view.View;
import androidx.core.view.ViewCompat;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public class BarParams implements Cloneable {
    public int flymeOSStatusBarFontColor;
    public KeyboardPatch keyboardPatch;
    public View navigationBarView;
    public ContentObserver navigationStatusObserver;
    public OnKeyboardListener onKeyboardListener;
    public View statusBarView;
    public View statusBarViewByHeight;
    public int titleBarHeight;
    public int titleBarPaddingTopHeight;
    public View titleBarView;
    public View titleBarViewMarginTop;
    public int statusBarColor = 0;
    public int navigationBarColor = ViewCompat.MEASURED_STATE_MASK;
    public float statusBarAlpha = 0.0f;
    float navigationBarAlpha = 0.0f;
    public boolean fullScreen = false;
    public boolean fullScreenTemp = this.fullScreen;
    public BarHide barHide = BarHide.FLAG_SHOW_BAR;
    public boolean darkFont = false;
    public boolean statusBarFlag = true;
    public int statusBarColorTransform = ViewCompat.MEASURED_STATE_MASK;
    public int navigationBarColorTransform = ViewCompat.MEASURED_STATE_MASK;
    public Map<View, Map<Integer, Integer>> viewMap = new HashMap();
    public float viewAlpha = 0.0f;
    public boolean fits = false;
    public int statusBarColorContentView = 0;
    public int statusBarColorContentViewTransform = ViewCompat.MEASURED_STATE_MASK;
    public float statusBarContentViewAlpha = 0.0f;
    public int navigationBarColorTemp = this.navigationBarColor;
    public boolean isSupportActionBar = false;
    public boolean titleBarViewMarginTopFlag = false;
    public boolean keyboardEnable = false;
    public int keyboardMode = 18;
    public boolean navigationBarEnable = true;
    public boolean navigationBarWithKitkatEnable = true;

    @Deprecated
    public boolean fixMarginAtBottom = false;
    public boolean systemWindows = false;

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: clone, reason: merged with bridge method [inline-methods] */
    public BarParams m929clone() {
        try {
            return (BarParams) super.clone();
        } catch (CloneNotSupportedException e) {
            e.printStackTrace();
            return null;
        }
    }
}
