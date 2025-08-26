package com.allenliu.versionchecklib.utils;

import android.os.Environment;
import java.io.File;

/* loaded from: classes.dex */
public class FileHelper {
    public static String getDownloadApkCachePath() {
        String str;
        if (checkSDCard()) {
            str = Environment.getExternalStorageDirectory() + "/AllenVersionPath/";
        } else {
            str = Environment.getDataDirectory().getPath() + "/AllenVersionPath/";
        }
        File file = new File(str);
        if (!file.exists()) {
            file.mkdirs();
        }
        return str;
    }

    public static boolean checkSDCard() {
        return Environment.getExternalStorageState().equals("mounted");
    }
}
