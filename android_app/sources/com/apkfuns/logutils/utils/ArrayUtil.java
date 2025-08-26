package com.apkfuns.logutils.utils;

import java.util.Arrays;

/* loaded from: classes.dex */
public final class ArrayUtil {
    public static int getArrayDimension(Object obj) {
        int i = 0;
        for (int i2 = 0; i2 < obj.toString().length() && obj.toString().charAt(i2) == '['; i2++) {
            i++;
        }
        return i;
    }

    public static boolean isArray(Object obj) {
        return obj.getClass().isArray();
    }

    public static char getType(Object obj) {
        if (!isArray(obj)) {
            return (char) 0;
        }
        String string = obj.toString();
        return string.substring(string.lastIndexOf("[") + 1, string.lastIndexOf("[") + 2).charAt(0);
    }

    private static void traverseArray(StringBuilder sb, Object obj) {
        if (isArray(obj)) {
            int i = 0;
            if (getArrayDimension(obj) == 1) {
                char type = getType(obj);
                if (type == 'B') {
                    sb.append(Arrays.toString((byte[]) obj));
                    return;
                }
                if (type == 'D') {
                    sb.append(Arrays.toString((double[]) obj));
                    return;
                }
                if (type == 'F') {
                    sb.append(Arrays.toString((float[]) obj));
                    return;
                }
                if (type == 'L') {
                    Object[] objArr = (Object[]) obj;
                    sb.append("[");
                    while (i < objArr.length) {
                        sb.append(ObjectUtil.objectToString(objArr[i]));
                        if (i != objArr.length - 1) {
                            sb.append(",");
                        }
                        i++;
                    }
                    sb.append("]");
                    return;
                }
                if (type == 'S') {
                    sb.append(Arrays.toString((short[]) obj));
                    return;
                }
                if (type == 'Z') {
                    sb.append(Arrays.toString((boolean[]) obj));
                    return;
                }
                if (type == 'I') {
                    sb.append(Arrays.toString((int[]) obj));
                    return;
                } else if (type == 'J') {
                    sb.append(Arrays.toString((long[]) obj));
                    return;
                } else {
                    sb.append(Arrays.toString((Object[]) obj));
                    return;
                }
            }
            sb.append("[");
            while (true) {
                Object[] objArr2 = (Object[]) obj;
                if (i < objArr2.length) {
                    traverseArray(sb, objArr2[i]);
                    if (i != objArr2.length - 1) {
                        sb.append(",");
                    }
                    i++;
                } else {
                    sb.append("]");
                    return;
                }
            }
        } else {
            sb.append("not a array!!");
        }
    }

    public static String parseArray(Object obj) {
        StringBuilder sb = new StringBuilder();
        traverseArray(sb, obj);
        return sb.toString();
    }
}
