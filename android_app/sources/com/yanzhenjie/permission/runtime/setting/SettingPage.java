package com.yanzhenjie.permission.runtime.setting;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import com.yanzhenjie.permission.source.Source;

/* loaded from: classes.dex */
public class SettingPage {
    private static final String MARK = Build.MANUFACTURER.toLowerCase();
    private Source mSource;

    public SettingPage(Source source) {
        this.mSource = source;
    }

    public void start(int i) {
        Intent intentDefaultApi;
        if (MARK.contains("huawei")) {
            intentDefaultApi = huaweiApi(this.mSource.getContext());
        } else if (MARK.contains("xiaomi")) {
            intentDefaultApi = xiaomiApi(this.mSource.getContext());
        } else if (MARK.contains("oppo")) {
            intentDefaultApi = oppoApi(this.mSource.getContext());
        } else if (MARK.contains("vivo")) {
            intentDefaultApi = vivoApi(this.mSource.getContext());
        } else if (MARK.contains("meizu")) {
            intentDefaultApi = meizuApi(this.mSource.getContext());
        } else {
            intentDefaultApi = defaultApi(this.mSource.getContext());
        }
        try {
            this.mSource.startActivityForResult(intentDefaultApi, i);
        } catch (Exception unused) {
            this.mSource.startActivityForResult(defaultApi(this.mSource.getContext()), i);
        }
    }

    private static Intent defaultApi(Context context) {
        Intent intent = new Intent("android.settings.APPLICATION_DETAILS_SETTINGS");
        intent.setData(Uri.fromParts("package", context.getPackageName(), null));
        return intent;
    }

    private static Intent huaweiApi(Context context) {
        Intent intent = new Intent();
        intent.setClassName("com.huawei.systemmanager", "com.huawei.permissionmanager.ui.MainActivity");
        return hasActivity(context, intent) ? intent : defaultApi(context);
    }

    private static Intent xiaomiApi(Context context) {
        Intent intent = new Intent("miui.intent.action.APP_PERM_EDITOR");
        intent.putExtra("extra_pkgname", context.getPackageName());
        if (hasActivity(context, intent)) {
            return intent;
        }
        intent.setClassName("com.miui.securitycenter", "com.miui.permcenter.permissions.AppPermissionsEditorActivity");
        if (hasActivity(context, intent)) {
            return intent;
        }
        intent.setClassName("com.miui.securitycenter", "com.miui.permcenter.permissions.PermissionsEditorActivity");
        return hasActivity(context, intent) ? intent : defaultApi(context);
    }

    private static Intent vivoApi(Context context) {
        Intent intent = new Intent();
        intent.putExtra("packagename", context.getPackageName());
        intent.setClassName("com.vivo.permissionmanager", "com.vivo.permissionmanager.activity.SoftPermissionDetailActivity");
        if (hasActivity(context, intent)) {
            return intent;
        }
        intent.setClassName("com.iqoo.secure", "com.iqoo.secure.safeguard.SoftPermissionDetailActivity");
        return hasActivity(context, intent) ? intent : defaultApi(context);
    }

    private static Intent oppoApi(Context context) {
        Intent intent = new Intent();
        intent.putExtra("packageName", context.getPackageName());
        intent.setClassName("com.color.safecenter", "com.color.safecenter.permission.PermissionManagerActivity");
        if (hasActivity(context, intent)) {
            return intent;
        }
        intent.setClassName("com.oppo.safe", "com.oppo.safe.permission.PermissionAppListActivity");
        return hasActivity(context, intent) ? intent : defaultApi(context);
    }

    private static Intent meizuApi(Context context) {
        Intent intent = new Intent("com.meizu.safe.security.SHOW_APPSEC");
        intent.putExtra("packageName", context.getPackageName());
        intent.setClassName("com.meizu.safe", "com.meizu.safe.security.AppSecActivity");
        return hasActivity(context, intent) ? intent : defaultApi(context);
    }

    private static boolean hasActivity(Context context, Intent intent) {
        return context.getPackageManager().queryIntentActivities(intent, 65536).size() > 0;
    }
}
