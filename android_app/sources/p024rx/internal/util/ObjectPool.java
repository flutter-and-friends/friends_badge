package p024rx.internal.util;

import java.util.Queue;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.Future;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;
import p024rx.internal.schedulers.GenericScheduledExecutorService;
import p024rx.internal.schedulers.SchedulerLifecycle;
import p024rx.internal.util.unsafe.MpmcArrayQueue;
import p024rx.internal.util.unsafe.UnsafeAccess;
import p024rx.plugins.RxJavaHooks;

/* loaded from: classes2.dex */
public abstract class ObjectPool<T> implements SchedulerLifecycle {
    final int maxSize;
    final int minSize;
    private final AtomicReference<Future<?>> periodicTask;
    Queue<T> pool;
    private final long validationInterval;

    protected abstract T createObject();

    public ObjectPool() {
        this(0, 0, 67L);
    }

    private ObjectPool(int i, int i2, long j) {
        this.minSize = i;
        this.maxSize = i2;
        this.validationInterval = j;
        this.periodicTask = new AtomicReference<>();
        initialize(i);
        start();
    }

    public T borrowObject() {
        T tPoll = this.pool.poll();
        return tPoll == null ? createObject() : tPoll;
    }

    public void returnObject(T t) {
        if (t == null) {
            return;
        }
        this.pool.offer(t);
    }

    @Override // p024rx.internal.schedulers.SchedulerLifecycle
    public void shutdown() {
        Future<?> andSet = this.periodicTask.getAndSet(null);
        if (andSet != null) {
            andSet.cancel(false);
        }
    }

    @Override // p024rx.internal.schedulers.SchedulerLifecycle
    public void start() {
        while (this.periodicTask.get() == null) {
            try {
                ScheduledFuture<?> scheduledFutureScheduleAtFixedRate = GenericScheduledExecutorService.getInstance().scheduleAtFixedRate(new Runnable() { // from class: rx.internal.util.ObjectPool.1
                    @Override // java.lang.Runnable
                    public void run() {
                        int size = ObjectPool.this.pool.size();
                        int i = 0;
                        if (size < ObjectPool.this.minSize) {
                            int i2 = ObjectPool.this.maxSize - size;
                            while (i < i2) {
                                ObjectPool.this.pool.add(ObjectPool.this.createObject());
                                i++;
                            }
                            return;
                        }
                        if (size > ObjectPool.this.maxSize) {
                            int i3 = size - ObjectPool.this.maxSize;
                            while (i < i3) {
                                ObjectPool.this.pool.poll();
                                i++;
                            }
                        }
                    }
                }, this.validationInterval, this.validationInterval, TimeUnit.SECONDS);
                if (this.periodicTask.compareAndSet(null, scheduledFutureScheduleAtFixedRate)) {
                    return;
                } else {
                    scheduledFutureScheduleAtFixedRate.cancel(false);
                }
            } catch (RejectedExecutionException e) {
                RxJavaHooks.onError(e);
                return;
            }
        }
    }

    private void initialize(int i) {
        if (UnsafeAccess.isUnsafeAvailable()) {
            this.pool = new MpmcArrayQueue(Math.max(this.maxSize, 1024));
        } else {
            this.pool = new ConcurrentLinkedQueue();
        }
        for (int i2 = 0; i2 < i; i2++) {
            this.pool.add(createObject());
        }
    }
}
