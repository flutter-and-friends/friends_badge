package com.yuyh.easyadapter.helper;

import android.graphics.Bitmap;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.view.View;
import com.yuyh.easyadapter.abslistview.EasyLVHolder;
import com.yuyh.easyadapter.recyclerview.EasyRVHolder;

/* loaded from: classes.dex */
public interface ViewHelper {

    public interface AbsListView<VH extends EasyLVHolder> {
        VH setAlpha(int i, float f);

        VH setBackgroundColor(int i, int i2);

        VH setBackgroundColorRes(int i, int i2);

        VH setChecked(int i, boolean z);

        VH setImageBitmap(int i, Bitmap bitmap);

        VH setImageDrawable(int i, Drawable drawable);

        VH setImageDrawableRes(int i, int i2);

        VH setImageResource(int i, int i2);

        VH setImageUrl(int i, String str);

        VH setOnClickListener(int i, View.OnClickListener onClickListener);

        VH setTag(int i, int i2, Object obj);

        VH setTag(int i, Object obj);

        VH setText(int i, String str);

        VH setTextColor(int i, int i2);

        VH setTextColorRes(int i, int i2);

        VH setTypeface(int i, Typeface typeface);

        VH setTypeface(Typeface typeface, int... iArr);

        VH setVisible(int i, int i2);

        VH setVisible(int i, boolean z);
    }

    public interface RecyclerView<VH extends EasyRVHolder> {
        VH setAlpha(int i, float f);

        VH setBackgroundColor(int i, int i2);

        VH setBackgroundColorRes(int i, int i2);

        VH setChecked(int i, boolean z);

        VH setImageBitmap(int i, Bitmap bitmap);

        VH setImageDrawable(int i, Drawable drawable);

        VH setImageDrawableRes(int i, int i2);

        VH setImageResource(int i, int i2);

        VH setImageUrl(int i, String str);

        VH setOnClickListener(int i, View.OnClickListener onClickListener);

        VH setTag(int i, int i2, Object obj);

        VH setTag(int i, Object obj);

        VH setText(int i, String str);

        VH setTextColor(int i, int i2);

        VH setTextColorRes(int i, int i2);

        VH setTypeface(int i, Typeface typeface);

        VH setTypeface(Typeface typeface, int... iArr);

        VH setVisible(int i, int i2);

        VH setVisible(int i, boolean z);
    }
}
