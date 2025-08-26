package org.aspectj.runtime.internal.cflowstack;

/* loaded from: classes2.dex */
public class ThreadStackFactoryImpl11 implements ThreadStackFactory {
    @Override // org.aspectj.runtime.internal.cflowstack.ThreadStackFactory
    public ThreadStack getNewThreadStack() {
        return new ThreadStackImpl11();
    }

    @Override // org.aspectj.runtime.internal.cflowstack.ThreadStackFactory
    public ThreadCounter getNewThreadCounter() {
        return new ThreadCounterImpl11();
    }
}
