package com.geek.banner.loader;

import android.content.Context;
import android.widget.ImageView;

/* loaded from: classes.dex */
public abstract class ImageLoader<T> implements BannerLoader<T, ImageView> {
    @Override // com.geek.banner.loader.BannerLoader
    public ImageView createView(Context context, int i) {
        ImageView imageView = new ImageView(context);
        imageView.setScaleType(ImageView.ScaleType.CENTER_CROP);
        return imageView;
    }
}
