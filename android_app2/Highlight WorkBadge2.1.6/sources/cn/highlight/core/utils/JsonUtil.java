package cn.highlight.core.utils;

import android.text.TextUtils;
import com.google.gson.Gson;
import com.google.gson.JsonIOException;
import com.google.gson.JsonSyntaxException;
import com.google.gson.stream.JsonReader;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class JsonUtil {
    private static Gson gson = new Gson();

    public static <T> String toJsonString(Object obj) {
        return gson.toJson(obj);
    }

    public static <T> JSONObject toJson(T t) throws JSONException {
        return new JSONObject(toJsonString(t));
    }

    public static <T> T fromJsonString(String str, Class<T> cls) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        return (T) gson.fromJson(str, (Class) cls);
    }

    public static <T> List<T> fromJsonArray(String str, Class<T> cls) throws JsonSyntaxException {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        return (List) gson.fromJson(str, new GsonList(cls));
    }

    public static class GsonList<T> implements ParameterizedType {
        private Class<?> wrapped;

        @Override // java.lang.reflect.ParameterizedType
        public Type getOwnerType() {
            return null;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public GsonList(Class<T> cls) {
            this.wrapped = cls;
        }

        @Override // java.lang.reflect.ParameterizedType
        public Type[] getActualTypeArguments() {
            return new Type[]{this.wrapped};
        }

        @Override // java.lang.reflect.ParameterizedType
        public Type getRawType() {
            return List.class;
        }
    }

    public static <T> T fromJson(JsonReader jsonReader, Type type) throws JsonSyntaxException, JsonIOException {
        return (T) gson.fromJson(jsonReader, type);
    }
}
