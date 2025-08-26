package com.gyf.barlibrary;

import android.R;
import android.app.Activity;
import android.app.Dialog;
import android.database.ContentObserver;
import android.graphics.Color;
import android.os.Build;
import android.os.Handler;
import android.provider.Settings;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.Window;
import android.widget.FrameLayout;
import androidx.core.content.ContextCompat;
import androidx.core.graphics.ColorUtils;
import androidx.core.view.GravityCompat;
import androidx.core.view.ViewCompat;
import androidx.drawerlayout.widget.DrawerLayout;
import androidx.fragment.app.DialogFragment;
import androidx.fragment.app.Fragment;
import java.lang.ref.WeakReference;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* loaded from: classes.dex */
public class ImmersionBar {
    private static final String NAVIGATIONBAR_IS_MIN = "navigationbar_is_min";
    private Activity mActivity;
    private String mActivityName;
    private BarParams mBarParams;
    private BarConfig mConfig;
    private ViewGroup mContentView;
    private ViewGroup mDecorView;
    private Dialog mDialog;
    private String mFragmentName;
    private String mImmersionBarName;
    private Window mWindow;
    private static Map<String, BarParams> mMap = new HashMap();
    private static Map<String, BarParams> mTagMap = new HashMap();
    private static Map<String, ArrayList<String>> mTagKeyMap = new HashMap();

    private ImmersionBar(Activity activity) {
        this.mActivity = (Activity) new WeakReference(activity).get();
        this.mWindow = this.mActivity.getWindow();
        this.mActivityName = activity.getClass().getName();
        this.mImmersionBarName = this.mActivityName;
        initParams();
    }

    private ImmersionBar(Fragment fragment) {
        this(fragment.getActivity(), fragment);
    }

    private ImmersionBar(Activity activity, Fragment fragment) {
        if (activity == null) {
            throw new IllegalArgumentException("Activity不能为空!!!");
        }
        WeakReference weakReference = new WeakReference(activity);
        WeakReference weakReference2 = new WeakReference(fragment);
        this.mActivity = (Activity) weakReference.get();
        this.mWindow = this.mActivity.getWindow();
        this.mActivityName = this.mActivity.getClass().getName();
        this.mFragmentName = this.mActivityName + "_AND_" + ((Fragment) weakReference2.get()).getClass().getName();
        this.mImmersionBarName = this.mFragmentName;
        initParams();
    }

    private ImmersionBar(DialogFragment dialogFragment, Dialog dialog) {
        WeakReference weakReference = new WeakReference(dialogFragment);
        WeakReference weakReference2 = new WeakReference(dialog);
        this.mActivity = ((DialogFragment) weakReference.get()).getActivity();
        this.mDialog = (Dialog) weakReference2.get();
        this.mWindow = this.mDialog.getWindow();
        this.mActivityName = this.mActivity.getClass().getName();
        this.mImmersionBarName = this.mActivityName + "_AND_" + ((DialogFragment) weakReference.get()).getClass().getName();
        initParams();
    }

    private ImmersionBar(Activity activity, Dialog dialog, String str) {
        WeakReference weakReference = new WeakReference(activity);
        WeakReference weakReference2 = new WeakReference(dialog);
        this.mActivity = (Activity) weakReference.get();
        this.mDialog = (Dialog) weakReference2.get();
        this.mWindow = this.mDialog.getWindow();
        this.mActivityName = this.mActivity.getClass().getName();
        this.mImmersionBarName = this.mActivityName + "_AND_" + str;
        initParams();
    }

    private void initParams() {
        this.mDecorView = (ViewGroup) this.mWindow.getDecorView();
        this.mContentView = (ViewGroup) this.mDecorView.findViewById(R.id.content);
        this.mConfig = new BarConfig(this.mActivity);
        if (mMap.get(this.mImmersionBarName) == null) {
            this.mBarParams = new BarParams();
            if (!isEmpty(this.mFragmentName)) {
                if (mMap.get(this.mActivityName) == null) {
                    throw new IllegalArgumentException("在Fragment里使用时，请先在加载Fragment的Activity里初始化！！！");
                }
                if (Build.VERSION.SDK_INT == 19 || OSUtils.isEMUI3_1()) {
                    this.mBarParams.statusBarView = mMap.get(this.mActivityName).statusBarView;
                    this.mBarParams.navigationBarView = mMap.get(this.mActivityName).navigationBarView;
                }
                this.mBarParams.keyboardPatch = mMap.get(this.mActivityName).keyboardPatch;
            }
            mMap.put(this.mImmersionBarName, this.mBarParams);
            return;
        }
        this.mBarParams = mMap.get(this.mImmersionBarName);
    }

    public static ImmersionBar with(Activity activity) {
        if (activity == null) {
            throw new IllegalArgumentException("Activity不能为null");
        }
        return new ImmersionBar(activity);
    }

    public static ImmersionBar with(Fragment fragment) {
        if (fragment == null) {
            throw new IllegalArgumentException("Fragment不能为null");
        }
        return new ImmersionBar(fragment);
    }

    public static ImmersionBar with(Activity activity, Fragment fragment) {
        if (activity == null) {
            throw new IllegalArgumentException("Activity不能为null");
        }
        if (fragment == null) {
            throw new IllegalArgumentException("Fragment不能为null");
        }
        return new ImmersionBar(activity, fragment);
    }

    public static ImmersionBar with(DialogFragment dialogFragment, Dialog dialog) {
        if (dialogFragment == null) {
            throw new IllegalArgumentException("DialogFragment不能为null");
        }
        if (dialog == null) {
            throw new IllegalArgumentException("Dialog不能为null");
        }
        return new ImmersionBar(dialogFragment, dialog);
    }

    public static ImmersionBar with(Activity activity, Dialog dialog, String str) {
        if (activity == null) {
            throw new IllegalArgumentException("Activity不能为null");
        }
        if (dialog == null) {
            throw new IllegalArgumentException("Dialog不能为null");
        }
        if (isEmpty(str)) {
            throw new IllegalArgumentException("tag不能为null或空");
        }
        return new ImmersionBar(activity, dialog, str);
    }

    public ImmersionBar transparentStatusBar() {
        this.mBarParams.statusBarColor = 0;
        return this;
    }

    public ImmersionBar transparentNavigationBar() {
        BarParams barParams = this.mBarParams;
        barParams.navigationBarColor = 0;
        barParams.navigationBarColorTemp = barParams.navigationBarColor;
        this.mBarParams.fullScreen = true;
        return this;
    }

    public ImmersionBar transparentBar() {
        BarParams barParams = this.mBarParams;
        barParams.statusBarColor = 0;
        barParams.navigationBarColor = 0;
        barParams.navigationBarColorTemp = barParams.navigationBarColor;
        this.mBarParams.fullScreen = true;
        return this;
    }

    public ImmersionBar statusBarColor(int i) {
        return statusBarColorInt(ContextCompat.getColor(this.mActivity, i));
    }

    public ImmersionBar statusBarColor(int i, float f) {
        return statusBarColorInt(ContextCompat.getColor(this.mActivity, i), f);
    }

    public ImmersionBar statusBarColor(int i, int i2, float f) {
        return statusBarColorInt(ContextCompat.getColor(this.mActivity, i), ContextCompat.getColor(this.mActivity, i2), f);
    }

    public ImmersionBar statusBarColor(String str) {
        return statusBarColorInt(Color.parseColor(str));
    }

    public ImmersionBar statusBarColor(String str, float f) {
        return statusBarColorInt(Color.parseColor(str), f);
    }

    public ImmersionBar statusBarColor(String str, String str2, float f) {
        return statusBarColorInt(Color.parseColor(str), Color.parseColor(str2), f);
    }

    public ImmersionBar statusBarColorInt(int i) {
        this.mBarParams.statusBarColor = i;
        return this;
    }

    public ImmersionBar statusBarColorInt(int i, float f) {
        BarParams barParams = this.mBarParams;
        barParams.statusBarColor = i;
        barParams.statusBarAlpha = f;
        return this;
    }

    public ImmersionBar statusBarColorInt(int i, int i2, float f) {
        BarParams barParams = this.mBarParams;
        barParams.statusBarColor = i;
        barParams.statusBarColorTransform = i2;
        barParams.statusBarAlpha = f;
        return this;
    }

    public ImmersionBar navigationBarColor(int i) {
        return navigationBarColorInt(ContextCompat.getColor(this.mActivity, i));
    }

    public ImmersionBar navigationBarColor(int i, float f) {
        return navigationBarColorInt(ContextCompat.getColor(this.mActivity, i), f);
    }

    public ImmersionBar navigationBarColor(int i, int i2, float f) {
        return navigationBarColorInt(ContextCompat.getColor(this.mActivity, i), ContextCompat.getColor(this.mActivity, i2), f);
    }

    public ImmersionBar navigationBarColor(String str) {
        return navigationBarColorInt(Color.parseColor(str));
    }

    public ImmersionBar navigationBarColor(String str, float f) {
        return navigationBarColorInt(Color.parseColor(str), f);
    }

    public ImmersionBar navigationBarColor(String str, String str2, float f) {
        return navigationBarColorInt(Color.parseColor(str), Color.parseColor(str2), f);
    }

    public ImmersionBar navigationBarColorInt(int i) {
        BarParams barParams = this.mBarParams;
        barParams.navigationBarColor = i;
        barParams.navigationBarColorTemp = barParams.navigationBarColor;
        return this;
    }

    public ImmersionBar navigationBarColorInt(int i, float f) {
        BarParams barParams = this.mBarParams;
        barParams.navigationBarColor = i;
        barParams.navigationBarAlpha = f;
        barParams.navigationBarColorTemp = barParams.navigationBarColor;
        return this;
    }

    public ImmersionBar navigationBarColorInt(int i, int i2, float f) {
        BarParams barParams = this.mBarParams;
        barParams.navigationBarColor = i;
        barParams.navigationBarColorTransform = i2;
        barParams.navigationBarAlpha = f;
        barParams.navigationBarColorTemp = barParams.navigationBarColor;
        return this;
    }

    public ImmersionBar barColor(int i) {
        return barColorInt(ContextCompat.getColor(this.mActivity, i));
    }

    public ImmersionBar barColor(int i, float f) {
        return barColorInt(ContextCompat.getColor(this.mActivity, i), i);
    }

    public ImmersionBar barColor(int i, int i2, float f) {
        return barColorInt(ContextCompat.getColor(this.mActivity, i), ContextCompat.getColor(this.mActivity, i2), f);
    }

    public ImmersionBar barColor(String str) {
        return barColorInt(Color.parseColor(str));
    }

    public ImmersionBar barColor(String str, float f) {
        return barColorInt(Color.parseColor(str), f);
    }

    public ImmersionBar barColor(String str, String str2, float f) {
        return barColorInt(Color.parseColor(str), Color.parseColor(str2), f);
    }

    public ImmersionBar barColorInt(int i) {
        BarParams barParams = this.mBarParams;
        barParams.statusBarColor = i;
        barParams.navigationBarColor = i;
        barParams.navigationBarColorTemp = barParams.navigationBarColor;
        return this;
    }

    public ImmersionBar barColorInt(int i, float f) {
        BarParams barParams = this.mBarParams;
        barParams.statusBarColor = i;
        barParams.navigationBarColor = i;
        barParams.navigationBarColorTemp = barParams.navigationBarColor;
        BarParams barParams2 = this.mBarParams;
        barParams2.statusBarAlpha = f;
        barParams2.navigationBarAlpha = f;
        return this;
    }

    public ImmersionBar barColorInt(int i, int i2, float f) {
        BarParams barParams = this.mBarParams;
        barParams.statusBarColor = i;
        barParams.navigationBarColor = i;
        barParams.navigationBarColorTemp = barParams.navigationBarColor;
        BarParams barParams2 = this.mBarParams;
        barParams2.statusBarColorTransform = i2;
        barParams2.navigationBarColorTransform = i2;
        barParams2.statusBarAlpha = f;
        barParams2.navigationBarAlpha = f;
        return this;
    }

    public ImmersionBar statusBarColorTransform(int i) {
        return statusBarColorTransformInt(ContextCompat.getColor(this.mActivity, i));
    }

    public ImmersionBar statusBarColorTransform(String str) {
        return statusBarColorTransformInt(Color.parseColor(str));
    }

    public ImmersionBar statusBarColorTransformInt(int i) {
        this.mBarParams.statusBarColorTransform = i;
        return this;
    }

    public ImmersionBar navigationBarColorTransform(int i) {
        return navigationBarColorTransformInt(ContextCompat.getColor(this.mActivity, i));
    }

    public ImmersionBar navigationBarColorTransform(String str) {
        return navigationBarColorTransformInt(Color.parseColor(str));
    }

    public ImmersionBar navigationBarColorTransformInt(int i) {
        this.mBarParams.navigationBarColorTransform = i;
        return this;
    }

    public ImmersionBar barColorTransform(int i) {
        return barColorTransformInt(ContextCompat.getColor(this.mActivity, i));
    }

    public ImmersionBar barColorTransform(String str) {
        return barColorTransformInt(Color.parseColor(str));
    }

    public ImmersionBar barColorTransformInt(int i) {
        BarParams barParams = this.mBarParams;
        barParams.statusBarColorTransform = i;
        barParams.navigationBarColorTransform = i;
        return this;
    }

    public ImmersionBar addViewSupportTransformColor(View view) {
        return addViewSupportTransformColorInt(view, this.mBarParams.statusBarColorTransform);
    }

    public ImmersionBar addViewSupportTransformColor(View view, int i) {
        return addViewSupportTransformColorInt(view, ContextCompat.getColor(this.mActivity, i));
    }

    public ImmersionBar addViewSupportTransformColor(View view, int i, int i2) {
        return addViewSupportTransformColorInt(view, ContextCompat.getColor(this.mActivity, i), ContextCompat.getColor(this.mActivity, i2));
    }

    public ImmersionBar addViewSupportTransformColor(View view, String str) {
        return addViewSupportTransformColorInt(view, Color.parseColor(str));
    }

    public ImmersionBar addViewSupportTransformColor(View view, String str, String str2) {
        return addViewSupportTransformColorInt(view, Color.parseColor(str), Color.parseColor(str2));
    }

    public ImmersionBar addViewSupportTransformColorInt(View view, int i) {
        if (view == null) {
            throw new IllegalArgumentException("View参数不能为空");
        }
        HashMap map = new HashMap();
        map.put(Integer.valueOf(this.mBarParams.statusBarColor), Integer.valueOf(i));
        this.mBarParams.viewMap.put(view, map);
        return this;
    }

    public ImmersionBar addViewSupportTransformColorInt(View view, int i, int i2) {
        if (view == null) {
            throw new IllegalArgumentException("View参数不能为空");
        }
        HashMap map = new HashMap();
        map.put(Integer.valueOf(i), Integer.valueOf(i2));
        this.mBarParams.viewMap.put(view, map);
        return this;
    }

    public ImmersionBar viewAlpha(float f) {
        this.mBarParams.viewAlpha = f;
        return this;
    }

    public ImmersionBar removeSupportView(View view) {
        if (view == null) {
            throw new IllegalArgumentException("View参数不能为空");
        }
        if (this.mBarParams.viewMap.get(view).size() != 0) {
            this.mBarParams.viewMap.remove(view);
        }
        return this;
    }

    public ImmersionBar removeSupportAllView() {
        if (this.mBarParams.viewMap.size() != 0) {
            this.mBarParams.viewMap.clear();
        }
        return this;
    }

    public ImmersionBar fullScreen(boolean z) {
        this.mBarParams.fullScreen = z;
        return this;
    }

    public ImmersionBar statusBarAlpha(float f) {
        this.mBarParams.statusBarAlpha = f;
        return this;
    }

    public ImmersionBar navigationBarAlpha(float f) {
        this.mBarParams.navigationBarAlpha = f;
        return this;
    }

    public ImmersionBar barAlpha(float f) {
        BarParams barParams = this.mBarParams;
        barParams.statusBarAlpha = f;
        barParams.navigationBarAlpha = f;
        return this;
    }

    public ImmersionBar statusBarDarkFont(boolean z) {
        return statusBarDarkFont(z, 0.0f);
    }

    public ImmersionBar statusBarDarkFont(boolean z, float f) {
        BarParams barParams = this.mBarParams;
        barParams.darkFont = z;
        if (!z) {
            barParams.flymeOSStatusBarFontColor = 0;
        }
        if (isSupportStatusBarDarkFont()) {
            this.mBarParams.statusBarAlpha = 0.0f;
        } else {
            this.mBarParams.statusBarAlpha = f;
        }
        return this;
    }

    public ImmersionBar flymeOSStatusBarFontColor(int i) {
        this.mBarParams.flymeOSStatusBarFontColor = ContextCompat.getColor(this.mActivity, i);
        return this;
    }

    public ImmersionBar flymeOSStatusBarFontColor(String str) {
        this.mBarParams.flymeOSStatusBarFontColor = Color.parseColor(str);
        return this;
    }

    public ImmersionBar flymeOSStatusBarFontColorInt(int i) {
        this.mBarParams.flymeOSStatusBarFontColor = i;
        return this;
    }

    public ImmersionBar hideBar(BarHide barHide) {
        this.mBarParams.barHide = barHide;
        if (Build.VERSION.SDK_INT == 19 || OSUtils.isEMUI3_1()) {
            if (this.mBarParams.barHide == BarHide.FLAG_HIDE_NAVIGATION_BAR || this.mBarParams.barHide == BarHide.FLAG_HIDE_BAR) {
                BarParams barParams = this.mBarParams;
                barParams.navigationBarColor = 0;
                barParams.fullScreenTemp = true;
            } else {
                BarParams barParams2 = this.mBarParams;
                barParams2.navigationBarColor = barParams2.navigationBarColorTemp;
                this.mBarParams.fullScreenTemp = false;
            }
        }
        return this;
    }

    public ImmersionBar fitsSystemWindows(boolean z) {
        this.mBarParams.fits = z;
        return this;
    }

    public ImmersionBar fitsSystemWindows(boolean z, int i) {
        return fitsSystemWindows(z, i, R.color.black, 0.0f);
    }

    public ImmersionBar fitsSystemWindows(boolean z, int i, int i2, float f) {
        BarParams barParams = this.mBarParams;
        barParams.fits = z;
        barParams.statusBarColorContentView = ContextCompat.getColor(this.mActivity, i);
        this.mBarParams.statusBarColorContentViewTransform = ContextCompat.getColor(this.mActivity, i2);
        BarParams barParams2 = this.mBarParams;
        barParams2.statusBarContentViewAlpha = f;
        barParams2.statusBarColorContentView = ContextCompat.getColor(this.mActivity, i);
        this.mContentView.setBackgroundColor(ColorUtils.blendARGB(this.mBarParams.statusBarColorContentView, this.mBarParams.statusBarColorContentViewTransform, this.mBarParams.statusBarContentViewAlpha));
        return this;
    }

    public ImmersionBar statusBarView(View view) {
        if (view == null) {
            throw new IllegalArgumentException("View参数不能为空");
        }
        this.mBarParams.statusBarViewByHeight = view;
        return this;
    }

    public ImmersionBar statusBarView(int i) {
        View viewFindViewById = this.mActivity.findViewById(i);
        if (viewFindViewById == null) {
            throw new IllegalArgumentException("未找到viewId");
        }
        return statusBarView(viewFindViewById);
    }

    public ImmersionBar statusBarView(int i, View view) {
        View viewFindViewById = view.findViewById(i);
        if (viewFindViewById == null) {
            throw new IllegalArgumentException("未找到viewId");
        }
        return statusBarView(viewFindViewById);
    }

    public ImmersionBar supportActionBar(boolean z) {
        this.mBarParams.isSupportActionBar = z;
        return this;
    }

    public ImmersionBar titleBar(View view) {
        if (view == null) {
            throw new IllegalArgumentException("View参数不能为空");
        }
        return titleBar(view, true);
    }

    public ImmersionBar titleBar(View view, boolean z) {
        if (view == null) {
            throw new IllegalArgumentException("View参数不能为空");
        }
        BarParams barParams = this.mBarParams;
        barParams.titleBarView = view;
        barParams.statusBarFlag = z;
        setTitleBar();
        return this;
    }

    public ImmersionBar titleBar(int i) {
        View viewFindViewById = this.mActivity.findViewById(i);
        if (viewFindViewById == null) {
            throw new IllegalArgumentException("参数错误");
        }
        return titleBar(viewFindViewById, true);
    }

    public ImmersionBar titleBar(int i, boolean z) {
        View viewFindViewById = this.mActivity.findViewById(i);
        if (viewFindViewById == null) {
            throw new IllegalArgumentException("参数错误");
        }
        return titleBar(viewFindViewById, z);
    }

    public ImmersionBar titleBar(int i, View view) {
        View viewFindViewById = view.findViewById(i);
        if (viewFindViewById == null) {
            throw new IllegalArgumentException("参数错误");
        }
        return titleBar(viewFindViewById, true);
    }

    public ImmersionBar titleBar(int i, View view, boolean z) {
        View viewFindViewById = view.findViewById(i);
        if (viewFindViewById == null) {
            throw new IllegalArgumentException("参数错误");
        }
        return titleBar(viewFindViewById, z);
    }

    public ImmersionBar titleBarMarginTop(int i) {
        return titleBarMarginTop(this.mActivity.findViewById(i));
    }

    public ImmersionBar titleBarMarginTop(int i, View view) {
        return titleBarMarginTop(view.findViewById(i));
    }

    public ImmersionBar titleBarMarginTop(View view) {
        if (view == null) {
            throw new IllegalArgumentException("参数错误");
        }
        BarParams barParams = this.mBarParams;
        barParams.titleBarViewMarginTop = view;
        if (!barParams.titleBarViewMarginTopFlag) {
            setTitleBarMarginTop();
        }
        return this;
    }

    public ImmersionBar statusBarColorTransformEnable(boolean z) {
        this.mBarParams.statusBarFlag = z;
        return this;
    }

    public ImmersionBar reset() {
        BarParams barParams = this.mBarParams;
        this.mBarParams = new BarParams();
        if (Build.VERSION.SDK_INT == 19 || OSUtils.isEMUI3_1()) {
            this.mBarParams.statusBarView = barParams.statusBarView;
            this.mBarParams.navigationBarView = barParams.navigationBarView;
        }
        this.mBarParams.keyboardPatch = barParams.keyboardPatch;
        mMap.put(this.mImmersionBarName, this.mBarParams);
        return this;
    }

    public ImmersionBar addTag(String str) {
        String str2 = this.mActivityName + "_TAG_" + str;
        if (!isEmpty(str2)) {
            mTagMap.put(str2, this.mBarParams.m929clone());
            ArrayList<String> arrayList = mTagKeyMap.get(this.mActivityName);
            if (arrayList != null) {
                if (!arrayList.contains(str2)) {
                    arrayList.add(str2);
                }
            } else {
                arrayList = new ArrayList<>();
                arrayList.add(str2);
            }
            mTagKeyMap.put(this.mActivityName, arrayList);
        }
        return this;
    }

    public ImmersionBar getTag(String str) {
        if (!isEmpty(str)) {
            BarParams barParams = mTagMap.get(this.mActivityName + "_TAG_" + str);
            if (barParams != null) {
                this.mBarParams = barParams.m929clone();
            }
        }
        return this;
    }

    public ImmersionBar keyboardEnable(boolean z) {
        return keyboardEnable(z, 18);
    }

    public ImmersionBar keyboardEnable(boolean z, int i) {
        BarParams barParams = this.mBarParams;
        barParams.keyboardEnable = z;
        barParams.keyboardMode = i;
        return this;
    }

    public ImmersionBar keyboardMode(int i) {
        this.mBarParams.keyboardMode = i;
        return this;
    }

    public ImmersionBar setOnKeyboardListener(OnKeyboardListener onKeyboardListener) {
        if (this.mBarParams.onKeyboardListener == null) {
            this.mBarParams.onKeyboardListener = onKeyboardListener;
        }
        return this;
    }

    public ImmersionBar navigationBarEnable(boolean z) {
        this.mBarParams.navigationBarEnable = z;
        return this;
    }

    public ImmersionBar navigationBarWithKitkatEnable(boolean z) {
        this.mBarParams.navigationBarWithKitkatEnable = z;
        return this;
    }

    @Deprecated
    public ImmersionBar fixMarginAtBottom(boolean z) {
        this.mBarParams.fixMarginAtBottom = z;
        return this;
    }

    public void init() throws IllegalAccessException, NoSuchMethodException, ClassNotFoundException, SecurityException, IllegalArgumentException, InvocationTargetException {
        mMap.put(this.mImmersionBarName, this.mBarParams);
        initBar();
        setStatusBarView();
        transformView();
        keyboardEnable();
        registerEMUI3_x();
    }

    public void destroy() {
        unRegisterEMUI3_x();
        if (this.mBarParams.keyboardPatch != null) {
            this.mBarParams.keyboardPatch.disable(this.mBarParams.keyboardMode);
            this.mBarParams.keyboardPatch = null;
        }
        if (this.mDecorView != null) {
            this.mDecorView = null;
        }
        if (this.mContentView != null) {
            this.mContentView = null;
        }
        if (this.mConfig != null) {
            this.mConfig = null;
        }
        if (this.mWindow != null) {
            this.mWindow = null;
        }
        if (this.mDialog != null) {
            this.mDialog = null;
        }
        if (this.mActivity != null) {
            this.mActivity = null;
        }
        if (isEmpty(this.mImmersionBarName)) {
            return;
        }
        if (this.mBarParams != null) {
            this.mBarParams = null;
        }
        ArrayList<String> arrayList = mTagKeyMap.get(this.mActivityName);
        if (arrayList != null && arrayList.size() > 0) {
            Iterator<String> it = arrayList.iterator();
            while (it.hasNext()) {
                mTagMap.remove(it.next());
            }
            mTagKeyMap.remove(this.mActivityName);
        }
        mMap.remove(this.mImmersionBarName);
    }

    private void initBar() throws IllegalAccessException, NoSuchMethodException, ClassNotFoundException, SecurityException, IllegalArgumentException, InvocationTargetException {
        if (Build.VERSION.SDK_INT >= 19) {
            int statusBarDarkFont = 256;
            if (Build.VERSION.SDK_INT >= 21 && !OSUtils.isEMUI3_1()) {
                statusBarDarkFont = setStatusBarDarkFont(initBarAboveLOLLIPOP(256));
                supportActionBar();
            } else {
                initBarBelowLOLLIPOP();
                solveNavigation();
            }
            this.mWindow.getDecorView().setSystemUiVisibility(hideBar(statusBarDarkFont));
        }
        if (OSUtils.isMIUI6Later()) {
            setMIUIStatusBarDarkFont(this.mWindow, this.mBarParams.darkFont);
        }
        if (OSUtils.isFlymeOS4Later()) {
            if (this.mBarParams.flymeOSStatusBarFontColor != 0) {
                FlymeOSStatusBarFontUtils.setStatusBarDarkIcon(this.mActivity, this.mBarParams.flymeOSStatusBarFontColor);
            } else if (Build.VERSION.SDK_INT < 23) {
                FlymeOSStatusBarFontUtils.setStatusBarDarkIcon(this.mActivity, this.mBarParams.darkFont);
            }
        }
    }

    private int initBarAboveLOLLIPOP(int i) {
        int i2 = i | 1024;
        if (this.mBarParams.fullScreen && this.mBarParams.navigationBarEnable) {
            i2 |= 512;
        }
        this.mWindow.clearFlags(67108864);
        if (this.mConfig.hasNavigtionBar()) {
            this.mWindow.clearFlags(134217728);
        }
        this.mWindow.addFlags(Integer.MIN_VALUE);
        if (this.mBarParams.statusBarFlag) {
            this.mWindow.setStatusBarColor(ColorUtils.blendARGB(this.mBarParams.statusBarColor, this.mBarParams.statusBarColorTransform, this.mBarParams.statusBarAlpha));
        } else {
            this.mWindow.setStatusBarColor(ColorUtils.blendARGB(this.mBarParams.statusBarColor, 0, this.mBarParams.statusBarAlpha));
        }
        if (this.mBarParams.navigationBarEnable) {
            this.mWindow.setNavigationBarColor(ColorUtils.blendARGB(this.mBarParams.navigationBarColor, this.mBarParams.navigationBarColorTransform, this.mBarParams.navigationBarAlpha));
        }
        return i2;
    }

    private void initBarBelowLOLLIPOP() {
        this.mWindow.addFlags(67108864);
        setupStatusBarView();
        if (this.mConfig.hasNavigtionBar()) {
            if (this.mBarParams.navigationBarEnable && this.mBarParams.navigationBarWithKitkatEnable) {
                this.mWindow.addFlags(134217728);
            } else {
                this.mWindow.clearFlags(134217728);
            }
            setupNavBarView();
        }
    }

    private void setupStatusBarView() {
        if (this.mBarParams.statusBarView == null) {
            this.mBarParams.statusBarView = new View(this.mActivity);
        }
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, this.mConfig.getStatusBarHeight());
        layoutParams.gravity = 48;
        this.mBarParams.statusBarView.setLayoutParams(layoutParams);
        if (this.mBarParams.statusBarFlag) {
            this.mBarParams.statusBarView.setBackgroundColor(ColorUtils.blendARGB(this.mBarParams.statusBarColor, this.mBarParams.statusBarColorTransform, this.mBarParams.statusBarAlpha));
        } else {
            this.mBarParams.statusBarView.setBackgroundColor(ColorUtils.blendARGB(this.mBarParams.statusBarColor, 0, this.mBarParams.statusBarAlpha));
        }
        this.mBarParams.statusBarView.setVisibility(0);
        ViewGroup viewGroup = (ViewGroup) this.mBarParams.statusBarView.getParent();
        if (viewGroup != null) {
            viewGroup.removeView(this.mBarParams.statusBarView);
        }
        this.mDecorView.addView(this.mBarParams.statusBarView);
    }

    private void setupNavBarView() {
        FrameLayout.LayoutParams layoutParams;
        if (this.mBarParams.navigationBarView == null) {
            this.mBarParams.navigationBarView = new View(this.mActivity);
        }
        if (this.mConfig.isNavigationAtBottom()) {
            layoutParams = new FrameLayout.LayoutParams(-1, this.mConfig.getNavigationBarHeight());
            layoutParams.gravity = 80;
        } else {
            layoutParams = new FrameLayout.LayoutParams(this.mConfig.getNavigationBarWidth(), -1);
            layoutParams.gravity = GravityCompat.END;
        }
        this.mBarParams.navigationBarView.setLayoutParams(layoutParams);
        if (this.mBarParams.navigationBarEnable && this.mBarParams.navigationBarWithKitkatEnable) {
            if (!this.mBarParams.fullScreen && this.mBarParams.navigationBarColorTransform == 0) {
                this.mBarParams.navigationBarView.setBackgroundColor(ColorUtils.blendARGB(this.mBarParams.navigationBarColor, ViewCompat.MEASURED_STATE_MASK, this.mBarParams.navigationBarAlpha));
            } else {
                this.mBarParams.navigationBarView.setBackgroundColor(ColorUtils.blendARGB(this.mBarParams.navigationBarColor, this.mBarParams.navigationBarColorTransform, this.mBarParams.navigationBarAlpha));
            }
        } else {
            this.mBarParams.navigationBarView.setBackgroundColor(0);
        }
        this.mBarParams.navigationBarView.setVisibility(0);
        ViewGroup viewGroup = (ViewGroup) this.mBarParams.navigationBarView.getParent();
        if (viewGroup != null) {
            viewGroup.removeView(this.mBarParams.navigationBarView);
        }
        this.mDecorView.addView(this.mBarParams.navigationBarView);
    }

    private void solveNavigation() {
        int childCount = this.mContentView.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = this.mContentView.getChildAt(i);
            if (childAt instanceof ViewGroup) {
                if (childAt instanceof DrawerLayout) {
                    View childAt2 = ((DrawerLayout) childAt).getChildAt(0);
                    if (childAt2 != null) {
                        this.mBarParams.systemWindows = childAt2.getFitsSystemWindows();
                        if (this.mBarParams.systemWindows) {
                            this.mContentView.setPadding(0, 0, 0, 0);
                            return;
                        }
                    } else {
                        continue;
                    }
                } else {
                    this.mBarParams.systemWindows = childAt.getFitsSystemWindows();
                    if (this.mBarParams.systemWindows) {
                        this.mContentView.setPadding(0, 0, 0, 0);
                        return;
                    }
                }
            }
        }
        if (this.mConfig.hasNavigtionBar() && !this.mBarParams.fullScreenTemp && !this.mBarParams.fullScreen) {
            if (this.mConfig.isNavigationAtBottom()) {
                if (!this.mBarParams.isSupportActionBar) {
                    if (this.mBarParams.navigationBarEnable && this.mBarParams.navigationBarWithKitkatEnable) {
                        if (this.mBarParams.fits) {
                            this.mContentView.setPadding(0, this.mConfig.getStatusBarHeight(), 0, this.mConfig.getNavigationBarHeight());
                            return;
                        } else {
                            this.mContentView.setPadding(0, 0, 0, this.mConfig.getNavigationBarHeight());
                            return;
                        }
                    }
                    if (this.mBarParams.fits) {
                        this.mContentView.setPadding(0, this.mConfig.getStatusBarHeight(), 0, 0);
                        return;
                    } else {
                        this.mContentView.setPadding(0, 0, 0, 0);
                        return;
                    }
                }
                if (this.mBarParams.navigationBarEnable && this.mBarParams.navigationBarWithKitkatEnable) {
                    this.mContentView.setPadding(0, this.mConfig.getStatusBarHeight() + this.mConfig.getActionBarHeight() + 10, 0, this.mConfig.getNavigationBarHeight());
                    return;
                } else {
                    this.mContentView.setPadding(0, this.mConfig.getStatusBarHeight() + this.mConfig.getActionBarHeight() + 10, 0, 0);
                    return;
                }
            }
            if (!this.mBarParams.isSupportActionBar) {
                if (this.mBarParams.navigationBarEnable && this.mBarParams.navigationBarWithKitkatEnable) {
                    if (this.mBarParams.fits) {
                        this.mContentView.setPadding(0, this.mConfig.getStatusBarHeight(), this.mConfig.getNavigationBarWidth(), 0);
                        return;
                    } else {
                        this.mContentView.setPadding(0, 0, this.mConfig.getNavigationBarWidth(), 0);
                        return;
                    }
                }
                if (this.mBarParams.fits) {
                    this.mContentView.setPadding(0, this.mConfig.getStatusBarHeight(), 0, 0);
                    return;
                } else {
                    this.mContentView.setPadding(0, 0, 0, 0);
                    return;
                }
            }
            if (this.mBarParams.navigationBarEnable && this.mBarParams.navigationBarWithKitkatEnable) {
                this.mContentView.setPadding(0, this.mConfig.getStatusBarHeight() + this.mConfig.getActionBarHeight() + 10, this.mConfig.getNavigationBarWidth(), 0);
                return;
            } else {
                this.mContentView.setPadding(0, this.mConfig.getStatusBarHeight() + this.mConfig.getActionBarHeight() + 10, 0, 0);
                return;
            }
        }
        if (!this.mBarParams.isSupportActionBar) {
            if (this.mBarParams.fits) {
                this.mContentView.setPadding(0, this.mConfig.getStatusBarHeight(), 0, 0);
                return;
            } else {
                this.mContentView.setPadding(0, 0, 0, 0);
                return;
            }
        }
        this.mContentView.setPadding(0, this.mConfig.getStatusBarHeight() + this.mConfig.getActionBarHeight() + 10, 0, 0);
    }

    private void registerEMUI3_x() {
        if ((OSUtils.isEMUI3_1() || OSUtils.isEMUI3_0()) && this.mConfig.hasNavigtionBar() && this.mBarParams.navigationBarEnable && this.mBarParams.navigationBarWithKitkatEnable) {
            if (this.mBarParams.navigationStatusObserver == null && this.mBarParams.navigationBarView != null) {
                this.mBarParams.navigationStatusObserver = new ContentObserver(new Handler()) { // from class: com.gyf.barlibrary.ImmersionBar.1
                    @Override // android.database.ContentObserver
                    public void onChange(boolean z) {
                        if (Settings.System.getInt(ImmersionBar.this.mActivity.getContentResolver(), ImmersionBar.NAVIGATIONBAR_IS_MIN, 0) == 1) {
                            ImmersionBar.this.mBarParams.navigationBarView.setVisibility(8);
                            ImmersionBar.this.mContentView.setPadding(0, ImmersionBar.this.mContentView.getPaddingTop(), 0, 0);
                            return;
                        }
                        ImmersionBar.this.mBarParams.navigationBarView.setVisibility(0);
                        if (!ImmersionBar.this.mBarParams.systemWindows) {
                            if (ImmersionBar.this.mConfig.isNavigationAtBottom()) {
                                ImmersionBar.this.mContentView.setPadding(0, ImmersionBar.this.mContentView.getPaddingTop(), 0, ImmersionBar.this.mConfig.getNavigationBarHeight());
                                return;
                            } else {
                                ImmersionBar.this.mContentView.setPadding(0, ImmersionBar.this.mContentView.getPaddingTop(), ImmersionBar.this.mConfig.getNavigationBarWidth(), 0);
                                return;
                            }
                        }
                        ImmersionBar.this.mContentView.setPadding(0, ImmersionBar.this.mContentView.getPaddingTop(), 0, 0);
                    }
                };
            }
            this.mActivity.getContentResolver().registerContentObserver(Settings.System.getUriFor(NAVIGATIONBAR_IS_MIN), true, this.mBarParams.navigationStatusObserver);
        }
    }

    private void unRegisterEMUI3_x() {
        if ((OSUtils.isEMUI3_1() || OSUtils.isEMUI3_0()) && this.mConfig.hasNavigtionBar() && this.mBarParams.navigationBarEnable && this.mBarParams.navigationBarWithKitkatEnable && this.mBarParams.navigationStatusObserver != null && this.mBarParams.navigationBarView != null) {
            this.mActivity.getContentResolver().unregisterContentObserver(this.mBarParams.navigationStatusObserver);
        }
    }

    /* renamed from: com.gyf.barlibrary.ImmersionBar$4 */
    static /* synthetic */ class C12184 {
        static final /* synthetic */ int[] $SwitchMap$com$gyf$barlibrary$BarHide = new int[BarHide.values().length];

        static {
            try {
                $SwitchMap$com$gyf$barlibrary$BarHide[BarHide.FLAG_HIDE_BAR.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$gyf$barlibrary$BarHide[BarHide.FLAG_HIDE_STATUS_BAR.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$gyf$barlibrary$BarHide[BarHide.FLAG_HIDE_NAVIGATION_BAR.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$gyf$barlibrary$BarHide[BarHide.FLAG_SHOW_BAR.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    private int hideBar(int i) {
        if (Build.VERSION.SDK_INT >= 16) {
            int i2 = C12184.$SwitchMap$com$gyf$barlibrary$BarHide[this.mBarParams.barHide.ordinal()];
            if (i2 == 1) {
                i |= 518;
            } else if (i2 == 2) {
                i |= 1028;
            } else if (i2 == 3) {
                i |= 514;
            } else if (i2 == 4) {
                i |= 0;
            }
        }
        return i | 4096;
    }

    private int setStatusBarDarkFont(int i) {
        return (Build.VERSION.SDK_INT < 23 || !this.mBarParams.darkFont) ? i : i | 8192;
    }

    private void transformView() {
        if (this.mBarParams.viewMap.size() != 0) {
            for (Map.Entry<View, Map<Integer, Integer>> entry : this.mBarParams.viewMap.entrySet()) {
                View key = entry.getKey();
                Map<Integer, Integer> value = entry.getValue();
                Integer numValueOf = Integer.valueOf(this.mBarParams.statusBarColor);
                Integer numValueOf2 = Integer.valueOf(this.mBarParams.statusBarColorTransform);
                for (Map.Entry<Integer, Integer> entry2 : value.entrySet()) {
                    Integer key2 = entry2.getKey();
                    numValueOf2 = entry2.getValue();
                    numValueOf = key2;
                }
                if (key != null) {
                    if (Math.abs(this.mBarParams.viewAlpha - 0.0f) == 0.0f) {
                        key.setBackgroundColor(ColorUtils.blendARGB(numValueOf.intValue(), numValueOf2.intValue(), this.mBarParams.statusBarAlpha));
                    } else {
                        key.setBackgroundColor(ColorUtils.blendARGB(numValueOf.intValue(), numValueOf2.intValue(), this.mBarParams.viewAlpha));
                    }
                }
            }
        }
    }

    private void setStatusBarView() {
        if (Build.VERSION.SDK_INT < 19 || this.mBarParams.statusBarViewByHeight == null) {
            return;
        }
        ViewGroup.LayoutParams layoutParams = this.mBarParams.statusBarViewByHeight.getLayoutParams();
        layoutParams.height = this.mConfig.getStatusBarHeight();
        this.mBarParams.statusBarViewByHeight.setLayoutParams(layoutParams);
    }

    private void setTitleBar() {
        if (Build.VERSION.SDK_INT < 19 || this.mBarParams.titleBarView == null) {
            return;
        }
        final ViewGroup.LayoutParams layoutParams = this.mBarParams.titleBarView.getLayoutParams();
        if (layoutParams.height == -2 || layoutParams.height == -1) {
            this.mBarParams.titleBarView.getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.gyf.barlibrary.ImmersionBar.2
                @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
                public void onGlobalLayout() {
                    ImmersionBar.this.mBarParams.titleBarView.getViewTreeObserver().removeOnGlobalLayoutListener(this);
                    if (ImmersionBar.this.mBarParams.titleBarHeight == 0) {
                        ImmersionBar.this.mBarParams.titleBarHeight = ImmersionBar.this.mBarParams.titleBarView.getHeight() + ImmersionBar.this.mConfig.getStatusBarHeight();
                    }
                    if (ImmersionBar.this.mBarParams.titleBarPaddingTopHeight == 0) {
                        ImmersionBar.this.mBarParams.titleBarPaddingTopHeight = ImmersionBar.this.mBarParams.titleBarView.getPaddingTop() + ImmersionBar.this.mConfig.getStatusBarHeight();
                    }
                    layoutParams.height = ImmersionBar.this.mBarParams.titleBarHeight;
                    ImmersionBar.this.mBarParams.titleBarView.setPadding(ImmersionBar.this.mBarParams.titleBarView.getPaddingLeft(), ImmersionBar.this.mBarParams.titleBarPaddingTopHeight, ImmersionBar.this.mBarParams.titleBarView.getPaddingRight(), ImmersionBar.this.mBarParams.titleBarView.getPaddingBottom());
                    ImmersionBar.this.mBarParams.titleBarView.setLayoutParams(layoutParams);
                }
            });
            return;
        }
        if (this.mBarParams.titleBarHeight == 0) {
            this.mBarParams.titleBarHeight = layoutParams.height + this.mConfig.getStatusBarHeight();
        }
        if (this.mBarParams.titleBarPaddingTopHeight == 0) {
            BarParams barParams = this.mBarParams;
            barParams.titleBarPaddingTopHeight = barParams.titleBarView.getPaddingTop() + this.mConfig.getStatusBarHeight();
        }
        layoutParams.height = this.mBarParams.titleBarHeight;
        this.mBarParams.titleBarView.setPadding(this.mBarParams.titleBarView.getPaddingLeft(), this.mBarParams.titleBarPaddingTopHeight, this.mBarParams.titleBarView.getPaddingRight(), this.mBarParams.titleBarView.getPaddingBottom());
        this.mBarParams.titleBarView.setLayoutParams(layoutParams);
    }

    private void setTitleBarMarginTop() {
        if (Build.VERSION.SDK_INT >= 19) {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.mBarParams.titleBarViewMarginTop.getLayoutParams();
            marginLayoutParams.setMargins(marginLayoutParams.leftMargin, marginLayoutParams.topMargin + this.mConfig.getStatusBarHeight(), marginLayoutParams.rightMargin, marginLayoutParams.bottomMargin);
            this.mBarParams.titleBarViewMarginTopFlag = true;
        }
    }

    private void supportActionBar() {
        if (Build.VERSION.SDK_INT < 21 || OSUtils.isEMUI3_1()) {
            return;
        }
        int childCount = this.mContentView.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = this.mContentView.getChildAt(i);
            if (childAt instanceof ViewGroup) {
                this.mBarParams.systemWindows = childAt.getFitsSystemWindows();
                if (this.mBarParams.systemWindows) {
                    this.mContentView.setPadding(0, 0, 0, 0);
                    return;
                }
            }
        }
        if (this.mBarParams.isSupportActionBar) {
            this.mContentView.setPadding(0, this.mConfig.getStatusBarHeight() + this.mConfig.getActionBarHeight(), 0, 0);
        } else if (this.mBarParams.fits) {
            this.mContentView.setPadding(0, this.mConfig.getStatusBarHeight(), 0, 0);
        } else {
            this.mContentView.setPadding(0, 0, 0, 0);
        }
    }

    private void keyboardEnable() {
        if (Build.VERSION.SDK_INT >= 19) {
            if (this.mBarParams.keyboardPatch == null) {
                this.mBarParams.keyboardPatch = KeyboardPatch.patch(this.mActivity, this.mWindow);
            }
            this.mBarParams.keyboardPatch.setBarParams(this.mBarParams);
            if (this.mBarParams.keyboardEnable) {
                this.mBarParams.keyboardPatch.enable(this.mBarParams.keyboardMode);
            } else {
                this.mBarParams.keyboardPatch.disable(this.mBarParams.keyboardMode);
            }
        }
    }

    private void setMIUIStatusBarDarkFont(Window window, boolean z) throws IllegalAccessException, NoSuchMethodException, ClassNotFoundException, SecurityException, IllegalArgumentException, InvocationTargetException {
        if (window != null) {
            Class<?> cls = window.getClass();
            try {
                Class<?> cls2 = Class.forName("android.view.MiuiWindowManager$LayoutParams");
                int i = cls2.getField("EXTRA_FLAG_STATUS_BAR_DARK_MODE").getInt(cls2);
                Method method = cls.getMethod("setExtraFlags", Integer.TYPE, Integer.TYPE);
                if (z) {
                    method.invoke(window, Integer.valueOf(i), Integer.valueOf(i));
                } else {
                    method.invoke(window, 0, Integer.valueOf(i));
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    public static void setTitleBar(final Activity activity, final View view) {
        if (Build.VERSION.SDK_INT >= 19) {
            final ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            if (layoutParams.height == -2) {
                view.getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.gyf.barlibrary.ImmersionBar.3
                    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
                    public void onGlobalLayout() {
                        view.getViewTreeObserver().removeOnGlobalLayoutListener(this);
                        layoutParams.height = view.getHeight() + ImmersionBar.getStatusBarHeight(activity);
                        View view2 = view;
                        view2.setPadding(view2.getPaddingLeft(), view.getPaddingTop() + ImmersionBar.getStatusBarHeight(activity), view.getPaddingRight(), view.getPaddingBottom());
                    }
                });
            } else {
                layoutParams.height += getStatusBarHeight(activity);
                view.setPadding(view.getPaddingLeft(), view.getPaddingTop() + getStatusBarHeight(activity), view.getPaddingRight(), view.getPaddingBottom());
            }
        }
    }

    public static void setStatusBarView(Activity activity, View view) {
        if (Build.VERSION.SDK_INT >= 19) {
            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            layoutParams.height = getStatusBarHeight(activity);
            view.setLayoutParams(layoutParams);
        }
    }

    public static void setTitleBarMarginTop(Activity activity, View view) {
        if (Build.VERSION.SDK_INT >= 19) {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
            marginLayoutParams.setMargins(marginLayoutParams.leftMargin, marginLayoutParams.topMargin + getStatusBarHeight(activity), marginLayoutParams.rightMargin, marginLayoutParams.bottomMargin);
        }
    }

    public static void setFitsSystemWindows(Activity activity) {
        ViewGroup viewGroup = (ViewGroup) activity.findViewById(R.id.content);
        int childCount = viewGroup.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = viewGroup.getChildAt(i);
            if (childAt instanceof ViewGroup) {
                childAt.setFitsSystemWindows(true);
                ((ViewGroup) childAt).setClipToPadding(true);
            }
        }
    }

    public static boolean hasNavigationBar(Activity activity) {
        return new BarConfig(activity).hasNavigtionBar();
    }

    public static int getNavigationBarHeight(Activity activity) {
        return new BarConfig(activity).getNavigationBarHeight();
    }

    public static int getNavigationBarWidth(Activity activity) {
        return new BarConfig(activity).getNavigationBarWidth();
    }

    public static boolean isNavigationAtBottom(Activity activity) {
        return new BarConfig(activity).isNavigationAtBottom();
    }

    public static int getStatusBarHeight(Activity activity) {
        return new BarConfig(activity).getStatusBarHeight();
    }

    public static int getActionBarHeight(Activity activity) {
        return new BarConfig(activity).getActionBarHeight();
    }

    public static boolean isSupportStatusBarDarkFont() {
        return OSUtils.isMIUI6Later() || OSUtils.isFlymeOS4Later() || Build.VERSION.SDK_INT >= 23;
    }

    public static void hideStatusBar(Window window) {
        window.setFlags(1024, 1024);
    }

    public BarParams getBarParams() {
        return this.mBarParams;
    }

    public BarParams getTagBarParams(String str) {
        if (isEmpty(str)) {
            return null;
        }
        return mTagMap.get(this.mActivityName + "_TAG_" + str);
    }

    private static boolean isEmpty(String str) {
        return str == null || str.trim().length() == 0;
    }
}
