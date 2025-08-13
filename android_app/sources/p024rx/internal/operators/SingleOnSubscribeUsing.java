package p024rx.internal.operators;

import java.util.Arrays;
import p024rx.Single;
import p024rx.SingleSubscriber;
import p024rx.exceptions.CompositeException;
import p024rx.exceptions.Exceptions;
import p024rx.functions.Action1;
import p024rx.functions.Func0;
import p024rx.functions.Func1;
import p024rx.plugins.RxJavaHooks;

/* loaded from: classes2.dex */
public final class SingleOnSubscribeUsing<T, Resource> implements Single.OnSubscribe<T> {
    final Action1<? super Resource> disposeAction;
    final boolean disposeEagerly;
    final Func0<Resource> resourceFactory;
    final Func1<? super Resource, ? extends Single<? extends T>> singleFactory;

    public SingleOnSubscribeUsing(Func0<Resource> func0, Func1<? super Resource, ? extends Single<? extends T>> func1, Action1<? super Resource> action1, boolean z) {
        this.resourceFactory = func0;
        this.singleFactory = func1;
        this.disposeAction = action1;
        this.disposeEagerly = z;
    }

    @Override // p024rx.functions.Action1
    public void call(final SingleSubscriber<? super T> singleSubscriber) {
        try {
            final Resource resourceCall = this.resourceFactory.call();
            try {
                Single<? extends T> singleCall = this.singleFactory.call(resourceCall);
                if (singleCall == null) {
                    handleSubscriptionTimeError(singleSubscriber, resourceCall, new NullPointerException("The single"));
                    return;
                }
                SingleSubscriber<T> singleSubscriber2 = new SingleSubscriber<T>() { // from class: rx.internal.operators.SingleOnSubscribeUsing.1
                    @Override // p024rx.SingleSubscriber
                    public void onSuccess(T t) {
                        if (SingleOnSubscribeUsing.this.disposeEagerly) {
                            try {
                                SingleOnSubscribeUsing.this.disposeAction.call((Object) resourceCall);
                            } catch (Throwable th) {
                                Exceptions.throwIfFatal(th);
                                singleSubscriber.onError(th);
                                return;
                            }
                        }
                        singleSubscriber.onSuccess(t);
                        if (SingleOnSubscribeUsing.this.disposeEagerly) {
                            return;
                        }
                        try {
                            SingleOnSubscribeUsing.this.disposeAction.call((Object) resourceCall);
                        } catch (Throwable th2) {
                            Exceptions.throwIfFatal(th2);
                            RxJavaHooks.onError(th2);
                        }
                    }

                    /* JADX WARN: Multi-variable type inference failed */
                    @Override // p024rx.SingleSubscriber
                    public void onError(Throwable th) {
                        SingleOnSubscribeUsing.this.handleSubscriptionTimeError(singleSubscriber, resourceCall, th);
                    }
                };
                singleSubscriber.add(singleSubscriber2);
                singleCall.subscribe((SingleSubscriber<? super Object>) singleSubscriber2);
            } catch (Throwable th) {
                handleSubscriptionTimeError(singleSubscriber, resourceCall, th);
            }
        } catch (Throwable th2) {
            Exceptions.throwIfFatal(th2);
            singleSubscriber.onError(th2);
        }
    }

    void handleSubscriptionTimeError(SingleSubscriber<? super T> singleSubscriber, Resource resource, Throwable th) {
        Exceptions.throwIfFatal(th);
        if (this.disposeEagerly) {
            try {
                this.disposeAction.call(resource);
            } catch (Throwable th2) {
                Exceptions.throwIfFatal(th2);
                th = new CompositeException(Arrays.asList(th, th2));
            }
        }
        singleSubscriber.onError(th);
        if (this.disposeEagerly) {
            return;
        }
        try {
            this.disposeAction.call(resource);
        } catch (Throwable th3) {
            Exceptions.throwIfFatal(th3);
            RxJavaHooks.onError(th3);
        }
    }
}
