package com.tencent.bugly.crashreport.crash.p016h5;

import android.webkit.JavascriptInterface;
import com.tencent.bugly.crashreport.CrashReport;
import com.tencent.bugly.crashreport.inner.InnerApi;
import com.tencent.bugly.proguard.C1386x;
import com.tencent.bugly.proguard.C1388z;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.Map;
import org.json.JSONObject;

/* compiled from: BUGLY */
/* loaded from: classes.dex */
public class H5JavaScriptInterface {

    /* renamed from: a */
    private static HashSet<Integer> f785a = new HashSet<>();

    /* renamed from: b */
    private String f786b = null;

    /* renamed from: c */
    private Thread f787c = null;

    /* renamed from: d */
    private String f788d = null;

    /* renamed from: e */
    private Map<String, String> f789e = null;

    private H5JavaScriptInterface() {
    }

    public static H5JavaScriptInterface getInstance(CrashReport.WebViewInterface webViewInterface) {
        String string = null;
        if (webViewInterface == null || f785a.contains(Integer.valueOf(webViewInterface.hashCode()))) {
            return null;
        }
        H5JavaScriptInterface h5JavaScriptInterface = new H5JavaScriptInterface();
        f785a.add(Integer.valueOf(webViewInterface.hashCode()));
        h5JavaScriptInterface.f787c = Thread.currentThread();
        Thread thread = h5JavaScriptInterface.f787c;
        if (thread != null) {
            StringBuilder sb = new StringBuilder();
            sb.append("\n");
            for (int i = 2; i < thread.getStackTrace().length; i++) {
                StackTraceElement stackTraceElement = thread.getStackTrace()[i];
                if (!stackTraceElement.toString().contains("crashreport")) {
                    sb.append(stackTraceElement.toString());
                    sb.append("\n");
                }
            }
            string = sb.toString();
        }
        h5JavaScriptInterface.f788d = string;
        HashMap map = new HashMap();
        StringBuilder sb2 = new StringBuilder();
        sb2.append((Object) webViewInterface.getContentDescription());
        map.put("[WebView] ContentDescription", sb2.toString());
        h5JavaScriptInterface.f789e = map;
        return h5JavaScriptInterface;
    }

    /* renamed from: a */
    private static C1340a m554a(String str) {
        String string;
        if (str != null && str.length() > 0) {
            try {
                JSONObject jSONObject = new JSONObject(str);
                C1340a c1340a = new C1340a();
                c1340a.f790a = jSONObject.getString("projectRoot");
                if (c1340a.f790a == null) {
                    return null;
                }
                c1340a.f791b = jSONObject.getString("context");
                if (c1340a.f791b == null) {
                    return null;
                }
                c1340a.f792c = jSONObject.getString("url");
                if (c1340a.f792c == null) {
                    return null;
                }
                c1340a.f793d = jSONObject.getString("userAgent");
                if (c1340a.f793d == null) {
                    return null;
                }
                c1340a.f794e = jSONObject.getString("language");
                if (c1340a.f794e == null) {
                    return null;
                }
                c1340a.f795f = jSONObject.getString("name");
                if (c1340a.f795f == null || c1340a.f795f.equals("null") || (string = jSONObject.getString("stacktrace")) == null) {
                    return null;
                }
                int iIndexOf = string.indexOf("\n");
                if (iIndexOf < 0) {
                    C1386x.m772d("H5 crash stack's format is wrong!", new Object[0]);
                    return null;
                }
                c1340a.f797h = string.substring(iIndexOf + 1);
                c1340a.f796g = string.substring(0, iIndexOf);
                int iIndexOf2 = c1340a.f796g.indexOf(":");
                if (iIndexOf2 > 0) {
                    c1340a.f796g = c1340a.f796g.substring(iIndexOf2 + 1);
                }
                c1340a.f798i = jSONObject.getString("file");
                if (c1340a.f795f == null) {
                    return null;
                }
                c1340a.f799j = jSONObject.getLong("lineNumber");
                if (c1340a.f799j < 0) {
                    return null;
                }
                c1340a.f800k = jSONObject.getLong("columnNumber");
                if (c1340a.f800k < 0) {
                    return null;
                }
                C1386x.m766a("H5 crash information is following: ", new Object[0]);
                C1386x.m766a("[projectRoot]: " + c1340a.f790a, new Object[0]);
                C1386x.m766a("[context]: " + c1340a.f791b, new Object[0]);
                C1386x.m766a("[url]: " + c1340a.f792c, new Object[0]);
                C1386x.m766a("[userAgent]: " + c1340a.f793d, new Object[0]);
                C1386x.m766a("[language]: " + c1340a.f794e, new Object[0]);
                C1386x.m766a("[name]: " + c1340a.f795f, new Object[0]);
                C1386x.m766a("[message]: " + c1340a.f796g, new Object[0]);
                C1386x.m766a("[stacktrace]: \n" + c1340a.f797h, new Object[0]);
                C1386x.m766a("[file]: " + c1340a.f798i, new Object[0]);
                C1386x.m766a("[lineNumber]: " + c1340a.f799j, new Object[0]);
                C1386x.m766a("[columnNumber]: " + c1340a.f800k, new Object[0]);
                return c1340a;
            } catch (Throwable th) {
                if (!C1386x.m767a(th)) {
                    th.printStackTrace();
                }
            }
        }
        return null;
    }

    @JavascriptInterface
    public void printLog(String str) {
        C1386x.m772d("Log from js: %s", str);
    }

    @JavascriptInterface
    public void reportJSException(String str) {
        if (str == null) {
            C1386x.m772d("Payload from JS is null.", new Object[0]);
            return;
        }
        String strM804a = C1388z.m804a(str.getBytes());
        String str2 = this.f786b;
        if (str2 != null && str2.equals(strM804a)) {
            C1386x.m772d("Same payload from js. Please check whether you've injected bugly.js more than one times.", new Object[0]);
            return;
        }
        this.f786b = strM804a;
        C1386x.m772d("Handling JS exception ...", new Object[0]);
        C1340a c1340aM554a = m554a(str);
        if (c1340aM554a == null) {
            C1386x.m772d("Failed to parse payload.", new Object[0]);
            return;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        LinkedHashMap linkedHashMap2 = new LinkedHashMap();
        if (c1340aM554a.f790a != null) {
            linkedHashMap2.put("[JS] projectRoot", c1340aM554a.f790a);
        }
        if (c1340aM554a.f791b != null) {
            linkedHashMap2.put("[JS] context", c1340aM554a.f791b);
        }
        if (c1340aM554a.f792c != null) {
            linkedHashMap2.put("[JS] url", c1340aM554a.f792c);
        }
        if (c1340aM554a.f793d != null) {
            linkedHashMap2.put("[JS] userAgent", c1340aM554a.f793d);
        }
        if (c1340aM554a.f798i != null) {
            linkedHashMap2.put("[JS] file", c1340aM554a.f798i);
        }
        if (c1340aM554a.f799j != 0) {
            linkedHashMap2.put("[JS] lineNumber", Long.toString(c1340aM554a.f799j));
        }
        linkedHashMap.putAll(linkedHashMap2);
        linkedHashMap.putAll(this.f789e);
        linkedHashMap.put("Java Stack", this.f788d);
        Thread thread = this.f787c;
        if (c1340aM554a != null) {
            InnerApi.postH5CrashAsync(thread, c1340aM554a.f795f, c1340aM554a.f796g, c1340aM554a.f797h, linkedHashMap);
        }
    }
}
