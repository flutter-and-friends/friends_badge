package com.yanzhenjie.permission;

import android.app.Activity;
import android.content.Context;
import android.net.Uri;
import android.os.Build;
import androidx.fragment.app.Fragment;
import com.yanzhenjie.permission.checker.DoubleChecker;
import com.yanzhenjie.permission.checker.PermissionChecker;
import com.yanzhenjie.permission.option.ActivityOption;
import com.yanzhenjie.permission.option.Option;
import com.yanzhenjie.permission.source.ActivitySource;
import com.yanzhenjie.permission.source.ContextSource;
import com.yanzhenjie.permission.source.FragmentSource;
import com.yanzhenjie.permission.source.Source;
import com.yanzhenjie.permission.source.XFragmentSource;
import java.io.File;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public class AndPermission {
    private static final PermissionChecker PERMISSION_CHECKER = new DoubleChecker();

    public static Option with(Context context) {
        if (context instanceof Activity) {
            return with((Activity) context);
        }
        return new Boot(new ContextSource(context));
    }

    public static ActivityOption with(Fragment fragment) {
        return new Boot(new XFragmentSource(fragment));
    }

    public static ActivityOption with(android.app.Fragment fragment) {
        return new Boot(new FragmentSource(fragment));
    }

    public static ActivityOption with(Activity activity) {
        return new Boot(new ActivitySource(activity));
    }

    public static boolean hasAlwaysDeniedPermission(Context context, List<String> list) {
        if (context instanceof Activity) {
            return hasAlwaysDeniedPermission(new ActivitySource((Activity) context), list);
        }
        return hasAlwaysDeniedPermission(new ContextSource(context), list);
    }

    public static boolean hasAlwaysDeniedPermission(Fragment fragment, List<String> list) {
        return hasAlwaysDeniedPermission(new XFragmentSource(fragment), list);
    }

    public static boolean hasAlwaysDeniedPermission(android.app.Fragment fragment, List<String> list) {
        return hasAlwaysDeniedPermission(new FragmentSource(fragment), list);
    }

    public static boolean hasAlwaysDeniedPermission(Activity activity, List<String> list) {
        return hasAlwaysDeniedPermission(new ActivitySource(activity), list);
    }

    private static boolean hasAlwaysDeniedPermission(Source source, List<String> list) {
        Iterator<String> it = list.iterator();
        while (it.hasNext()) {
            if (!source.isShowRationalePermission(it.next())) {
                return true;
            }
        }
        return false;
    }

    public static boolean hasAlwaysDeniedPermission(Context context, String... strArr) {
        if (context instanceof Activity) {
            return hasAlwaysDeniedPermission(new ActivitySource((Activity) context), strArr);
        }
        return hasAlwaysDeniedPermission(new ContextSource(context), strArr);
    }

    public static boolean hasAlwaysDeniedPermission(Fragment fragment, String... strArr) {
        return hasAlwaysDeniedPermission(new XFragmentSource(fragment), strArr);
    }

    public static boolean hasAlwaysDeniedPermission(android.app.Fragment fragment, String... strArr) {
        return hasAlwaysDeniedPermission(new FragmentSource(fragment), strArr);
    }

    public static boolean hasAlwaysDeniedPermission(Activity activity, String... strArr) {
        return hasAlwaysDeniedPermission(new ActivitySource(activity), strArr);
    }

    private static boolean hasAlwaysDeniedPermission(Source source, String... strArr) {
        for (String str : strArr) {
            if (!source.isShowRationalePermission(str)) {
                return true;
            }
        }
        return false;
    }

    public static boolean hasPermissions(Context context, String... strArr) {
        return PERMISSION_CHECKER.hasPermission(context, strArr);
    }

    public static boolean hasPermissions(Fragment fragment, String... strArr) {
        return hasPermissions(fragment.getContext(), strArr);
    }

    public static boolean hasPermissions(android.app.Fragment fragment, String... strArr) {
        return hasPermissions(fragment.getActivity(), strArr);
    }

    public static boolean hasPermissions(Context context, String[]... strArr) {
        for (String[] strArr2 : strArr) {
            if (!PERMISSION_CHECKER.hasPermission(context, strArr2)) {
                return false;
            }
        }
        return true;
    }

    public static boolean hasPermissions(Fragment fragment, String[]... strArr) {
        return hasPermissions(fragment.getContext(), strArr);
    }

    public static boolean hasPermissions(android.app.Fragment fragment, String[]... strArr) {
        return hasPermissions(fragment.getActivity(), strArr);
    }

    public static Uri getFileUri(Context context, File file) {
        if (Build.VERSION.SDK_INT >= 24) {
            return FileProvider.getUriForFile(context, context.getPackageName() + ".file.path.share", file);
        }
        return Uri.fromFile(file);
    }

    public static Uri getFileUri(Fragment fragment, File file) {
        return getFileUri(fragment.getContext(), file);
    }

    public static Uri getFileUri(android.app.Fragment fragment, File file) {
        return getFileUri(fragment.getActivity(), file);
    }

    private AndPermission() {
    }
}
