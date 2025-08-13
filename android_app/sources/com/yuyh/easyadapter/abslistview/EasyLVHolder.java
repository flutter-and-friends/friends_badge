package com.yuyh.easyadapter.abslistview;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AlphaAnimation;
import android.widget.Checkable;
import android.widget.ImageView;
import android.widget.TextView;
import com.yuyh.easyadapter.AdapterImageLoader;
import com.yuyh.easyadapter.helper.ViewHelper;

/* loaded from: classes.dex */
public class EasyLVHolder implements ViewHelper.AbsListView<EasyLVHolder> {
    protected AdapterImageLoader.ImageLoader imageLoader;
    protected Context mContext;
    private View mConvertView;
    protected int mLayoutId;
    protected int mPosition;
    private SparseArray<View> mViews = new SparseArray<>();
    private SparseArray<View> mConvertViews = new SparseArray<>();

    protected EasyLVHolder(Context context, int i, ViewGroup viewGroup, int i2, AdapterImageLoader.ImageLoader imageLoader) {
        this.mConvertView = this.mConvertViews.get(i2);
        this.mPosition = i;
        this.mContext = context;
        this.mLayoutId = i2;
        this.imageLoader = imageLoader;
        if (this.mConvertView == null) {
            this.mConvertView = LayoutInflater.from(context).inflate(i2, viewGroup, false);
            this.mConvertViews.put(i2, this.mConvertView);
            this.mConvertView.setTag(this);
        }
    }

    protected EasyLVHolder() {
    }

    public static EasyLVHolder get(Context context, int i, View view, ViewGroup viewGroup, int i2, AdapterImageLoader.ImageLoader imageLoader) {
        if (view == null) {
            return new EasyLVHolder(context, i, viewGroup, i2, imageLoader);
        }
        EasyLVHolder easyLVHolder = (EasyLVHolder) view.getTag();
        if (easyLVHolder.mLayoutId != i2) {
            return new EasyLVHolder(context, i, viewGroup, i2, imageLoader);
        }
        easyLVHolder.setPosition(i);
        return easyLVHolder;
    }

    public View getConvertView() {
        return this.mConvertViews.valueAt(0);
    }

    public View getConvertView(int i) {
        return this.mConvertViews.get(i);
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

    public void setPosition(int i) {
        this.mPosition = i;
    }

    public int getLayoutId() {
        return this.mLayoutId;
    }

    @Override // com.yuyh.easyadapter.helper.ViewHelper.AbsListView
    public EasyLVHolder setText(int i, String str) {
        ((TextView) getView(i)).setText(str);
        return this;
    }

    @Override // com.yuyh.easyadapter.helper.ViewHelper.AbsListView
    public EasyLVHolder setTextColor(int i, int i2) {
        ((TextView) getView(i)).setTextColor(i2);
        return this;
    }

    @Override // com.yuyh.easyadapter.helper.ViewHelper.AbsListView
    public EasyLVHolder setTextColorRes(int i, int i2) {
        ((TextView) getView(i)).setTextColor(this.mContext.getResources().getColor(i2, null));
        return this;
    }

    @Override // com.yuyh.easyadapter.helper.ViewHelper.AbsListView
    public EasyLVHolder setImageResource(int i, int i2) {
        ((ImageView) getView(i)).setImageResource(i2);
        return this;
    }

    @Override // com.yuyh.easyadapter.helper.ViewHelper.AbsListView
    public EasyLVHolder setBackgroundColor(int i, int i2) {
        getView(i).setBackgroundColor(i2);
        return this;
    }

    @Override // com.yuyh.easyadapter.helper.ViewHelper.AbsListView
    public EasyLVHolder setBackgroundColorRes(int i, int i2) {
        getView(i).setBackgroundResource(i2);
        return this;
    }

    @Override // com.yuyh.easyadapter.helper.ViewHelper.AbsListView
    public EasyLVHolder setImageDrawable(int i, Drawable drawable) {
        ((ImageView) getView(i)).setImageDrawable(drawable);
        return this;
    }

    @Override // com.yuyh.easyadapter.helper.ViewHelper.AbsListView
    public EasyLVHolder setImageDrawableRes(int i, int i2) {
        return setImageDrawable(i, this.mContext.getResources().getDrawable(i2, null));
    }

    @Override // com.yuyh.easyadapter.helper.ViewHelper.AbsListView
    public EasyLVHolder setImageUrl(int i, String str) {
        ImageView imageView = (ImageView) getView(i);
        AdapterImageLoader.ImageLoader imageLoader = this.imageLoader;
        if (imageLoader != null) {
            imageLoader.loadImage(this.mContext, str, imageView);
        } else if (AdapterImageLoader.sImageLoader != null) {
            AdapterImageLoader.sImageLoader.loadImage(this.mContext, str, imageView);
        }
        return this;
    }

    @Override // com.yuyh.easyadapter.helper.ViewHelper.AbsListView
    public EasyLVHolder setImageBitmap(int i, Bitmap bitmap) {
        ((ImageView) getView(i)).setImageBitmap(bitmap);
        return this;
    }

    @Override // com.yuyh.easyadapter.helper.ViewHelper.AbsListView
    public EasyLVHolder setVisible(int i, boolean z) {
        getView(i).setVisibility(z ? 0 : 8);
        return this;
    }

    @Override // com.yuyh.easyadapter.helper.ViewHelper.AbsListView
    public EasyLVHolder setVisible(int i, int i2) {
        getView(i).setVisibility(i2);
        return this;
    }

    @Override // com.yuyh.easyadapter.helper.ViewHelper.AbsListView
    public EasyLVHolder setTag(int i, Object obj) {
        getView(i).setTag(obj);
        return this;
    }

    @Override // com.yuyh.easyadapter.helper.ViewHelper.AbsListView
    public EasyLVHolder setTag(int i, int i2, Object obj) {
        getView(i).setTag(i2, obj);
        return this;
    }

    @Override // com.yuyh.easyadapter.helper.ViewHelper.AbsListView
    public EasyLVHolder setChecked(int i, boolean z) {
        ((Checkable) getView(i)).setChecked(z);
        return this;
    }

    @Override // com.yuyh.easyadapter.helper.ViewHelper.AbsListView
    public EasyLVHolder setAlpha(int i, float f) {
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

    @Override // com.yuyh.easyadapter.helper.ViewHelper.AbsListView
    public EasyLVHolder setTypeface(int i, Typeface typeface) {
        TextView textView = (TextView) getView(i);
        textView.setTypeface(typeface);
        textView.setPaintFlags(textView.getPaintFlags() | 128);
        return this;
    }

    @Override // com.yuyh.easyadapter.helper.ViewHelper.AbsListView
    public EasyLVHolder setTypeface(Typeface typeface, int... iArr) {
        for (int i : iArr) {
            TextView textView = (TextView) getView(i);
            textView.setTypeface(typeface);
            textView.setPaintFlags(textView.getPaintFlags() | 128);
        }
        return this;
    }

    @Override // com.yuyh.easyadapter.helper.ViewHelper.AbsListView
    public EasyLVHolder setOnClickListener(int i, View.OnClickListener onClickListener) {
        getView(i).setOnClickListener(onClickListener);
        return this;
    }
}
