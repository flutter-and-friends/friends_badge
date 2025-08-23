package cn.forward.androids.Image;

import android.content.Context;
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
        To view partially-correct add '--show-bad-code' argument
    */
    private void initDiskCache() {
        /*
            r6 = this;
            java.lang.Object r0 = r6.mDiskCacheLock
            monitor-enter(r0)
            cn.forward.androids.utils.cache.DiskLruCache r1 = r6.diskLruCache     // Catch: java.lang.Throwable -> L54
            if (r1 == 0) goto L11
            cn.forward.androids.utils.cache.DiskLruCache r1 = r6.diskLruCache     // Catch: java.lang.Throwable -> L54
            boolean r1 = r1.isClosed()     // Catch: java.lang.Throwable -> L54
            if (r1 != 0) goto L11
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L54
            return
        L11:
            r1 = 0
            android.content.Context r2 = r6.mContext     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L27 java.lang.Throwable -> L54
            android.content.pm.PackageManager r2 = r2.getPackageManager()     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L27 java.lang.Throwable -> L54
            android.content.Context r3 = r6.mContext     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L27 java.lang.Throwable -> L54
            java.lang.String r3 = r3.getPackageName()     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L27 java.lang.Throwable -> L54
            android.content.pm.PackageInfo r2 = r2.getPackageInfo(r3, r1)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L27 java.lang.Throwable -> L54
            if (r2 == 0) goto L2b
            int r1 = r2.versionCode     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L27 java.lang.Throwable -> L54
            goto L2b
        L27:
            r2 = move-exception
            r2.printStackTrace()     // Catch: java.lang.Throwable -> L54
        L2b:
            java.io.File r2 = r6.mDiskCacheDir     // Catch: java.lang.Exception -> L4e java.lang.Throwable -> L54
            boolean r2 = r2.exists()     // Catch: java.lang.Exception -> L4e java.lang.Throwable -> L54
            if (r2 != 0) goto L42
            java.io.File r2 = r6.mDiskCacheDir     // Catch: java.lang.Exception -> L4e java.lang.Throwable -> L54
            boolean r2 = r2.mkdirs()     // Catch: java.lang.Exception -> L4e java.lang.Throwable -> L54
            if (r2 == 0) goto L3c
            goto L42
        L3c:
            java.lang.String r1 = "disk cache dir init failed"
            cn.forward.androids.utils.LogUtil.e(r1)     // Catch: java.lang.Exception -> L4e java.lang.Throwable -> L54
            goto L52
        L42:
            java.io.File r2 = r6.mDiskCacheDir     // Catch: java.lang.Exception -> L4e java.lang.Throwable -> L54
            r3 = 1
            long r4 = r6.mDiskCacheMaxSize     // Catch: java.lang.Exception -> L4e java.lang.Throwable -> L54
            cn.forward.androids.utils.cache.DiskLruCache r1 = cn.forward.androids.utils.cache.DiskLruCache.open(r2, r1, r3, r4)     // Catch: java.lang.Exception -> L4e java.lang.Throwable -> L54
            r6.diskLruCache = r1     // Catch: java.lang.Exception -> L4e java.lang.Throwable -> L54
            goto L52
        L4e:
            r1 = move-exception
            r1.printStackTrace()     // Catch: java.lang.Throwable -> L54
        L52:
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L54
            return
        L54:
            r1 = move-exception
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L54
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: cn.forward.androids.Image.ImageCache.initDiskCache():void");
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
