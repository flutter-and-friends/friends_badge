package cn.forward.androids.utils;

import java.lang.reflect.Field;
import java.lang.reflect.Method;

/* loaded from: classes.dex */
public class ReflectUtil {
    public static Field getField(Class<?> cls, String str) {
        if (cls == null) {
            return null;
        }
        try {
            return cls.getDeclaredField(str);
        } catch (Throwable unused) {
            return null;
        }
    }

    public static Object getValue(Object obj, String str) {
        Field field = getField(obj.getClass(), str);
        if (field == null) {
            return null;
        }
        field.setAccessible(true);
        try {
            return field.get(obj);
        } catch (Throwable unused) {
            return null;
        }
    }

    public static Object getValue(Class cls, String str) {
        Field field = getField(cls, str);
        if (field == null) {
            return null;
        }
        field.setAccessible(true);
        try {
            return field.get(null);
        } catch (Throwable unused) {
            return null;
        }
    }

    public static Method getMethod(Class<?> cls, String str, Class<?>[] clsArr) {
        if (cls == null) {
            return null;
        }
        try {
            Method declaredMethod = cls.getDeclaredMethod(str, clsArr);
            if (declaredMethod == null) {
                return null;
            }
            declaredMethod.setAccessible(true);
            return declaredMethod;
        } catch (Throwable unused) {
            return null;
        }
    }

    public static Object invokeMethod(Object obj, String str, Object... objArr) throws Throwable {
        Class[] clsArr;
        if (objArr != null) {
            clsArr = new Class[objArr.length];
            for (int i = 0; i < objArr.length; i++) {
                if (objArr[i] != null) {
                    clsArr[i] = objArr[i].getClass();
                }
            }
        } else {
            clsArr = null;
        }
        return getMethod(obj.getClass(), str, clsArr).invoke(obj, objArr);
    }

    public static Object invokeMethod(Class cls, String str, Object... objArr) throws Throwable {
        Class[] clsArr;
        if (objArr != null) {
            clsArr = new Class[objArr.length];
            for (int i = 0; i < objArr.length; i++) {
                if (objArr[i] != null) {
                    clsArr[i] = objArr[i].getClass();
                }
            }
        } else {
            clsArr = null;
        }
        return getMethod(cls, str, clsArr).invoke(cls, objArr);
    }
}
