package org.greenrobot.greendao.p023rx;

import java.util.concurrent.Callable;
import p024rx.Observable;
import p024rx.functions.Func0;

/* loaded from: classes2.dex */
class RxUtils {
    RxUtils() {
    }

    static <T> Observable<T> fromCallable(final Callable<T> callable) {
        return Observable.defer(new Func0<Observable<T>>() { // from class: org.greenrobot.greendao.rx.RxUtils.1
            @Override // p024rx.functions.Func0, java.util.concurrent.Callable
            public Observable<T> call() {
                try {
                    return Observable.just(callable.call());
                } catch (Exception e) {
                    return Observable.error(e);
                }
            }
        });
    }
}
