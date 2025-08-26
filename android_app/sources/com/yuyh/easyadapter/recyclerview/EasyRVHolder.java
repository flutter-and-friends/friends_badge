package com.yuyh.easyadapter.recyclerview;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.SparseArray;
import android.view.View;
import android.view.animation.AlphaAnimation;
import android.widget.Checkable;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import androidx.recyclerview.widget.RecyclerView;
import com.yuyh.easyadapter.AdapterImageLoader;
import com.yuyh.easyadapter.helper.ViewHelper;

/* loaded from: classes.dex */
public class EasyRVHolder extends RecyclerView.ViewHolder implements ViewHelper.RecyclerView<EasyRVHolder> {
    protected Context mContext;
    private View mConvertView;
    private AdapterImageLoader.ImageLoader mImageLoader;
    private int mLayoutId;
    private SparseArray<View> mViews;

    public EasyRVHolder(Context context, int i, View view, AdapterImageLoader.ImageLoader imageLoader) {
        super(view);
        this.mViews = new SparseArray<>();
        this.mContext = context;
        this.mLayoutId = i;
        this.mImageLoader = imageLoader;
        this.mConvertView = view;
        this.mConvertView.setTag(this);
    }

    public <V extends View> V getView(int i) {
        V v = (V) this.mViews.get(i);
        if (v != null) {
            return v;
        }
        V v2 = (V) this.mConvertView.findViewById(i);
        this.mViews.put(i, v2);
        return v2;
    }

    public int getLayoutId() {
        return this.mLayoutId;
    }

    public View getItemView() {
        return this.mConvertView;
    }

    public EasyRVHolder setOnItemViewClickListener(View.OnClickListener onClickListener) {
        this.mConvertView.setOnClickListener(onClickListener);
        return this;
    }

    public EasyRVHolder setOnItemViewLongClickListener(View.OnLongClickListener onLongClickListener) {
        this.mConvertView.setOnLongClickListener(onLongClickListener);
        return this;
    }

    @Override // com.yuyh.easyadapter.helper.ViewHelper.RecyclerView
    public EasyRVHolder setText(int i, String str) {
        ((TextView) getView(i)).setText(str);
        return this;
    }

    @Override // com.yuyh.easyadapter.helper.ViewHelper.RecyclerView
    public EasyRVHolder setTextColor(int i, int i2) {
        ((TextView) getView(i)).setTextColor(i2);
        return this;
    }

    @Override // com.yuyh.easyadapter.helper.ViewHelper.RecyclerView
    public EasyRVHolder setTextColorRes(int i, int i2) {
        ((TextView) getView(i)).setTextColor(ContextCompat.getColor(this.mContext, i2));
        return this;
    }

    @Override // com.yuyh.easyadapter.helper.ViewHelper.RecyclerView
    public EasyRVHolder setImageResource(int i, int i2) {
        ((ImageView) getView(i)).setImageResource(i2);
        return this;
    }

    @Override // com.yuyh.easyadapter.helper.ViewHelper.RecyclerView
    public EasyRVHolder setBackgroundColor(int i, int i2) {
        getView(i).setBackgroundColor(i2);
        return this;
    }

    @Override // com.yuyh.easyadapter.helper.ViewHelper.RecyclerView
    public EasyRVHolder setBackgroundColorRes(int i, int i2) {
        getView(i).setBackgroundResource(i2);
        return this;
    }

    @Override // com.yuyh.easyadapter.helper.ViewHelper.RecyclerView
    public EasyRVHolder setImageDrawable(int i, Drawable drawable) {
        ((ImageView) getView(i)).setImageDrawable(drawable);
        return this;
    }

    @Override // com.yuyh.easyadapter.helper.ViewHelper.RecyclerView
    public EasyRVHolder setImageDrawableRes(int i, int i2) {
        return setImageDrawable(i, ContextCompat.getDrawable(this.mContext, i2));
    }

    @Override // com.yuyh.easyadapter.helper.ViewHelper.RecyclerView
    public EasyRVHolder setImageUrl(int i, String str) {
        ImageView imageView = (ImageView) getView(i);
        AdapterImageLoader.ImageLoader imageLoader = this.mImageLoader;
        if (imageLoader != null) {
            imageLoader.loadImage(this.mContext, str, imageView);
        } else if (AdapterImageLoader.sImageLoader != null) {
            AdapterImageLoader.sImageLoader.loadImage(this.mContext, str, imageView);
        }
        return this;
    }

    @Override // com.yuyh.easyadapter.helper.ViewHelper.RecyclerView
    public EasyRVHolder setImageBitmap(int i, Bitmap bitmap) {
        ((ImageView) getView(i)).setImageBitmap(bitmap);
        return this;
    }

    @Override // com.yuyh.easyadapter.helper.ViewHelper.RecyclerView
    public EasyRVHolder setVisible(int i, boolean z) {
        getView(i).setVisibility(z ? 0 : 8);
        return this;
    }

    @Override // com.yuyh.easyadapter.helper.ViewHelper.RecyclerView
    public EasyRVHolder setVisible(int i, int i2) {
        getView(i).setVisibility(i2);
        return this;
    }

    @Override // com.yuyh.easyadapter.helper.ViewHelper.RecyclerView
    public EasyRVHolder setTag(int i, Object obj) {
        getView(i).setTag(obj);
        return this;
    }

    @Override // com.yuyh.easyadapter.helper.ViewHelper.RecyclerView
    public EasyRVHolder setTag(int i, int i2, Object obj) {
        getView(i).setTag(i2, obj);
        return this;
    }

    @Override // com.yuyh.easyadapter.helper.ViewHelper.RecyclerView
    public EasyRVHolder setChecked(int i, boolean z) {
        ((Checkable) getView(i)).setChecked(z);
        return this;
    }

    @Override // com.yuyh.easyadapter.helper.ViewHelper.RecyclerView
    public EasyRVHolder setAlpha(int i, float f) {
        if (Build.VERSION.SDK_INT >= 11) {
            getView(i).setAlpha(f);
        } else {
            AlphaAnimation alphaAnimation = new AlphaAnimation(f, f);
            alphaAnimation.setDuration(0L);
            alphaAnimation.setFillAfter(true);
            getView(i).startAnimation(alphaAnimation);
        }
        return this;
    }

    @Override // com.yuyh.easyadapter.helper.ViewHelper.RecyclerView
    public EasyRVHolder setTypeface(int i, Typeface typeface) {
        TextView textView = (TextView) getView(i);
        textView.setTypeface(typeface);
        textView.setPaintFlags(textView.getPaintFlags() | 128);
        return this;
    }

    @Override // com.yuyh.easyadapter.helper.ViewHelper.RecyclerView
    public EasyRVHolder setTypeface(Typeface typeface, int... iArr) {
        for (int i : iArr) {
            TextView textView = (TextView) getView(i);
            textView.setTypeface(typeface);
            textView.setPaintFlags(textView.getPaintFlags() | 128);
        }
        return this;
    }

    @Override // com.yuyh.easyadapter.helper.ViewHelper.RecyclerView
    public EasyRVHolder setOnClickListener(int i, View.OnClickListener onClickListener) {
        getView(i).setOnClickListener(onClickListener);
        return this;
    }
}
