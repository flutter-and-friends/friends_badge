package org.aspectj.lang.reflect;

/* loaded from: classes2.dex */
public interface InterTypeDeclaration {
    AjType<?> getDeclaringType();

    int getModifiers();

    AjType<?> getTargetType() throws ClassNotFoundException;
}
