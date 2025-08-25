package cn.highlight.work_card_write.base;

import org.greenrobot.eventbus.EventBus;

/* loaded from: classes.dex */
public class EventUtil {
    public static void register(Object obj) {
        if (EventBus.getDefault().isRegistered(obj)) {
            return;
        }
        EventBus.getDefault().register(obj);
    }

    public static void unregister(Object obj) {
        if (EventBus.getDefault().isRegistered(obj)) {
            EventBus.getDefault().unregister(obj);
        }
    }

    public static void post(Object obj) {
        EventBus.getDefault().post(obj);
    }
}
