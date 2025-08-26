package com.apkfuns.logutils.utils;

import com.apkfuns.logutils.Constant;
import com.apkfuns.logutils.Parser;

/* loaded from: classes.dex */
public class ObjectUtil {
    public static String objectToString(Object obj) {
        return objectToString(obj, 0);
    }

    public static boolean isStaticInnerClass(Class cls) {
        return cls != null && cls.isMemberClass() && (cls.getModifiers() & 8) == 8;
    }

    public static String objectToString(Object obj, int i) {
        if (obj == null) {
            return Constant.STRING_OBJECT_NULL;
        }
        if (i > 2) {
            return obj.toString();
        }
        if (Constant.getParsers() != null && Constant.getParsers().size() > 0) {
            for (Parser parser : Constant.getParsers()) {
                if (parser.parseClassType().isAssignableFrom(obj.getClass())) {
                    return parser.parseString(obj);
                }
            }
        }
        if (ArrayUtil.isArray(obj)) {
            return ArrayUtil.parseArray(obj);
        }
        if (obj.toString().startsWith(obj.getClass().getName() + "@")) {
            StringBuilder sb = new StringBuilder();
            getClassFields(obj.getClass(), sb, obj, false, i);
            Class<? super Object> superclass = obj.getClass().getSuperclass();
            if (superclass != null) {
                while (!superclass.equals(Object.class)) {
                    getClassFields(superclass, sb, obj, true, i);
                    superclass = superclass.getSuperclass();
                }
            } else {
                sb.append(obj.toString());
            }
            return sb.toString();
        }
        return obj.toString();
    }

    /* JADX WARN: Removed duplicated region for block: B:38:0x00e9  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00eb  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static void getClassFields(java.lang.Class r18, java.lang.StringBuilder r19, java.lang.Object r20, boolean r21, int r22) {
        /*
            Method dump skipped, instructions count: 471
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.apkfuns.logutils.utils.ObjectUtil.getClassFields(java.lang.Class, java.lang.StringBuilder, java.lang.Object, boolean, int):void");
    }
}
