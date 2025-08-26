package com.zhy.http.okhttp.builder;

import com.zhy.http.okhttp.request.OtherRequest;
import com.zhy.http.okhttp.request.RequestCall;
import okhttp3.RequestBody;

/* loaded from: classes2.dex */
public class OtherRequestBuilder extends OkHttpRequestBuilder<OtherRequestBuilder> {
    private String content;
    private String method;
    private RequestBody requestBody;

    public OtherRequestBuilder(String str) {
        this.method = str;
    }

    @Override // com.zhy.http.okhttp.builder.OkHttpRequestBuilder
    public RequestCall build() {
        return new OtherRequest(this.requestBody, this.content, this.method, this.url, this.tag, this.params, this.headers, this.f1119id).build();
    }

    public OtherRequestBuilder requestBody(RequestBody requestBody) {
        this.requestBody = requestBody;
        return this;
    }

    public OtherRequestBuilder requestBody(String str) {
        this.content = str;
        return this;
    }
}
