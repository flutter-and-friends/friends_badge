package p024rx.internal.operators;

import java.util.concurrent.atomic.AtomicLong;
import kotlin.jvm.internal.LongCompanionObject;
import p024rx.Observable;
import p024rx.Producer;
import p024rx.Subscriber;

/* loaded from: classes2.dex */
public final class OnSubscribeRange implements Observable.OnSubscribe<Integer> {
    private final int endIndex;
    private final int startIndex;

    public OnSubscribeRange(int i, int i2) {
        this.startIndex = i;
        this.endIndex = i2;
    }

    @Override // p024rx.functions.Action1
    public void call(Subscriber<? super Integer> subscriber) {
        subscriber.setProducer(new RangeProducer(subscriber, this.startIndex, this.endIndex));
    }

    static final class RangeProducer extends AtomicLong implements Producer {
        private static final long serialVersionUID = 4114392207069098388L;
        private final Subscriber<? super Integer> childSubscriber;
        private long currentIndex;
        private final int endOfRange;

        RangeProducer(Subscriber<? super Integer> subscriber, int i, int i2) {
            this.childSubscriber = subscriber;
            this.currentIndex = i;
            this.endOfRange = i2;
        }

        @Override // p024rx.Producer
        public void request(long j) {
            if (get() == LongCompanionObject.MAX_VALUE) {
                return;
            }
            if (j == LongCompanionObject.MAX_VALUE && compareAndSet(0L, LongCompanionObject.MAX_VALUE)) {
                fastPath();
            } else {
                if (j <= 0 || BackpressureUtils.getAndAddRequest(this, j) != 0) {
                    return;
                }
                slowPath(j);
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:21:0x0040, code lost:
        
            r12.currentIndex = r9;
            r4 = addAndGet(-r13);
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        void slowPath(long r13) {
            /*
                r12 = this;
                int r0 = r12.endOfRange
                long r0 = (long) r0
                r2 = 1
                long r0 = r0 + r2
                long r4 = r12.currentIndex
                rx.Subscriber<? super java.lang.Integer> r6 = r12.childSubscriber
                r7 = 0
                r9 = r4
                r4 = r13
            Le:
                r13 = r7
            Lf:
                int r11 = (r13 > r4 ? 1 : (r13 == r4 ? 0 : -1))
                if (r11 == 0) goto L29
                int r11 = (r9 > r0 ? 1 : (r9 == r0 ? 0 : -1))
                if (r11 == 0) goto L29
                boolean r11 = r6.isUnsubscribed()
                if (r11 == 0) goto L1e
                return
            L1e:
                int r11 = (int) r9
                java.lang.Integer r11 = java.lang.Integer.valueOf(r11)
                r6.onNext(r11)
                long r9 = r9 + r2
                long r13 = r13 + r2
                goto Lf
            L29:
                boolean r4 = r6.isUnsubscribed()
                if (r4 == 0) goto L30
                return
            L30:
                int r4 = (r9 > r0 ? 1 : (r9 == r0 ? 0 : -1))
                if (r4 != 0) goto L38
                r6.onCompleted()
                return
            L38:
                long r4 = r12.get()
                int r11 = (r4 > r13 ? 1 : (r4 == r13 ? 0 : -1))
                if (r11 != 0) goto Lf
                r12.currentIndex = r9
                long r13 = -r13
                long r4 = r12.addAndGet(r13)
                int r13 = (r4 > r7 ? 1 : (r4 == r7 ? 0 : -1))
                if (r13 != 0) goto Le
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: rx.internal.operators.OnSubscribeRange.RangeProducer.slowPath(long):void");
        }

        void fastPath() {
            long j = this.endOfRange + 1;
            Subscriber<? super Integer> subscriber = this.childSubscriber;
            for (long j2 = this.currentIndex; j2 != j; j2++) {
                if (subscriber.isUnsubscribed()) {
                    return;
                }
                subscriber.onNext(Integer.valueOf((int) j2));
            }
            if (subscriber.isUnsubscribed()) {
                return;
            }
            subscriber.onCompleted();
        }
    }
}
