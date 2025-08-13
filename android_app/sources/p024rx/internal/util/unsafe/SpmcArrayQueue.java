package p024rx.internal.util.unsafe;

/* loaded from: classes2.dex */
public final class SpmcArrayQueue<E> extends SpmcArrayQueueL3Pad<E> {
    public SpmcArrayQueue(int i) {
        super(i);
    }

    @Override // java.util.Queue, p024rx.internal.util.unsafe.MessagePassingQueue
    public boolean offer(E e) {
        if (e == null) {
            throw new NullPointerException("Null is not a valid element");
        }
        E[] eArr = this.buffer;
        long j = this.mask;
        long jLvProducerIndex = lvProducerIndex();
        long jCalcElementOffset = calcElementOffset(jLvProducerIndex);
        if (lvElement(eArr, jCalcElementOffset) != null) {
            if (jLvProducerIndex - lvConsumerIndex() > j) {
                return false;
            }
            while (lvElement(eArr, jCalcElementOffset) != null) {
            }
        }
        spElement(eArr, jCalcElementOffset, e);
        soTail(jLvProducerIndex + 1);
        return true;
    }

    @Override // java.util.Queue, p024rx.internal.util.unsafe.MessagePassingQueue
    public E poll() {
        long jLvConsumerIndex;
        long jLvProducerIndexCache = lvProducerIndexCache();
        do {
            jLvConsumerIndex = lvConsumerIndex();
            if (jLvConsumerIndex >= jLvProducerIndexCache) {
                long jLvProducerIndex = lvProducerIndex();
                if (jLvConsumerIndex >= jLvProducerIndex) {
                    return null;
                }
                svProducerIndexCache(jLvProducerIndex);
            }
        } while (!casHead(jLvConsumerIndex, 1 + jLvConsumerIndex));
        long jCalcElementOffset = calcElementOffset(jLvConsumerIndex);
        E[] eArr = this.buffer;
        E eLpElement = lpElement(eArr, jCalcElementOffset);
        soElement(eArr, jCalcElementOffset, null);
        return eLpElement;
    }

    @Override // java.util.Queue, p024rx.internal.util.unsafe.MessagePassingQueue
    public E peek() {
        E eLvElement;
        long jLvProducerIndexCache = lvProducerIndexCache();
        do {
            long jLvConsumerIndex = lvConsumerIndex();
            if (jLvConsumerIndex >= jLvProducerIndexCache) {
                long jLvProducerIndex = lvProducerIndex();
                if (jLvConsumerIndex >= jLvProducerIndex) {
                    return null;
                }
                svProducerIndexCache(jLvProducerIndex);
            }
            eLvElement = lvElement(calcElementOffset(jLvConsumerIndex));
        } while (eLvElement == null);
        return eLvElement;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, p024rx.internal.util.unsafe.MessagePassingQueue
    public int size() {
        long jLvConsumerIndex = lvConsumerIndex();
        while (true) {
            long jLvProducerIndex = lvProducerIndex();
            long jLvConsumerIndex2 = lvConsumerIndex();
            if (jLvConsumerIndex == jLvConsumerIndex2) {
                return (int) (jLvProducerIndex - jLvConsumerIndex2);
            }
            jLvConsumerIndex = jLvConsumerIndex2;
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, p024rx.internal.util.unsafe.MessagePassingQueue
    public boolean isEmpty() {
        return lvConsumerIndex() == lvProducerIndex();
    }
}
