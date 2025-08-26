package p024rx.internal.util;

import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicIntegerArray;
import java.util.concurrent.atomic.AtomicReference;
import java.util.concurrent.atomic.AtomicReferenceArray;
import p024rx.Subscription;
import p024rx.functions.Func1;

/* loaded from: classes2.dex */
public final class IndexedRingBuffer<E> implements Subscription {
    private static final ObjectPool<IndexedRingBuffer<?>> POOL = new ObjectPool<IndexedRingBuffer<?>>() { // from class: rx.internal.util.IndexedRingBuffer.1
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // p024rx.internal.util.ObjectPool
        public IndexedRingBuffer<?> createObject() {
            return new IndexedRingBuffer<>();
        }
    };
    static final int SIZE;
    private final ElementSection<E> elements = new ElementSection<>();
    private final IndexSection removed = new IndexSection();
    final AtomicInteger index = new AtomicInteger();
    final AtomicInteger removedIndex = new AtomicInteger();

    @Override // p024rx.Subscription
    public boolean isUnsubscribed() {
        return false;
    }

    static {
        int i = PlatformDependent.isAndroid() ? 8 : 128;
        String property = System.getProperty("rx.indexed-ring-buffer.size");
        if (property != null) {
            try {
                i = Integer.parseInt(property);
            } catch (NumberFormatException e) {
                System.err.println("Failed to set 'rx.indexed-ring-buffer.size' with value " + property + " => " + e.getMessage());
            }
        }
        SIZE = i;
    }

    public static <T> IndexedRingBuffer<T> getInstance() {
        return (IndexedRingBuffer) POOL.borrowObject();
    }

    public void releaseToPool() {
        int i = this.index.get();
        ElementSection<E> elementSection = this.elements;
        int i2 = 0;
        loop0: while (elementSection != null) {
            int i3 = i2;
            int i4 = 0;
            while (i4 < SIZE) {
                if (i3 >= i) {
                    break loop0;
                }
                elementSection.array.set(i4, null);
                i4++;
                i3++;
            }
            elementSection = elementSection.next.get();
            i2 = i3;
        }
        this.index.set(0);
        this.removedIndex.set(0);
        POOL.returnObject(this);
    }

    @Override // p024rx.Subscription
    public void unsubscribe() {
        releaseToPool();
    }

    IndexedRingBuffer() {
    }

    public int add(E e) {
        int indexForAdd = getIndexForAdd();
        int i = SIZE;
        if (indexForAdd < i) {
            this.elements.array.set(indexForAdd, e);
            return indexForAdd;
        }
        getElementSection(indexForAdd).array.set(indexForAdd % i, e);
        return indexForAdd;
    }

    public E remove(int i) {
        E andSet;
        int i2 = SIZE;
        if (i < i2) {
            andSet = this.elements.array.getAndSet(i, null);
        } else {
            andSet = getElementSection(i).array.getAndSet(i % i2, null);
        }
        pushRemovedIndex(i);
        return andSet;
    }

    private IndexSection getIndexSection(int i) {
        int i2 = SIZE;
        if (i < i2) {
            return this.removed;
        }
        int i3 = i / i2;
        IndexSection next = this.removed;
        for (int i4 = 0; i4 < i3; i4++) {
            next = next.getNext();
        }
        return next;
    }

    private ElementSection<E> getElementSection(int i) {
        int i2 = SIZE;
        if (i < i2) {
            return this.elements;
        }
        int i3 = i / i2;
        ElementSection<E> next = this.elements;
        for (int i4 = 0; i4 < i3; i4++) {
            next = next.getNext();
        }
        return next;
    }

    private synchronized int getIndexForAdd() {
        int andIncrement;
        int indexFromPreviouslyRemoved = getIndexFromPreviouslyRemoved();
        if (indexFromPreviouslyRemoved >= 0) {
            if (indexFromPreviouslyRemoved < SIZE) {
                andIncrement = this.removed.getAndSet(indexFromPreviouslyRemoved, -1);
            } else {
                andIncrement = getIndexSection(indexFromPreviouslyRemoved).getAndSet(indexFromPreviouslyRemoved % SIZE, -1);
            }
            if (andIncrement == this.index.get()) {
                this.index.getAndIncrement();
            }
        } else {
            andIncrement = this.index.getAndIncrement();
        }
        return andIncrement;
    }

    private synchronized int getIndexFromPreviouslyRemoved() {
        int i;
        int i2;
        do {
            i = this.removedIndex.get();
            if (i <= 0) {
                return -1;
            }
            i2 = i - 1;
        } while (!this.removedIndex.compareAndSet(i, i2));
        return i2;
    }

    private synchronized void pushRemovedIndex(int i) {
        int andIncrement = this.removedIndex.getAndIncrement();
        if (andIncrement < SIZE) {
            this.removed.set(andIncrement, i);
        } else {
            getIndexSection(andIncrement).set(andIncrement % SIZE, i);
        }
    }

    public int forEach(Func1<? super E, Boolean> func1) {
        return forEach(func1, 0);
    }

    public int forEach(Func1<? super E, Boolean> func1, int i) {
        int iForEach = forEach(func1, i, this.index.get());
        if (i > 0 && iForEach == this.index.get()) {
            return forEach(func1, 0, i);
        }
        if (iForEach == this.index.get()) {
            return 0;
        }
        return iForEach;
    }

    private int forEach(Func1<? super E, Boolean> func1, int i, int i2) {
        int i3;
        int i4 = this.index.get();
        ElementSection<E> elementSection = this.elements;
        if (i >= SIZE) {
            elementSection = getElementSection(i);
            i3 = i;
            i %= SIZE;
        } else {
            i3 = i;
        }
        loop0: while (elementSection != null) {
            while (i < SIZE) {
                if (i3 >= i4 || i3 >= i2) {
                    break loop0;
                }
                E e = elementSection.array.get(i);
                if (e != null && !func1.call(e).booleanValue()) {
                    return i3;
                }
                i++;
                i3++;
            }
            elementSection = elementSection.next.get();
            i = 0;
        }
        return i3;
    }

    static final class ElementSection<E> {
        final AtomicReferenceArray<E> array = new AtomicReferenceArray<>(IndexedRingBuffer.SIZE);
        final AtomicReference<ElementSection<E>> next = new AtomicReference<>();

        ElementSection() {
        }

        ElementSection<E> getNext() {
            if (this.next.get() != null) {
                return this.next.get();
            }
            ElementSection<E> elementSection = new ElementSection<>();
            return this.next.compareAndSet(null, elementSection) ? elementSection : this.next.get();
        }
    }

    static class IndexSection {
        private final AtomicIntegerArray unsafeArray = new AtomicIntegerArray(IndexedRingBuffer.SIZE);
        private final AtomicReference<IndexSection> _next = new AtomicReference<>();

        IndexSection() {
        }

        public int getAndSet(int i, int i2) {
            return this.unsafeArray.getAndSet(i, i2);
        }

        public void set(int i, int i2) {
            this.unsafeArray.set(i, i2);
        }

        IndexSection getNext() {
            if (this._next.get() != null) {
                return this._next.get();
            }
            IndexSection indexSection = new IndexSection();
            return this._next.compareAndSet(null, indexSection) ? indexSection : this._next.get();
        }
    }
}
