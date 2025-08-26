package com.zhy.http.okhttp.callback;

import java.io.IOException;
import okhttp3.Response;

/* loaded from: classes2.dex */
public abstract class StringCallback extends Callback<String> {
    @Override // com.zhy.http.okhttp.callback.Callback
    public String parseNetworkResponse(Response response, int i) throws IOException {
        return response.body().string();
    }
}
