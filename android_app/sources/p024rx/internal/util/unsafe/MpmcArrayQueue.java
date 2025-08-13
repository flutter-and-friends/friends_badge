package p024rx.internal.util.unsafe;

import kotlin.jvm.internal.LongCompanionObject;

/* loaded from: classes2.dex */
public class MpmcArrayQueue<E> extends MpmcArrayQueueConsumerField<E> {
    long p30;
    long p31;
    long p32;
    long p33;
    long p34;
    long p35;
    long p36;
    long p37;
    long p40;
    long p41;
    long p42;
    long p43;
    long p44;
    long p45;
    long p46;

    public MpmcArrayQueue(int i) {
        super(Math.max(2, i));
    }

    @Override // java.util.Queue, p024rx.internal.util.unsafe.MessagePassingQueue
    public boolean offer(E e) {
        if (e == null) {
            throw new NullPointerException("Null is not a valid element");
        }
        long j = this.mask + 1;
        long[] jArr = this.sequenceBuffer;
        long jLvConsumerIndex = LongCompanionObject.MAX_VALUE;
        while (true) {
            long jLvProducerIndex = lvProducerIndex();
            long jCalcSequenceOffset = calcSequenceOffset(jLvProducerIndex);
            long jLvSequence = lvSequence(jArr, jCalcSequenceOffset) - jLvProducerIndex;
            if (jLvSequence == 0) {
                long j2 = jLvProducerIndex + 1;
                if (casProducerIndex(jLvProducerIndex, j2)) {
                    spElement(calcElementOffset(jLvProducerIndex), e);
                    soSequence(jArr, jCalcSequenceOffset, j2);
                    return true;
                }
            } else if (jLvSequence < 0) {
                long j3 = jLvProducerIndex - j;
                if (j3 <= jLvConsumerIndex) {
                    jLvConsumerIndex = lvConsumerIndex();
                    if (j3 <= jLvConsumerIndex) {
                        return false;
                    }
                } else {
                    continue;
                }
            } else {
                continue;
            }
        }
    }

    @Override // java.util.Queue, p024rx.internal.util.unsafe.MessagePassingQueue
    public E poll() {
        long[] jArr = this.sequenceBuffer;
        long jLvProducerIndex = -1;
        while (true) {
            long jLvConsumerIndex = lvConsumerIndex();
            long jCalcSequenceOffset = calcSequenceOffset(jLvConsumerIndex);
            long j = jLvConsumerIndex + 1;
            long jLvSequence = lvSequence(jArr, jCalcSequenceOffset) - j;
            if (jLvSequence == 0) {
                if (casConsumerIndex(jLvConsumerIndex, j)) {
                    long jCalcElementOffset = calcElementOffset(jLvConsumerIndex);
                    E eLpElement = lpElement(jCalcElementOffset);
                    spElement(jCalcElementOffset, null);
                    soSequence(jArr, jCalcSequenceOffset, jLvConsumerIndex + this.mask + 1);
                    return eLpElement;
                }
            } else if (jLvSequence < 0 && jLvConsumerIndex >= jLvProducerIndex) {
                jLvProducerIndex = lvProducerIndex();
                if (jLvConsumerIndex == jLvProducerIndex) {
                    return null;
                }
            }
        }
    }

    @Override // java.util.Queue, p024rx.internal.util.unsafe.MessagePassingQueue
    public E peek() {
        long jLvConsumerIndex;
        E eLpElement;
        do {
            jLvConsumerIndex = lvConsumerIndex();
            eLpElement = lpElement(calcElementOffset(jLvConsumerIndex));
            if (eLpElement != null) {
                break;
            }
        } while (jLvConsumerIndex != lvProducerIndex());
        return eLpElement;
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
