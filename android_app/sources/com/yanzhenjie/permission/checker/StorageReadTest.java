package com.yanzhenjie.permission.checker;

import android.os.Environment;
import android.text.TextUtils;
import java.io.File;

/* loaded from: classes.dex */
class StorageReadTest implements PermissionTest {
    StorageReadTest() {
    }

    @Override // com.yanzhenjie.permission.checker.PermissionTest
    public boolean test() throws Throwable {
        if (!TextUtils.equals("mounted", Environment.getExternalStorageState())) {
            return true;
        }
        File externalStorageDirectory = Environment.getExternalStorageDirectory();
        if (externalStorageDirectory.exists()) {
            return externalStorageDirectory.lastModified() > 0 && externalStorageDirectory.list() != null;
        }
        return true;
    }
}
