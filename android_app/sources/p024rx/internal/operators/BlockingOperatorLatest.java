package p024rx.internal.operators;

import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.concurrent.Semaphore;
import java.util.concurrent.atomic.AtomicReference;
import p024rx.Notification;
import p024rx.Observable;
import p024rx.Subscriber;
import p024rx.exceptions.Exceptions;

/* loaded from: classes2.dex */
public final class BlockingOperatorLatest {
    private BlockingOperatorLatest() {
        throw new IllegalStateException("No instances!");
    }

    public static <T> Iterable<T> latest(final Observable<? extends T> observable) {
        return new Iterable<T>() { // from class: rx.internal.operators.BlockingOperatorLatest.1
            @Override // java.lang.Iterable
            public Iterator<T> iterator() {
                LatestObserverIterator latestObserverIterator = new LatestObserverIterator();
                observable.materialize().subscribe((Subscriber<? super Notification<T>>) latestObserverIterator);
                return latestObserverIterator;
            }
        };
    }

    static final class LatestObserverIterator<T> extends Subscriber<Notification<? extends T>> implements Iterator<T> {
        Notification<? extends T> iteratorNotification;
        final Semaphore notify = new Semaphore(0);
        final AtomicReference<Notification<? extends T>> value = new AtomicReference<>();

        @Override // p024rx.Observer
        public void onCompleted() {
        }

        @Override // p024rx.Observer
        public void onError(Throwable th) {
        }

        LatestObserverIterator() {
        }

        @Override // p024rx.Observer
        public void onNext(Notification<? extends T> notification) {
            if (this.value.getAndSet(notification) == null) {
                this.notify.release();
            }
        }

        @Override // java.util.Iterator
        public boolean hasNext() throws InterruptedException {
            Notification<? extends T> notification = this.iteratorNotification;
            if (notification != null && notification.isOnError()) {
                throw Exceptions.propagate(this.iteratorNotification.getThrowable());
            }
            Notification<? extends T> notification2 = this.iteratorNotification;
            if ((notification2 == null || !notification2.isOnCompleted()) && this.iteratorNotification == null) {
                try {
                    this.notify.acquire();
                    this.iteratorNotification = this.value.getAndSet(null);
                    if (this.iteratorNotification.isOnError()) {
                        throw Exceptions.propagate(this.iteratorNotification.getThrowable());
                    }
                } catch (InterruptedException e) {
                    unsubscribe();
                    Thread.currentThread().interrupt();
                    this.iteratorNotification = Notification.createOnError(e);
                    throw Exceptions.propagate(e);
                }
            }
            return !this.iteratorNotification.isOnCompleted();
        }

        @Override // java.util.Iterator
        public T next() {
            if (hasNext() && this.iteratorNotification.isOnNext()) {
                T value = this.iteratorNotification.getValue();
                this.iteratorNotification = null;
                return value;
            }
            throw new NoSuchElementException();
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException("Read-only iterator.");
        }
    }
}
