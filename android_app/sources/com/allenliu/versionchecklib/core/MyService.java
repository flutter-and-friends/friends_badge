package com.allenliu.versionchecklib.core;

import android.content.Intent;
import android.os.IBinder;

/* loaded from: classes.dex */
public class MyService extends AVersionService {
    @Override // com.allenliu.versionchecklib.core.AVersionService
    public void onResponses(AVersionService aVersionService, String str) {
    }

    @Override // com.allenliu.versionchecklib.core.AVersionService, android.app.Service
    public IBinder onBind(Intent intent) {
        throw new UnsupportedOperationException("Not yet implemented");
    }
}
