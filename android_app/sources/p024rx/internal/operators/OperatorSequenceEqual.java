package p024rx.internal.operators;

import p024rx.Observable;
import p024rx.functions.Func2;
import p024rx.internal.util.UtilityFunctions;

/* loaded from: classes2.dex */
public final class OperatorSequenceEqual {
    static final Object LOCAL_ON_COMPLETED = new Object();

    private OperatorSequenceEqual() {
        throw new IllegalStateException("No instances!");
    }

    static <T> Observable<Object> materializeLite(Observable<T> observable) {
        return Observable.concat(observable, Observable.just(LOCAL_ON_COMPLETED));
    }

    public static <T> Observable<Boolean> sequenceEqual(Observable<? extends T> observable, Observable<? extends T> observable2, final Func2<? super T, ? super T, Boolean> func2) {
        return Observable.zip(materializeLite(observable), materializeLite(observable2), new Func2<Object, Object, Boolean>() { // from class: rx.internal.operators.OperatorSequenceEqual.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // p024rx.functions.Func2
            public Boolean call(Object obj, Object obj2) {
                boolean z = obj == OperatorSequenceEqual.LOCAL_ON_COMPLETED;
                boolean z2 = obj2 == OperatorSequenceEqual.LOCAL_ON_COMPLETED;
                if (z && z2) {
                    return true;
                }
                if (z || z2) {
                    return false;
                }
                return (Boolean) func2.call(obj, obj2);
            }
        }).all(UtilityFunctions.identity());
    }
}
