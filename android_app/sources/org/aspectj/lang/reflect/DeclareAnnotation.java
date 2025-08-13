package org.aspectj.lang.reflect;

import java.lang.annotation.Annotation;

/* loaded from: classes2.dex */
public interface DeclareAnnotation {

    public enum Kind {
        Field,
        Method,
        Constructor,
        Type
    }

    Annotation getAnnotation();

    String getAnnotationAsText();

    AjType<?> getDeclaringType();

    Kind getKind();

    SignaturePattern getSignaturePattern();

    TypePattern getTypePattern();
}
