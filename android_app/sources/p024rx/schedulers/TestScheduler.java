package p024rx.schedulers;

import java.util.Comparator;
import java.util.PriorityQueue;
import java.util.Queue;
import java.util.concurrent.TimeUnit;
import p024rx.Scheduler;
import p024rx.Subscription;
import p024rx.functions.Action0;
import p024rx.subscriptions.BooleanSubscription;
import p024rx.subscriptions.Subscriptions;

/* loaded from: classes2.dex */
public class TestScheduler extends Scheduler {
    static long counter;
    final Queue<TimedAction> queue = new PriorityQueue(11, new CompareActionsByTime());
    long time;

    static final class TimedAction {
        final Action0 action;
        private final long count;
        final Scheduler.Worker scheduler;
        final long time;

        TimedAction(Scheduler.Worker worker, long j, Action0 action0) {
            long j2 = TestScheduler.counter;
            TestScheduler.counter = 1 + j2;
            this.count = j2;
            this.time = j;
            this.action = action0;
            this.scheduler = worker;
        }

        public String toString() {
            return String.format("TimedAction(time = %d, action = %s)", Long.valueOf(this.time), this.action.toString());
        }
    }

    static final class CompareActionsByTime implements Comparator<TimedAction> {
        CompareActionsByTime() {
        }

        @Override // java.util.Comparator
        public int compare(TimedAction timedAction, TimedAction timedAction2) {
            if (timedAction.time == timedAction2.time) {
                if (timedAction.count < timedAction2.count) {
                    return -1;
                }
                return timedAction.count > timedAction2.count ? 1 : 0;
            }
            if (timedAction.time < timedAction2.time) {
                return -1;
            }
            return timedAction.time > timedAction2.time ? 1 : 0;
        }
    }

    @Override // p024rx.Scheduler
    public long now() {
        return TimeUnit.NANOSECONDS.toMillis(this.time);
    }

    public void advanceTimeBy(long j, TimeUnit timeUnit) {
        advanceTimeTo(this.time + timeUnit.toNanos(j), TimeUnit.NANOSECONDS);
    }

    public void advanceTimeTo(long j, TimeUnit timeUnit) {
        triggerActions(timeUnit.toNanos(j));
    }

    public void triggerActions() {
        triggerActions(this.time);
    }

    private void triggerActions(long j) {
        while (!this.queue.isEmpty()) {
            TimedAction timedActionPeek = this.queue.peek();
            if (timedActionPeek.time > j) {
                break;
            }
            this.time = timedActionPeek.time == 0 ? this.time : timedActionPeek.time;
            this.queue.remove();
            if (!timedActionPeek.scheduler.isUnsubscribed()) {
                timedActionPeek.action.call();
            }
        }
        this.time = j;
    }

    @Override // p024rx.Scheduler
    public Scheduler.Worker createWorker() {
        return new InnerTestScheduler();
    }

    final class InnerTestScheduler extends Scheduler.Worker {

        /* renamed from: s */
        private final BooleanSubscription f1235s = new BooleanSubscription();

        InnerTestScheduler() {
        }

        @Override // p024rx.Subscription
        public void unsubscribe() {
            this.f1235s.unsubscribe();
        }

        @Override // p024rx.Subscription
        public boolean isUnsubscribed() {
            return this.f1235s.isUnsubscribed();
        }

        @Override // rx.Scheduler.Worker
        public Subscription schedule(Action0 action0, long j, TimeUnit timeUnit) {
            final TimedAction timedAction = new TimedAction(this, TestScheduler.this.time + timeUnit.toNanos(j), action0);
            TestScheduler.this.queue.add(timedAction);
            return Subscriptions.create(new Action0() { // from class: rx.schedulers.TestScheduler.InnerTestScheduler.1
                @Override // p024rx.functions.Action0
                public void call() {
                    TestScheduler.this.queue.remove(timedAction);
                }
            });
        }

        @Override // rx.Scheduler.Worker
        public Subscription schedule(Action0 action0) {
            final TimedAction timedAction = new TimedAction(this, 0L, action0);
            TestScheduler.this.queue.add(timedAction);
            return Subscriptions.create(new Action0() { // from class: rx.schedulers.TestScheduler.InnerTestScheduler.2
                @Override // p024rx.functions.Action0
                public void call() {
                    TestScheduler.this.queue.remove(timedAction);
                }
            });
        }

        @Override // rx.Scheduler.Worker
        public long now() {
            return TestScheduler.this.now();
        }
    }
}
