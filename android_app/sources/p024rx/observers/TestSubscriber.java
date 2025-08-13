package p024rx.observers;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import p024rx.Notification;
import p024rx.Observer;
import p024rx.Subscriber;
import p024rx.exceptions.CompositeException;

/* loaded from: classes2.dex */
public class TestSubscriber<T> extends Subscriber<T> {
    private static final Observer<Object> INERT = new Observer<Object>() { // from class: rx.observers.TestSubscriber.1
        @Override // p024rx.Observer
        public void onCompleted() {
        }

        @Override // p024rx.Observer
        public void onError(Throwable th) {
        }

        @Override // p024rx.Observer
        public void onNext(Object obj) {
        }
    };
    private int completions;
    private final Observer<T> delegate;
    private final List<Throwable> errors;
    private volatile Thread lastSeenThread;
    private final CountDownLatch latch;
    private volatile int valueCount;
    private final List<T> values;

    public TestSubscriber(long j) {
        this(INERT, j);
    }

    public TestSubscriber(Observer<T> observer, long j) {
        this.latch = new CountDownLatch(1);
        if (observer == null) {
            throw new NullPointerException();
        }
        this.delegate = observer;
        if (j >= 0) {
            request(j);
        }
        this.values = new ArrayList();
        this.errors = new ArrayList();
    }

    public TestSubscriber(Subscriber<T> subscriber) {
        this(subscriber, -1L);
    }

    public TestSubscriber(Observer<T> observer) {
        this(observer, -1L);
    }

    public TestSubscriber() {
        this(-1L);
    }

    public static <T> TestSubscriber<T> create() {
        return new TestSubscriber<>();
    }

    public static <T> TestSubscriber<T> create(long j) {
        return new TestSubscriber<>(j);
    }

    public static <T> TestSubscriber<T> create(Observer<T> observer, long j) {
        return new TestSubscriber<>(observer, j);
    }

    public static <T> TestSubscriber<T> create(Subscriber<T> subscriber) {
        return new TestSubscriber<>((Subscriber) subscriber);
    }

    public static <T> TestSubscriber<T> create(Observer<T> observer) {
        return new TestSubscriber<>(observer);
    }

    @Override // p024rx.Observer
    public void onCompleted() {
        try {
            this.completions++;
            this.lastSeenThread = Thread.currentThread();
            this.delegate.onCompleted();
        } finally {
            this.latch.countDown();
        }
    }

    @Deprecated
    public List<Notification<T>> getOnCompletedEvents() {
        int i = this.completions;
        ArrayList arrayList = new ArrayList(i != 0 ? i : 1);
        for (int i2 = 0; i2 < i; i2++) {
            arrayList.add(Notification.createOnCompleted());
        }
        return arrayList;
    }

    public final int getCompletions() {
        return this.completions;
    }

    @Override // p024rx.Observer
    public void onError(Throwable th) {
        try {
            this.lastSeenThread = Thread.currentThread();
            this.errors.add(th);
            this.delegate.onError(th);
        } finally {
            this.latch.countDown();
        }
    }

    public List<Throwable> getOnErrorEvents() {
        return this.errors;
    }

    @Override // p024rx.Observer
    public void onNext(T t) {
        this.lastSeenThread = Thread.currentThread();
        this.values.add(t);
        this.valueCount = this.values.size();
        this.delegate.onNext(t);
    }

    public final int getValueCount() {
        return this.valueCount;
    }

    public void requestMore(long j) {
        request(j);
    }

    public List<T> getOnNextEvents() {
        return this.values;
    }

    public void assertReceivedOnNext(List<T> list) {
        if (this.values.size() != list.size()) {
            assertionError("Number of items does not match. Provided: " + list.size() + "  Actual: " + this.values.size() + ".\nProvided values: " + list + "\nActual values: " + this.values + "\n");
        }
        for (int i = 0; i < list.size(); i++) {
            assertItem(list.get(i), i);
        }
    }

    private void assertItem(T t, int i) {
        T t2 = this.values.get(i);
        if (t == null) {
            if (t2 != null) {
                assertionError("Value at index: " + i + " expected to be [null] but was: [" + t2 + "]\n");
                return;
            }
            return;
        }
        if (t.equals(t2)) {
            return;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("Value at index: ");
        sb.append(i);
        sb.append(" expected to be [");
        sb.append(t);
        sb.append("] (");
        sb.append(t.getClass().getSimpleName());
        sb.append(") but was: [");
        sb.append(t2);
        sb.append("] (");
        sb.append(t2 != null ? t2.getClass().getSimpleName() : "null");
        sb.append(")\n");
        assertionError(sb.toString());
    }

    public final boolean awaitValueCount(int i, long j, TimeUnit timeUnit) throws InterruptedException {
        while (j != 0 && this.valueCount < i) {
            try {
                timeUnit.sleep(1L);
                j--;
            } catch (InterruptedException e) {
                throw new IllegalStateException("Interrupted", e);
            }
        }
        return this.valueCount >= i;
    }

    public void assertTerminalEvent() {
        if (this.errors.size() > 1) {
            assertionError("Too many onError events: " + this.errors.size());
        }
        if (this.completions > 1) {
            assertionError("Too many onCompleted events: " + this.completions);
        }
        if (this.completions == 1 && this.errors.size() == 1) {
            assertionError("Received both an onError and onCompleted. Should be one or the other.");
        }
        if (this.completions == 0 && this.errors.isEmpty()) {
            assertionError("No terminal events received.");
        }
    }

    public void assertUnsubscribed() {
        if (isUnsubscribed()) {
            return;
        }
        assertionError("Not unsubscribed.");
    }

    public void assertNoErrors() {
        if (getOnErrorEvents().isEmpty()) {
            return;
        }
        assertionError("Unexpected onError events");
    }

    public void awaitTerminalEvent() throws InterruptedException {
        try {
            this.latch.await();
        } catch (InterruptedException e) {
            throw new IllegalStateException("Interrupted", e);
        }
    }

    public void awaitTerminalEvent(long j, TimeUnit timeUnit) throws InterruptedException {
        try {
            this.latch.await(j, timeUnit);
        } catch (InterruptedException e) {
            throw new IllegalStateException("Interrupted", e);
        }
    }

    public void awaitTerminalEventAndUnsubscribeOnTimeout(long j, TimeUnit timeUnit) {
        try {
            if (this.latch.await(j, timeUnit)) {
                return;
            }
            unsubscribe();
        } catch (InterruptedException unused) {
            unsubscribe();
        }
    }

    public Thread getLastSeenThread() {
        return this.lastSeenThread;
    }

    public void assertCompleted() {
        int i = this.completions;
        if (i == 0) {
            assertionError("Not completed!");
        } else if (i > 1) {
            assertionError("Completed multiple times: " + i);
        }
    }

    public void assertNotCompleted() {
        int i = this.completions;
        if (i == 1) {
            assertionError("Completed!");
        } else if (i > 1) {
            assertionError("Completed multiple times: " + i);
        }
    }

    public void assertError(Class<? extends Throwable> cls) {
        List<Throwable> list = this.errors;
        if (list.isEmpty()) {
            assertionError("No errors");
            return;
        }
        if (list.size() > 1) {
            AssertionError assertionError = new AssertionError("Multiple errors: " + list.size());
            assertionError.initCause(new CompositeException(list));
            throw assertionError;
        }
        if (cls.isInstance(list.get(0))) {
            return;
        }
        AssertionError assertionError2 = new AssertionError("Exceptions differ; expected: " + cls + ", actual: " + list.get(0));
        assertionError2.initCause(list.get(0));
        throw assertionError2;
    }

    public void assertError(Throwable th) {
        List<Throwable> list = this.errors;
        if (list.isEmpty()) {
            assertionError("No errors");
            return;
        }
        if (list.size() > 1) {
            assertionError("Multiple errors");
            return;
        }
        if (th.equals(list.get(0))) {
            return;
        }
        assertionError("Exceptions differ; expected: " + th + ", actual: " + list.get(0));
    }

    public void assertNoTerminalEvent() {
        List<Throwable> list = this.errors;
        int i = this.completions;
        if (!list.isEmpty() || i > 0) {
            if (list.isEmpty()) {
                assertionError("Found " + list.size() + " errors and " + i + " completion events instead of none");
                return;
            }
            if (list.size() == 1) {
                assertionError("Found " + list.size() + " errors and " + i + " completion events instead of none");
                return;
            }
            assertionError("Found " + list.size() + " errors and " + i + " completion events instead of none");
        }
    }

    public void assertNoValues() {
        int size = this.values.size();
        if (size != 0) {
            assertionError("No onNext events expected yet some received: " + size);
        }
    }

    public void assertValueCount(int i) {
        int size = this.values.size();
        if (size != i) {
            assertionError("Number of onNext events differ; expected: " + i + ", actual: " + size);
        }
    }

    public void assertValues(T... tArr) {
        assertReceivedOnNext(Arrays.asList(tArr));
    }

    public void assertValue(T t) {
        assertReceivedOnNext(Collections.singletonList(t));
    }

    final void assertionError(String str) {
        StringBuilder sb = new StringBuilder(str.length() + 32);
        sb.append(str);
        sb.append(" (");
        int i = this.completions;
        sb.append(i);
        sb.append(" completion");
        if (i != 1) {
            sb.append('s');
        }
        sb.append(')');
        if (!this.errors.isEmpty()) {
            int size = this.errors.size();
            sb.append(" (+");
            sb.append(size);
            sb.append(" error");
            if (size != 1) {
                sb.append('s');
            }
            sb.append(')');
        }
        AssertionError assertionError = new AssertionError(sb.toString());
        if (!this.errors.isEmpty()) {
            if (this.errors.size() == 1) {
                assertionError.initCause(this.errors.get(0));
                throw assertionError;
            }
            assertionError.initCause(new CompositeException(this.errors));
            throw assertionError;
        }
        throw assertionError;
    }

    public final void assertValuesAndClear(T t, T... tArr) {
        assertValueCount(tArr.length + 1);
        int i = 0;
        assertItem(t, 0);
        while (i < tArr.length) {
            T t2 = tArr[i];
            i++;
            assertItem(t2, i);
        }
        this.values.clear();
    }
}
