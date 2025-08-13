package org.aspectj.lang;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;

/* loaded from: classes2.dex */
public class Aspects {
    private static final String ASPECTOF = "aspectOf";
    private static final String HASASPECT = "hasAspect";
    private static final Class[] EMPTY_CLASS_ARRAY = new Class[0];
    private static final Class[] PEROBJECT_CLASS_ARRAY = {Object.class};
    private static final Class[] PERTYPEWITHIN_CLASS_ARRAY = {Class.class};
    private static final Object[] EMPTY_OBJECT_ARRAY = new Object[0];

    public static <T> T aspectOf(Class<T> cls) throws NoAspectBoundException {
        try {
            return (T) getSingletonOrThreadAspectOf(cls).invoke(null, EMPTY_OBJECT_ARRAY);
        } catch (InvocationTargetException e) {
            throw new NoAspectBoundException(cls.getName(), e);
        } catch (Exception e2) {
            throw new NoAspectBoundException(cls.getName(), e2);
        }
    }

    public static <T> T aspectOf(Class<T> cls, Object obj) throws NoAspectBoundException {
        try {
            return (T) getPerObjectAspectOf(cls).invoke(null, obj);
        } catch (InvocationTargetException e) {
            throw new NoAspectBoundException(cls.getName(), e);
        } catch (Exception e2) {
            throw new NoAspectBoundException(cls.getName(), e2);
        }
    }

    public static <T> T aspectOf(Class<T> cls, Class<?> cls2) throws NoAspectBoundException {
        try {
            return (T) getPerTypeWithinAspectOf(cls).invoke(null, cls2);
        } catch (InvocationTargetException e) {
            throw new NoAspectBoundException(cls.getName(), e);
        } catch (Exception e2) {
            throw new NoAspectBoundException(cls.getName(), e2);
        }
    }

    public static boolean hasAspect(Class<?> cls) throws NoAspectBoundException {
        try {
            return ((Boolean) getSingletonOrThreadHasAspect(cls).invoke(null, EMPTY_OBJECT_ARRAY)).booleanValue();
        } catch (Exception unused) {
            return false;
        }
    }

    public static boolean hasAspect(Class<?> cls, Object obj) throws NoAspectBoundException {
        try {
            return ((Boolean) getPerObjectHasAspect(cls).invoke(null, obj)).booleanValue();
        } catch (Exception unused) {
            return false;
        }
    }

    public static boolean hasAspect(Class<?> cls, Class<?> cls2) throws NoAspectBoundException {
        try {
            return ((Boolean) getPerTypeWithinHasAspect(cls).invoke(null, cls2)).booleanValue();
        } catch (Exception unused) {
            return false;
        }
    }

    private static Method getSingletonOrThreadAspectOf(Class<?> cls) throws NoSuchMethodException {
        return checkAspectOf(cls.getDeclaredMethod(ASPECTOF, EMPTY_CLASS_ARRAY), cls);
    }

    private static Method getPerObjectAspectOf(Class<?> cls) throws NoSuchMethodException {
        return checkAspectOf(cls.getDeclaredMethod(ASPECTOF, PEROBJECT_CLASS_ARRAY), cls);
    }

    private static Method getPerTypeWithinAspectOf(Class<?> cls) throws NoSuchMethodException {
        return checkAspectOf(cls.getDeclaredMethod(ASPECTOF, PERTYPEWITHIN_CLASS_ARRAY), cls);
    }

    private static Method checkAspectOf(Method method, Class<?> cls) throws NoSuchMethodException {
        method.setAccessible(true);
        if (method.isAccessible() && Modifier.isPublic(method.getModifiers()) && Modifier.isStatic(method.getModifiers())) {
            return method;
        }
        throw new NoSuchMethodException(cls.getName() + ".aspectOf(..) is not accessible public static");
    }

    private static Method getSingletonOrThreadHasAspect(Class cls) throws NoSuchMethodException {
        return checkHasAspect(cls.getDeclaredMethod(HASASPECT, EMPTY_CLASS_ARRAY), cls);
    }

    private static Method getPerObjectHasAspect(Class cls) throws NoSuchMethodException {
        return checkHasAspect(cls.getDeclaredMethod(HASASPECT, PEROBJECT_CLASS_ARRAY), cls);
    }

    private static Method getPerTypeWithinHasAspect(Class cls) throws NoSuchMethodException {
        return checkHasAspect(cls.getDeclaredMethod(HASASPECT, PERTYPEWITHIN_CLASS_ARRAY), cls);
    }

    private static Method checkHasAspect(Method method, Class cls) throws NoSuchMethodException {
        method.setAccessible(true);
        if (method.isAccessible() && Modifier.isPublic(method.getModifiers()) && Modifier.isStatic(method.getModifiers())) {
            return method;
        }
        throw new NoSuchMethodException(cls.getName() + ".hasAspect(..) is not accessible public static");
    }
}
