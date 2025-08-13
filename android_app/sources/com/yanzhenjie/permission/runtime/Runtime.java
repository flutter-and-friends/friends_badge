package com.yanzhenjie.permission.runtime;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Build;
import com.yanzhenjie.permission.runtime.option.ActivityRuntimeOption;
import com.yanzhenjie.permission.runtime.setting.AllRequest;
import com.yanzhenjie.permission.runtime.setting.SettingRequest;
import com.yanzhenjie.permission.source.Source;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

/* loaded from: classes.dex */
public class Runtime implements ActivityRuntimeOption {
    private static final PermissionRequestFactory FACTORY;
    private static List<String> sAppPermissions;
    private Source mSource;

    public interface PermissionRequestFactory {
        PermissionRequest create(Source source);
    }

    static {
        if (Build.VERSION.SDK_INT >= 23) {
            FACTORY = new MRequestFactory();
        } else {
            FACTORY = new LRequestFactory();
        }
    }

    public Runtime(Source source) {
        this.mSource = source;
    }

    @Override // com.yanzhenjie.permission.runtime.option.RuntimeOption
    public PermissionRequest permission(String... strArr) {
        checkPermissions(strArr);
        return FACTORY.create(this.mSource).permission(strArr);
    }

    @Override // com.yanzhenjie.permission.runtime.option.RuntimeOption
    public PermissionRequest permission(String[]... strArr) {
        ArrayList arrayList = new ArrayList();
        for (String[] strArr2 : strArr) {
            checkPermissions(strArr2);
            arrayList.addAll(Arrays.asList(strArr2));
        }
        return permission((String[]) arrayList.toArray(new String[0]));
    }

    @Override // com.yanzhenjie.permission.runtime.option.ActivityRuntimeOption
    public SettingRequest setting() {
        return new AllRequest(this.mSource);
    }

    private void checkPermissions(String... strArr) {
        if (sAppPermissions == null) {
            sAppPermissions = getManifestPermissions(this.mSource.getContext());
        }
        if (strArr.length == 0) {
            throw new IllegalArgumentException("Please enter at least one permission.");
        }
        for (String str : strArr) {
            if (!sAppPermissions.contains(str) && (!Permission.ADD_VOICEMAIL.equals(str) || !sAppPermissions.contains("android.permission.ADD_VOICEMAIL"))) {
                throw new IllegalStateException(String.format("The permission %1$s is not registered in manifest.xml", str));
            }
        }
    }

    private static List<String> getManifestPermissions(Context context) {
        try {
            String[] strArr = context.getPackageManager().getPackageInfo(context.getPackageName(), 4096).requestedPermissions;
            if (strArr == null || strArr.length == 0) {
                throw new IllegalStateException("You did not register any permissions in the manifest.xml.");
            }
            return Collections.unmodifiableList(Arrays.asList(strArr));
        } catch (PackageManager.NameNotFoundException unused) {
            throw new AssertionError("Package name cannot be found.");
        }
    }
}
