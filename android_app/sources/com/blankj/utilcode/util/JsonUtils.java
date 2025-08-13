package com.blankj.utilcode.util;

import android.util.Log;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class JsonUtils {
    private static final byte TYPE_BOOLEAN = 0;
    private static final byte TYPE_DOUBLE = 3;
    private static final byte TYPE_INT = 1;
    private static final byte TYPE_JSON_ARRAY = 6;
    private static final byte TYPE_JSON_OBJECT = 5;
    private static final byte TYPE_LONG = 2;
    private static final byte TYPE_STRING = 4;

    private JsonUtils() {
        throw new UnsupportedOperationException("u can't instantiate me...");
    }

    public static boolean getBoolean(JSONObject jSONObject, String str) {
        return getBoolean(jSONObject, str, false);
    }

    public static boolean getBoolean(JSONObject jSONObject, String str, boolean z) {
        return ((Boolean) getValueByType(jSONObject, str, Boolean.valueOf(z), (byte) 0)).booleanValue();
    }

    public static boolean getBoolean(String str, String str2) {
        return getBoolean(str, str2, false);
    }

    public static boolean getBoolean(String str, String str2, boolean z) {
        return ((Boolean) getValueByType(str, str2, Boolean.valueOf(z), (byte) 0)).booleanValue();
    }

    public static int getInt(JSONObject jSONObject, String str) {
        return getInt(jSONObject, str, -1);
    }

    public static int getInt(JSONObject jSONObject, String str, int i) {
        return ((Integer) getValueByType(jSONObject, str, Integer.valueOf(i), (byte) 1)).intValue();
    }

    public static int getInt(String str, String str2) {
        return getInt(str, str2, -1);
    }

    public static int getInt(String str, String str2, int i) {
        return ((Integer) getValueByType(str, str2, Integer.valueOf(i), (byte) 1)).intValue();
    }

    public static long getLong(JSONObject jSONObject, String str) {
        return getLong(jSONObject, str, -1L);
    }

    public static long getLong(JSONObject jSONObject, String str, long j) {
        return ((Long) getValueByType(jSONObject, str, Long.valueOf(j), (byte) 2)).longValue();
    }

    public static long getLong(String str, String str2) {
        return getLong(str, str2, -1L);
    }

    public static long getLong(String str, String str2, long j) {
        return ((Long) getValueByType(str, str2, Long.valueOf(j), (byte) 2)).longValue();
    }

    public static double getDouble(JSONObject jSONObject, String str) {
        return getDouble(jSONObject, str, -1.0d);
    }

    public static double getDouble(JSONObject jSONObject, String str, double d) {
        return ((Double) getValueByType(jSONObject, str, Double.valueOf(d), (byte) 3)).doubleValue();
    }

    public static double getDouble(String str, String str2) {
        return getDouble(str, str2, -1.0d);
    }

    public static double getDouble(String str, String str2, double d) {
        return ((Double) getValueByType(str, str2, Double.valueOf(d), (byte) 3)).doubleValue();
    }

    public static String getString(JSONObject jSONObject, String str) {
        return getString(jSONObject, str, "");
    }

    public static String getString(JSONObject jSONObject, String str, String str2) {
        return (String) getValueByType(jSONObject, str, str2, (byte) 4);
    }

    public static String getString(String str, String str2) {
        return getString(str, str2, "");
    }

    public static String getString(String str, String str2, String str3) {
        return (String) getValueByType(str, str2, str3, (byte) 4);
    }

    public static JSONObject getJSONObject(JSONObject jSONObject, String str, JSONObject jSONObject2) {
        return (JSONObject) getValueByType(jSONObject, str, jSONObject2, (byte) 5);
    }

    public static JSONObject getJSONObject(String str, String str2, JSONObject jSONObject) {
        return (JSONObject) getValueByType(str, str2, jSONObject, (byte) 5);
    }

    public static JSONArray getJSONArray(JSONObject jSONObject, String str, JSONArray jSONArray) {
        return (JSONArray) getValueByType(jSONObject, str, jSONArray, (byte) 6);
    }

    public static JSONArray getJSONArray(String str, String str2, JSONArray jSONArray) {
        return (JSONArray) getValueByType(str, str2, jSONArray, (byte) 6);
    }

    private static <T> T getValueByType(JSONObject jSONObject, String str, T t, byte b) {
        T t2;
        if (jSONObject != null && str != null && str.length() != 0) {
            try {
                if (b == 0) {
                    t2 = (T) Boolean.valueOf(jSONObject.getBoolean(str));
                } else if (b == 1) {
                    t2 = (T) Integer.valueOf(jSONObject.getInt(str));
                } else if (b == 2) {
                    t2 = (T) Long.valueOf(jSONObject.getLong(str));
                } else if (b == 3) {
                    t2 = (T) Double.valueOf(jSONObject.getDouble(str));
                } else if (b == 4) {
                    t2 = (T) jSONObject.getString(str);
                } else if (b == 5) {
                    t2 = (T) jSONObject.getJSONObject(str);
                } else if (b == 6) {
                    t2 = (T) jSONObject.getJSONArray(str);
                }
                return t2;
            } catch (JSONException e) {
                Log.e("JsonUtils", "getValueByType: ", e);
            }
        }
        return t;
    }

    private static <T> T getValueByType(String str, String str2, T t, byte b) {
        if (str != null && str.length() != 0 && str2 != null && str2.length() != 0) {
            try {
                return (T) getValueByType(new JSONObject(str), str2, t, b);
            } catch (JSONException e) {
                Log.e("JsonUtils", "getValueByType: ", e);
            }
        }
        return t;
    }

    public static String formatJson(String str) {
        return formatJson(str, 4);
    }

    public static String formatJson(String str, int i) {
        try {
            int length = str.length();
            for (int i2 = 0; i2 < length; i2++) {
                char cCharAt = str.charAt(i2);
                if (cCharAt == '{') {
                    return new JSONObject(str).toString(i);
                }
                if (cCharAt == '[') {
                    return new JSONArray(str).toString(i);
                }
                if (!Character.isWhitespace(cCharAt)) {
                    return str;
                }
            }
        } catch (JSONException e) {
            e.printStackTrace();
        }
        return str;
    }
}
