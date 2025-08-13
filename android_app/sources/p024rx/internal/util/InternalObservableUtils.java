package p024rx.internal.util;

import java.util.List;
import java.util.concurrent.TimeUnit;
import p024rx.Notification;
import p024rx.Observable;
import p024rx.Scheduler;
import p024rx.exceptions.OnErrorNotImplementedException;
import p024rx.functions.Action1;
import p024rx.functions.Action2;
import p024rx.functions.Func0;
import p024rx.functions.Func1;
import p024rx.functions.Func2;
import p024rx.internal.operators.OperatorAny;
import p024rx.observables.ConnectableObservable;

/* loaded from: classes2.dex */
public enum InternalObservableUtils {
    ;

    public static final PlusOneLongFunc2 LONG_COUNTER = new PlusOneLongFunc2();
    public static final ObjectEqualsFunc2 OBJECT_EQUALS = new ObjectEqualsFunc2();
    public static final ToArrayFunc1 TO_ARRAY = new ToArrayFunc1();
    static final ReturnsVoidFunc1 RETURNS_VOID = new ReturnsVoidFunc1();
    public static final PlusOneFunc2 COUNTER = new PlusOneFunc2();
    static final NotificationErrorExtractor ERROR_EXTRACTOR = new NotificationErrorExtractor();
    public static final Action1<Throwable> ERROR_NOT_IMPLEMENTED = new Action1<Throwable>() { // from class: rx.internal.util.InternalObservableUtils.ErrorNotImplementedAction
        @Override // p024rx.functions.Action1
        public void call(Throwable th) {
            throw new OnErrorNotImplementedException(th);
        }
    };
    public static final Observable.Operator<Boolean, Object> IS_EMPTY = new OperatorAny(UtilityFunctions.alwaysTrue(), true);

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final class PlusOneFunc2 implements Func2<Integer, Object, Integer> {
        PlusOneFunc2() {
        }

        @Override // p024rx.functions.Func2
        public Integer call(Integer num, Object obj) {
            return Integer.valueOf(num.intValue() + 1);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final class PlusOneLongFunc2 implements Func2<Long, Object, Long> {
        PlusOneLongFunc2() {
        }

        @Override // p024rx.functions.Func2
        public Long call(Long l, Object obj) {
            return Long.valueOf(l.longValue() + 1);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final class ObjectEqualsFunc2 implements Func2<Object, Object, Boolean> {
        ObjectEqualsFunc2() {
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // p024rx.functions.Func2
        public Boolean call(Object obj, Object obj2) {
            return Boolean.valueOf(obj == obj2 || (obj != null && obj.equals(obj2)));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final class ToArrayFunc1 implements Func1<List<? extends Observable<?>>, Observable<?>[]> {
        ToArrayFunc1() {
        }

        @Override // p024rx.functions.Func1
        public Observable<?>[] call(List<? extends Observable<?>> list) {
            return (Observable[]) list.toArray(new Observable[list.size()]);
        }
    }

    public static Func1<Object, Boolean> equalsWith(Object obj) {
        return new EqualsWithFunc1(obj);
    }

    static final class EqualsWithFunc1 implements Func1<Object, Boolean> {
        final Object other;

        public EqualsWithFunc1(Object obj) {
            this.other = obj;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // p024rx.functions.Func1
        public Boolean call(Object obj) {
            Object obj2 = this.other;
            return Boolean.valueOf(obj == obj2 || (obj != null && obj.equals(obj2)));
        }
    }

    public static Func1<Object, Boolean> isInstanceOf(Class<?> cls) {
        return new IsInstanceOfFunc1(cls);
    }

    static final class IsInstanceOfFunc1 implements Func1<Object, Boolean> {
        final Class<?> clazz;

        public IsInstanceOfFunc1(Class<?> cls) {
            this.clazz = cls;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // p024rx.functions.Func1
        public Boolean call(Object obj) {
            return Boolean.valueOf(this.clazz.isInstance(obj));
        }
    }

    public static Func1<Observable<? extends Notification<?>>, Observable<?>> createRepeatDematerializer(Func1<? super Observable<? extends Void>, ? extends Observable<?>> func1) {
        return new RepeatNotificationDematerializer(func1);
    }

    static final class RepeatNotificationDematerializer implements Func1<Observable<? extends Notification<?>>, Observable<?>> {
        final Func1<? super Observable<? extends Void>, ? extends Observable<?>> notificationHandler;

        public RepeatNotificationDematerializer(Func1<? super Observable<? extends Void>, ? extends Observable<?>> func1) {
            this.notificationHandler = func1;
        }

        @Override // p024rx.functions.Func1
        public Observable<?> call(Observable<? extends Notification<?>> observable) {
            return this.notificationHandler.call(observable.map(InternalObservableUtils.RETURNS_VOID));
        }
    }

    static final class ReturnsVoidFunc1 implements Func1<Object, Void> {
        @Override // p024rx.functions.Func1
        public Void call(Object obj) {
            return null;
        }

        ReturnsVoidFunc1() {
        }
    }

    public static <T, R> Func1<Observable<T>, Observable<R>> createReplaySelectorAndObserveOn(Func1<? super Observable<T>, ? extends Observable<R>> func1, Scheduler scheduler) {
        return new SelectorAndObserveOn(func1, scheduler);
    }

    static final class SelectorAndObserveOn<T, R> implements Func1<Observable<T>, Observable<R>> {
        final Scheduler scheduler;
        final Func1<? super Observable<T>, ? extends Observable<R>> selector;

        public SelectorAndObserveOn(Func1<? super Observable<T>, ? extends Observable<R>> func1, Scheduler scheduler) {
            this.selector = func1;
            this.scheduler = scheduler;
        }

        @Override // p024rx.functions.Func1
        public Observable<R> call(Observable<T> observable) {
            return this.selector.call(observable).observeOn(this.scheduler);
        }
    }

    public static Func1<Observable<? extends Notification<?>>, Observable<?>> createRetryDematerializer(Func1<? super Observable<? extends Throwable>, ? extends Observable<?>> func1) {
        return new RetryNotificationDematerializer(func1);
    }

    static final class RetryNotificationDematerializer implements Func1<Observable<? extends Notification<?>>, Observable<?>> {
        final Func1<? super Observable<? extends Throwable>, ? extends Observable<?>> notificationHandler;

        public RetryNotificationDematerializer(Func1<? super Observable<? extends Throwable>, ? extends Observable<?>> func1) {
            this.notificationHandler = func1;
        }

        @Override // p024rx.functions.Func1
        public Observable<?> call(Observable<? extends Notification<?>> observable) {
            return this.notificationHandler.call(observable.map(InternalObservableUtils.ERROR_EXTRACTOR));
        }
    }

    static final class NotificationErrorExtractor implements Func1<Notification<?>, Throwable> {
        NotificationErrorExtractor() {
        }

        @Override // p024rx.functions.Func1
        public Throwable call(Notification<?> notification) {
            return notification.getThrowable();
        }
    }

    public static <T> Func0<ConnectableObservable<T>> createReplaySupplier(Observable<T> observable) {
        return new ReplaySupplierNoParams(observable);
    }

    static final class ReplaySupplierNoParams<T> implements Func0<ConnectableObservable<T>> {
        private final Observable<T> source;

        ReplaySupplierNoParams(Observable<T> observable) {
            this.source = observable;
        }

        @Override // p024rx.functions.Func0, java.util.concurrent.Callable
        public ConnectableObservable<T> call() {
            return this.source.replay();
        }
    }

    public static <T> Func0<ConnectableObservable<T>> createReplaySupplier(Observable<T> observable, int i) {
        return new ReplaySupplierBuffer(observable, i);
    }

    static final class ReplaySupplierBuffer<T> implements Func0<ConnectableObservable<T>> {
        private final int bufferSize;
        private final Observable<T> source;

        ReplaySupplierBuffer(Observable<T> observable, int i) {
            this.source = observable;
            this.bufferSize = i;
        }

        @Override // p024rx.functions.Func0, java.util.concurrent.Callable
        public ConnectableObservable<T> call() {
            return this.source.replay(this.bufferSize);
        }
    }

    public static <T> Func0<ConnectableObservable<T>> createReplaySupplier(Observable<T> observable, long j, TimeUnit timeUnit, Scheduler scheduler) {
        return new ReplaySupplierBufferTime(observable, j, timeUnit, scheduler);
    }

    static final class ReplaySupplierBufferTime<T> implements Func0<ConnectableObservable<T>> {
        private final Scheduler scheduler;
        private final Observable<T> source;
        private final long time;
        private final TimeUnit unit;

        ReplaySupplierBufferTime(Observable<T> observable, long j, TimeUnit timeUnit, Scheduler scheduler) {
            this.unit = timeUnit;
            this.source = observable;
            this.time = j;
            this.scheduler = scheduler;
        }

        @Override // p024rx.functions.Func0, java.util.concurrent.Callable
        public ConnectableObservable<T> call() {
            return this.source.replay(this.time, this.unit, this.scheduler);
        }
    }

    public static <T> Func0<ConnectableObservable<T>> createReplaySupplier(Observable<T> observable, int i, long j, TimeUnit timeUnit, Scheduler scheduler) {
        return new ReplaySupplierTime(observable, i, j, timeUnit, scheduler);
    }

    static final class ReplaySupplierTime<T> implements Func0<ConnectableObservable<T>> {
        private final int bufferSize;
        private final Scheduler scheduler;
        private final Observable<T> source;
        private final long time;
        private final TimeUnit unit;

        ReplaySupplierTime(Observable<T> observable, int i, long j, TimeUnit timeUnit, Scheduler scheduler) {
            this.time = j;
            this.unit = timeUnit;
            this.scheduler = scheduler;
            this.bufferSize = i;
            this.source = observable;
        }

        @Override // p024rx.functions.Func0, java.util.concurrent.Callable
        public ConnectableObservable<T> call() {
            return this.source.replay(this.bufferSize, this.time, this.unit, this.scheduler);
        }
    }

    public static <T, R> Func2<R, T, R> createCollectorCaller(Action2<R, ? super T> action2) {
        return new CollectorCaller(action2);
    }

    static final class CollectorCaller<T, R> implements Func2<R, T, R> {
        final Action2<R, ? super T> collector;

        public CollectorCaller(Action2<R, ? super T> action2) {
            this.collector = action2;
        }

        @Override // p024rx.functions.Func2
        public R call(R r, T t) {
            this.collector.call(r, t);
            return r;
        }
    }
}
