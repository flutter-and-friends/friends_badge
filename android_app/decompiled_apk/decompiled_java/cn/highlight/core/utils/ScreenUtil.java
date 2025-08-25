package cn.highlight.core.utils;

import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Rect;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.WindowManager;

/* loaded from: classes.dex */
public class ScreenUtil {
    public static int px2dip(float f) {
        return (int) ((f / 2.0f) + 0.5f);
    }

    public static int getScreenWidth(Context context) {
        DisplayMetrics displayMetrics = getDisplayMetrics(context);
        if (displayMetrics != null) {
            return displayMetrics.widthPixels;
        }
        return 0;
    }

    public static int getScreenHeight(Context context) {
        DisplayMetrics displayMetrics = getDisplayMetrics(context);
        if (displayMetrics != null) {
            return displayMetrics.heightPixels;
        }
        return 0;
    }

    public static int DPtoPX(int i, Context context) {
        ((WindowManager) context.getSystemService("window")).getDefaultDisplay().getMetrics(new DisplayMetrics());
        return (int) ((i * r0.density) + 0.5d);
    }

    public static int getMissScaleHeight(int i) {
        return (i * 235) / 345;
    }

    public static float getDensity(Context context) {
        DisplayMetrics displayMetrics = getDisplayMetrics(context);
        if (displayMetrics != null) {
            return displayMetrics.density;
        }
        return 0.0f;
    }

    public static float getScaledDensity(Context context) {
        DisplayMetrics displayMetrics = getDisplayMetrics(context);
        if (displayMetrics != null) {
            return displayMetrics.scaledDensity;
        }
        return 0.0f;
    }

    public static int dip2px(Context context, float f) {
        if (context == null) {
            return 0;
        }
        return (int) ((f * context.getResources().getDisplayMetrics().density) + 0.5f);
    }

    public static int px2dip(Context context, float f) {
        if (context == null) {
            return 0;
        }
        return (int) ((f / context.getResources().getDisplayMetrics().density) + 0.5f);
    }

    public static int sp2px(Context context, float f) {
        return (int) ((f * context.getResources().getDisplayMetrics().scaledDensity) + 0.5f);
    }

    public static int getStatusHeight(Context context) throws IllegalAccessException, InstantiationException, ClassNotFoundException, NumberFormatException {
        try {
            Class<?> cls = Class.forName("com.android.internal.R$dimen");
            return context.getResources().getDimensionPixelSize(Integer.parseInt(cls.getField("status_bar_height").get(cls.newInstance()).toString()));
        } catch (Exception e) {
            e.printStackTrace();
            return -1;
        }
    }

    public static DisplayMetrics getDisplayMetrics(Context context) {
        if (context == null) {
            return null;
        }
        WindowManager windowManager = (WindowManager) context.getSystemService("window");
        DisplayMetrics displayMetrics = new DisplayMetrics();
        windowManager.getDefaultDisplay().getMetrics(displayMetrics);
        return displayMetrics;
    }

    public static String getResolution(Context context) {
        DisplayMetrics displayMetrics = new DisplayMetrics();
        ((WindowManager) context.getSystemService("window")).getDefaultDisplay().getMetrics(displayMetrics);
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(displayMetrics.widthPixels);
        stringBuffer.append('x');
        stringBuffer.append(displayMetrics.heightPixels);
        return stringBuffer.toString();
    }

    public static Bitmap snapShotWithStatusBar(Activity activity) {
        View decorView = activity.getWindow().getDecorView();
        decorView.setDrawingCacheEnabled(true);
        decorView.buildDrawingCache();
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(decorView.getDrawingCache(), 0, 0, getScreenWidth(activity), getScreenHeight(activity));
        decorView.destroyDrawingCache();
        return bitmapCreateBitmap;
    }

    public static Bitmap snapShotWithoutStatusBar(Activity activity) {
        View decorView = activity.getWindow().getDecorView();
        decorView.setDrawingCacheEnabled(true);
        decorView.buildDrawingCache();
        Bitmap drawingCache = decorView.getDrawingCache();
        Rect rect = new Rect();
        activity.getWindow().getDecorView().getWindowVisibleDisplayFrame(rect);
        int i = rect.top;
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(drawingCache, 0, i, getScreenWidth(activity), getScreenHeight(activity) - i);
        decorView.destroyDrawingCache();
        return bitmapCreateBitmap;
    }
}
