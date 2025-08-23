package cn.forward.androids.Image;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.drawable.Drawable;
import android.media.ThumbnailUtils;
import android.text.TextUtils;
import android.view.View;
import android.view.animation.Animation;
import cn.forward.androids.Image.ImageLoader;
import cn.forward.androids.Image.ImageLoaderConfig;
import cn.forward.androids.SimpleAsyncTask;
import cn.forward.androids.utils.ImageUtils;
import cn.forward.androids.utils.LogUtil;
import cn.forward.androids.utils.Util;
import java.io.FileDescriptor;
import java.io.FileInputStream;
import java.lang.ref.WeakReference;
import java.lang.reflect.Method;

/* loaded from: classes.dex */
public class LocalImagerLoader implements ImageLoader {
    private Context mContext;

    public LocalImagerLoader(Context context) {
        this.mContext = context.getApplicationContext();
    }

    @Override // cn.forward.androids.Image.ImageLoader
    public boolean load(View view, String str, ImageLoaderConfig imageLoaderConfig, ImageLoader.ImageLoaderListener imageLoaderListener) {
        Bitmap bitmapMemoryCache;
        if (imageLoaderConfig == null) {
            throw new RuntimeException("ImageLoaderConfig is null!");
        }
        if (!str.startsWith("/") && !str.startsWith("assets/")) {
            return false;
        }
        int[] iArrOptimizeMaxSizeByView = ImageUtils.optimizeMaxSizeByView(view, imageLoaderConfig.getMaxWidth(), imageLoaderConfig.getMaxHeight());
        int i = iArrOptimizeMaxSizeByView[0];
        int i2 = iArrOptimizeMaxSizeByView[1];
        String strGenerateCacheKey = imageLoaderConfig.isNeedCache() ? imageLoaderConfig.getCacheKeyGenerator().generateCacheKey(iArrOptimizeMaxSizeByView, str, imageLoaderConfig) : null;
        if (imageLoaderConfig.isNeedCache() && (bitmapMemoryCache = imageLoaderConfig.getImageCache().getBitmapMemoryCache(strGenerateCacheKey)) != null) {
            if (imageLoaderListener != null) {
                imageLoaderListener.onLoadStarted(str, imageLoaderConfig);
            }
            if (view != null) {
                imageLoaderConfig.getImageSetter().setImage(view, bitmapMemoryCache);
            }
            if (imageLoaderListener != null) {
                imageLoaderListener.onLoadCompleted(str, imageLoaderConfig, bitmapMemoryCache);
            }
            return true;
        }
        if (view != null) {
            if (cancelUselessImageLoadTask(view, str, imageLoaderConfig) == null) {
                ImageLoadTask imageLoadTask = new ImageLoadTask(this.mContext, view, str, i, i2, imageLoaderConfig, strGenerateCacheKey, imageLoaderListener);
                imageLoaderConfig.getImageSetter().setImage(view, new AsyncDrawable(imageLoaderConfig.getLoadingDrawable(), imageLoadTask));
                imageLoadTask.executePriority(imageLoaderConfig.getPriority(), new String[0]);
            } else if (imageLoaderListener != null) {
                imageLoaderListener.onLoadFailed(str, imageLoaderConfig, -1);
            }
        } else {
            new ImageLoadTask(this.mContext, null, str, i, i2, imageLoaderConfig, strGenerateCacheKey, imageLoaderListener).executePriority(imageLoaderConfig.getPriority(), new String[0]);
        }
        return true;
    }

    @Override // cn.forward.androids.Image.ImageLoader
    public boolean load(String str, ImageLoaderConfig imageLoaderConfig, ImageLoader.ImageLoaderListener imageLoaderListener) {
        return load(null, str, imageLoaderConfig, imageLoaderListener);
    }

    public static Bitmap getBitmapFromDisk(FileDescriptor fileDescriptor, int i, int i2, ImageCache imageCache, String str, Bitmap.CompressFormat compressFormat) {
        Bitmap bitmapDiskCache;
        if (imageCache != null && (bitmapDiskCache = imageCache.getBitmapDiskCache(str)) != null) {
            return bitmapDiskCache;
        }
        try {
            BitmapFactory.Options options = new BitmapFactory.Options();
            options.inJustDecodeBounds = true;
            BitmapFactory.decodeFileDescriptor(fileDescriptor, null, options);
            options.inSampleSize = ImageUtils.computeBitmapSimple(options.outWidth * options.outHeight, i * i2 * 2);
            options.inPreferredConfig = Bitmap.Config.RGB_565;
            options.inInputShareable = true;
            options.inPurgeable = true;
            options.inJustDecodeBounds = false;
            Bitmap bitmapDecodeFileDescriptor = BitmapFactory.decodeFileDescriptor(fileDescriptor, null, options);
            if (imageCache != null && bitmapDecodeFileDescriptor != null) {
                imageCache.saveBitmapDiskCache(bitmapDecodeFileDescriptor, str, compressFormat);
            }
            return bitmapDecodeFileDescriptor;
        } catch (Throwable unused) {
            LogUtil.i("get bitmap error");
            return null;
        }
    }

    private static class ImageLoadTask extends SimpleAsyncTask<String, Object, Bitmap> {
        private static final int PROGRESS_LOADING = 1;
        private static final int PROGRESS_LOAD_STARTED = 0;
        private ImageLoaderConfig mConfig;
        private Context mContext;
        private String mKey;
        private ImageLoader.ImageLoaderListener mLoaderListener;
        private int mMaxHeight;
        private int mMaxWidth;
        private String mPath;
        private WeakReference<View> mViewRef;

        public ImageLoadTask(Context context, View view, String str, int i, int i2, ImageLoaderConfig imageLoaderConfig, String str2, ImageLoader.ImageLoaderListener imageLoaderListener) {
            this.mContext = context.getApplicationContext();
            this.mViewRef = view == null ? null : new WeakReference<>(view);
            this.mPath = str;
            this.mMaxWidth = i;
            this.mMaxHeight = i2;
            this.mConfig = imageLoaderConfig;
            this.mKey = str2;
            this.mLoaderListener = imageLoaderListener;
        }

        private boolean abort() {
            WeakReference<View> weakReference = this.mViewRef;
            return weakReference != null ? weakReference.get() == null || isCancelled() || this != LocalImagerLoader.getLoadTaskFromContainer(this.mViewRef.get(), this.mConfig.getImageSetter()) : isCancelled();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // cn.forward.androids.SimpleAsyncTask
        public Bitmap doInBackground(String... strArr) {
            FileInputStream fileInputStreamCreateInputStream;
            float f;
            int height;
            if (abort()) {
                return null;
            }
            try {
                start();
                try {
                    if (this.mPath.startsWith("/")) {
                        fileInputStreamCreateInputStream = new FileInputStream(this.mPath);
                    } else {
                        fileInputStreamCreateInputStream = this.mPath.startsWith("assets/") ? this.mContext.getAssets().openFd(this.mPath.substring(7, this.mPath.length())).createInputStream() : null;
                    }
                } catch (Throwable unused) {
                    fileInputStreamCreateInputStream = null;
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
            try {
                FileDescriptor fd = fileInputStreamCreateInputStream.getFD();
                int i = 0;
                int i2 = this.mConfig.isLoadOriginal() ? 0 : this.mMaxWidth;
                if (!this.mConfig.isLoadOriginal()) {
                    i = this.mMaxHeight;
                }
                Bitmap bitmapFromDisk = LocalImagerLoader.getBitmapFromDisk(fd, i2, i, this.mConfig.isNeedCache() ? this.mConfig.getImageCache() : null, this.mKey, this.mPath.toLowerCase().endsWith(".png") ? Bitmap.CompressFormat.PNG : Bitmap.CompressFormat.JPEG);
                if (abort()) {
                    return null;
                }
                if (bitmapFromDisk != null) {
                    if (this.mConfig.isExtractThumbnail()) {
                        if (bitmapFromDisk.getWidth() < bitmapFromDisk.getHeight()) {
                            f = this.mMaxWidth;
                            height = bitmapFromDisk.getWidth();
                        } else {
                            f = this.mMaxHeight;
                            height = bitmapFromDisk.getHeight();
                        }
                        if (f / height <= 1.0f) {
                            bitmapFromDisk = ThumbnailUtils.extractThumbnail(bitmapFromDisk, this.mMaxWidth, this.mMaxHeight, 2);
                        }
                    }
                    if (this.mConfig.isAutoRotate()) {
                        bitmapFromDisk = ImageUtils.rotateBitmapByExif(bitmapFromDisk, this.mPath, true);
                    }
                    if (this.mConfig.isNeedCache()) {
                        this.mConfig.getImageCache().saveBitmapMemoryCache(bitmapFromDisk, this.mKey);
                    }
                }
                return bitmapFromDisk;
            } catch (Throwable unused2) {
                try {
                    LogUtil.e("open file failed:" + this.mPath);
                    Util.closeQuietly(fileInputStreamCreateInputStream);
                    return null;
                } finally {
                    Util.closeQuietly(fileInputStreamCreateInputStream);
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // cn.forward.androids.SimpleAsyncTask
        public void onPostExecute(Bitmap bitmap) {
            if (abort()) {
                ImageLoader.ImageLoaderListener imageLoaderListener = this.mLoaderListener;
                if (imageLoaderListener != null) {
                    imageLoaderListener.onLoadFailed(this.mPath, this.mConfig, -2);
                    return;
                }
                return;
            }
            WeakReference<View> weakReference = this.mViewRef;
            if (weakReference == null) {
                if (bitmap != null) {
                    ImageLoader.ImageLoaderListener imageLoaderListener2 = this.mLoaderListener;
                    if (imageLoaderListener2 != null) {
                        imageLoaderListener2.onLoadCompleted(this.mPath, this.mConfig, bitmap);
                        return;
                    }
                    return;
                }
                ImageLoader.ImageLoaderListener imageLoaderListener3 = this.mLoaderListener;
                if (imageLoaderListener3 != null) {
                    imageLoaderListener3.onLoadFailed(this.mPath, this.mConfig, -3);
                    return;
                }
                return;
            }
            View view = weakReference.get();
            if (view == null) {
                ImageLoader.ImageLoaderListener imageLoaderListener4 = this.mLoaderListener;
                if (imageLoaderListener4 != null) {
                    imageLoaderListener4.onLoadFailed(this.mPath, this.mConfig, -2);
                    return;
                }
                return;
            }
            if (bitmap != null) {
                this.mConfig.getImageSetter().setImage(view, bitmap);
                LocalImagerLoader.animationDisplay(view, this.mConfig.getAnimation());
                ImageLoader.ImageLoaderListener imageLoaderListener5 = this.mLoaderListener;
                if (imageLoaderListener5 != null) {
                    imageLoaderListener5.onLoadCompleted(this.mPath, this.mConfig, bitmap);
                    return;
                }
                return;
            }
            this.mConfig.getImageSetter().setImage(view, this.mConfig.getLoadFailedDrawable());
            ImageLoader.ImageLoaderListener imageLoaderListener6 = this.mLoaderListener;
            if (imageLoaderListener6 != null) {
                imageLoaderListener6.onLoadFailed(this.mPath, this.mConfig, -3);
            }
        }

        private void start() {
            publishProgress(0);
        }

        public void updateProgress(long j, long j2) {
            publishProgress(1, Long.valueOf(j), Long.valueOf(j2));
        }

        @Override // cn.forward.androids.SimpleAsyncTask
        protected void onProgressUpdate(Object... objArr) {
            if (this.mLoaderListener == null) {
                return;
            }
            int iIntValue = ((Integer) objArr[0]).intValue();
            if (iIntValue == 0) {
                this.mLoaderListener.onLoadStarted(this.mPath, this.mConfig);
            } else if (iIntValue == 1 && objArr.length == 3) {
                this.mLoaderListener.onLoading(this.mPath, this.mConfig, ((Long) objArr[1]).longValue(), ((Long) objArr[2]).longValue());
            }
        }

        public View getView() {
            return this.mViewRef.get();
        }

        public String getPath() {
            return this.mPath;
        }

        public int getMaxWidth() {
            return this.mMaxWidth;
        }

        public int getMaxHeight() {
            return this.mMaxHeight;
        }

        public ImageLoaderConfig getConfig() {
            return this.mConfig;
        }

        public String getKey() {
            return this.mKey;
        }
    }

    private static ImageLoadTask cancelUselessImageLoadTask(View view, String str, ImageLoaderConfig imageLoaderConfig) {
        ImageLoadTask loadTaskFromContainer = getLoadTaskFromContainer(view, imageLoaderConfig.getImageSetter());
        if (loadTaskFromContainer != null) {
            String key = loadTaskFromContainer.getKey();
            if (!TextUtils.isEmpty(key) && key.equals(str)) {
                return loadTaskFromContainer;
            }
            loadTaskFromContainer.cancel(true);
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static ImageLoadTask getLoadTaskFromContainer(View view, ImageLoaderConfig.ImageSetter imageSetter) {
        if (view == null) {
            return null;
        }
        Drawable drawable = imageSetter.getDrawable(view);
        if (!(drawable instanceof AsyncDrawable)) {
            return null;
        }
        SimpleAsyncTask bitmapWorkerTask = ((AsyncDrawable) drawable).getBitmapWorkerTask();
        if (bitmapWorkerTask instanceof ImageLoadTask) {
            return (ImageLoadTask) bitmapWorkerTask;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void animationDisplay(View view, Animation animation) {
        if (view == null || animation == null) {
            return;
        }
        try {
            Method declaredMethod = Animation.class.getDeclaredMethod("clone", new Class[0]);
            declaredMethod.setAccessible(true);
            view.startAnimation((Animation) declaredMethod.invoke(animation, new Object[0]));
        } catch (Throwable unused) {
            view.startAnimation(animation);
        }
    }
}
