package com.allenliu.versionchecklib.p011v2.eventbus;

/* loaded from: classes.dex */
public class BaseEvent {
    private int eventType;

    public int getEventType() {
        return this.eventType;
    }

    public BaseEvent setEventType(int i) {
        this.eventType = i;
        return this;
    }
}
