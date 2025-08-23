package cn.highlight.core.utils.Glide;

import android.content.Context;
import android.os.Looper;
import android.text.TextUtils;
import com.bumptech.glide.Glide;
import com.bumptech.glide.load.engine.cache.DiskCache;
import java.io.File;
import java.math.BigDecimal;

/* loaded from: classes.dex */
public class GlideCacheUtil {
    private static GlideCacheUtil inst;

    public static GlideCacheUtil getInstance() {
        if (inst == null) {
            inst = new GlideCacheUtil();
        }
        return inst;
    }

    private static String getFormatSize(double d) {
        double d2 = d / 1024.0d;
        if (d2 < 1.0d) {
            return d + "Byte";
        }
        double d3 = d2 / 1024.0d;
        if (d3 < 1.0d) {
            return new BigDecimal(Double.toString(d2)).setScale(2, 4).toPlainString() + "KB";
        }
        double d4 = d3 / 1024.0d;
        if (d4 < 1.0d) {
            return new BigDecimal(Double.toString(d3)).setScale(2, 4).toPlainString() + "MB";
        }
        double d5 = d4 / 1024.0d;
        if (d5 < 1.0d) {
            return new BigDecimal(Double.toString(d4)).setScale(2, 4).toPlainString() + "GB";
        }
        return new BigDecimal(d5).setScale(2, 4).toPlainString() + "TB";
    }

    public void clearImageDiskCache(final Context context) {
        try {
            if (Looper.myLooper() == Looper.getMainLooper()) {
                new Thread(new Runnable() { // from class: cn.highlight.core.utils.Glide.GlideCacheUtil.1
                    @Override // java.lang.Runnable
                    public void run() {
                        Glide.get(context).clearDiskCache();
                    }
                }).start();
            } else {
                Glide.get(context).clearDiskCache();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void clearImageMemoryCache(Context context) {
        try {
            if (Looper.myLooper() == Looper.getMainLooper()) {
                Glide.get(context).clearMemory();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void clearImageAllCache(Context context) {
        clearImageDiskCache(context);
        clearImageMemoryCache(context);
        deleteFolderFile(context.getExternalCacheDir() + DiskCache.Factory.DEFAULT_DISK_CACHE_DIR, true);
    }

    public String getCacheSize(Context context) {
        try {
            return getFormatSize(getFolderSize(new File(context.getCacheDir() + "/" + DiskCache.Factory.DEFAULT_DISK_CACHE_DIR)));
        } catch (Exception e) {
            e.printStackTrace();
            return "";
        }
    }

    private long getFolderSize(File file) throws Exception {
        long length;
        long j = 0;
        try {
            for (File file2 : file.listFiles()) {
                if (file2.isDirectory()) {
                    length = getFolderSize(file2);
                } else {
                    length = file2.length();
                }
                j += length;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return j;
    }

    private void deleteFolderFile(String str, boolean z) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        try {
            File file = new File(str);
            if (file.isDirectory()) {
                for (File file2 : file.listFiles()) {
                    deleteFolderFile(file2.getAbsolutePath(), true);
                }
            }
            if (z) {
                if (!file.isDirectory()) {
                    file.delete();
                } else if (file.listFiles().length == 0) {
                    file.delete();
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
