package cn.highlight.core.utils;

import android.content.Context;
import android.content.SharedPreferences;
import android.util.Base64;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.Set;

/* loaded from: classes.dex */
public class SpUtil {
    public static void putBoolean(Context context, String str, boolean z) {
        context.getSharedPreferences("config", 0).edit().putBoolean(str, z).apply();
    }

    public static void putStringSet(Context context, String str, Set<String> set) {
        context.getSharedPreferences("config", 0).edit().putStringSet(str, set).apply();
    }

    public static Set<String> getStringSet(Context context, String str, Set<String> set) {
        return context.getSharedPreferences("config", 0).getStringSet(str, set);
    }

    public static boolean getBoolean(Context context, String str, boolean z) {
        return context.getSharedPreferences("config", 0).getBoolean(str, z);
    }

    public static void putString(Context context, String str, String str2) {
        if (context == null) {
            return;
        }
        context.getSharedPreferences("config", 0).edit().putString(str, str2).apply();
    }

    public static String getString(Context context, String str, String str2) {
        return context == null ? "" : context.getSharedPreferences("config", 0).getString(str, str2);
    }

    public static void putInt(Context context, String str, int i) {
        context.getSharedPreferences("config", 0).edit().putInt(str, i).apply();
    }

    public static int getInt(Context context, String str, int i) {
        return context.getSharedPreferences("config", 0).getInt(str, i);
    }

    public static void remove(Context context, String str) {
        if (context == null) {
            return;
        }
        context.getSharedPreferences("config", 0).edit().remove(str).apply();
    }

    private static String Object2String(Object obj) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            ObjectOutputStream objectOutputStream = new ObjectOutputStream(byteArrayOutputStream);
            objectOutputStream.writeObject(obj);
            String str = new String(Base64.encode(byteArrayOutputStream.toByteArray(), 0));
            objectOutputStream.close();
            return str;
        } catch (IOException e) {
            e.printStackTrace();
            return null;
        }
    }

    private static Object String2Object(String str) throws ClassNotFoundException, IOException {
        try {
            ObjectInputStream objectInputStream = new ObjectInputStream(new ByteArrayInputStream(Base64.decode(str.getBytes(), 0)));
            Object object = objectInputStream.readObject();
            objectInputStream.close();
            return object;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public static void saveObj(Context context, String str, String str2, Object obj) {
        SharedPreferences.Editor editorEdit = context.getSharedPreferences(str, 0).edit();
        editorEdit.putString(str2, Object2String(obj));
        editorEdit.apply();
    }

    public static Object getObj(Context context, String str, String str2) {
        String string = context.getSharedPreferences(str, 0).getString(str2, null);
        if (string != null) {
            return String2Object(string);
        }
        return null;
    }
}
