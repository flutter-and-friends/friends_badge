package p024rx;

import p024rx.exceptions.MissingBackpressureException;

/* loaded from: classes2.dex */
public final class BackpressureOverflow {
    public static final Strategy ON_OVERFLOW_ERROR = Error.INSTANCE;
    public static final Strategy ON_OVERFLOW_DEFAULT = ON_OVERFLOW_ERROR;
    public static final Strategy ON_OVERFLOW_DROP_OLDEST = DropOldest.INSTANCE;
    public static final Strategy ON_OVERFLOW_DROP_LATEST = DropLatest.INSTANCE;

    public interface Strategy {
        boolean mayAttemptDrop() throws MissingBackpressureException;
    }

    static class DropOldest implements Strategy {
        static final DropOldest INSTANCE = new DropOldest();

        @Override // rx.BackpressureOverflow.Strategy
        public boolean mayAttemptDrop() {
            return true;
        }

        private DropOldest() {
        }
    }

    static class DropLatest implements Strategy {
        static final DropLatest INSTANCE = new DropLatest();

        @Override // rx.BackpressureOverflow.Strategy
        public boolean mayAttemptDrop() {
            return false;
        }

        private DropLatest() {
        }
    }

    static class Error implements Strategy {
        static final Error INSTANCE = new Error();

        private Error() {
        }

        @Override // rx.BackpressureOverflow.Strategy
        public boolean mayAttemptDrop() throws MissingBackpressureException {
            throw new MissingBackpressureException("Overflowed buffer");
        }
    }
}
