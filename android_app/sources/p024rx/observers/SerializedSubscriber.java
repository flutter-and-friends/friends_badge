package p024rx.observers;

import p024rx.Observer;
import p024rx.Subscriber;

/* loaded from: classes2.dex */
public class SerializedSubscriber<T> extends Subscriber<T> {

    /* renamed from: s */
    private final Observer<T> f1234s;

    public SerializedSubscriber(Subscriber<? super T> subscriber) {
        this(subscriber, true);
    }

    public SerializedSubscriber(Subscriber<? super T> subscriber, boolean z) {
        super(subscriber, z);
        this.f1234s = new SerializedObserver(subscriber);
    }

    @Override // p024rx.Observer
    public void onCompleted() {
        this.f1234s.onCompleted();
    }

    @Override // p024rx.Observer
    public void onError(Throwable th) {
        this.f1234s.onError(th);
    }

    @Override // p024rx.Observer
    public void onNext(T t) {
        this.f1234s.onNext(t);
    }
}
