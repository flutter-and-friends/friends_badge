package com.blankj.utilcode.util;

import com.google.gson.Gson;
import java.lang.reflect.Type;

/* loaded from: classes.dex */
public final class CloneUtils {
    private CloneUtils() {
        throw new UnsupportedOperationException("u can't instantiate me...");
    }

    public static <T> T deepClone(T t, Type type) {
        try {
            Gson gson = new Gson();
            return (T) gson.fromJson(gson.toJson(t), type);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }
}
