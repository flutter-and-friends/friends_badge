package cn.forward.androids.utils;

import android.app.ActivityManager;
import android.content.Context;
import android.os.Process;
import java.util.List;

/* loaded from: classes.dex */
public class ProcessUtil {
    public static String getCurrentProcessName(Context context) {
        int iMyPid = Process.myPid();
        List<ActivityManager.RunningAppProcessInfo> runningAppProcesses = ((ActivityManager) context.getApplicationContext().getSystemService("activity")).getRunningAppProcesses();
        if (runningAppProcesses == null) {
            return "";
        }
        for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : runningAppProcesses) {
            if (runningAppProcessInfo.pid == iMyPid) {
                return runningAppProcessInfo.processName;
            }
        }
        return "";
    }

    public static boolean isMainProcess(Context context) {
        return context.getApplicationContext().getPackageName().equals(getCurrentProcessName(context));
    }
}
