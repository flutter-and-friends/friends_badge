package p024rx.internal.operators;

import p024rx.Single;
import p024rx.SingleSubscriber;
import p024rx.exceptions.Exceptions;
import p024rx.functions.Func1;

/* loaded from: classes2.dex */
public final class SingleOperatorOnErrorResumeNext<T> implements Single.OnSubscribe<T> {
    private final Single<? extends T> originalSingle;
    final Func1<Throwable, ? extends Single<? extends T>> resumeFunctionInCaseOfError;

    private SingleOperatorOnErrorResumeNext(Single<? extends T> single, Func1<Throwable, ? extends Single<? extends T>> func1) {
        if (single == null) {
            throw new NullPointerException("originalSingle must not be null");
        }
        if (func1 == null) {
            throw new NullPointerException("resumeFunctionInCaseOfError must not be null");
        }
        this.originalSingle = single;
        this.resumeFunctionInCaseOfError = func1;
    }

    public static <T> SingleOperatorOnErrorResumeNext<T> withFunction(Single<? extends T> single, Func1<Throwable, ? extends Single<? extends T>> func1) {
        return new SingleOperatorOnErrorResumeNext<>(single, func1);
    }

    public static <T> SingleOperatorOnErrorResumeNext<T> withOther(Single<? extends T> single, final Single<? extends T> single2) {
        if (single2 == null) {
            throw new NullPointerException("resumeSingleInCaseOfError must not be null");
        }
        return new SingleOperatorOnErrorResumeNext<>(single, new Func1<Throwable, Single<? extends T>>() { // from class: rx.internal.operators.SingleOperatorOnErrorResumeNext.1
            @Override // p024rx.functions.Func1
            public Single<? extends T> call(Throwable th) {
                return single2;
            }
        });
    }

    @Override // p024rx.functions.Action1
    public void call(final SingleSubscriber<? super T> singleSubscriber) {
        SingleSubscriber<T> singleSubscriber2 = new SingleSubscriber<T>() { // from class: rx.internal.operators.SingleOperatorOnErrorResumeNext.2
            @Override // p024rx.SingleSubscriber
            public void onSuccess(T t) {
                singleSubscriber.onSuccess(t);
            }

            @Override // p024rx.SingleSubscriber
            public void onError(Throwable th) {
                try {
                    SingleOperatorOnErrorResumeNext.this.resumeFunctionInCaseOfError.call(th).subscribe(singleSubscriber);
                } catch (Throwable th2) {
                    Exceptions.throwOrReport(th2, (SingleSubscriber<?>) singleSubscriber);
                }
            }
        };
        singleSubscriber.add(singleSubscriber2);
        this.originalSingle.subscribe((SingleSubscriber<? super Object>) singleSubscriber2);
    }
}
