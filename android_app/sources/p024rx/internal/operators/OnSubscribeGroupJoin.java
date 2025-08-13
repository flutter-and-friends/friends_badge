package p024rx.internal.operators;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import p024rx.Observable;
import p024rx.Observer;
import p024rx.Subscriber;
import p024rx.Subscription;
import p024rx.exceptions.Exceptions;
import p024rx.functions.Func1;
import p024rx.functions.Func2;
import p024rx.observers.SerializedObserver;
import p024rx.observers.SerializedSubscriber;
import p024rx.subjects.PublishSubject;
import p024rx.subscriptions.CompositeSubscription;
import p024rx.subscriptions.RefCountSubscription;

/* loaded from: classes2.dex */
public final class OnSubscribeGroupJoin<T1, T2, D1, D2, R> implements Observable.OnSubscribe<R> {
    final Observable<T1> left;
    final Func1<? super T1, ? extends Observable<D1>> leftDuration;
    final Func2<? super T1, ? super Observable<T2>, ? extends R> resultSelector;
    final Observable<T2> right;
    final Func1<? super T2, ? extends Observable<D2>> rightDuration;

    public OnSubscribeGroupJoin(Observable<T1> observable, Observable<T2> observable2, Func1<? super T1, ? extends Observable<D1>> func1, Func1<? super T2, ? extends Observable<D2>> func12, Func2<? super T1, ? super Observable<T2>, ? extends R> func2) {
        this.left = observable;
        this.right = observable2;
        this.leftDuration = func1;
        this.rightDuration = func12;
        this.resultSelector = func2;
    }

    @Override // p024rx.functions.Action1
    public void call(Subscriber<? super R> subscriber) {
        ResultManager resultManager = new ResultManager(new SerializedSubscriber(subscriber));
        subscriber.add(resultManager);
        resultManager.init();
    }

    final class ResultManager extends HashMap<Integer, Observer<T2>> implements Subscription {
        private static final long serialVersionUID = -3035156013812425335L;
        boolean leftDone;
        int leftIds;
        boolean rightDone;
        int rightIds;
        final Subscriber<? super R> subscriber;
        final Map<Integer, T2> rightMap = new HashMap();
        final CompositeSubscription group = new CompositeSubscription();
        final RefCountSubscription cancel = new RefCountSubscription(this.group);

        Map<Integer, Observer<T2>> leftMap() {
            return this;
        }

        public ResultManager(Subscriber<? super R> subscriber) {
            this.subscriber = subscriber;
        }

        public void init() {
            LeftObserver leftObserver = new LeftObserver();
            RightObserver rightObserver = new RightObserver();
            this.group.add(leftObserver);
            this.group.add(rightObserver);
            OnSubscribeGroupJoin.this.left.unsafeSubscribe(leftObserver);
            OnSubscribeGroupJoin.this.right.unsafeSubscribe(rightObserver);
        }

        @Override // p024rx.Subscription
        public void unsubscribe() {
            this.cancel.unsubscribe();
        }

        @Override // p024rx.Subscription
        public boolean isUnsubscribed() {
            return this.cancel.isUnsubscribed();
        }

        void errorAll(Throwable th) {
            ArrayList arrayList;
            synchronized (this) {
                arrayList = new ArrayList(leftMap().values());
                leftMap().clear();
                this.rightMap.clear();
            }
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                ((Observer) it.next()).onError(th);
            }
            this.subscriber.onError(th);
            this.cancel.unsubscribe();
        }

        void errorMain(Throwable th) {
            synchronized (this) {
                leftMap().clear();
                this.rightMap.clear();
            }
            this.subscriber.onError(th);
            this.cancel.unsubscribe();
        }

        void complete(List<Observer<T2>> list) {
            if (list != null) {
                Iterator<Observer<T2>> it = list.iterator();
                while (it.hasNext()) {
                    it.next().onCompleted();
                }
                this.subscriber.onCompleted();
                this.cancel.unsubscribe();
            }
        }

        final class LeftObserver extends Subscriber<T1> {
            LeftObserver() {
            }

            @Override // p024rx.Observer
            public void onNext(T1 t1) {
                int i;
                ArrayList arrayList;
                try {
                    PublishSubject publishSubjectCreate = PublishSubject.create();
                    SerializedObserver serializedObserver = new SerializedObserver(publishSubjectCreate);
                    synchronized (ResultManager.this) {
                        ResultManager resultManager = ResultManager.this;
                        i = resultManager.leftIds;
                        resultManager.leftIds = i + 1;
                        ResultManager.this.leftMap().put(Integer.valueOf(i), serializedObserver);
                    }
                    Observable observableCreate = Observable.create(new WindowObservableFunc(publishSubjectCreate, ResultManager.this.cancel));
                    Observable<D1> observableCall = OnSubscribeGroupJoin.this.leftDuration.call(t1);
                    LeftDurationObserver leftDurationObserver = ResultManager.this.new LeftDurationObserver(i);
                    ResultManager.this.group.add(leftDurationObserver);
                    observableCall.unsafeSubscribe(leftDurationObserver);
                    R rCall = OnSubscribeGroupJoin.this.resultSelector.call(t1, observableCreate);
                    synchronized (ResultManager.this) {
                        arrayList = new ArrayList(ResultManager.this.rightMap.values());
                    }
                    ResultManager.this.subscriber.onNext(rCall);
                    Iterator it = arrayList.iterator();
                    while (it.hasNext()) {
                        serializedObserver.onNext(it.next());
                    }
                } catch (Throwable th) {
                    Exceptions.throwOrReport(th, this);
                }
            }

            @Override // p024rx.Observer
            public void onCompleted() {
                ArrayList arrayList;
                synchronized (ResultManager.this) {
                    ResultManager.this.leftDone = true;
                    if (ResultManager.this.rightDone) {
                        arrayList = new ArrayList(ResultManager.this.leftMap().values());
                        ResultManager.this.leftMap().clear();
                        ResultManager.this.rightMap.clear();
                    } else {
                        arrayList = null;
                    }
                }
                ResultManager.this.complete(arrayList);
            }

            @Override // p024rx.Observer
            public void onError(Throwable th) {
                ResultManager.this.errorAll(th);
            }
        }

        final class RightObserver extends Subscriber<T2> {
            RightObserver() {
            }

            @Override // p024rx.Observer
            public void onNext(T2 t2) {
                int i;
                ArrayList arrayList;
                try {
                    synchronized (ResultManager.this) {
                        ResultManager resultManager = ResultManager.this;
                        i = resultManager.rightIds;
                        resultManager.rightIds = i + 1;
                        ResultManager.this.rightMap.put(Integer.valueOf(i), t2);
                    }
                    Observable<D2> observableCall = OnSubscribeGroupJoin.this.rightDuration.call(t2);
                    RightDurationObserver rightDurationObserver = ResultManager.this.new RightDurationObserver(i);
                    ResultManager.this.group.add(rightDurationObserver);
                    observableCall.unsafeSubscribe(rightDurationObserver);
                    synchronized (ResultManager.this) {
                        arrayList = new ArrayList(ResultManager.this.leftMap().values());
                    }
                    Iterator it = arrayList.iterator();
                    while (it.hasNext()) {
                        ((Observer) it.next()).onNext(t2);
                    }
                } catch (Throwable th) {
                    Exceptions.throwOrReport(th, this);
                }
            }

            @Override // p024rx.Observer
            public void onCompleted() {
                ArrayList arrayList;
                synchronized (ResultManager.this) {
                    ResultManager.this.rightDone = true;
                    if (ResultManager.this.leftDone) {
                        arrayList = new ArrayList(ResultManager.this.leftMap().values());
                        ResultManager.this.leftMap().clear();
                        ResultManager.this.rightMap.clear();
                    } else {
                        arrayList = null;
                    }
                }
                ResultManager.this.complete(arrayList);
            }

            @Override // p024rx.Observer
            public void onError(Throwable th) {
                ResultManager.this.errorAll(th);
            }
        }

        final class LeftDurationObserver extends Subscriber<D1> {

            /* renamed from: id */
            final int f1206id;
            boolean once = true;

            public LeftDurationObserver(int i) {
                this.f1206id = i;
            }

            @Override // p024rx.Observer
            public void onCompleted() {
                Observer<T2> observerRemove;
                if (this.once) {
                    this.once = false;
                    synchronized (ResultManager.this) {
                        observerRemove = ResultManager.this.leftMap().remove(Integer.valueOf(this.f1206id));
                    }
                    if (observerRemove != null) {
                        observerRemove.onCompleted();
                    }
                    ResultManager.this.group.remove(this);
                }
            }

            @Override // p024rx.Observer
            public void onError(Throwable th) {
                ResultManager.this.errorMain(th);
            }

            @Override // p024rx.Observer
            public void onNext(D1 d1) {
                onCompleted();
            }
        }

        final class RightDurationObserver extends Subscriber<D2> {

            /* renamed from: id */
            final int f1207id;
            boolean once = true;

            public RightDurationObserver(int i) {
                this.f1207id = i;
            }

            @Override // p024rx.Observer
            public void onCompleted() {
                if (this.once) {
                    this.once = false;
                    synchronized (ResultManager.this) {
                        ResultManager.this.rightMap.remove(Integer.valueOf(this.f1207id));
                    }
                    ResultManager.this.group.remove(this);
                }
            }

            @Override // p024rx.Observer
            public void onError(Throwable th) {
                ResultManager.this.errorMain(th);
            }

            @Override // p024rx.Observer
            public void onNext(D2 d2) {
                onCompleted();
            }
        }
    }

    static final class WindowObservableFunc<T> implements Observable.OnSubscribe<T> {
        final RefCountSubscription refCount;
        final Observable<T> underlying;

        public WindowObservableFunc(Observable<T> observable, RefCountSubscription refCountSubscription) {
            this.refCount = refCountSubscription;
            this.underlying = observable;
        }

        @Override // p024rx.functions.Action1
        public void call(Subscriber<? super T> subscriber) {
            Subscription subscription = this.refCount.get();
            WindowSubscriber windowSubscriber = new WindowSubscriber(subscriber, subscription);
            windowSubscriber.add(subscription);
            this.underlying.unsafeSubscribe(windowSubscriber);
        }

        final class WindowSubscriber extends Subscriber<T> {
            private final Subscription ref;
            final Subscriber<? super T> subscriber;

            public WindowSubscriber(Subscriber<? super T> subscriber, Subscription subscription) {
                super(subscriber);
                this.subscriber = subscriber;
                this.ref = subscription;
            }

            @Override // p024rx.Observer
            public void onNext(T t) {
                this.subscriber.onNext(t);
            }

            @Override // p024rx.Observer
            public void onError(Throwable th) {
                this.subscriber.onError(th);
                this.ref.unsubscribe();
            }

            @Override // p024rx.Observer
            public void onCompleted() {
                this.subscriber.onCompleted();
                this.ref.unsubscribe();
            }
        }
    }
}
