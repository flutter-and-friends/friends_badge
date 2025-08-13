package org.aspectj.internal.lang.reflect;

import org.aspectj.lang.reflect.SignaturePattern;

/* loaded from: classes2.dex */
public class SignaturePatternImpl implements SignaturePattern {
    private String sigPattern;

    public SignaturePatternImpl(String str) {
        this.sigPattern = str;
    }

    @Override // org.aspectj.lang.reflect.SignaturePattern
    public String asString() {
        return this.sigPattern;
    }

    public String toString() {
        return asString();
    }
}
