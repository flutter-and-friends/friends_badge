package com.allenliu.versionchecklib.p011v2;

import android.content.Context;
import android.content.Intent;
import com.allenliu.versionchecklib.core.http.AllenHttp;
import com.allenliu.versionchecklib.p011v2.builder.DownloadBuilder;
import com.allenliu.versionchecklib.p011v2.builder.RequestVersionBuilder;
import com.allenliu.versionchecklib.p011v2.builder.UIData;
import com.allenliu.versionchecklib.p011v2.p012ui.VersionService;

/* loaded from: classes.dex */
public class AllenVersionChecker {
    private AllenVersionChecker() {
    }

    public static AllenVersionChecker getInstance() {
        return AllenVersionCheckerHolder.allenVersionChecker;
    }

    private static class AllenVersionCheckerHolder {
        public static final AllenVersionChecker allenVersionChecker = new AllenVersionChecker();

        private AllenVersionCheckerHolder() {
        }
    }

    public void cancelAllMission(Context context) {
        AllenHttp.getHttpClient().dispatcher().cancelAll();
        Intent intent = new Intent(context, (Class<?>) VersionService.class);
        VersionService.builder = null;
        context.getApplicationContext().stopService(intent);
    }

    public DownloadBuilder downloadOnly(UIData uIData) {
        return new DownloadBuilder(null, uIData);
    }

    public RequestVersionBuilder requestVersion() {
        return new RequestVersionBuilder();
    }
}
