package cn.forward.androids.Image;

import android.graphics.Bitmap;
import android.view.View;

/* loaded from: classes.dex */
public interface ImageLoader {

    public static abstract class ImageLoaderListener {
        public static final int FAILED_BITMAP_ERROR = -3;
        public static final int FAILED_TASK_CANCELLED = -2;
        public static final int FAILED_TASK_EXISTS = -1;

        public abstract void onLoadCompleted(String str, ImageLoaderConfig imageLoaderConfig, Bitmap bitmap);

        public abstract void onLoadFailed(String str, ImageLoaderConfig imageLoaderConfig, int i);

        public void onLoadStarted(String str, ImageLoaderConfig imageLoaderConfig) {
        }

        public void onLoading(String str, ImageLoaderConfig imageLoaderConfig, long j, long j2) {
        }
    }

    boolean load(View view, String str, ImageLoaderConfig imageLoaderConfig, ImageLoaderListener imageLoaderListener);

    boolean load(String str, ImageLoaderConfig imageLoaderConfig, ImageLoaderListener imageLoaderListener);
}
