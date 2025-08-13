package com.allenliu.versionchecklib.p011v2.net;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import com.allenliu.versionchecklib.core.http.AllenHttp;
import com.allenliu.versionchecklib.core.http.HttpRequestMethod;
import com.allenliu.versionchecklib.p011v2.AllenVersionChecker;
import com.allenliu.versionchecklib.p011v2.builder.DownloadBuilder;
import com.allenliu.versionchecklib.p011v2.builder.RequestVersionBuilder;
import com.allenliu.versionchecklib.p011v2.builder.UIData;
import com.allenliu.versionchecklib.p011v2.callback.RequestVersionListener;
import java.io.IOException;
import java.util.concurrent.Executors;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;

/* loaded from: classes.dex */
public class RequestVersionManager {

    public static class Holder {
        static RequestVersionManager instance = new RequestVersionManager();
    }

    public static RequestVersionManager getInstance() {
        return Holder.instance;
    }

    public void requestVersion(final DownloadBuilder downloadBuilder, final Context context) {
        Executors.newSingleThreadExecutor().submit(new Runnable() { // from class: com.allenliu.versionchecklib.v2.net.RequestVersionManager.1
            @Override // java.lang.Runnable
            public void run() {
                Request requestBuild;
                RequestVersionBuilder requestVersionBuilder = downloadBuilder.getRequestVersionBuilder();
                OkHttpClient httpClient = AllenHttp.getHttpClient();
                int i = C07392.f300x8d87520f[requestVersionBuilder.getRequestMethod().ordinal()];
                if (i == 1) {
                    requestBuild = AllenHttp.get(requestVersionBuilder).build();
                } else if (i == 2) {
                    requestBuild = AllenHttp.post(requestVersionBuilder).build();
                } else {
                    requestBuild = i != 3 ? null : AllenHttp.postJson(requestVersionBuilder).build();
                }
                final RequestVersionListener requestVersionListener = requestVersionBuilder.getRequestVersionListener();
                Handler handler = new Handler(Looper.getMainLooper());
                if (requestVersionListener != null) {
                    try {
                        final Response responseExecute = httpClient.newCall(requestBuild).execute();
                        if (responseExecute.isSuccessful()) {
                            final String strString = responseExecute.body() != null ? responseExecute.body().string() : null;
                            handler.post(new Runnable() { // from class: com.allenliu.versionchecklib.v2.net.RequestVersionManager.1.1
                                @Override // java.lang.Runnable
                                public void run() {
                                    UIData uIDataOnRequestVersionSuccess = requestVersionListener.onRequestVersionSuccess(strString);
                                    if (uIDataOnRequestVersionSuccess != null) {
                                        downloadBuilder.setVersionBundle(uIDataOnRequestVersionSuccess);
                                        downloadBuilder.download(context);
                                    }
                                }
                            });
                            return;
                        } else {
                            handler.post(new Runnable() { // from class: com.allenliu.versionchecklib.v2.net.RequestVersionManager.1.2
                                @Override // java.lang.Runnable
                                public void run() {
                                    requestVersionListener.onRequestVersionFailure(responseExecute.message());
                                    AllenVersionChecker.getInstance().cancelAllMission(context);
                                }
                            });
                            return;
                        }
                    } catch (IOException e) {
                        e.printStackTrace();
                        handler.post(new Runnable() { // from class: com.allenliu.versionchecklib.v2.net.RequestVersionManager.1.3
                            @Override // java.lang.Runnable
                            public void run() {
                                requestVersionListener.onRequestVersionFailure(e.getMessage());
                                AllenVersionChecker.getInstance().cancelAllMission(context);
                            }
                        });
                        return;
                    }
                }
                throw new RuntimeException("using request version function,you must set a requestVersionListener");
            }
        });
    }

    /* renamed from: com.allenliu.versionchecklib.v2.net.RequestVersionManager$2 */
    static /* synthetic */ class C07392 {

        /* renamed from: $SwitchMap$com$allenliu$versionchecklib$core$http$HttpRequestMethod */
        static final /* synthetic */ int[] f300x8d87520f = new int[HttpRequestMethod.values().length];

        static {
            try {
                f300x8d87520f[HttpRequestMethod.GET.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f300x8d87520f[HttpRequestMethod.POST.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f300x8d87520f[HttpRequestMethod.POSTJSON.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }
}
