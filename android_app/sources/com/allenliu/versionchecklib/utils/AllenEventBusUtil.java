package com.allenliu.versionchecklib.utils;

import com.allenliu.versionchecklib.p011v2.eventbus.CommonEvent;
import org.greenrobot.eventbus.EventBus;

/* loaded from: classes.dex */
public class AllenEventBusUtil {
    public static void sendEventBus(int i) {
        CommonEvent commonEvent = new CommonEvent();
        commonEvent.setSuccessful(true);
        commonEvent.setEventType(i);
        EventBus.getDefault().post(commonEvent);
    }
}
