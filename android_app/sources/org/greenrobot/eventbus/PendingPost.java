package org.greenrobot.eventbus;

import java.util.ArrayList;
import java.util.List;

/* loaded from: classes2.dex */
final class PendingPost {
    private static final List<PendingPost> pendingPostPool = new ArrayList();
    Object event;
    PendingPost next;
    Subscription subscription;

    private PendingPost(Object obj, Subscription subscription) {
        this.event = obj;
        this.subscription = subscription;
    }

    static PendingPost obtainPendingPost(Subscription subscription, Object obj) {
        synchronized (pendingPostPool) {
            int size = pendingPostPool.size();
            if (size > 0) {
                PendingPost pendingPostRemove = pendingPostPool.remove(size - 1);
                pendingPostRemove.event = obj;
                pendingPostRemove.subscription = subscription;
                pendingPostRemove.next = null;
                return pendingPostRemove;
            }
            return new PendingPost(obj, subscription);
        }
    }

    static void releasePendingPost(PendingPost pendingPost) {
        pendingPost.event = null;
        pendingPost.subscription = null;
        pendingPost.next = null;
        synchronized (pendingPostPool) {
            if (pendingPostPool.size() < 10000) {
                pendingPostPool.add(pendingPost);
            }
        }
    }
}
