package org.greenrobot.greendao.p023rx;

import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Callable;
import org.greenrobot.greendao.query.LazyList;
import org.greenrobot.greendao.query.Query;
import p024rx.Observable;
import p024rx.Scheduler;
import p024rx.Subscriber;
import p024rx.exceptions.Exceptions;

/* loaded from: classes2.dex */
public class RxQuery<T> extends RxBase {
    private final Query<T> query;

    @Override // org.greenrobot.greendao.p023rx.RxBase
    public /* bridge */ /* synthetic */ Scheduler getScheduler() {
        return super.getScheduler();
    }

    public RxQuery(Query<T> query) {
        this.query = query;
    }

    public RxQuery(Query<T> query, Scheduler scheduler) {
        super(scheduler);
        this.query = query;
    }

    public Observable<List<T>> list() {
        return (Observable<List<T>>) wrap(new Callable<List<T>>() { // from class: org.greenrobot.greendao.rx.RxQuery.1
            @Override // java.util.concurrent.Callable
            public List<T> call() throws Exception {
                return RxQuery.this.query.forCurrentThread().list();
            }
        });
    }

    public Observable<T> unique() {
        return (Observable<T>) wrap(new Callable<T>() { // from class: org.greenrobot.greendao.rx.RxQuery.2
            @Override // java.util.concurrent.Callable
            public T call() throws Exception {
                return RxQuery.this.query.forCurrentThread().unique();
            }
        });
    }

    public Observable<T> oneByOne() {
        return (Observable<T>) wrap(Observable.create(new Observable.OnSubscribe<T>() { // from class: org.greenrobot.greendao.rx.RxQuery.3
            @Override // p024rx.functions.Action1
            public void call(Subscriber<? super T> subscriber) {
                try {
                    LazyList<T> lazyListListLazyUncached = RxQuery.this.query.forCurrentThread().listLazyUncached();
                    try {
                        Iterator<T> it = lazyListListLazyUncached.iterator();
                        while (it.hasNext()) {
                            T next = it.next();
                            if (subscriber.isUnsubscribed()) {
                                break;
                            } else {
                                subscriber.onNext(next);
                            }
                        }
                        lazyListListLazyUncached.close();
                        if (subscriber.isUnsubscribed()) {
                            return;
                        }
                        subscriber.onCompleted();
                    } catch (Throwable th) {
                        lazyListListLazyUncached.close();
                        throw th;
                    }
                } catch (Throwable th2) {
                    Exceptions.throwIfFatal(th2);
                    subscriber.onError(th2);
                }
            }
        }));
    }
}
