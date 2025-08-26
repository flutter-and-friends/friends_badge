package org.aspectj.lang;

import org.aspectj.runtime.internal.AroundClosure;

/* loaded from: classes2.dex */
public interface ProceedingJoinPoint extends JoinPoint {
    Object proceed() throws Throwable;

    Object proceed(Object[] objArr) throws Throwable;

    void set$AroundClosure(AroundClosure aroundClosure);
}
