package org.devio.takephoto.model;

/* loaded from: classes2.dex */
public class TException extends Exception {
    String detailMessage;

    public TException(TExceptionType tExceptionType) {
        super(tExceptionType.getStringValue());
        this.detailMessage = tExceptionType.getStringValue();
    }

    public String getDetailMessage() {
        return this.detailMessage;
    }
}
