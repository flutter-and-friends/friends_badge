package p024rx.subjects;

import java.util.ArrayList;
import p024rx.Observable;
import p024rx.exceptions.Exceptions;
import p024rx.functions.Action1;
import p024rx.internal.operators.NotificationLite;
import p024rx.internal.producers.SingleProducer;
import p024rx.subjects.SubjectSubscriptionManager;

/* loaded from: classes2.dex */
public final class AsyncSubject<T> extends Subject<T, T> {
    volatile Object lastValue;
    final SubjectSubscriptionManager<T> state;

    public static <T> AsyncSubject<T> create() {
        final SubjectSubscriptionManager subjectSubscriptionManager = new SubjectSubscriptionManager();
        subjectSubscriptionManager.onTerminated = new Action1<SubjectSubscriptionManager.SubjectObserver<T>>() { // from class: rx.subjects.AsyncSubject.1
            @Override // p024rx.functions.Action1
            public void call(SubjectSubscriptionManager.SubjectObserver<T> subjectObserver) {
                Object latest = subjectSubscriptionManager.getLatest();
                if (latest == null || NotificationLite.isCompleted(latest)) {
                    subjectObserver.onCompleted();
                } else if (NotificationLite.isError(latest)) {
                    subjectObserver.onError(NotificationLite.getError(latest));
                } else {
                    subjectObserver.actual.setProducer(new SingleProducer(subjectObserver.actual, NotificationLite.getValue(latest)));
                }
            }
        };
        return new AsyncSubject<>(subjectSubscriptionManager, subjectSubscriptionManager);
    }

    protected AsyncSubject(Observable.OnSubscribe<T> onSubscribe, SubjectSubscriptionManager<T> subjectSubscriptionManager) {
        super(onSubscribe);
        this.state = subjectSubscriptionManager;
    }

    @Override // p024rx.Observer
    public void onCompleted() {
        if (this.state.active) {
            Object objCompleted = this.lastValue;
            if (objCompleted == null) {
                objCompleted = NotificationLite.completed();
            }
            for (SubjectSubscriptionManager.SubjectObserver<T> subjectObserver : this.state.terminate(objCompleted)) {
                if (objCompleted == NotificationLite.completed()) {
                    subjectObserver.onCompleted();
                } else {
                    subjectObserver.actual.setProducer(new SingleProducer(subjectObserver.actual, NotificationLite.getValue(objCompleted)));
                }
            }
        }
    }

    @Override // p024rx.Observer
    public void onError(Throwable th) {
        if (this.state.active) {
            ArrayList arrayList = null;
            for (SubjectSubscriptionManager.SubjectObserver<T> subjectObserver : this.state.terminate(NotificationLite.error(th))) {
                try {
                    subjectObserver.onError(th);
                } catch (Throwable th2) {
                    if (arrayList == null) {
                        arrayList = new ArrayList();
                    }
                    arrayList.add(th2);
                }
            }
            Exceptions.throwIfAny(arrayList);
        }
    }

    @Override // p024rx.Observer
    public void onNext(T t) {
        this.lastValue = NotificationLite.next(t);
    }

    @Override // p024rx.subjects.Subject
    public boolean hasObservers() {
        return this.state.observers().length > 0;
    }

    public boolean hasValue() {
        return !NotificationLite.isError(this.state.getLatest()) && NotificationLite.isNext(this.lastValue);
    }

    public boolean hasThrowable() {
        return NotificationLite.isError(this.state.getLatest());
    }

    public boolean hasCompleted() {
        Object latest = this.state.getLatest();
        return (latest == null || NotificationLite.isError(latest)) ? false : true;
    }

    public T getValue() {
        Object obj = this.lastValue;
        if (NotificationLite.isError(this.state.getLatest()) || !NotificationLite.isNext(obj)) {
            return null;
        }
        return (T) NotificationLite.getValue(obj);
    }

    public Throwable getThrowable() {
        Object latest = this.state.getLatest();
        if (NotificationLite.isError(latest)) {
            return NotificationLite.getError(latest);
        }
        return null;
    }
}
