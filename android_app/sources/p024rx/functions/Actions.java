package p024rx.functions;

/* loaded from: classes2.dex */
public final class Actions {
    private static final EmptyAction EMPTY_ACTION = new EmptyAction();

    private Actions() {
        throw new IllegalStateException("No instances!");
    }

    public static <T0, T1, T2, T3, T4, T5, T6, T7, T8> EmptyAction<T0, T1, T2, T3, T4, T5, T6, T7, T8> empty() {
        return EMPTY_ACTION;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final class EmptyAction<T0, T1, T2, T3, T4, T5, T6, T7, T8> implements Action0, Action1<T0>, Action2<T0, T1>, Action3<T0, T1, T2>, Action4<T0, T1, T2, T3>, Action5<T0, T1, T2, T3, T4>, Action6<T0, T1, T2, T3, T4, T5>, Action7<T0, T1, T2, T3, T4, T5, T6>, Action8<T0, T1, T2, T3, T4, T5, T6, T7>, Action9<T0, T1, T2, T3, T4, T5, T6, T7, T8>, ActionN {
        @Override // p024rx.functions.Action0
        public void call() {
        }

        @Override // p024rx.functions.Action1
        public void call(T0 t0) {
        }

        @Override // p024rx.functions.Action2
        public void call(T0 t0, T1 t1) {
        }

        @Override // p024rx.functions.Action3
        public void call(T0 t0, T1 t1, T2 t2) {
        }

        @Override // p024rx.functions.Action4
        public void call(T0 t0, T1 t1, T2 t2, T3 t3) {
        }

        @Override // p024rx.functions.Action5
        public void call(T0 t0, T1 t1, T2 t2, T3 t3, T4 t4) {
        }

        @Override // p024rx.functions.Action6
        public void call(T0 t0, T1 t1, T2 t2, T3 t3, T4 t4, T5 t5) {
        }

        @Override // p024rx.functions.Action7
        public void call(T0 t0, T1 t1, T2 t2, T3 t3, T4 t4, T5 t5, T6 t6) {
        }

        @Override // p024rx.functions.Action8
        public void call(T0 t0, T1 t1, T2 t2, T3 t3, T4 t4, T5 t5, T6 t6, T7 t7) {
        }

        @Override // p024rx.functions.Action9
        public void call(T0 t0, T1 t1, T2 t2, T3 t3, T4 t4, T5 t5, T6 t6, T7 t7, T8 t8) {
        }

        @Override // p024rx.functions.ActionN
        public void call(Object... objArr) {
        }

        EmptyAction() {
        }
    }

    public static Func0<Void> toFunc(Action0 action0) {
        return toFunc(action0, (Void) null);
    }

    public static <T1> Func1<T1, Void> toFunc(Action1<T1> action1) {
        return toFunc(action1, (Void) null);
    }

    public static <T1, T2> Func2<T1, T2, Void> toFunc(Action2<T1, T2> action2) {
        return toFunc(action2, (Void) null);
    }

    public static <T1, T2, T3> Func3<T1, T2, T3, Void> toFunc(Action3<T1, T2, T3> action3) {
        return toFunc(action3, (Void) null);
    }

    public static <T1, T2, T3, T4> Func4<T1, T2, T3, T4, Void> toFunc(Action4<T1, T2, T3, T4> action4) {
        return toFunc(action4, (Void) null);
    }

    public static <T1, T2, T3, T4, T5> Func5<T1, T2, T3, T4, T5, Void> toFunc(Action5<T1, T2, T3, T4, T5> action5) {
        return toFunc(action5, (Void) null);
    }

    public static <T1, T2, T3, T4, T5, T6> Func6<T1, T2, T3, T4, T5, T6, Void> toFunc(Action6<T1, T2, T3, T4, T5, T6> action6) {
        return toFunc(action6, (Void) null);
    }

    public static <T1, T2, T3, T4, T5, T6, T7> Func7<T1, T2, T3, T4, T5, T6, T7, Void> toFunc(Action7<T1, T2, T3, T4, T5, T6, T7> action7) {
        return toFunc(action7, (Void) null);
    }

    public static <T1, T2, T3, T4, T5, T6, T7, T8> Func8<T1, T2, T3, T4, T5, T6, T7, T8, Void> toFunc(Action8<T1, T2, T3, T4, T5, T6, T7, T8> action8) {
        return toFunc(action8, (Void) null);
    }

    public static <T1, T2, T3, T4, T5, T6, T7, T8, T9> Func9<T1, T2, T3, T4, T5, T6, T7, T8, T9, Void> toFunc(Action9<T1, T2, T3, T4, T5, T6, T7, T8, T9> action9) {
        return toFunc(action9, (Void) null);
    }

    public static FuncN<Void> toFunc(ActionN actionN) {
        return toFunc(actionN, (Void) null);
    }

    public static <R> Func0<R> toFunc(final Action0 action0, final R r) {
        return new Func0<R>() { // from class: rx.functions.Actions.1
            @Override // p024rx.functions.Func0, java.util.concurrent.Callable
            public R call() {
                action0.call();
                return (R) r;
            }
        };
    }

    public static <T1, R> Func1<T1, R> toFunc(final Action1<T1> action1, final R r) {
        return new Func1<T1, R>() { // from class: rx.functions.Actions.2
            @Override // p024rx.functions.Func1
            public R call(T1 t1) {
                action1.call(t1);
                return (R) r;
            }
        };
    }

    public static <T1, T2, R> Func2<T1, T2, R> toFunc(final Action2<T1, T2> action2, final R r) {
        return new Func2<T1, T2, R>() { // from class: rx.functions.Actions.3
            @Override // p024rx.functions.Func2
            public R call(T1 t1, T2 t2) {
                action2.call(t1, t2);
                return (R) r;
            }
        };
    }

    public static <T1, T2, T3, R> Func3<T1, T2, T3, R> toFunc(final Action3<T1, T2, T3> action3, final R r) {
        return new Func3<T1, T2, T3, R>() { // from class: rx.functions.Actions.4
            @Override // p024rx.functions.Func3
            public R call(T1 t1, T2 t2, T3 t3) {
                action3.call(t1, t2, t3);
                return (R) r;
            }
        };
    }

    public static <T1, T2, T3, T4, R> Func4<T1, T2, T3, T4, R> toFunc(final Action4<T1, T2, T3, T4> action4, final R r) {
        return new Func4<T1, T2, T3, T4, R>() { // from class: rx.functions.Actions.5
            @Override // p024rx.functions.Func4
            public R call(T1 t1, T2 t2, T3 t3, T4 t4) {
                action4.call(t1, t2, t3, t4);
                return (R) r;
            }
        };
    }

    public static <T1, T2, T3, T4, T5, R> Func5<T1, T2, T3, T4, T5, R> toFunc(final Action5<T1, T2, T3, T4, T5> action5, final R r) {
        return new Func5<T1, T2, T3, T4, T5, R>() { // from class: rx.functions.Actions.6
            @Override // p024rx.functions.Func5
            public R call(T1 t1, T2 t2, T3 t3, T4 t4, T5 t5) {
                action5.call(t1, t2, t3, t4, t5);
                return (R) r;
            }
        };
    }

    public static <T1, T2, T3, T4, T5, T6, R> Func6<T1, T2, T3, T4, T5, T6, R> toFunc(final Action6<T1, T2, T3, T4, T5, T6> action6, final R r) {
        return new Func6<T1, T2, T3, T4, T5, T6, R>() { // from class: rx.functions.Actions.7
            @Override // p024rx.functions.Func6
            public R call(T1 t1, T2 t2, T3 t3, T4 t4, T5 t5, T6 t6) {
                action6.call(t1, t2, t3, t4, t5, t6);
                return (R) r;
            }
        };
    }

    public static <T1, T2, T3, T4, T5, T6, T7, R> Func7<T1, T2, T3, T4, T5, T6, T7, R> toFunc(final Action7<T1, T2, T3, T4, T5, T6, T7> action7, final R r) {
        return new Func7<T1, T2, T3, T4, T5, T6, T7, R>() { // from class: rx.functions.Actions.8
            @Override // p024rx.functions.Func7
            public R call(T1 t1, T2 t2, T3 t3, T4 t4, T5 t5, T6 t6, T7 t7) {
                action7.call(t1, t2, t3, t4, t5, t6, t7);
                return (R) r;
            }
        };
    }

    public static <T1, T2, T3, T4, T5, T6, T7, T8, R> Func8<T1, T2, T3, T4, T5, T6, T7, T8, R> toFunc(final Action8<T1, T2, T3, T4, T5, T6, T7, T8> action8, final R r) {
        return new Func8<T1, T2, T3, T4, T5, T6, T7, T8, R>() { // from class: rx.functions.Actions.9
            @Override // p024rx.functions.Func8
            public R call(T1 t1, T2 t2, T3 t3, T4 t4, T5 t5, T6 t6, T7 t7, T8 t8) {
                action8.call(t1, t2, t3, t4, t5, t6, t7, t8);
                return (R) r;
            }
        };
    }

    public static <T1, T2, T3, T4, T5, T6, T7, T8, T9, R> Func9<T1, T2, T3, T4, T5, T6, T7, T8, T9, R> toFunc(final Action9<T1, T2, T3, T4, T5, T6, T7, T8, T9> action9, final R r) {
        return new Func9<T1, T2, T3, T4, T5, T6, T7, T8, T9, R>() { // from class: rx.functions.Actions.10
            @Override // p024rx.functions.Func9
            public R call(T1 t1, T2 t2, T3 t3, T4 t4, T5 t5, T6 t6, T7 t7, T8 t8, T9 t9) {
                action9.call(t1, t2, t3, t4, t5, t6, t7, t8, t9);
                return (R) r;
            }
        };
    }

    public static <R> FuncN<R> toFunc(final ActionN actionN, final R r) {
        return new FuncN<R>() { // from class: rx.functions.Actions.11
            @Override // p024rx.functions.FuncN
            public R call(Object... objArr) {
                actionN.call(objArr);
                return (R) r;
            }
        };
    }

    public static <T> Action1<T> toAction1(Action0 action0) {
        return new Action1CallsAction0(action0);
    }

    static final class Action1CallsAction0<T> implements Action1<T> {
        final Action0 action;

        public Action1CallsAction0(Action0 action0) {
            this.action = action0;
        }

        @Override // p024rx.functions.Action1
        public void call(T t) {
            this.action.call();
        }
    }
}
