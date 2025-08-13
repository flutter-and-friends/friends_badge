package com.yanzhenjie.permission.checker;

import android.os.Environment;
import android.text.TextUtils;
import java.io.File;

/* loaded from: classes.dex */
class StorageWriteTest implements PermissionTest {
    StorageWriteTest() {
    }

    @Override // com.yanzhenjie.permission.checker.PermissionTest
    public boolean test() throws Throwable {
        if (!TextUtils.equals("mounted", Environment.getExternalStorageState())) {
            return true;
        }
        File externalStorageDirectory = Environment.getExternalStorageDirectory();
        if (!externalStorageDirectory.exists()) {
            return true;
        }
        File file = new File(externalStorageDirectory, "Android");
        if (file.exists() && file.isFile() && !file.delete()) {
            return false;
        }
        if (!file.exists() && !file.mkdirs()) {
            return false;
        }
        File file2 = new File(file, "ANDROID.PERMISSION.TEST");
        if (file2.exists()) {
            return file2.delete();
        }
        return file2.createNewFile();
    }
}
