package com.zhy.http.okhttp;

import com.zhy.http.okhttp.builder.GetBuilder;
import com.zhy.http.okhttp.builder.HeadBuilder;
import com.zhy.http.okhttp.builder.OtherRequestBuilder;
import com.zhy.http.okhttp.builder.PostFileBuilder;
import com.zhy.http.okhttp.builder.PostFormBuilder;
import com.zhy.http.okhttp.builder.PostStringBuilder;
import com.zhy.http.okhttp.callback.Callback;
import com.zhy.http.okhttp.request.RequestCall;
import com.zhy.http.okhttp.utils.Platform;
import java.io.IOException;
import java.util.concurrent.Executor;
import okhttp3.Call;
import okhttp3.OkHttpClient;
import okhttp3.Response;

/* loaded from: classes2.dex */
public class OkHttpUtils {
    public static final long DEFAULT_MILLISECONDS = 10000;
    private static volatile OkHttpUtils mInstance;
    private OkHttpClient mOkHttpClient;
    private Platform mPlatform;

    public static class METHOD {
        public static final String DELETE = "DELETE";
        public static final String HEAD = "HEAD";
        public static final String PATCH = "PATCH";
        public static final String PUT = "PUT";
    }

    public OkHttpUtils(OkHttpClient okHttpClient) {
        if (okHttpClient == null) {
            this.mOkHttpClient = new OkHttpClient();
        } else {
            this.mOkHttpClient = okHttpClient;
        }
        this.mPlatform = Platform.get();
    }

    public static OkHttpUtils initClient(OkHttpClient okHttpClient) {
        if (mInstance == null) {
            synchronized (OkHttpUtils.class) {
                if (mInstance == null) {
                    mInstance = new OkHttpUtils(okHttpClient);
                }
            }
        }
        return mInstance;
    }

    public static OkHttpUtils getInstance() {
        return initClient(null);
    }

    public Executor getDelivery() {
        return this.mPlatform.defaultCallbackExecutor();
    }

    public OkHttpClient getOkHttpClient() {
        return this.mOkHttpClient;
    }

    public static GetBuilder get() {
        return new GetBuilder();
    }

    public static PostStringBuilder postString() {
        return new PostStringBuilder();
    }

    public static PostFileBuilder postFile() {
        return new PostFileBuilder();
    }

    public static PostFormBuilder post() {
        return new PostFormBuilder();
    }

    public static OtherRequestBuilder put() {
        return new OtherRequestBuilder(METHOD.PUT);
    }

    public static HeadBuilder head() {
        return new HeadBuilder();
    }

    public static OtherRequestBuilder delete() {
        return new OtherRequestBuilder(METHOD.DELETE);
    }

    public static OtherRequestBuilder patch() {
        return new OtherRequestBuilder(METHOD.PATCH);
    }

    public void execute(RequestCall requestCall, final Callback callback) {
        if (callback == null) {
            callback = Callback.CALLBACK_DEFAULT;
        }
        final int id = requestCall.getOkHttpRequest().getId();
        requestCall.getCall().enqueue(new okhttp3.Callback() { // from class: com.zhy.http.okhttp.OkHttpUtils.1
            @Override // okhttp3.Callback
            public void onFailure(Call call, IOException iOException) {
                OkHttpUtils.this.sendFailResultCallback(call, iOException, callback, id);
            }

            @Override // okhttp3.Callback
            public void onResponse(Call call, Response response) throws IOException {
                try {
                    try {
                    } catch (Exception e) {
                        OkHttpUtils.this.sendFailResultCallback(call, e, callback, id);
                        if (response.body() == null) {
                            return;
                        }
                    }
                    if (call.isCanceled()) {
                        OkHttpUtils.this.sendFailResultCallback(call, new IOException("Canceled!"), callback, id);
                        if (response.body() != null) {
                            response.body().close();
                            return;
                        }
                        return;
                    }
                    if (callback.validateReponse(response, id)) {
                        OkHttpUtils.this.sendSuccessResultCallback(callback.parseNetworkResponse(response, id), callback, id);
                        if (response.body() == null) {
                            return;
                        }
                        response.body().close();
                        return;
                    }
                    OkHttpUtils.this.sendFailResultCallback(call, new IOException("request failed , reponse's code is : " + response.code()), callback, id);
                    if (response.body() != null) {
                        response.body().close();
                    }
                } catch (Throwable th) {
                    if (response.body() != null) {
                        response.body().close();
                    }
                    throw th;
                }
            }
        });
    }

    public void sendFailResultCallback(final Call call, final Exception exc, final Callback callback, final int i) {
        if (callback == null) {
            return;
        }
        this.mPlatform.execute(new Runnable() { // from class: com.zhy.http.okhttp.OkHttpUtils.2
            @Override // java.lang.Runnable
            public void run() {
                callback.onError(call, exc, i);
                callback.onAfter(i);
            }
        });
    }

    public void sendSuccessResultCallback(final Object obj, final Callback callback, final int i) {
        if (callback == null) {
            return;
        }
        this.mPlatform.execute(new Runnable() { // from class: com.zhy.http.okhttp.OkHttpUtils.3
            @Override // java.lang.Runnable
            public void run() {
                callback.onResponse(obj, i);
                callback.onAfter(i);
            }
        });
    }

    public void cancelTag(Object obj) {
        for (Call call : this.mOkHttpClient.dispatcher().queuedCalls()) {
            if (obj.equals(call.request().tag())) {
                call.cancel();
            }
        }
        for (Call call2 : this.mOkHttpClient.dispatcher().runningCalls()) {
            if (obj.equals(call2.request().tag())) {
                call2.cancel();
            }
        }
    }
}
