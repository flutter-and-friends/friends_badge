package org.aspectj.lang.reflect;

import java.lang.ref.WeakReference;
import java.util.Collections;
import java.util.Map;
import java.util.WeakHashMap;
import org.aspectj.internal.lang.reflect.AjTypeImpl;

/* loaded from: classes2.dex */
public class AjTypeSystem {
    private static Map<Class, WeakReference<AjType>> ajTypes = Collections.synchronizedMap(new WeakHashMap());

    public static <T> AjType<T> getAjType(Class<T> cls) {
        WeakReference<AjType> weakReference = ajTypes.get(cls);
        if (weakReference != null) {
            AjType<T> ajType = weakReference.get();
            if (ajType != null) {
                return ajType;
            }
            AjTypeImpl ajTypeImpl = new AjTypeImpl(cls);
            ajTypes.put(cls, new WeakReference<>(ajTypeImpl));
            return ajTypeImpl;
        }
        AjTypeImpl ajTypeImpl2 = new AjTypeImpl(cls);
        ajTypes.put(cls, new WeakReference<>(ajTypeImpl2));
        return ajTypeImpl2;
    }
}
