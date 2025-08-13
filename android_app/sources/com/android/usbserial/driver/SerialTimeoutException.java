package com.android.usbserial.driver;

import java.io.InterruptedIOException;

/* loaded from: classes.dex */
public class SerialTimeoutException extends InterruptedIOException {
    public SerialTimeoutException(String str) {
        super(str);
    }
}
