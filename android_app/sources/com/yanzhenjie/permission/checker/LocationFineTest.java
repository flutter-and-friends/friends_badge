package com.yanzhenjie.permission.checker;

import android.content.Context;
import android.location.LocationManager;
import java.util.List;

/* loaded from: classes.dex */
class LocationFineTest implements PermissionTest {
    private Context mContext;

    LocationFineTest(Context context) {
        this.mContext = context;
    }

    @Override // com.yanzhenjie.permission.checker.PermissionTest
    public boolean test() throws Throwable {
        List<String> providers = ((LocationManager) this.mContext.getSystemService("location")).getProviders(true);
        boolean zContains = providers.contains("gps");
        boolean zContains2 = providers.contains("passive");
        if (zContains || zContains2 || !this.mContext.getPackageManager().hasSystemFeature("android.hardware.location.gps")) {
            return true;
        }
        return !r0.isProviderEnabled("gps");
    }
}
