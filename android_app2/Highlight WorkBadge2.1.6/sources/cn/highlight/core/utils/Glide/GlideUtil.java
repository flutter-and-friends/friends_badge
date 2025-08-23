package cn.highlight.core.utils.Glide;

import android.content.Context;
import android.widget.ImageView;
import cn.highlight.core.R;
import com.bumptech.glide.Glide;
import com.bumptech.glide.load.engine.DiskCacheStrategy;
import com.bumptech.glide.load.resource.bitmap.RoundedCorners;
import com.bumptech.glide.request.BaseRequestOptions;
import com.bumptech.glide.request.RequestOptions;

/* loaded from: classes.dex */
public class GlideUtil {
    private static GlideUtil instance;

    public static synchronized GlideUtil getInstance() {
        if (instance == null) {
            instance = new GlideUtil();
        }
        return instance;
    }

    public void setImg(Context context, Object obj, ImageView imageView, int i) {
        if (1 == i) {
            Glide.with(context).load(obj).apply((BaseRequestOptions<?>) new RequestOptions().fitCenter().skipMemoryCache(false).placeholder(R.drawable.loading_fail_img_f).error(R.drawable.loading_fail_img_f).diskCacheStrategy(DiskCacheStrategy.ALL)).into(imageView);
            return;
        }
        if (2 == i) {
            Glide.with(context).load(obj).apply((BaseRequestOptions<?>) new RequestOptions().fitCenter().skipMemoryCache(false).placeholder(R.drawable.loading_fail_img_c).error(R.drawable.loading_fail_img_c).diskCacheStrategy(DiskCacheStrategy.ALL)).into(imageView);
            return;
        }
        if (3 == i) {
            Glide.with(context).load(obj).apply((BaseRequestOptions<?>) RequestOptions.circleCropTransform().skipMemoryCache(false).placeholder(R.drawable.loading_fail_img_r).error(R.drawable.loading_fail_img_r).diskCacheStrategy(DiskCacheStrategy.ALL)).into(imageView);
        } else if (4 == i) {
            Glide.with(context).load(obj).apply((BaseRequestOptions<?>) RequestOptions.bitmapTransform(new RoundedCorners(20)).override(300, 300).skipMemoryCache(false).placeholder(R.drawable.loading_fail_img_f).error(R.drawable.loading_fail_img_f).diskCacheStrategy(DiskCacheStrategy.ALL)).into(imageView);
        } else if (5 == i) {
            Glide.with(context).load(obj).apply((BaseRequestOptions<?>) RequestOptions.bitmapTransform(new RoundedCorners(20)).override(300, 300).skipMemoryCache(false).placeholder(R.drawable.loading_fail_img_c).error(R.drawable.loading_fail_img_c).diskCacheStrategy(DiskCacheStrategy.ALL)).into(imageView);
        }
    }
}
