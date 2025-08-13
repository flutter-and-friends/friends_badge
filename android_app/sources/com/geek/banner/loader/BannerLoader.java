package com.geek.banner.loader;

import android.content.Context;
import android.view.View;

/* loaded from: classes.dex */
public interface BannerLoader<T, V extends View> {
    V createView(Context context, int i);

    void loadView(Context context, BannerEntry bannerEntry, int i, V v);
}
