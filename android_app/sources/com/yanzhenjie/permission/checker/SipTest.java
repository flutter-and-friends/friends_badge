package com.yanzhenjie.permission.checker;

import android.content.Context;
import android.net.sip.SipManager;
import android.net.sip.SipProfile;

/* loaded from: classes.dex */
class SipTest implements PermissionTest {
    private Context mContext;

    SipTest(Context context) {
        this.mContext = context;
    }

    @Override // com.yanzhenjie.permission.checker.PermissionTest
    public boolean test() throws Throwable {
        SipManager sipManagerNewInstance;
        if (!SipManager.isApiSupported(this.mContext) || (sipManagerNewInstance = SipManager.newInstance(this.mContext)) == null) {
            return true;
        }
        SipProfile.Builder builder = new SipProfile.Builder("Permission", "127.0.0.1");
        builder.setPassword("password");
        SipProfile sipProfileBuild = builder.build();
        sipManagerNewInstance.open(sipProfileBuild);
        sipManagerNewInstance.close(sipProfileBuild.getUriString());
        return true;
    }
}
