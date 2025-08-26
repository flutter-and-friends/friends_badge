package p024rx.internal.util;

import p024rx.functions.Func1;

/* loaded from: classes2.dex */
public final class UtilityFunctions {
    private UtilityFunctions() {
        throw new IllegalStateException("No instances!");
    }

    public static <T> Func1<? super T, Boolean> alwaysTrue() {
        return AlwaysTrue.INSTANCE;
    }

    public static <T> Func1<? super T, Boolean> alwaysFalse() {
        return AlwaysFalse.INSTANCE;
    }

    public static <T> Func1<T, T> identity() {
        return new Func1<T, T>() { // from class: rx.internal.util.UtilityFunctions.1
            @Override // p024rx.functions.Func1
            public T call(T t) {
                return t;
            }
        };
    }

    enum AlwaysTrue implements Func1<Object, Boolean> {
        INSTANCE;

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // p024rx.functions.Func1
        public Boolean call(Object obj) {
            return true;
        }
    }

    enum AlwaysFalse implements Func1<Object, Boolean> {
        INSTANCE;

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // p024rx.functions.Func1
        public Boolean call(Object obj) {
            return false;
        }
    }
}
