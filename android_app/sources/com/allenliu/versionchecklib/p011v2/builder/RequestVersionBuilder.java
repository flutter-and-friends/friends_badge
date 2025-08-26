package com.allenliu.versionchecklib.p011v2.builder;

import com.allenliu.versionchecklib.core.http.HttpHeaders;
import com.allenliu.versionchecklib.core.http.HttpParams;
import com.allenliu.versionchecklib.core.http.HttpRequestMethod;
import com.allenliu.versionchecklib.p011v2.callback.RequestVersionListener;

/* loaded from: classes.dex */
public class RequestVersionBuilder {
    private HttpHeaders httpHeaders;
    private HttpRequestMethod requestMethod = HttpRequestMethod.GET;
    private HttpParams requestParams;
    private String requestUrl;
    private RequestVersionListener requestVersionListener;

    public HttpRequestMethod getRequestMethod() {
        return this.requestMethod;
    }

    public RequestVersionBuilder setRequestMethod(HttpRequestMethod httpRequestMethod) {
        this.requestMethod = httpRequestMethod;
        return this;
    }

    public HttpParams getRequestParams() {
        return this.requestParams;
    }

    public RequestVersionBuilder setRequestParams(HttpParams httpParams) {
        this.requestParams = httpParams;
        return this;
    }

    public String getRequestUrl() {
        return this.requestUrl;
    }

    public RequestVersionBuilder setRequestUrl(String str) {
        this.requestUrl = str;
        return this;
    }

    public HttpHeaders getHttpHeaders() {
        return this.httpHeaders;
    }

    public RequestVersionBuilder setHttpHeaders(HttpHeaders httpHeaders) {
        this.httpHeaders = httpHeaders;
        return this;
    }

    public RequestVersionListener getRequestVersionListener() {
        return this.requestVersionListener;
    }

    public DownloadBuilder request(RequestVersionListener requestVersionListener) {
        this.requestVersionListener = requestVersionListener;
        return new DownloadBuilder(this, null);
    }
}
