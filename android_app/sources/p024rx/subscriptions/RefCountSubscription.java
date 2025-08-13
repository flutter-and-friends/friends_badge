package p024rx.subscriptions;

import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
import p024rx.Subscription;

/* loaded from: classes2.dex */
public final class RefCountSubscription implements Subscription {
    static final State EMPTY_STATE = new State(false, 0);
    private final Subscription actual;
    final AtomicReference<State> state = new AtomicReference<>(EMPTY_STATE);

    static final class State {
        final int children;
        final boolean isUnsubscribed;

        State(boolean z, int i) {
            this.isUnsubscribed = z;
            this.children = i;
        }

        State addChild() {
            return new State(this.isUnsubscribed, this.children + 1);
        }

        State removeChild() {
            return new State(this.isUnsubscribed, this.children - 1);
        }

        State unsubscribe() {
            return new State(true, this.children);
        }
    }

    public RefCountSubscription(Subscription subscription) {
        if (subscription == null) {
            throw new IllegalArgumentException("s");
        }
        this.actual = subscription;
    }

    public Subscription get() {
        State state;
        AtomicReference<State> atomicReference = this.state;
        do {
            state = atomicReference.get();
            if (state.isUnsubscribed) {
                return Subscriptions.unsubscribed();
            }
        } while (!atomicReference.compareAndSet(state, state.addChild()));
        return new InnerSubscription(this);
    }

    @Override // p024rx.Subscription
    public boolean isUnsubscribed() {
        return this.state.get().isUnsubscribed;
    }

    @Override // p024rx.Subscription
    public void unsubscribe() {
        State state;
        State stateUnsubscribe;
        AtomicReference<State> atomicReference = this.state;
        do {
            state = atomicReference.get();
            if (state.isUnsubscribed) {
                return;
            } else {
                stateUnsubscribe = state.unsubscribe();
            }
        } while (!atomicReference.compareAndSet(state, stateUnsubscribe));
        unsubscribeActualIfApplicable(stateUnsubscribe);
    }

    private void unsubscribeActualIfApplicable(State state) {
        if (state.isUnsubscribed && state.children == 0) {
            this.actual.unsubscribe();
        }
    }

    void unsubscribeAChild() {
        State state;
        State stateRemoveChild;
        AtomicReference<State> atomicReference = this.state;
        do {
            state = atomicReference.get();
            stateRemoveChild = state.removeChild();
        } while (!atomicReference.compareAndSet(state, stateRemoveChild));
        unsubscribeActualIfApplicable(stateRemoveChild);
    }

    static final class InnerSubscription extends AtomicInteger implements Subscription {
        private static final long serialVersionUID = 7005765588239987643L;
        final RefCountSubscription parent;

        public InnerSubscription(RefCountSubscription refCountSubscription) {
            this.parent = refCountSubscription;
        }

        @Override // p024rx.Subscription
        public void unsubscribe() {
            if (compareAndSet(0, 1)) {
                this.parent.unsubscribeAChild();
            }
        }

        @Override // p024rx.Subscription
        public boolean isUnsubscribed() {
            return get() != 0;
        }
    }
}
