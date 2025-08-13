package org.aspectj.internal.lang.reflect;

import org.aspectj.lang.reflect.TypePattern;

/* loaded from: classes2.dex */
public class TypePatternImpl implements TypePattern {
    private String typePattern;

    public TypePatternImpl(String str) {
        this.typePattern = str;
    }

    @Override // org.aspectj.lang.reflect.TypePattern
    public String asString() {
        return this.typePattern;
    }

    public String toString() {
        return asString();
    }
}
