package org.devio.takephoto.uitl;

import android.content.Context;
import android.util.Log;
import java.io.File;

/* loaded from: classes2.dex */
public class TFileUtils {
    private static String DEFAULT_DISK_CACHE_DIR = "takephoto_cache";
    private static final String TAG = "TFileUtils";

    public static File getPhotoCacheDir(Context context, File file) {
        File cacheDir = context.getCacheDir();
        if (cacheDir != null) {
            File file2 = new File(cacheDir, DEFAULT_DISK_CACHE_DIR);
            return (file2.mkdirs() || (file2.exists() && file2.isDirectory())) ? new File(file2, file.getName()) : file;
        }
        if (Log.isLoggable(TAG, 6)) {
            Log.e(TAG, "default disk cache dir is null");
        }
        return file;
    }

    public static void delete(String str) {
        if (str == null) {
            return;
        }
        try {
            File file = new File(str);
            if (file.delete()) {
                return;
            }
            file.deleteOnExit();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
