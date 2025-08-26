package com.allenliu.versionchecklib.p011v2.eventbus;

/* loaded from: classes.dex */
public class CommonEvent<T> extends BaseEvent {
    private T data;
    private boolean isSuccessful;
    private String message;
    private int responseCode;

    public boolean isSuccessful() {
        return this.isSuccessful;
    }

    public CommonEvent setSuccessful(boolean z) {
        this.isSuccessful = z;
        return this;
    }

    public int getResponseCode() {
        return this.responseCode;
    }

    public CommonEvent setResponseCode(int i) {
        this.responseCode = i;
        return this;
    }

    public String getMessage() {
        return this.message;
    }

    public CommonEvent setMessage(String str) {
        this.message = str;
        return this;
    }

    public T getData() {
        return this.data;
    }

    public CommonEvent setData(T t) {
        this.data = t;
        return this;
    }

    public static CommonEvent getSimpleEvent(int i) {
        CommonEvent commonEvent = new CommonEvent();
        commonEvent.setSuccessful(true);
        commonEvent.setEventType(i);
        return commonEvent;
    }
}
