package cn.forward.androids.Image;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import cn.forward.androids.Image.ImageLoader;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;

/* loaded from: classes.dex */
public class ImageLoaderGroup implements ImageLoader {
    private ImageCache mImageCache;
    private ImageLoaderConfig mImageLoaderConfig;
    private CopyOnWriteArrayList<ImageLoader> mImageLoaders;

    public ImageLoaderGroup(Context context) {
        this(context, ((int) Runtime.getRuntime().maxMemory()) / 8, 26214400L);
    }

    public ImageLoaderGroup(Context context, int i, long j) {
        this(context, null);
        this.mImageCache = new ImageCache(context, i, j);
        this.mImageLoaderConfig = new ImageLoaderConfig(this.mImageCache);
    }

    public ImageLoaderGroup(Context context, ImageLoaderConfig imageLoaderConfig) {
        this.mImageLoaders = new CopyOnWriteArrayList<>();
        this.mImageLoaderConfig = imageLoaderConfig;
    }

    public void setImageLoaderConfig(ImageLoaderConfig imageLoaderConfig) {
        this.mImageLoaderConfig = imageLoaderConfig;
    }

    public ImageLoaderConfig getImageLoaderConfig() {
        return this.mImageLoaderConfig;
    }

    @Override // cn.forward.androids.Image.ImageLoader
    public boolean load(View view, String str, ImageLoaderConfig imageLoaderConfig, ImageLoader.ImageLoaderListener imageLoaderListener) {
        if (view == null || TextUtils.isEmpty(str)) {
            return false;
        }
        Iterator<ImageLoader> it = this.mImageLoaders.iterator();
        while (it.hasNext()) {
            if (it.next().load(view, str, imageLoaderConfig, imageLoaderListener)) {
                return true;
            }
        }
        return false;
    }

    @Override // cn.forward.androids.Image.ImageLoader
    public boolean load(String str, ImageLoaderConfig imageLoaderConfig, ImageLoader.ImageLoaderListener imageLoaderListener) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        Iterator<ImageLoader> it = this.mImageLoaders.iterator();
        while (it.hasNext()) {
            if (it.next().load(str, imageLoaderConfig, imageLoaderListener)) {
                return true;
            }
        }
        return false;
    }

    public boolean load(View view, String str) {
        return load(view, str, this.mImageLoaderConfig, null);
    }

    public boolean load(String str, ImageLoader.ImageLoaderListener imageLoaderListener) {
        return load(str, this.mImageLoaderConfig, imageLoaderListener);
    }

    public void addImageLoader(ImageLoader imageLoader) {
        if (imageLoader == null) {
            return;
        }
        this.mImageLoaders.add(imageLoader);
    }

    public void removeImageLoader(ImageLoader imageLoader) {
        if (imageLoader == null) {
            return;
        }
        this.mImageLoaders.remove(imageLoader);
    }

    public boolean containImageLoader(ImageLoader imageLoader) {
        return this.mImageLoaders.contains(imageLoader);
    }

    public void clearAllImageLoaders() {
        this.mImageLoaders.clear();
    }

    public ImageCache getImageCache() {
        return this.mImageCache;
    }
}
