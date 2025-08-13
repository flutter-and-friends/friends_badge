package com.zhy.http.okhttp.request;

import android.text.TextUtils;
import com.zhy.http.okhttp.OkHttpUtils;
import com.zhy.http.okhttp.utils.Exceptions;
import java.util.Map;
import okhttp3.MediaType;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.internal.http.HttpMethod;

/* loaded from: classes2.dex */
public class OtherRequest extends OkHttpRequest {
    private static MediaType MEDIA_TYPE_PLAIN = MediaType.parse("text/plain;charset=utf-8");
    private String content;
    private String method;
    private RequestBody requestBody;

    public OtherRequest(RequestBody requestBody, String str, String str2, String str3, Object obj, Map<String, String> map, Map<String, String> map2, int i) {
        super(str3, obj, map, map2, i);
        this.requestBody = requestBody;
        this.method = str2;
        this.content = str;
    }

    @Override // com.zhy.http.okhttp.request.OkHttpRequest
    protected RequestBody buildRequestBody() {
        if (this.requestBody == null && TextUtils.isEmpty(this.content) && HttpMethod.requiresRequestBody(this.method)) {
            Exceptions.illegalArgument("requestBody and content can not be null in method:" + this.method, new Object[0]);
        }
        if (this.requestBody == null && !TextUtils.isEmpty(this.content)) {
            this.requestBody = RequestBody.create(MEDIA_TYPE_PLAIN, this.content);
        }
        return this.requestBody;
    }

    @Override // com.zhy.http.okhttp.request.OkHttpRequest
    protected Request buildRequest(RequestBody requestBody) {
        if (this.method.equals(OkHttpUtils.METHOD.PUT)) {
            this.builder.put(requestBody);
        } else if (this.method.equals(OkHttpUtils.METHOD.DELETE)) {
            if (requestBody == null) {
                this.builder.delete();
            } else {
                this.builder.delete(requestBody);
            }
        } else if (this.method.equals(OkHttpUtils.METHOD.HEAD)) {
            this.builder.head();
        } else if (this.method.equals(OkHttpUtils.METHOD.PATCH)) {
            this.builder.patch(requestBody);
        }
        return this.builder.build();
    }
}
