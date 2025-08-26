package org.aspectj.runtime.internal.cflowstack;

import java.util.ArrayList;
import java.util.Enumeration;
import java.util.Hashtable;
import java.util.Iterator;

/* loaded from: classes2.dex */
public class ThreadCounterImpl11 implements ThreadCounter {
    private static final int COLLECT_AT = 20000;
    private static final int MIN_COLLECT_AT = 100;
    private Counter cached_counter;
    private Thread cached_thread;
    private Hashtable counters = new Hashtable();
    private int change_count = 0;

    @Override // org.aspectj.runtime.internal.cflowstack.ThreadCounter
    public void removeThreadCounter() {
    }

    static class Counter {
        protected int value = 0;

        Counter() {
        }
    }

    private synchronized Counter getThreadCounter() {
        if (Thread.currentThread() != this.cached_thread) {
            this.cached_thread = Thread.currentThread();
            this.cached_counter = (Counter) this.counters.get(this.cached_thread);
            if (this.cached_counter == null) {
                this.cached_counter = new Counter();
                this.counters.put(this.cached_thread, this.cached_counter);
            }
            this.change_count++;
            if (this.change_count > Math.max(100, COLLECT_AT / Math.max(1, this.counters.size()))) {
                ArrayList arrayList = new ArrayList();
                Enumeration enumerationKeys = this.counters.keys();
                while (enumerationKeys.hasMoreElements()) {
                    Thread thread = (Thread) enumerationKeys.nextElement();
                    if (!thread.isAlive()) {
                        arrayList.add(thread);
                    }
                }
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    this.counters.remove((Thread) it.next());
                }
                this.change_count = 0;
            }
        }
        return this.cached_counter;
    }

    @Override // org.aspectj.runtime.internal.cflowstack.ThreadCounter
    public void inc() {
        getThreadCounter().value++;
    }

    @Override // org.aspectj.runtime.internal.cflowstack.ThreadCounter
    public void dec() {
        Counter threadCounter = getThreadCounter();
        threadCounter.value--;
    }

    @Override // org.aspectj.runtime.internal.cflowstack.ThreadCounter
    public boolean isNotZero() {
        return getThreadCounter().value != 0;
    }
}
