package com.zhy.http.okhttp.log;

import android.text.TextUtils;
import android.util.Log;
import java.io.IOException;
import okhttp3.Headers;
import okhttp3.Interceptor;
import okhttp3.MediaType;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.Response;
import okhttp3.ResponseBody;
import okio.Buffer;

/* loaded from: classes2.dex */
public class LoggerInterceptor implements Interceptor {
    public static final String TAG = "OkHttpUtils";
    private boolean showResponse;
    private String tag;

    public LoggerInterceptor(String str, boolean z) {
        str = TextUtils.isEmpty(str) ? TAG : str;
        this.showResponse = z;
        this.tag = str;
    }

    public LoggerInterceptor(String str) {
        this(str, false);
    }

    @Override // okhttp3.Interceptor
    public Response intercept(Interceptor.Chain chain) throws IOException {
        Request request = chain.request();
        logForRequest(request);
        return logForResponse(chain.proceed(request));
    }

    private Response logForResponse(Response response) {
        ResponseBody responseBodyBody;
        MediaType mediaTypeContentType;
        try {
            Log.e(this.tag, "========response'log=======");
            Response responseBuild = response.newBuilder().build();
            Log.e(this.tag, "url : " + responseBuild.request().url());
            Log.e(this.tag, "code : " + responseBuild.code());
            Log.e(this.tag, "protocol : " + responseBuild.protocol());
            if (!TextUtils.isEmpty(responseBuild.message())) {
                Log.e(this.tag, "message : " + responseBuild.message());
            }
            if (this.showResponse && (responseBodyBody = responseBuild.body()) != null && (mediaTypeContentType = responseBodyBody.contentType()) != null) {
                Log.e(this.tag, "responseBody's contentType : " + mediaTypeContentType.toString());
                if (isText(mediaTypeContentType)) {
                    String strString = responseBodyBody.string();
                    Log.e(this.tag, "responseBody's content : " + strString);
                    return response.newBuilder().body(ResponseBody.create(mediaTypeContentType, strString)).build();
                }
                Log.e(this.tag, "responseBody's content :  maybe [file part] , too large too print , ignored!");
            }
            Log.e(this.tag, "========response'log=======end");
        } catch (Exception unused) {
        }
        return response;
    }

    private void logForRequest(Request request) {
        MediaType mediaTypeContentType;
        try {
            String string = request.url().toString();
            Headers headers = request.headers();
            Log.e(this.tag, "========request'log=======");
            Log.e(this.tag, "method : " + request.method());
            Log.e(this.tag, "url : " + string);
            if (headers != null && headers.size() > 0) {
                Log.e(this.tag, "headers : " + headers.toString());
            }
            RequestBody requestBodyBody = request.body();
            if (requestBodyBody != null && (mediaTypeContentType = requestBodyBody.contentType()) != null) {
                Log.e(this.tag, "requestBody's contentType : " + mediaTypeContentType.toString());
                if (isText(mediaTypeContentType)) {
                    Log.e(this.tag, "requestBody's content : " + bodyToString(request));
                } else {
                    Log.e(this.tag, "requestBody's content :  maybe [file part] , too large too print , ignored!");
                }
            }
            Log.e(this.tag, "========request'log=======end");
        } catch (Exception unused) {
        }
    }

    private boolean isText(MediaType mediaType) {
        if (mediaType.type() != null && mediaType.type().equals("text")) {
            return true;
        }
        if (mediaType.subtype() != null) {
            return mediaType.subtype().equals("json") || mediaType.subtype().equals("xml") || mediaType.subtype().equals("html") || mediaType.subtype().equals("webviewhtml");
        }
        return false;
    }

    private String bodyToString(Request request) {
        try {
            Request requestBuild = request.newBuilder().build();
            Buffer buffer = new Buffer();
            requestBuild.body().writeTo(buffer);
            return buffer.readUtf8();
        } catch (IOException unused) {
            return "something error when show requestBody.";
        }
    }
}
