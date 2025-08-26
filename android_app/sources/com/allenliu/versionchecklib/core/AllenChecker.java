package com.allenliu.versionchecklib.core;

import android.app.Application;
import android.content.Context;
import android.content.Intent;
import com.allenliu.versionchecklib.core.http.AllenHttp;

@Deprecated
/* loaded from: classes.dex */
public class AllenChecker {
    private static Context globalContext = null;
    private static boolean isDebug = true;
    private static VersionParams params;

    public static void startVersionCheck(Application application, VersionParams versionParams) {
        globalContext = application;
        params = versionParams;
        Intent intent = new Intent(application, versionParams.getService());
        intent.putExtra(AVersionService.VERSION_PARAMS_KEY, versionParams);
        application.stopService(intent);
        application.startService(intent);
    }

    public static void init(boolean z) {
        isDebug = z;
    }

    public static boolean isDebug() {
        return isDebug;
    }

    public static void cancelMission() {
        VersionParams versionParams;
        AllenHttp.getHttpClient().dispatcher().cancelAll();
        Context context = globalContext;
        if (context != null && (versionParams = params) != null) {
            globalContext.stopService(new Intent(context, versionParams.getService()));
        }
        if (VersionDialogActivity.instance != null) {
            VersionDialogActivity.instance.finish();
        }
        globalContext = null;
        params = null;
    }

    public static Context getGlobalContext() {
        return globalContext;
    }
}
