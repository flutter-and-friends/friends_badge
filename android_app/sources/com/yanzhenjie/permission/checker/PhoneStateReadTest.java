package com.yanzhenjie.permission.checker;

import android.content.Context;
import android.telephony.TelephonyManager;
import android.text.TextUtils;

/* loaded from: classes.dex */
class PhoneStateReadTest implements PermissionTest {
    private Context mContext;

    PhoneStateReadTest(Context context) {
        this.mContext = context;
    }

    @Override // com.yanzhenjie.permission.checker.PermissionTest
    public boolean test() throws Throwable {
        if (!this.mContext.getPackageManager().hasSystemFeature("android.hardware.telephony")) {
            return true;
        }
        TelephonyManager telephonyManager = (TelephonyManager) this.mContext.getSystemService("phone");
        return (telephonyManager.getPhoneType() != 0 && TextUtils.isEmpty(telephonyManager.getDeviceId()) && TextUtils.isEmpty(telephonyManager.getSubscriberId())) ? false : true;
    }
}
