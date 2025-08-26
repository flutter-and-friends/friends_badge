package com.yanzhenjie.permission.checker;

import android.content.Context;
import android.location.LocationManager;

/* loaded from: classes.dex */
class LocationCoarseTest implements PermissionTest {
    private Context mContext;

    LocationCoarseTest(Context context) {
        this.mContext = context;
    }

    @Override // com.yanzhenjie.permission.checker.PermissionTest
    public boolean test() throws Throwable {
        if (!((LocationManager) this.mContext.getSystemService("location")).getProviders(true).contains("network") && this.mContext.getPackageManager().hasSystemFeature("android.hardware.location.network")) {
            return !r0.isProviderEnabled("network");
        }
        return true;
    }
}
