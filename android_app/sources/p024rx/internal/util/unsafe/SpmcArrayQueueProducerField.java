package p024rx.internal.util.unsafe;

/* compiled from: SpmcArrayQueue.java */
/* loaded from: classes2.dex */
abstract class SpmcArrayQueueProducerField<E> extends SpmcArrayQueueL1Pad<E> {
    protected static final long P_INDEX_OFFSET = UnsafeAccess.addressOf(SpmcArrayQueueProducerField.class, "producerIndex");
    private volatile long producerIndex;

    protected final long lvProducerIndex() {
        return this.producerIndex;
    }

    protected final void soTail(long j) {
        UnsafeAccess.UNSAFE.putOrderedLong(this, P_INDEX_OFFSET, j);
    }

    public SpmcArrayQueueProducerField(int i) {
        super(i);
    }
}
