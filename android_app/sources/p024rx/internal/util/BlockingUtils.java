package p024rx.internal.util;

import java.util.concurrent.CountDownLatch;
import p024rx.Subscription;

/* loaded from: classes2.dex */
public final class BlockingUtils {
    private BlockingUtils() {
    }

    public static void awaitForComplete(CountDownLatch countDownLatch, Subscription subscription) throws InterruptedException {
        if (countDownLatch.getCount() == 0) {
            return;
        }
        try {
            countDownLatch.await();
        } catch (InterruptedException e) {
            subscription.unsubscribe();
            Thread.currentThread().interrupt();
            throw new IllegalStateException("Interrupted while waiting for subscription to complete.", e);
        }
    }
}
