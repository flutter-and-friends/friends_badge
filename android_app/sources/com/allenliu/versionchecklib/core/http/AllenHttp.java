package com.allenliu.versionchecklib.core.http;

import com.allenliu.versionchecklib.core.VersionParams;
import com.allenliu.versionchecklib.p011v2.builder.RequestVersionBuilder;
import com.allenliu.versionchecklib.utils.ALog;
import java.security.KeyManagementException;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.security.cert.CertificateException;
import java.security.cert.X509Certificate;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSession;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.TrustManager;
import javax.net.ssl.X509TrustManager;
import okhttp3.FormBody;
import okhttp3.MediaType;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.RequestBody;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class AllenHttp {
    private static OkHttpClient client;

    public static OkHttpClient getHttpClient() {
        if (client == null) {
            OkHttpClient.Builder builder = new OkHttpClient.Builder();
            builder.sslSocketFactory(createSSLSocketFactory());
            builder.connectTimeout(15L, TimeUnit.SECONDS);
            builder.hostnameVerifier(new TrustAllHostnameVerifier());
            client = builder.build();
        }
        return client;
    }

    private static class TrustAllHostnameVerifier implements HostnameVerifier {
        @Override // javax.net.ssl.HostnameVerifier
        public boolean verify(String str, SSLSession sSLSession) {
            return true;
        }

        private TrustAllHostnameVerifier() {
        }
    }

    private static SSLSocketFactory createSSLSocketFactory() throws NoSuchAlgorithmException, KeyManagementException {
        try {
            SSLContext sSLContext = SSLContext.getInstance("TLS");
            sSLContext.init(null, new TrustManager[]{new TrustAllCerts()}, new SecureRandom());
            return sSLContext.getSocketFactory();
        } catch (Exception unused) {
            return null;
        }
    }

    private static class TrustAllCerts implements X509TrustManager {
        @Override // javax.net.ssl.X509TrustManager
        public void checkClientTrusted(X509Certificate[] x509CertificateArr, String str) throws CertificateException {
        }

        @Override // javax.net.ssl.X509TrustManager
        public void checkServerTrusted(X509Certificate[] x509CertificateArr, String str) throws CertificateException {
        }

        @Override // javax.net.ssl.X509TrustManager
        public X509Certificate[] getAcceptedIssuers() {
            return new X509Certificate[0];
        }

        private TrustAllCerts() {
        }
    }

    private static String assembleUrl(String str, HttpParams httpParams) {
        StringBuffer stringBuffer = new StringBuffer(str);
        if (httpParams != null) {
            stringBuffer.append("?");
            for (Map.Entry<String, Object> entry : httpParams.entrySet()) {
                String key = entry.getKey();
                String str2 = entry.getValue() + "";
                stringBuffer.append(key);
                stringBuffer.append("=");
                stringBuffer.append(str2);
                stringBuffer.append("&");
            }
            str = stringBuffer.substring(0, stringBuffer.length() - 1);
        }
        ALog.m269e("url:" + str);
        return str;
    }

    private static String getRequestParamsJson(HttpParams httpParams) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        for (Map.Entry<String, Object> entry : httpParams.entrySet()) {
            try {
                jSONObject.put(entry.getKey(), entry.getValue());
            } catch (JSONException e) {
                e.printStackTrace();
            }
        }
        String string = jSONObject.toString();
        ALog.m269e("json:" + string);
        return string;
    }

    private static <T extends Request.Builder> T assembleHeader(T t, VersionParams versionParams) {
        HttpHeaders httpHeaders = versionParams.getHttpHeaders();
        if (httpHeaders != null) {
            ALog.m269e("header:");
            for (Map.Entry<String, String> entry : httpHeaders.entrySet()) {
                String key = entry.getKey();
                String value = entry.getValue();
                ALog.m269e(key + "=" + value + "\n");
                t.addHeader(key, value);
            }
        }
        return t;
    }

    public static Request.Builder get(VersionParams versionParams) {
        Request.Builder builderAssembleHeader = assembleHeader(new Request.Builder(), versionParams);
        builderAssembleHeader.url(assembleUrl(versionParams.getRequestUrl(), versionParams.getRequestParams()));
        return builderAssembleHeader;
    }

    public static Request.Builder post(VersionParams versionParams) {
        FormBody requestParams = getRequestParams(versionParams);
        Request.Builder builderAssembleHeader = assembleHeader(new Request.Builder(), versionParams);
        builderAssembleHeader.post(requestParams).url(versionParams.getRequestUrl());
        return builderAssembleHeader;
    }

    public static Request.Builder postJson(VersionParams versionParams) {
        RequestBody requestBodyCreate = RequestBody.create(MediaType.parse("application/json; charset=utf-8"), getRequestParamsJson(versionParams.getRequestParams()));
        Request.Builder builderAssembleHeader = assembleHeader(new Request.Builder(), versionParams);
        builderAssembleHeader.post(requestBodyCreate).url(versionParams.getRequestUrl());
        return builderAssembleHeader;
    }

    private static FormBody getRequestParams(VersionParams versionParams) {
        FormBody.Builder builder = new FormBody.Builder();
        for (Map.Entry<String, Object> entry : versionParams.getRequestParams().entrySet()) {
            builder.add(entry.getKey(), entry.getValue() + "");
            ALog.m269e("params key:" + entry.getKey() + "-----value:" + entry.getValue());
        }
        return builder.build();
    }

    private static <T extends Request.Builder> T assembleHeader(T t, RequestVersionBuilder requestVersionBuilder) {
        HttpHeaders httpHeaders = requestVersionBuilder.getHttpHeaders();
        if (httpHeaders != null) {
            ALog.m269e("header:");
            for (Map.Entry<String, String> entry : httpHeaders.entrySet()) {
                String key = entry.getKey();
                String value = entry.getValue();
                ALog.m269e(key + "=" + value + "\n");
                t.addHeader(key, value);
            }
        }
        return t;
    }

    public static Request.Builder get(RequestVersionBuilder requestVersionBuilder) {
        Request.Builder builderAssembleHeader = assembleHeader(new Request.Builder(), requestVersionBuilder);
        builderAssembleHeader.url(assembleUrl(requestVersionBuilder.getRequestUrl(), requestVersionBuilder.getRequestParams()));
        return builderAssembleHeader;
    }

    public static Request.Builder post(RequestVersionBuilder requestVersionBuilder) {
        FormBody requestParams = getRequestParams(requestVersionBuilder);
        Request.Builder builderAssembleHeader = assembleHeader(new Request.Builder(), requestVersionBuilder);
        builderAssembleHeader.post(requestParams).url(requestVersionBuilder.getRequestUrl());
        return builderAssembleHeader;
    }

    public static Request.Builder postJson(RequestVersionBuilder requestVersionBuilder) {
        RequestBody requestBodyCreate = RequestBody.create(MediaType.parse("application/json; charset=utf-8"), getRequestParamsJson(requestVersionBuilder.getRequestParams()));
        Request.Builder builderAssembleHeader = assembleHeader(new Request.Builder(), requestVersionBuilder);
        builderAssembleHeader.post(requestBodyCreate).url(requestVersionBuilder.getRequestUrl());
        return builderAssembleHeader;
    }

    private static FormBody getRequestParams(RequestVersionBuilder requestVersionBuilder) {
        FormBody.Builder builder = new FormBody.Builder();
        for (Map.Entry<String, Object> entry : requestVersionBuilder.getRequestParams().entrySet()) {
            builder.add(entry.getKey(), entry.getValue() + "");
            ALog.m269e("params key:" + entry.getKey() + "-----value:" + entry.getValue());
        }
        return builder.build();
    }
}
