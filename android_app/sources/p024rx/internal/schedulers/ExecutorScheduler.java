package p024rx.internal.schedulers;

import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import p024rx.Scheduler;
import p024rx.Subscription;
import p024rx.functions.Action0;
import p024rx.plugins.RxJavaHooks;
import p024rx.subscriptions.CompositeSubscription;
import p024rx.subscriptions.MultipleAssignmentSubscription;
import p024rx.subscriptions.Subscriptions;

/* loaded from: classes2.dex */
public final class ExecutorScheduler extends Scheduler {
    final Executor executor;

    public ExecutorScheduler(Executor executor) {
        this.executor = executor;
    }

    @Override // p024rx.Scheduler
    public Scheduler.Worker createWorker() {
        return new ExecutorSchedulerWorker(this.executor);
    }

    static final class ExecutorSchedulerWorker extends Scheduler.Worker implements Runnable {
        final Executor executor;
        final ConcurrentLinkedQueue<ScheduledAction> queue = new ConcurrentLinkedQueue<>();
        final AtomicInteger wip = new AtomicInteger();
        final CompositeSubscription tasks = new CompositeSubscription();
        final ScheduledExecutorService service = GenericScheduledExecutorService.getInstance();

        public ExecutorSchedulerWorker(Executor executor) {
            this.executor = executor;
        }

        @Override // rx.Scheduler.Worker
        public Subscription schedule(Action0 action0) {
            if (isUnsubscribed()) {
                return Subscriptions.unsubscribed();
            }
            ScheduledAction scheduledAction = new ScheduledAction(RxJavaHooks.onScheduledAction(action0), this.tasks);
            this.tasks.add(scheduledAction);
            this.queue.offer(scheduledAction);
            if (this.wip.getAndIncrement() == 0) {
                try {
                    this.executor.execute(this);
                } catch (RejectedExecutionException e) {
                    this.tasks.remove(scheduledAction);
                    this.wip.decrementAndGet();
                    RxJavaHooks.onError(e);
                    throw e;
                }
            }
            return scheduledAction;
        }

        @Override // java.lang.Runnable
        public void run() {
            while (!this.tasks.isUnsubscribed()) {
                ScheduledAction scheduledActionPoll = this.queue.poll();
                if (scheduledActionPoll == null) {
                    return;
                }
                if (!scheduledActionPoll.isUnsubscribed()) {
                    if (!this.tasks.isUnsubscribed()) {
                        scheduledActionPoll.run();
                    } else {
                        this.queue.clear();
                        return;
                    }
                }
                if (this.wip.decrementAndGet() == 0) {
                    return;
                }
            }
            this.queue.clear();
        }

        @Override // rx.Scheduler.Worker
        public Subscription schedule(Action0 action0, long j, TimeUnit timeUnit) {
            if (j <= 0) {
                return schedule(action0);
            }
            if (isUnsubscribed()) {
                return Subscriptions.unsubscribed();
            }
            final Action0 action0OnScheduledAction = RxJavaHooks.onScheduledAction(action0);
            MultipleAssignmentSubscription multipleAssignmentSubscription = new MultipleAssignmentSubscription();
            final MultipleAssignmentSubscription multipleAssignmentSubscription2 = new MultipleAssignmentSubscription();
            multipleAssignmentSubscription2.set(multipleAssignmentSubscription);
            this.tasks.add(multipleAssignmentSubscription2);
            final Subscription subscriptionCreate = Subscriptions.create(new Action0() { // from class: rx.internal.schedulers.ExecutorScheduler.ExecutorSchedulerWorker.1
                @Override // p024rx.functions.Action0
                public void call() {
                    ExecutorSchedulerWorker.this.tasks.remove(multipleAssignmentSubscription2);
                }
            });
            ScheduledAction scheduledAction = new ScheduledAction(new Action0() { // from class: rx.internal.schedulers.ExecutorScheduler.ExecutorSchedulerWorker.2
                @Override // p024rx.functions.Action0
                public void call() {
                    if (multipleAssignmentSubscription2.isUnsubscribed()) {
                        return;
                    }
                    Subscription subscriptionSchedule = ExecutorSchedulerWorker.this.schedule(action0OnScheduledAction);
                    multipleAssignmentSubscription2.set(subscriptionSchedule);
                    if (subscriptionSchedule.getClass() == ScheduledAction.class) {
                        ((ScheduledAction) subscriptionSchedule).add(subscriptionCreate);
                    }
                }
            });
            multipleAssignmentSubscription.set(scheduledAction);
            try {
                scheduledAction.add(this.service.schedule(scheduledAction, j, timeUnit));
                return subscriptionCreate;
            } catch (RejectedExecutionException e) {
                RxJavaHooks.onError(e);
                throw e;
            }
        }

        @Override // p024rx.Subscription
        public boolean isUnsubscribed() {
            return this.tasks.isUnsubscribed();
        }

        @Override // p024rx.Subscription
        public void unsubscribe() {
            this.tasks.unsubscribe();
            this.queue.clear();
        }
    }
}
