package com.allenliu.versionchecklib.core;

import android.app.Service;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import com.allenliu.versionchecklib.C0716R;
import com.allenliu.versionchecklib.callback.DownloadListener;
import com.allenliu.versionchecklib.core.http.AllenHttp;
import com.allenliu.versionchecklib.core.http.HttpRequestMethod;
import com.allenliu.versionchecklib.utils.ALog;
import com.yuyh.library.imgsel.p017ui.ISListActivity;
import java.io.File;
import java.io.IOException;
import okhttp3.Call;
import okhttp3.Callback;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;

/* loaded from: classes.dex */
public abstract class AVersionService extends Service implements DownloadListener {
    public static final String PERMISSION_ACTION = "com.allenliu.versionchecklib.filepermisssion.action";
    public static final String VERSION_PARAMS_EXTRA_KEY = "VERSION_PARAMS_EXTRA_KEY";
    public static final String VERSION_PARAMS_KEY = "VERSION_PARAMS_KEY";
    String downloadUrl;
    Bundle paramBundle;
    Callback stringCallback = new Callback() { // from class: com.allenliu.versionchecklib.core.AVersionService.1
        @Override // okhttp3.Callback
        public void onFailure(Call call, IOException iOException) {
            AVersionService.this.pauseRequest();
        }

        @Override // okhttp3.Callback
        public void onResponse(Call call, Response response) throws IOException {
            if (!response.isSuccessful()) {
                AVersionService.this.pauseRequest();
            } else {
                final String strString = response.body().string();
                new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.allenliu.versionchecklib.core.AVersionService.1.1
                    @Override // java.lang.Runnable
                    public void run() {
                        AVersionService.this.onResponses(AVersionService.this, strString);
                    }
                });
            }
        }
    };
    String title;
    String updateMsg;
    protected VersionParams versionParams;

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return null;
    }

    @Override // com.allenliu.versionchecklib.callback.DownloadListener
    public void onCheckerDownloading(int i) {
    }

    @Override // com.allenliu.versionchecklib.callback.DownloadListener
    public void onCheckerStartDownload() {
    }

    public abstract void onResponses(AVersionService aVersionService, String str);

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i, int i2) {
        if (intent != null) {
            try {
                this.versionParams = (VersionParams) intent.getParcelableExtra(VERSION_PARAMS_KEY);
                verfiyAndDeleteAPK();
                if (this.versionParams.isOnlyDownload()) {
                    showVersionDialog(this.versionParams.getDownloadUrl(), this.versionParams.getTitle(), this.versionParams.getUpdateMsg(), this.versionParams.getParamBundle());
                } else {
                    requestVersionUrlSync();
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return super.onStartCommand(intent, i, i2);
    }

    private void verfiyAndDeleteAPK() {
        try {
            String str = this.versionParams.getDownloadAPKPath() + getApplicationContext().getString(C0716R.string.versionchecklib_download_apkname, getApplicationContext().getPackageName());
            if (DownloadManager.checkAPKIsExists(getApplicationContext(), str)) {
                return;
            }
            ALog.m269e("删除本地apk");
            new File(str).delete();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void requestVersionUrlSync() {
        requestVersionUrl();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void pauseRequest() {
        long pauseRequestTime = this.versionParams.getPauseRequestTime();
        if (pauseRequestTime > 0) {
            ALog.m269e("请求版本接口失败，下次请求将在" + pauseRequestTime + "ms后开始");
            new Handler(Looper.getMainLooper()).postDelayed(new Runnable() { // from class: com.allenliu.versionchecklib.core.AVersionService.2
                @Override // java.lang.Runnable
                public void run() {
                    AVersionService.this.requestVersionUrlSync();
                }
            }, pauseRequestTime);
        }
    }

    private void requestVersionUrl() {
        Request requestBuild;
        OkHttpClient httpClient = AllenHttp.getHttpClient();
        int i = C07193.f299x8d87520f[this.versionParams.getRequestMethod().ordinal()];
        if (i == 1) {
            requestBuild = AllenHttp.get(this.versionParams).build();
        } else if (i == 2) {
            requestBuild = AllenHttp.post(this.versionParams).build();
        } else {
            requestBuild = i != 3 ? null : AllenHttp.postJson(this.versionParams).build();
        }
        httpClient.newCall(requestBuild).enqueue(this.stringCallback);
    }

    /* renamed from: com.allenliu.versionchecklib.core.AVersionService$3 */
    static /* synthetic */ class C07193 {

        /* renamed from: $SwitchMap$com$allenliu$versionchecklib$core$http$HttpRequestMethod */
        static final /* synthetic */ int[] f299x8d87520f = new int[HttpRequestMethod.values().length];

        static {
            try {
                f299x8d87520f[HttpRequestMethod.GET.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f299x8d87520f[HttpRequestMethod.POST.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f299x8d87520f[HttpRequestMethod.POSTJSON.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public void showVersionDialog(String str, String str2, String str3) {
        showVersionDialog(str, str2, str3, null);
    }

    public void showVersionDialog(String str, String str2, String str3, Bundle bundle) {
        this.downloadUrl = str;
        this.title = str2;
        this.updateMsg = str3;
        this.paramBundle = bundle;
        if (this.versionParams.isSilentDownload()) {
            registerReceiver(new VersionBroadCastReceiver(), new IntentFilter(PERMISSION_ACTION));
            Intent intent = new Intent(this, (Class<?>) PermissionDialogActivity.class);
            intent.addFlags(268435456);
            startActivity(intent);
            return;
        }
        goToVersionDialog();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void silentDownload() {
        DownloadManager.downloadAPK(this.downloadUrl, this.versionParams, this);
    }

    @Override // com.allenliu.versionchecklib.callback.DownloadListener
    public void onCheckerDownloadSuccess(File file) {
        goToVersionDialog();
    }

    @Override // com.allenliu.versionchecklib.callback.DownloadListener
    public void onCheckerDownloadFail() {
        stopSelf();
    }

    private void goToVersionDialog() {
        Intent intent = new Intent(getApplicationContext(), (Class<?>) this.versionParams.getCustomDownloadActivityClass());
        String str = this.updateMsg;
        if (str != null) {
            intent.putExtra("text", str);
        }
        String str2 = this.downloadUrl;
        if (str2 != null) {
            intent.putExtra("downloadUrl", str2);
        }
        String str3 = this.title;
        if (str3 != null) {
            intent.putExtra("title", str3);
        }
        Bundle bundle = this.paramBundle;
        if (bundle != null) {
            this.versionParams.setParamBundle(bundle);
        }
        intent.putExtra(VERSION_PARAMS_KEY, this.versionParams);
        intent.addFlags(268435456);
        startActivity(intent);
        stopSelf();
    }

    public void setVersionParams(VersionParams versionParams) {
        this.versionParams = versionParams;
    }

    public class VersionBroadCastReceiver extends BroadcastReceiver {
        public VersionBroadCastReceiver() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (intent.getAction().equals(AVersionService.PERMISSION_ACTION)) {
                if (intent.getBooleanExtra(ISListActivity.INTENT_RESULT, false)) {
                    AVersionService.this.silentDownload();
                }
                AVersionService.this.unregisterReceiver(this);
            }
        }
    }
}
