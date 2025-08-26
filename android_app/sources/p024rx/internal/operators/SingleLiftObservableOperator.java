package p024rx.internal.operators;

import p024rx.Observable;
import p024rx.Single;
import p024rx.SingleSubscriber;
import p024rx.Subscriber;
import p024rx.exceptions.Exceptions;
import p024rx.internal.operators.SingleFromObservable;
import p024rx.internal.producers.SingleProducer;
import p024rx.plugins.RxJavaHooks;

/* loaded from: classes2.dex */
public final class SingleLiftObservableOperator<T, R> implements Single.OnSubscribe<R> {
    final Observable.Operator<? extends R, ? super T> lift;
    final Single.OnSubscribe<T> source;

    public SingleLiftObservableOperator(Single.OnSubscribe<T> onSubscribe, Observable.Operator<? extends R, ? super T> operator) {
        this.source = onSubscribe;
        this.lift = operator;
    }

    @Override // p024rx.functions.Action1
    public void call(SingleSubscriber<? super R> singleSubscriber) {
        SingleFromObservable.WrapSingleIntoSubscriber wrapSingleIntoSubscriber = new SingleFromObservable.WrapSingleIntoSubscriber(singleSubscriber);
        singleSubscriber.add(wrapSingleIntoSubscriber);
        try {
            Subscriber<? super T> subscriberCall = RxJavaHooks.onSingleLift(this.lift).call(wrapSingleIntoSubscriber);
            SingleSubscriber singleSubscriberWrap = wrap(subscriberCall);
            subscriberCall.onStart();
            this.source.call(singleSubscriberWrap);
        } catch (Throwable th) {
            Exceptions.throwOrReport(th, singleSubscriber);
        }
    }

    public static <T> SingleSubscriber<T> wrap(Subscriber<T> subscriber) {
        WrapSubscriberIntoSingle wrapSubscriberIntoSingle = new WrapSubscriberIntoSingle(subscriber);
        subscriber.add(wrapSubscriberIntoSingle);
        return wrapSubscriberIntoSingle;
    }

    static final class WrapSubscriberIntoSingle<T> extends SingleSubscriber<T> {
        final Subscriber<? super T> actual;

        WrapSubscriberIntoSingle(Subscriber<? super T> subscriber) {
            this.actual = subscriber;
        }

        @Override // p024rx.SingleSubscriber
        public void onSuccess(T t) {
            Subscriber<? super T> subscriber = this.actual;
            subscriber.setProducer(new SingleProducer(subscriber, t));
        }

        @Override // p024rx.SingleSubscriber
        public void onError(Throwable th) {
            this.actual.onError(th);
        }
    }
}
