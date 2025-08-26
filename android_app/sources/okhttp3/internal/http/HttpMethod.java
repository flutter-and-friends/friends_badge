package okhttp3.internal.http;

import com.zhy.http.okhttp.OkHttpUtils;

/* loaded from: classes2.dex */
public final class HttpMethod {
    public static boolean invalidatesCache(String str) {
        return str.equals("POST") || str.equals(OkHttpUtils.METHOD.PATCH) || str.equals(OkHttpUtils.METHOD.PUT) || str.equals(OkHttpUtils.METHOD.DELETE) || str.equals("MOVE");
    }

    public static boolean requiresRequestBody(String str) {
        return str.equals("POST") || str.equals(OkHttpUtils.METHOD.PUT) || str.equals(OkHttpUtils.METHOD.PATCH) || str.equals("PROPPATCH") || str.equals("REPORT");
    }

    public static boolean permitsRequestBody(String str) {
        return (str.equals("GET") || str.equals(OkHttpUtils.METHOD.HEAD)) ? false : true;
    }

    public static boolean redirectsWithBody(String str) {
        return str.equals("PROPFIND");
    }

    public static boolean redirectsToGet(String str) {
        return !str.equals("PROPFIND");
    }

    private HttpMethod() {
    }
}
