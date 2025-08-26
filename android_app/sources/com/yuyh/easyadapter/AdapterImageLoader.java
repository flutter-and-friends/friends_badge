package com.yuyh.easyadapter;

import android.content.Context;
import android.widget.ImageView;

/* loaded from: classes.dex */
public class AdapterImageLoader {
    public static ImageLoader sImageLoader;

    public interface ImageLoader {
        void loadImage(Context context, String str, ImageView imageView);
    }

    public static void init(ImageLoader imageLoader) {
        sImageLoader = imageLoader;
    }
}
