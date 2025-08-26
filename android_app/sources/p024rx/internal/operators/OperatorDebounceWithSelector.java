package p024rx.internal.operators;

import kotlin.jvm.internal.LongCompanionObject;
import p024rx.Observable;
import p024rx.Subscriber;
import p024rx.exceptions.Exceptions;
import p024rx.functions.Func1;
import p024rx.internal.operators.OperatorDebounceWithTime;
import p024rx.observers.SerializedSubscriber;
import p024rx.subscriptions.SerialSubscription;

/* loaded from: classes2.dex */
public final class OperatorDebounceWithSelector<T, U> implements Observable.Operator<T, T> {
    final Func1<? super T, ? extends Observable<U>> selector;

    public OperatorDebounceWithSelector(Func1<? super T, ? extends Observable<U>> func1) {
        this.selector = func1;
    }

    @Override // p024rx.functions.Func1
    public Subscriber<? super T> call(Subscriber<? super T> subscriber) {
        SerializedSubscriber serializedSubscriber = new SerializedSubscriber(subscriber);
        SerialSubscription serialSubscription = new SerialSubscription();
        subscriber.add(serialSubscription);
        return new C19111(subscriber, serializedSubscriber, serialSubscription);
    }

    /* renamed from: rx.internal.operators.OperatorDebounceWithSelector$1 */
    class C19111 extends Subscriber<T> {
        final Subscriber<?> self;
        final OperatorDebounceWithTime.DebounceState<T> state;
        final /* synthetic */ SerializedSubscriber val$s;
        final /* synthetic */ SerialSubscription val$serial;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C19111(Subscriber subscriber, SerializedSubscriber serializedSubscriber, SerialSubscription serialSubscription) {
            super(subscriber);
            this.val$s = serializedSubscriber;
            this.val$serial = serialSubscription;
            this.state = new OperatorDebounceWithTime.DebounceState<>();
            this.self = this;
        }

        @Override // p024rx.Subscriber
        public void onStart() {
            request(LongCompanionObject.MAX_VALUE);
        }

        @Override // p024rx.Observer
        public void onNext(T t) {
            try {
                Observable<U> observableCall = OperatorDebounceWithSelector.this.selector.call(t);
                final int next = this.state.next(t);
                Subscriber<U> subscriber = new Subscriber<U>() { // from class: rx.internal.operators.OperatorDebounceWithSelector.1.1
                    @Override // p024rx.Observer
                    public void onNext(U u) {
                        onCompleted();
                    }

                    @Override // p024rx.Observer
                    public void onError(Throwable th) {
                        C19111.this.self.onError(th);
                    }

                    @Override // p024rx.Observer
                    public void onCompleted() {
                        C19111.this.state.emit(next, C19111.this.val$s, C19111.this.self);
                        unsubscribe();
                    }
                };
                this.val$serial.set(subscriber);
                observableCall.unsafeSubscribe(subscriber);
            } catch (Throwable th) {
                Exceptions.throwOrReport(th, this);
            }
        }

        @Override // p024rx.Observer
        public void onError(Throwable th) {
            this.val$s.onError(th);
            unsubscribe();
            this.state.clear();
        }

        @Override // p024rx.Observer
        public void onCompleted() {
            this.state.emitAndComplete(this.val$s, this);
        }
    }
}
