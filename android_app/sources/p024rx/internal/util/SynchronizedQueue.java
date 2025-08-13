package p024rx.internal.util;

import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Queue;

/* loaded from: classes2.dex */
public class SynchronizedQueue<T> implements Queue<T>, Cloneable {
    private final Queue<T> list;
    private final int size;

    public SynchronizedQueue() {
        this.list = new LinkedList();
        this.size = -1;
    }

    public SynchronizedQueue(int i) {
        this.list = new LinkedList();
        this.size = i;
    }

    @Override // java.util.Collection
    public synchronized boolean isEmpty() {
        return this.list.isEmpty();
    }

    @Override // java.util.Collection
    public synchronized boolean contains(Object obj) {
        return this.list.contains(obj);
    }

    @Override // java.util.Collection, java.lang.Iterable
    public synchronized Iterator<T> iterator() {
        return this.list.iterator();
    }

    @Override // java.util.Collection
    public synchronized int size() {
        return this.list.size();
    }

    @Override // java.util.Queue, java.util.Collection
    public synchronized boolean add(T t) {
        return this.list.add(t);
    }

    @Override // java.util.Collection
    public synchronized boolean remove(Object obj) {
        return this.list.remove(obj);
    }

    @Override // java.util.Collection
    public synchronized boolean containsAll(Collection<?> collection) {
        return this.list.containsAll(collection);
    }

    @Override // java.util.Collection
    public synchronized boolean addAll(Collection<? extends T> collection) {
        return this.list.addAll(collection);
    }

    @Override // java.util.Collection
    public synchronized boolean removeAll(Collection<?> collection) {
        return this.list.removeAll(collection);
    }

    @Override // java.util.Collection
    public synchronized boolean retainAll(Collection<?> collection) {
        return this.list.retainAll(collection);
    }

    @Override // java.util.Collection
    public synchronized void clear() {
        this.list.clear();
    }

    public synchronized String toString() {
        return this.list.toString();
    }

    @Override // java.util.Collection
    public int hashCode() {
        return this.list.hashCode();
    }

    @Override // java.util.Collection
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            return this.list.equals(((SynchronizedQueue) obj).list);
        }
        return false;
    }

    @Override // java.util.Queue
    public synchronized T peek() {
        return this.list.peek();
    }

    @Override // java.util.Queue
    public synchronized T element() {
        return this.list.element();
    }

    @Override // java.util.Queue
    public synchronized T poll() {
        return this.list.poll();
    }

    @Override // java.util.Queue
    public synchronized T remove() {
        return this.list.remove();
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x001b  */
    @Override // java.util.Queue
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public synchronized boolean offer(T r4) {
        /*
            r3 = this;
            monitor-enter(r3)
            int r0 = r3.size     // Catch: java.lang.Throwable -> L1e
            r1 = -1
            r2 = 1
            if (r0 <= r1) goto L12
            java.util.Queue<T> r0 = r3.list     // Catch: java.lang.Throwable -> L1e
            int r0 = r0.size()     // Catch: java.lang.Throwable -> L1e
            int r0 = r0 + r2
            int r1 = r3.size     // Catch: java.lang.Throwable -> L1e
            if (r0 > r1) goto L1b
        L12:
            java.util.Queue<T> r0 = r3.list     // Catch: java.lang.Throwable -> L1e
            boolean r4 = r0.offer(r4)     // Catch: java.lang.Throwable -> L1e
            if (r4 == 0) goto L1b
            goto L1c
        L1b:
            r2 = 0
        L1c:
            monitor-exit(r3)
            return r2
        L1e:
            r4 = move-exception
            monitor-exit(r3)
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: p024rx.internal.util.SynchronizedQueue.offer(java.lang.Object):boolean");
    }

    public synchronized Object clone() {
        SynchronizedQueue synchronizedQueue;
        synchronizedQueue = new SynchronizedQueue(this.size);
        synchronizedQueue.addAll(this.list);
        return synchronizedQueue;
    }

    @Override // java.util.Collection
    public synchronized Object[] toArray() {
        return this.list.toArray();
    }

    @Override // java.util.Collection
    public synchronized <R> R[] toArray(R[] rArr) {
        return (R[]) this.list.toArray(rArr);
    }
}
