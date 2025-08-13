package p024rx.internal.operators;

import android.Manifest;
import java.util.concurrent.atomic.AtomicLong;
import kotlin.jvm.internal.LongCompanionObject;
import p024rx.Observable;
import p024rx.Producer;
import p024rx.Subscriber;

/* loaded from: classes2.dex */
public final class OnSubscribeFromArray<T> implements Observable.OnSubscribe<T> {
    final T[] array;

    public OnSubscribeFromArray(T[] tArr) {
        this.array = tArr;
    }

    @Override // p024rx.functions.Action1
    public void call(Subscriber<? super T> subscriber) {
        subscriber.setProducer(new FromArrayProducer(subscriber, this.array));
    }

    static final class FromArrayProducer<T> extends AtomicLong implements Producer {
        private static final long serialVersionUID = 3534218984725836979L;
        final T[] array;
        final Subscriber<? super T> child;
        int index;

        public FromArrayProducer(Subscriber<? super T> subscriber, T[] tArr) {
            this.child = subscriber;
            this.array = tArr;
        }

        @Override // p024rx.Producer
        public void request(long j) {
            if (j < 0) {
                throw new IllegalArgumentException("n >= 0 required but it was " + j);
            }
            if (j == LongCompanionObject.MAX_VALUE) {
                if (BackpressureUtils.getAndAddRequest(this, j) == 0) {
                    fastPath();
                }
            } else {
                if (j == 0 || BackpressureUtils.getAndAddRequest(this, j) != 0) {
                    return;
                }
                slowPath(j);
            }
        }

        void fastPath() {
            Subscriber<? super T> subscriber = this.child;
            for (Manifest manifest : this.array) {
                if (subscriber.isUnsubscribed()) {
                    return;
                }
                subscriber.onNext(manifest);
            }
            if (subscriber.isUnsubscribed()) {
                return;
            }
            subscriber.onCompleted();
        }

        /* JADX WARN: Code restructure failed: missing block: B:19:0x0038, code lost:
        
            r10.index = r3;
            r11 = addAndGet(r6);
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        void slowPath(long r11) {
            /*
                r10 = this;
                rx.Subscriber<? super T> r0 = r10.child
                T[] r1 = r10.array
                int r2 = r1.length
                int r3 = r10.index
                r4 = 0
            L9:
                r6 = r4
            La:
                int r8 = (r11 > r4 ? 1 : (r11 == r4 ? 0 : -1))
                if (r8 == 0) goto L2f
                if (r3 == r2) goto L2f
                boolean r8 = r0.isUnsubscribed()
                if (r8 == 0) goto L17
                return
            L17:
                r8 = r1[r3]
                r0.onNext(r8)
                int r3 = r3 + 1
                if (r3 != r2) goto L2a
                boolean r11 = r0.isUnsubscribed()
                if (r11 != 0) goto L29
                r0.onCompleted()
            L29:
                return
            L2a:
                r8 = 1
                long r11 = r11 - r8
                long r6 = r6 - r8
                goto La
            L2f:
                long r11 = r10.get()
                long r11 = r11 + r6
                int r8 = (r11 > r4 ? 1 : (r11 == r4 ? 0 : -1))
                if (r8 != 0) goto La
                r10.index = r3
                long r11 = r10.addAndGet(r6)
                int r6 = (r11 > r4 ? 1 : (r11 == r4 ? 0 : -1))
                if (r6 != 0) goto L9
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: rx.internal.operators.OnSubscribeFromArray.FromArrayProducer.slowPath(long):void");
        }
    }
}
