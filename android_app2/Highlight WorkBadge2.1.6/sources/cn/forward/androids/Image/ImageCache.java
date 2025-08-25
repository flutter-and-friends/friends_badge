package cn.forward.androids.Image;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Build;
import android.os.Environment;
import android.util.LruCache;
import cn.forward.androids.utils.LogUtil;
import cn.forward.androids.utils.cache.DiskLruCache;
import java.io.File;
import java.io.IOException;
import java.io.OutputStream;
import java.util.Map;

/* loaded from: classes.dex */
public class ImageCache {
    private DiskLruCache diskLruCache;
    private Context mContext;
    private File mDiskCacheDir;
    private final Object mDiskCacheLock;
    private long mDiskCacheMaxSize;
    private int mMemoryCacheMaxSize;
    private LruCache<String, Bitmap> memoryLruCache;

    public ImageCache(Context context, int i, long j) {
        this(context, i, j, new File(getDiskCacheDir(context, "androidsCache")));
    }

    public ImageCache(Context context, int i, long j, File file) {
        this.mDiskCacheLock = new Object();
        this.mContext = context;
        this.mMemoryCacheMaxSize = i;
        this.mDiskCacheMaxSize = j;
        this.mDiskCacheDir = file;
        initMemoryCache();
        initDiskCache();
    }

    private void initMemoryCache() {
        this.memoryLruCache = new LruCache<String, Bitmap>(this.mMemoryCacheMaxSize) { // from class: cn.forward.androids.Image.ImageCache.1
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // android.util.LruCache
            public int sizeOf(String str, Bitmap bitmap) {
                if (bitmap == null) {
                    return 0;
                }
                return bitmap.getRowBytes() * bitmap.getHeight();
            }
        };
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x0042 A[Catch: Exception -> 0x004e, all -> 0x0054, TRY_LEAVE, TryCatch #0 {Exception -> 0x004e, blocks: (B:17:0x002b, B:19:0x0033, B:22:0x003c, B:23:0x0042), top: B:32:0x002b, outer: #2 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void initDiskCache() {
        PackageInfo packageInfo;
        synchronized (this.mDiskCacheLock) {
            if (this.diskLruCache == null || this.diskLruCache.isClosed()) {
                int i = 0;
                try {
                    packageInfo = this.mContext.getPackageManager().getPackageInfo(this.mContext.getPackageName(), 0);
                } catch (PackageManager.NameNotFoundException e) {
                    e.printStackTrace();
                }
                if (packageInfo != null) {
                    i = packageInfo.versionCode;
                    try {
                        if (!this.mDiskCacheDir.exists() || this.mDiskCacheDir.mkdirs()) {
                            this.diskLruCache = DiskLruCache.open(this.mDiskCacheDir, i, 1, this.mDiskCacheMaxSize);
                        } else {
                            LogUtil.e("disk cache dir init failed");
                        }
                    } catch (Exception e2) {
                        e2.printStackTrace();
                    }
                    return;
                }
                if (!this.mDiskCacheDir.exists()) {
                    this.diskLruCache = DiskLruCache.open(this.mDiskCacheDir, i, 1, this.mDiskCacheMaxSize);
                }
                return;
            }
        }
    }

    public void clearAllCache() {
        clearAllMemoryCache();
        clearAllDiskCache();
    }

    public void clearAllMemoryCache() {
        LruCache<String, Bitmap> lruCache = this.memoryLruCache;
        if (lruCache == null) {
            return;
        }
        lruCache.evictAll();
    }

    public void clearAllDiskCache() {
        synchronized (this.mDiskCacheLock) {
            if (this.diskLruCache == null) {
                return;
            }
            try {
                this.diskLruCache.delete();
                this.diskLruCache.close();
                this.diskLruCache = null;
            } catch (IOException e) {
                e.printStackTrace();
            }
            initDiskCache();
        }
    }

    public void closeAllCache() {
        closeMemoryCache();
        closeDiskCache();
    }

    public void closeMemoryCache() {
        clearAllMemoryCache();
        this.memoryLruCache = null;
    }

    public void closeDiskCache() {
        synchronized (this.mDiskCacheLock) {
            if (this.diskLruCache == null) {
                return;
            }
            try {
                this.diskLruCache.close();
                this.diskLruCache = null;
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }

    public Bitmap getBitmapMemoryCache(String str) {
        LruCache<String, Bitmap> lruCache = this.memoryLruCache;
        if (lruCache != null) {
            return lruCache.get(str);
        }
        return null;
    }

    public void saveBitmapMemoryCache(Bitmap bitmap, String str) {
        LruCache<String, Bitmap> lruCache = this.memoryLruCache;
        if (lruCache == null || str == null) {
            return;
        }
        lruCache.put(str, bitmap);
    }

    public Bitmap getBitmapDiskCache(String str) {
        DiskLruCache.Snapshot snapshot;
        synchronized (this.mDiskCacheLock) {
            if (this.diskLruCache != null && str != null) {
                BitmapFactory.Options options = new BitmapFactory.Options();
                try {
                    try {
                        snapshot = this.diskLruCache.get(str.hashCode() + "");
                        if (snapshot != null) {
                            try {
                                options.inPreferredConfig = Bitmap.Config.RGB_565;
                                options.inInputShareable = true;
                                options.inPurgeable = true;
                                return BitmapFactory.decodeStream(snapshot.getInputStream(0), null, options);
                            } catch (OutOfMemoryError unused) {
                                LogUtil.e("getBitmapDiskCache:OutOfMemory");
                                try {
                                    options.inSampleSize = 2;
                                    return BitmapFactory.decodeStream(snapshot.getInputStream(0), null, options);
                                } catch (Exception e) {
                                    e.printStackTrace();
                                }
                            }
                        }
                    } catch (OutOfMemoryError unused2) {
                        snapshot = null;
                    }
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
                return null;
            }
            return null;
        }
    }

    public void saveBitmapDiskCache(Bitmap bitmap, String str) {
        saveBitmapDiskCache(bitmap, str, Bitmap.CompressFormat.JPEG);
    }

    public void saveBitmapDiskCache(Bitmap bitmap, String str, Bitmap.CompressFormat compressFormat) {
        synchronized (this.mDiskCacheLock) {
            if (this.diskLruCache == null || str == null) {
                return;
            }
            try {
                DiskLruCache.Editor editorEdit = this.diskLruCache.edit(str.hashCode() + "");
                if (editorEdit != null) {
                    OutputStream outputStreamNewOutputStream = editorEdit.newOutputStream(0);
                    bitmap.compress(compressFormat, 90, outputStreamNewOutputStream);
                    editorEdit.commit();
                    outputStreamNewOutputStream.close();
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    public Bitmap getBitmap(String str) {
        Bitmap bitmapMemoryCache = getBitmapMemoryCache(str);
        if (bitmapMemoryCache == null && (bitmapMemoryCache = getBitmapDiskCache(str)) != null) {
            saveBitmapMemoryCache(bitmapMemoryCache, str);
        }
        return bitmapMemoryCache;
    }

    public void save(Bitmap bitmap, String str, Bitmap.CompressFormat compressFormat) {
        saveBitmapMemoryCache(bitmap, str);
        saveBitmapDiskCache(bitmap, str, compressFormat);
    }

    public void save(Bitmap bitmap, String str) {
        saveBitmapMemoryCache(bitmap, str);
        saveBitmapDiskCache(bitmap, str);
    }

    public void flushDiskCache() {
        synchronized (this.mDiskCacheLock) {
            if (this.diskLruCache != null) {
                try {
                    this.diskLruCache.flush();
                } catch (Throwable th) {
                    LogUtil.e(th.getMessage());
                }
            }
        }
    }

    public int getMemoryCacheMaxSize() {
        return this.mMemoryCacheMaxSize;
    }

    public void setMemoryCacheMaxSize(int i) {
        if (this.memoryLruCache == null || Build.VERSION.SDK_INT < 21) {
            return;
        }
        this.memoryLruCache.resize(i);
    }

    public long getDiskCacheMaxSize() {
        return this.mDiskCacheMaxSize;
    }

    public void setDiskCacheMaxSize(long j) {
        synchronized (this.mDiskCacheLock) {
            if (this.diskLruCache == null) {
                return;
            }
            this.diskLruCache.setMaxSize(j);
        }
    }

    public File getDiskCacheDir() {
        return this.mDiskCacheDir;
    }

    public Map<String, Bitmap> getSnapshotMemoryCache() {
        LruCache<String, Bitmap> lruCache = this.memoryLruCache;
        if (lruCache == null) {
            return null;
        }
        return lruCache.snapshot();
    }

    public static String getDiskCacheDir(Context context, String str) {
        File cacheDir;
        File externalCacheDir;
        String path = (!"mounted".equals(Environment.getExternalStorageState()) || (externalCacheDir = context.getExternalCacheDir()) == null) ? null : externalCacheDir.getPath();
        if (path == null && (cacheDir = context.getCacheDir()) != null && cacheDir.exists()) {
            path = cacheDir.getPath();
        }
        return path + File.separator + str;
    }
}
