package com.zhy.http.okhttp.builder;

import com.zhy.http.okhttp.request.PostFileRequest;
import com.zhy.http.okhttp.request.RequestCall;
import java.io.File;
import okhttp3.MediaType;

/* loaded from: classes2.dex */
public class PostFileBuilder extends OkHttpRequestBuilder<PostFileBuilder> {
    private File file;
    private MediaType mediaType;

    public OkHttpRequestBuilder file(File file) {
        this.file = file;
        return this;
    }

    public OkHttpRequestBuilder mediaType(MediaType mediaType) {
        this.mediaType = mediaType;
        return this;
    }

    @Override // com.zhy.http.okhttp.builder.OkHttpRequestBuilder
    public RequestCall build() {
        return new PostFileRequest(this.url, this.tag, this.params, this.headers, this.file, this.mediaType, this.f1119id).build();
    }
}
