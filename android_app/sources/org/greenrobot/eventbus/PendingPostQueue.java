package org.greenrobot.eventbus;

/* loaded from: classes2.dex */
final class PendingPostQueue {
    private PendingPost head;
    private PendingPost tail;

    PendingPostQueue() {
    }

    synchronized void enqueue(PendingPost pendingPost) {
        try {
            if (pendingPost == null) {
                throw new NullPointerException("null cannot be enqueued");
            }
            if (this.tail != null) {
                this.tail.next = pendingPost;
                this.tail = pendingPost;
            } else if (this.head == null) {
                this.tail = pendingPost;
                this.head = pendingPost;
            } else {
                throw new IllegalStateException("Head present, but no tail");
            }
            notifyAll();
        } catch (Throwable th) {
            throw th;
        }
    }

    synchronized PendingPost poll() {
        PendingPost pendingPost;
        pendingPost = this.head;
        if (this.head != null) {
            this.head = this.head.next;
            if (this.head == null) {
                this.tail = null;
            }
        }
        return pendingPost;
    }

    synchronized PendingPost poll(int i) throws InterruptedException {
        if (this.head == null) {
            wait(i);
        }
        return poll();
    }
}
