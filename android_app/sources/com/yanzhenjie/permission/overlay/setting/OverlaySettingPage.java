package com.yanzhenjie.permission.overlay.setting;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import com.yanzhenjie.permission.source.Source;

/* loaded from: classes.dex */
public class OverlaySettingPage {
    private static final String MARK = Build.MANUFACTURER.toLowerCase();
    private Source mSource;

    public OverlaySettingPage(Source source) {
        this.mSource = source;
    }

    public void start(int i) {
        Intent intentDefaultApi;
        if (MARK.contains("meizu")) {
            intentDefaultApi = meiZuApi(this.mSource.getContext());
        } else {
            intentDefaultApi = defaultApi(this.mSource.getContext());
        }
        try {
            this.mSource.startActivityForResult(intentDefaultApi, i);
        } catch (Exception unused) {
            this.mSource.startActivityForResult(appDetailsApi(this.mSource.getContext()), i);
        }
    }

    private static Intent appDetailsApi(Context context) {
        Intent intent = new Intent("android.settings.APPLICATION_DETAILS_SETTINGS");
        intent.setData(Uri.fromParts("package", context.getPackageName(), null));
        return intent;
    }

    private static Intent defaultApi(Context context) {
        Intent intent = new Intent("android.settings.action.MANAGE_OVERLAY_PERMISSION");
        intent.setData(Uri.fromParts("package", context.getPackageName(), null));
        return hasActivity(context, intent) ? intent : appDetailsApi(context);
    }

    private static Intent meiZuApi(Context context) {
        Intent intent = new Intent("com.meizu.safe.security.SHOW_APPSEC");
        intent.putExtra("packageName", context.getPackageName());
        intent.setClassName("com.meizu.safe", "com.meizu.safe.security.AppSecActivity");
        return hasActivity(context, intent) ? intent : defaultApi(context);
    }

    private static boolean hasActivity(Context context, Intent intent) {
        return context.getPackageManager().queryIntentActivities(intent, 65536).size() > 0;
    }
}
