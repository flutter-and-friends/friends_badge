package cn.forward.androids.Image;

import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.animation.Animation;
import android.widget.ImageView;
import cn.forward.androids.Priority;

/* loaded from: classes.dex */
public class ImageLoaderConfig {
    private Bitmap.Config bitmapConfig;
    private Animation mAnimation;
    private boolean mAutoRotate;
    private ImageCacheKeyGenerator mCacheKeyGenerator;
    private boolean mExtractThumbnail;
    private ImageCache mImageCache;
    private ImageSetter mImageSetter;
    private Drawable mLoadFailedDrawable;
    private boolean mLoadOriginal;
    private Drawable mLoadingDrawable;
    private int mMaxHeight;
    private int mMaxWidth;
    private boolean mNeedCache;
    private Priority mPriority;
    private static ImageLoaderConfig sDefaultConfig = new ImageLoaderConfig(null);
    private static ImageSetter sDefaultImageSetter = new ImageSetter();
    private static final ImageCacheKeyGenerator DEFAULT_KEY_GENERATOR = new ImageCacheKeyGenerator();

    public static ImageSetter getDefaultImageSetter() {
        return sDefaultImageSetter;
    }

    public static void setDefaultImageSetter(ImageSetter imageSetter) {
        sDefaultImageSetter = imageSetter;
    }

    public ImageLoaderConfig() {
        this(null);
    }

    public ImageLoaderConfig(ImageCache imageCache) {
        this.mNeedCache = true;
        this.bitmapConfig = Bitmap.Config.RGB_565;
        this.mImageSetter = sDefaultImageSetter;
        this.mPriority = Priority.DEFAULT;
        this.mExtractThumbnail = false;
        this.mCacheKeyGenerator = DEFAULT_KEY_GENERATOR;
        this.mImageCache = imageCache;
    }

    public int getMaxWidth() {
        return this.mMaxWidth;
    }

    public void setMaxWidth(int i) {
        this.mMaxWidth = i;
    }

    public int getMaxHeight() {
        return this.mMaxHeight;
    }

    public void setMaxHeight(int i) {
        this.mMaxHeight = i;
    }

    public boolean isNeedCache() {
        if (this.mImageCache == null) {
            return false;
        }
        return this.mNeedCache;
    }

    public void setNeedCache(boolean z) {
        this.mNeedCache = z;
    }

    public boolean isLoadOriginal() {
        return this.mLoadOriginal;
    }

    public void setLoadOriginal(boolean z) {
        this.mLoadOriginal = z;
    }

    public boolean isAutoRotate() {
        return this.mAutoRotate;
    }

    public void setAutoRotate(boolean z) {
        this.mAutoRotate = z;
    }

    public Animation getAnimation() {
        return this.mAnimation;
    }

    public void setAnimation(Animation animation) {
        this.mAnimation = animation;
    }

    public Drawable getLoadingDrawable() {
        return this.mLoadingDrawable;
    }

    public void setLoadingDrawable(Drawable drawable) {
        this.mLoadingDrawable = drawable;
    }

    public Drawable getLoadFailedDrawable() {
        return this.mLoadFailedDrawable;
    }

    public void setLoadFailedDrawable(Drawable drawable) {
        this.mLoadFailedDrawable = drawable;
    }

    public Bitmap.Config getBitmapConfig() {
        return this.bitmapConfig;
    }

    public void setBitmapConfig(Bitmap.Config config) {
        this.bitmapConfig = config;
    }

    public static ImageLoaderConfig getDefaultConfig() {
        return sDefaultConfig;
    }

    public static void setDefaultConfig(ImageLoaderConfig imageLoaderConfig) {
        sDefaultConfig = imageLoaderConfig;
    }

    public void setImageSetter(ImageSetter imageSetter) {
        this.mImageSetter = imageSetter;
    }

    public ImageSetter getImageSetter() {
        return this.mImageSetter;
    }

    public ImageCache getImageCache() {
        return this.mImageCache;
    }

    public void setImageCache(ImageCache imageCache) {
        this.mImageCache = imageCache;
    }

    public Priority getPriority() {
        return this.mPriority;
    }

    public void setPriority(Priority priority) {
        this.mPriority = priority;
    }

    public boolean isExtractThumbnail() {
        return this.mExtractThumbnail;
    }

    public void setExtractThumbnail(boolean z) {
        this.mExtractThumbnail = z;
    }

    public static class ImageSetter {
        public void setImage(View view, Bitmap bitmap) {
            if (view == null) {
                return;
            }
            if (view instanceof ImageView) {
                ((ImageView) view).setImageBitmap(bitmap);
            } else {
                view.setBackgroundDrawable(new BitmapDrawable(view.getResources(), bitmap));
            }
        }

        public void setImage(View view, Drawable drawable) {
            if (view == null) {
                return;
            }
            if (view instanceof ImageView) {
                ((ImageView) view).setImageDrawable(drawable);
            } else {
                view.setBackgroundDrawable(drawable);
            }
        }

        public Drawable getDrawable(View view) {
            if (view == null) {
                return null;
            }
            if (view instanceof ImageView) {
                return ((ImageView) view).getDrawable();
            }
            return view.getBackground();
        }
    }

    /* renamed from: clone, reason: merged with bridge method [inline-methods] */
    public ImageLoaderConfig m6clone() {
        ImageLoaderConfig imageLoaderConfig = new ImageLoaderConfig(this.mImageCache);
        imageLoaderConfig.setAnimation(getAnimation());
        imageLoaderConfig.setAutoRotate(isAutoRotate());
        imageLoaderConfig.setBitmapConfig(getBitmapConfig());
        imageLoaderConfig.setImageSetter(getImageSetter());
        imageLoaderConfig.setLoadFailedDrawable(getLoadFailedDrawable());
        imageLoaderConfig.setLoadingDrawable(getLoadingDrawable());
        imageLoaderConfig.setLoadOriginal(isLoadOriginal());
        imageLoaderConfig.setMaxHeight(getMaxHeight());
        imageLoaderConfig.setMaxWidth(getMaxWidth());
        imageLoaderConfig.setPriority(getPriority());
        imageLoaderConfig.setNeedCache(isNeedCache());
        imageLoaderConfig.setImageCache(getImageCache());
        imageLoaderConfig.setCacheKeyGenerator(getCacheKeyGenerator());
        imageLoaderConfig.setExtractThumbnail(isExtractThumbnail());
        return imageLoaderConfig;
    }

    public void setCacheKeyGenerator(ImageCacheKeyGenerator imageCacheKeyGenerator) {
        this.mCacheKeyGenerator = imageCacheKeyGenerator;
    }

    public ImageCacheKeyGenerator getCacheKeyGenerator() {
        return this.mCacheKeyGenerator;
    }
}
