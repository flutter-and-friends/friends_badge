package com.zhy.http.okhttp.request;

import java.util.Map;
import okhttp3.Request;
import okhttp3.RequestBody;

/* loaded from: classes2.dex */
public class GetRequest extends OkHttpRequest {
    @Override // com.zhy.http.okhttp.request.OkHttpRequest
    protected RequestBody buildRequestBody() {
        return null;
    }

    public GetRequest(String str, Object obj, Map<String, String> map, Map<String, String> map2, int i) {
        super(str, obj, map, map2, i);
    }

    @Override // com.zhy.http.okhttp.request.OkHttpRequest
    protected Request buildRequest(RequestBody requestBody) {
        return this.builder.get().build();
    }
}
