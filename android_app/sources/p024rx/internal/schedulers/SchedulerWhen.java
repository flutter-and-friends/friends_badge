package p024rx.internal.schedulers;

import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
import p024rx.Completable;
import p024rx.CompletableSubscriber;
import p024rx.Observable;
import p024rx.Observer;
import p024rx.Scheduler;
import p024rx.Subscription;
import p024rx.functions.Action0;
import p024rx.functions.Func1;
import p024rx.internal.operators.BufferUntilSubscriber;
import p024rx.observers.SerializedObserver;
import p024rx.subjects.PublishSubject;
import p024rx.subscriptions.Subscriptions;

/* loaded from: classes2.dex */
public class SchedulerWhen extends Scheduler implements Subscription {
    static final Subscription SUBSCRIBED = new Subscription() { // from class: rx.internal.schedulers.SchedulerWhen.3
        @Override // p024rx.Subscription
        public boolean isUnsubscribed() {
            return false;
        }

        @Override // p024rx.Subscription
        public void unsubscribe() {
        }
    };
    static final Subscription UNSUBSCRIBED = Subscriptions.unsubscribed();
    private final Scheduler actualScheduler;
    private final Subscription subscription;
    private final Observer<Observable<Completable>> workerObserver;

    public SchedulerWhen(Func1<Observable<Observable<Completable>>, Completable> func1, Scheduler scheduler) {
        this.actualScheduler = scheduler;
        PublishSubject publishSubjectCreate = PublishSubject.create();
        this.workerObserver = new SerializedObserver(publishSubjectCreate);
        this.subscription = func1.call(publishSubjectCreate.onBackpressureBuffer()).subscribe();
    }

    @Override // p024rx.Subscription
    public void unsubscribe() {
        this.subscription.unsubscribe();
    }

    @Override // p024rx.Subscription
    public boolean isUnsubscribed() {
        return this.subscription.isUnsubscribed();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p024rx.Scheduler
    public Scheduler.Worker createWorker() {
        final Scheduler.Worker workerCreateWorker = this.actualScheduler.createWorker();
        BufferUntilSubscriber bufferUntilSubscriberCreate = BufferUntilSubscriber.create();
        final SerializedObserver serializedObserver = new SerializedObserver(bufferUntilSubscriberCreate);
        Object map = bufferUntilSubscriberCreate.map(new Func1<ScheduledAction, Completable>() { // from class: rx.internal.schedulers.SchedulerWhen.1
            @Override // p024rx.functions.Func1
            public Completable call(final ScheduledAction scheduledAction) {
                return Completable.create(new Completable.OnSubscribe() { // from class: rx.internal.schedulers.SchedulerWhen.1.1
                    @Override // p024rx.functions.Action1
                    public void call(CompletableSubscriber completableSubscriber) {
                        completableSubscriber.onSubscribe(scheduledAction);
                        scheduledAction.call(workerCreateWorker);
                        completableSubscriber.onCompleted();
                    }
                });
            }
        });
        Scheduler.Worker worker = new Scheduler.Worker() { // from class: rx.internal.schedulers.SchedulerWhen.2
            private final AtomicBoolean unsubscribed = new AtomicBoolean();

            @Override // p024rx.Subscription
            public void unsubscribe() {
                if (this.unsubscribed.compareAndSet(false, true)) {
                    workerCreateWorker.unsubscribe();
                    serializedObserver.onCompleted();
                }
            }

            @Override // p024rx.Subscription
            public boolean isUnsubscribed() {
                return this.unsubscribed.get();
            }

            @Override // rx.Scheduler.Worker
            public Subscription schedule(Action0 action0, long j, TimeUnit timeUnit) {
                DelayedAction delayedAction = new DelayedAction(action0, j, timeUnit);
                serializedObserver.onNext(delayedAction);
                return delayedAction;
            }

            @Override // rx.Scheduler.Worker
            public Subscription schedule(Action0 action0) {
                ImmediateAction immediateAction = new ImmediateAction(action0);
                serializedObserver.onNext(immediateAction);
                return immediateAction;
            }
        };
        this.workerObserver.onNext(map);
        return worker;
    }

    private static abstract class ScheduledAction extends AtomicReference<Subscription> implements Subscription {
        protected abstract Subscription callActual(Scheduler.Worker worker);

        public ScheduledAction() {
            super(SchedulerWhen.SUBSCRIBED);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void call(Scheduler.Worker worker) {
            Subscription subscription = get();
            if (subscription != SchedulerWhen.UNSUBSCRIBED && subscription == SchedulerWhen.SUBSCRIBED) {
                Subscription subscriptionCallActual = callActual(worker);
                if (compareAndSet(SchedulerWhen.SUBSCRIBED, subscriptionCallActual)) {
                    return;
                }
                subscriptionCallActual.unsubscribe();
            }
        }

        @Override // p024rx.Subscription
        public boolean isUnsubscribed() {
            return get().isUnsubscribed();
        }

        @Override // p024rx.Subscription
        public void unsubscribe() {
            Subscription subscription;
            Subscription subscription2 = SchedulerWhen.UNSUBSCRIBED;
            do {
                subscription = get();
                if (subscription == SchedulerWhen.UNSUBSCRIBED) {
                    return;
                }
            } while (!compareAndSet(subscription, subscription2));
            if (subscription != SchedulerWhen.SUBSCRIBED) {
                subscription.unsubscribe();
            }
        }
    }

    private static class ImmediateAction extends ScheduledAction {
        private final Action0 action;

        public ImmediateAction(Action0 action0) {
            this.action = action0;
        }

        @Override // rx.internal.schedulers.SchedulerWhen.ScheduledAction
        protected Subscription callActual(Scheduler.Worker worker) {
            return worker.schedule(this.action);
        }
    }

    private static class DelayedAction extends ScheduledAction {
        private final Action0 action;
        private final long delayTime;
        private final TimeUnit unit;

        public DelayedAction(Action0 action0, long j, TimeUnit timeUnit) {
            this.action = action0;
            this.delayTime = j;
            this.unit = timeUnit;
        }

        @Override // rx.internal.schedulers.SchedulerWhen.ScheduledAction
        protected Subscription callActual(Scheduler.Worker worker) {
            return worker.schedule(this.action, this.delayTime, this.unit);
        }
    }
}
