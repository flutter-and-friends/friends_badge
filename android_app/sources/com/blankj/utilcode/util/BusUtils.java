package com.blankj.utilcode.util;

import android.util.Log;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

/* loaded from: classes.dex */
public final class BusUtils {
    private static final Object NULL = new Object();

    @Target({ElementType.METHOD})
    @Retention(RetentionPolicy.CLASS)
    public @interface Subscribe {
        String name() default "";

        int priority() default 0;
    }

    public static <T> T post(String str, Object... objArr) {
        if (str == null || str.length() == 0) {
            return null;
        }
        T t = (T) injectShell(str, objArr);
        if (!NULL.equals(t)) {
            return t;
        }
        Log.e("BusUtils", "bus of <" + str + "> didn't exist.");
        return null;
    }

    private static Object injectShell(String str, Object[] objArr) {
        return NULL;
    }
}
