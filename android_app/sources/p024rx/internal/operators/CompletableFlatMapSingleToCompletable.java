package p024rx.internal.operators;

import p024rx.Completable;
import p024rx.CompletableSubscriber;
import p024rx.Single;
import p024rx.SingleSubscriber;
import p024rx.Subscription;
import p024rx.exceptions.Exceptions;
import p024rx.functions.Func1;

/* loaded from: classes2.dex */
public final class CompletableFlatMapSingleToCompletable<T> implements Completable.OnSubscribe {
    final Func1<? super T, ? extends Completable> mapper;
    final Single<T> source;

    public CompletableFlatMapSingleToCompletable(Single<T> single, Func1<? super T, ? extends Completable> func1) {
        this.source = single;
        this.mapper = func1;
    }

    @Override // p024rx.functions.Action1
    public void call(CompletableSubscriber completableSubscriber) {
        SourceSubscriber sourceSubscriber = new SourceSubscriber(completableSubscriber, this.mapper);
        completableSubscriber.onSubscribe(sourceSubscriber);
        this.source.subscribe(sourceSubscriber);
    }

    static final class SourceSubscriber<T> extends SingleSubscriber<T> implements CompletableSubscriber {
        final CompletableSubscriber actual;
        final Func1<? super T, ? extends Completable> mapper;

        public SourceSubscriber(CompletableSubscriber completableSubscriber, Func1<? super T, ? extends Completable> func1) {
            this.actual = completableSubscriber;
            this.mapper = func1;
        }

        @Override // p024rx.SingleSubscriber
        public void onSuccess(T t) {
            try {
                Completable completableCall = this.mapper.call(t);
                if (completableCall == null) {
                    onError(new NullPointerException("The mapper returned a null Completable"));
                } else {
                    completableCall.subscribe(this);
                }
            } catch (Throwable th) {
                Exceptions.throwIfFatal(th);
                onError(th);
            }
        }

        @Override // p024rx.SingleSubscriber
        public void onError(Throwable th) {
            this.actual.onError(th);
        }

        @Override // p024rx.CompletableSubscriber
        public void onCompleted() {
            this.actual.onCompleted();
        }

        @Override // p024rx.CompletableSubscriber
        public void onSubscribe(Subscription subscription) {
            add(subscription);
        }
    }
}
