package com.zhy.http.okhttp.builder;

import android.net.Uri;
import com.zhy.http.okhttp.request.GetRequest;
import com.zhy.http.okhttp.request.RequestCall;
import java.util.LinkedHashMap;
import java.util.Map;

/* loaded from: classes2.dex */
public class GetBuilder extends OkHttpRequestBuilder<GetBuilder> implements HasParamsable {
    @Override // com.zhy.http.okhttp.builder.HasParamsable
    public /* bridge */ /* synthetic */ OkHttpRequestBuilder params(Map map) {
        return params((Map<String, String>) map);
    }

    @Override // com.zhy.http.okhttp.builder.OkHttpRequestBuilder
    public RequestCall build() {
        if (this.params != null) {
            this.url = appendParams(this.url, this.params);
        }
        return new GetRequest(this.url, this.tag, this.params, this.headers, this.f1119id).build();
    }

    protected String appendParams(String str, Map<String, String> map) {
        if (str == null || map == null || map.isEmpty()) {
            return str;
        }
        Uri.Builder builderBuildUpon = Uri.parse(str).buildUpon();
        for (String str2 : map.keySet()) {
            builderBuildUpon.appendQueryParameter(str2, map.get(str2));
        }
        return builderBuildUpon.build().toString();
    }

    @Override // com.zhy.http.okhttp.builder.HasParamsable
    public GetBuilder params(Map<String, String> map) {
        this.params = map;
        return this;
    }

    @Override // com.zhy.http.okhttp.builder.HasParamsable
    public GetBuilder addParams(String str, String str2) {
        if (this.params == null) {
            this.params = new LinkedHashMap();
        }
        this.params.put(str, str2);
        return this;
    }
}
