package com.codbking.widget.utils;

import android.app.Activity;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Paint;
import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;
import android.view.inputmethod.InputMethodManager;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import java.util.Locale;

/* loaded from: classes.dex */
public class UIAdjuster {
    public static void closeKeyBoard(Context context) {
        if (context == null || !(context instanceof Activity)) {
            return;
        }
        closeKeyBoardInner((Activity) context);
    }

    private static void closeKeyBoardInner(Activity activity) {
        InputMethodManager inputMethodManager = (InputMethodManager) activity.getSystemService("input_method");
        if (activity.getCurrentFocus() == null || activity.getCurrentFocus().getWindowToken() == null) {
            return;
        }
        inputMethodManager.hideSoftInputFromWindow(activity.getCurrentFocus().getWindowToken(), 2);
    }

    public static int setListViewHeightBasedOnChildren(ListView listView) {
        ListAdapter adapter = listView.getAdapter();
        if (adapter == null) {
            return 0;
        }
        int measuredHeight = 0;
        for (int i = 0; i < adapter.getCount(); i++) {
            View view = adapter.getView(i, null, listView);
            view.measure(0, 0);
            measuredHeight += view.getMeasuredHeight();
        }
        ViewGroup.LayoutParams layoutParams = listView.getLayoutParams();
        layoutParams.height = measuredHeight + (listView.getDividerHeight() * (adapter.getCount() - 1)) + listView.getPaddingTop() + listView.getPaddingBottom();
        int i2 = layoutParams.height;
        listView.setLayoutParams(layoutParams);
        listView.requestLayout();
        return i2;
    }

    public static void addViewIfNotNull(ViewGroup viewGroup, View view) {
        if (view != null) {
            viewGroup.addView(view);
        }
    }

    public static float computeDIPtoPixel(Context context, float f) {
        return (context == null ? Resources.getSystem() : context.getResources()).getDisplayMetrics().density * f;
    }

    public static float computeDynamicWidth(TextView textView, int i) {
        return computeDynamicWidth(textView, i, new Paint(), new Rect());
    }

    public static float computeDynamicWidth(TextView textView, int i, Paint paint, Rect rect) {
        String str = (String) textView.getText();
        float textSize = textView.getTextSize();
        while (true) {
            paint.setTextSize(textSize);
            paint.getTextBounds(str, 0, str.length(), rect);
            if (rect.width() <= i) {
                return textSize;
            }
            textSize -= 1.0f;
        }
    }

    public static int computeStringWidth(String str, float f) {
        Rect rect = new Rect();
        Paint paint = new Paint();
        paint.setTextSize(f);
        paint.getTextBounds(str, 0, str.length(), rect);
        return rect.width();
    }

    public static boolean getLanguage(Context context) {
        Configuration configuration = context.getResources().getConfiguration();
        return configuration.locale.equals(Locale.TAIWAN) || configuration.locale.equals(Locale.TRADITIONAL_CHINESE);
    }

    public static String getLocale(Context context) {
        Configuration configuration = context.getResources().getConfiguration();
        return (configuration.locale.equals(Locale.TAIWAN) || configuration.locale.equals(Locale.TRADITIONAL_CHINESE)) ? "zh_TW" : "en_US";
    }
}
