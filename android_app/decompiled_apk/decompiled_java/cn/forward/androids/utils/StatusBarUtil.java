package cn.forward.androids.utils;

import android.app.Activity;
import android.os.Build;
import android.view.Window;
import android.view.WindowManager;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* loaded from: classes.dex */
public class StatusBarUtil {
    public static void setStatusBarTranslucent(Window window, boolean z, boolean z2) throws IllegalAccessException, NoSuchMethodException, ClassNotFoundException, SecurityException, IllegalArgumentException, InvocationTargetException {
        if (Build.VERSION.SDK_INT >= 19) {
            WindowManager.LayoutParams attributes = window.getAttributes();
            if (z) {
                attributes.flags |= 67108864;
            } else {
                attributes.flags &= -67108865;
            }
            window.setAttributes(attributes);
            if (setStatusBarDarkModeMEIZU(window, z2)) {
                return;
            }
            setStatusBarDarkModeXIAOMI(window, z2);
        }
    }

    public static void setStatusBarTranslucent(Activity activity, boolean z, boolean z2) throws IllegalAccessException, NoSuchMethodException, ClassNotFoundException, SecurityException, IllegalArgumentException, InvocationTargetException {
        setStatusBarTranslucent(activity.getWindow(), z, z2);
    }

    public static boolean setStatusBarDarkModeMEIZU(Window window, boolean z) throws IllegalAccessException, NoSuchFieldException, IllegalArgumentException {
        try {
            WindowManager.LayoutParams attributes = window.getAttributes();
            Field declaredField = WindowManager.LayoutParams.class.getDeclaredField("MEIZU_FLAG_DARK_STATUS_BAR_ICON");
            Field declaredField2 = WindowManager.LayoutParams.class.getDeclaredField("meizuFlags");
            declaredField.setAccessible(true);
            declaredField2.setAccessible(true);
            int i = declaredField.getInt(null);
            int i2 = declaredField2.getInt(attributes);
            declaredField2.setInt(attributes, z ? i2 | i : (~i) & i2);
            window.setAttributes(attributes);
            return true;
        } catch (Exception unused) {
            return false;
        }
    }

    public static boolean setStatusBarDarkModeXIAOMI(Window window, boolean z) throws IllegalAccessException, NoSuchMethodException, ClassNotFoundException, SecurityException, IllegalArgumentException, InvocationTargetException {
        Class<?> cls = window.getClass();
        try {
            Class<?> cls2 = Class.forName("android.view.MiuiWindowManager$LayoutParams");
            int i = cls2.getField("EXTRA_FLAG_STATUS_BAR_DARK_MODE").getInt(cls2);
            Method method = cls.getMethod("setExtraFlags", Integer.TYPE, Integer.TYPE);
            Object[] objArr = new Object[2];
            objArr[0] = Integer.valueOf(z ? i : 0);
            objArr[1] = Integer.valueOf(i);
            method.invoke(window, objArr);
            return true;
        } catch (Exception unused) {
            return false;
        }
    }
}
