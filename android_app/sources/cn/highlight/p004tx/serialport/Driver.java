package cn.highlight.p004tx.serialport;

import android.util.Log;
import java.io.File;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class Driver {
    private static final String TAG = Driver.class.getSimpleName();
    private String mDeviceRoot;
    private String mDriverName;

    public Driver(String str, String str2) {
        this.mDriverName = str;
        this.mDeviceRoot = str2;
    }

    public ArrayList<File> getDevices() {
        ArrayList<File> arrayList = new ArrayList<>();
        File file = new File("/dev");
        if (!file.exists()) {
            Log.i(TAG, "getDevices: " + file.getAbsolutePath() + " 不存在");
            return arrayList;
        }
        if (!file.canRead()) {
            Log.i(TAG, "getDevices: " + file.getAbsolutePath() + " 没有读取权限");
            return arrayList;
        }
        File[] fileArrListFiles = file.listFiles();
        for (int i = 0; i < fileArrListFiles.length; i++) {
            if (fileArrListFiles[i].getAbsolutePath().startsWith(this.mDeviceRoot)) {
                Log.d(TAG, "Found new device: " + fileArrListFiles[i]);
                arrayList.add(fileArrListFiles[i]);
            }
        }
        return arrayList;
    }

    public String getName() {
        return this.mDriverName;
    }
}
