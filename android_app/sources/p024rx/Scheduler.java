package p024rx;

import java.util.concurrent.TimeUnit;
import p024rx.functions.Action0;
import p024rx.functions.Func1;
import p024rx.internal.schedulers.SchedulerWhen;
import p024rx.internal.subscriptions.SequentialSubscription;

/* loaded from: classes2.dex */
public abstract class Scheduler {
    static final long CLOCK_DRIFT_TOLERANCE_NANOS = TimeUnit.MINUTES.toNanos(Long.getLong("rx.scheduler.drift-tolerance", 15).longValue());

    public abstract Worker createWorker();

    public static abstract class Worker implements Subscription {
        public abstract Subscription schedule(Action0 action0);

        public abstract Subscription schedule(Action0 action0, long j, TimeUnit timeUnit);

        public Subscription schedulePeriodically(final Action0 action0, long j, long j2, TimeUnit timeUnit) {
            final long nanos = timeUnit.toNanos(j2);
            final long nanos2 = TimeUnit.MILLISECONDS.toNanos(now());
            final long nanos3 = nanos2 + timeUnit.toNanos(j);
            SequentialSubscription sequentialSubscription = new SequentialSubscription();
            final SequentialSubscription sequentialSubscription2 = new SequentialSubscription(sequentialSubscription);
            sequentialSubscription.replace(schedule(new Action0() { // from class: rx.Scheduler.Worker.1
                long count;
                long lastNowNanos;
                long startInNanos;

                {
                    this.lastNowNanos = nanos2;
                    this.startInNanos = nanos3;
                }

                @Override // p024rx.functions.Action0
                public void call() {
                    long j3;
                    action0.call();
                    if (sequentialSubscription2.isUnsubscribed()) {
                        return;
                    }
                    long nanos4 = TimeUnit.MILLISECONDS.toNanos(Worker.this.now());
                    long j4 = Scheduler.CLOCK_DRIFT_TOLERANCE_NANOS + nanos4;
                    long j5 = this.lastNowNanos;
                    if (j4 < j5 || nanos4 >= j5 + nanos + Scheduler.CLOCK_DRIFT_TOLERANCE_NANOS) {
                        long j6 = nanos;
                        long j7 = nanos4 + j6;
                        long j8 = this.count + 1;
                        this.count = j8;
                        this.startInNanos = j7 - (j6 * j8);
                        j3 = j7;
                    } else {
                        long j9 = this.startInNanos;
                        long j10 = this.count + 1;
                        this.count = j10;
                        j3 = j9 + (j10 * nanos);
                    }
                    this.lastNowNanos = nanos4;
                    sequentialSubscription2.replace(Worker.this.schedule(this, j3 - nanos4, TimeUnit.NANOSECONDS));
                }
            }, j, timeUnit));
            return sequentialSubscription2;
        }

        public long now() {
            return System.currentTimeMillis();
        }
    }

    public long now() {
        return System.currentTimeMillis();
    }

    public <S extends Scheduler & Subscription> S when(Func1<Observable<Observable<Completable>>, Completable> func1) {
        return new SchedulerWhen(func1, this);
    }
}
