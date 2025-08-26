package butterknife;

import android.app.Activity;
import android.app.Dialog;
import android.util.Log;
import android.view.View;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.util.LinkedHashMap;
import java.util.Map;

/* loaded from: classes.dex */
public final class ButterKnife {
    static final Map<Class<?>, Constructor<? extends Unbinder>> BINDINGS = new LinkedHashMap();
    private static final String TAG = "ButterKnife";
    private static boolean debug = false;

    private ButterKnife() {
        throw new AssertionError("No instances.");
    }

    public static void setDebug(boolean z) {
        debug = z;
    }

    public static Unbinder bind(Activity activity) {
        return bind(activity, activity.getWindow().getDecorView());
    }

    public static Unbinder bind(View view) {
        return bind(view, view);
    }

    public static Unbinder bind(Dialog dialog) {
        return bind(dialog, dialog.getWindow().getDecorView());
    }

    public static Unbinder bind(Object obj, Activity activity) {
        return bind(obj, activity.getWindow().getDecorView());
    }

    public static Unbinder bind(Object obj, Dialog dialog) {
        return bind(obj, dialog.getWindow().getDecorView());
    }

    public static Unbinder bind(Object obj, View view) throws NoSuchMethodException, SecurityException {
        Class<?> cls = obj.getClass();
        if (debug) {
            Log.d(TAG, "Looking up binding for " + cls.getName());
        }
        Constructor<? extends Unbinder> constructorFindBindingConstructorForClass = findBindingConstructorForClass(cls);
        if (constructorFindBindingConstructorForClass == null) {
            return Unbinder.EMPTY;
        }
        try {
            return constructorFindBindingConstructorForClass.newInstance(obj, view);
        } catch (IllegalAccessException e) {
            throw new RuntimeException("Unable to invoke " + constructorFindBindingConstructorForClass, e);
        } catch (InstantiationException e2) {
            throw new RuntimeException("Unable to invoke " + constructorFindBindingConstructorForClass, e2);
        } catch (InvocationTargetException e3) {
            Throwable cause = e3.getCause();
            if (cause instanceof RuntimeException) {
                throw ((RuntimeException) cause);
            }
            if (cause instanceof Error) {
                throw ((Error) cause);
            }
            throw new RuntimeException("Unable to create binding instance.", cause);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static Constructor<? extends Unbinder> findBindingConstructorForClass(Class<?> cls) throws NoSuchMethodException, SecurityException {
        Constructor<? extends Unbinder> constructorFindBindingConstructorForClass;
        Constructor<? extends Unbinder> constructor = BINDINGS.get(cls);
        if (constructor != null || BINDINGS.containsKey(cls)) {
            if (debug) {
                Log.d(TAG, "HIT: Cached in binding map.");
            }
            return constructor;
        }
        String name = cls.getName();
        if (name.startsWith("android.") || name.startsWith("java.") || name.startsWith("androidx.")) {
            if (!debug) {
                return null;
            }
            Log.d(TAG, "MISS: Reached framework class. Abandoning search.");
            return null;
        }
        try {
            constructorFindBindingConstructorForClass = cls.getClassLoader().loadClass(name + "_ViewBinding").getConstructor(cls, View.class);
            if (debug) {
                Log.d(TAG, "HIT: Loaded binding class and constructor.");
            }
        } catch (ClassNotFoundException unused) {
            if (debug) {
                Log.d(TAG, "Not found. Trying superclass " + cls.getSuperclass().getName());
            }
            constructorFindBindingConstructorForClass = findBindingConstructorForClass(cls.getSuperclass());
        } catch (NoSuchMethodException e) {
            throw new RuntimeException("Unable to find binding constructor for " + name, e);
        }
        BINDINGS.put(cls, constructorFindBindingConstructorForClass);
        return constructorFindBindingConstructorForClass;
    }
}
