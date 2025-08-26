package org.aspectj.lang.reflect;

import java.lang.reflect.Type;

/* loaded from: classes2.dex */
public interface DeclareParents {
    AjType getDeclaringType();

    Type[] getParentTypes() throws ClassNotFoundException;

    TypePattern getTargetTypesPattern();

    boolean isExtends();

    boolean isImplements();
}
