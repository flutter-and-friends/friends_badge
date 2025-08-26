package p024rx.internal.operators;

import p024rx.Notification;
import p024rx.Observable;
import p024rx.Subscriber;

/* loaded from: classes2.dex */
public final class OperatorDematerialize<T> implements Observable.Operator<T, Notification<T>> {

    static final class Holder {
        static final OperatorDematerialize<Object> INSTANCE = new OperatorDematerialize<>();

        Holder() {
        }
    }

    public static OperatorDematerialize instance() {
        return Holder.INSTANCE;
    }

    OperatorDematerialize() {
    }

    @Override // p024rx.functions.Func1
    public Subscriber<? super Notification<T>> call(final Subscriber<? super T> subscriber) {
        return new Subscriber<Notification<T>>(subscriber) { // from class: rx.internal.operators.OperatorDematerialize.1
            boolean terminated;

            @Override // p024rx.Observer
            public void onNext(Notification<T> notification) {
                int i = C19162.$SwitchMap$rx$Notification$Kind[notification.getKind().ordinal()];
                if (i == 1) {
                    if (this.terminated) {
                        return;
                    }
                    subscriber.onNext(notification.getValue());
                } else {
                    if (i == 2) {
                        onError(notification.getThrowable());
                        return;
                    }
                    if (i == 3) {
                        onCompleted();
                        return;
                    }
                    onError(new IllegalArgumentException("Unsupported notification type: " + notification));
                }
            }

            @Override // p024rx.Observer
            public void onError(Throwable th) {
                if (this.terminated) {
                    return;
                }
                this.terminated = true;
                subscriber.onError(th);
            }

            @Override // p024rx.Observer
            public void onCompleted() {
                if (this.terminated) {
                    return;
                }
                this.terminated = true;
                subscriber.onCompleted();
            }
        };
    }

    /* renamed from: rx.internal.operators.OperatorDematerialize$2 */
    static /* synthetic */ class C19162 {
        static final /* synthetic */ int[] $SwitchMap$rx$Notification$Kind = new int[Notification.Kind.values().length];

        static {
            try {
                $SwitchMap$rx$Notification$Kind[Notification.Kind.OnNext.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$rx$Notification$Kind[Notification.Kind.OnError.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$rx$Notification$Kind[Notification.Kind.OnCompleted.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }
}
