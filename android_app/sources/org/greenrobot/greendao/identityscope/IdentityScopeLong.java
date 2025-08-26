package org.greenrobot.greendao.identityscope;

import java.lang.ref.Reference;
import java.lang.ref.WeakReference;
import java.util.Iterator;
import java.util.concurrent.locks.ReentrantLock;
import org.greenrobot.greendao.internal.LongHashMap;

/* loaded from: classes2.dex */
public class IdentityScopeLong<T> implements IdentityScope<Long, T> {
    private final LongHashMap<Reference<T>> map = new LongHashMap<>();
    private final ReentrantLock lock = new ReentrantLock();

    /* JADX WARN: Multi-variable type inference failed */
    @Override // org.greenrobot.greendao.identityscope.IdentityScope
    public /* bridge */ /* synthetic */ boolean detach(Long l, Object obj) {
        return detach2(l, (Long) obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // org.greenrobot.greendao.identityscope.IdentityScope
    public /* bridge */ /* synthetic */ void put(Long l, Object obj) {
        put3(l, (Long) obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // org.greenrobot.greendao.identityscope.IdentityScope
    public /* bridge */ /* synthetic */ void putNoLock(Long l, Object obj) {
        putNoLock2(l, (Long) obj);
    }

    @Override // org.greenrobot.greendao.identityscope.IdentityScope
    public T get(Long l) {
        return get2(l.longValue());
    }

    @Override // org.greenrobot.greendao.identityscope.IdentityScope
    public T getNoLock(Long l) {
        return get2NoLock(l.longValue());
    }

    public T get2(long j) {
        this.lock.lock();
        try {
            Reference<T> reference = this.map.get(j);
            if (reference != null) {
                return reference.get();
            }
            return null;
        } finally {
            this.lock.unlock();
        }
    }

    public T get2NoLock(long j) {
        Reference<T> reference = this.map.get(j);
        if (reference != null) {
            return reference.get();
        }
        return null;
    }

    /* renamed from: put, reason: avoid collision after fix types in other method */
    public void put3(Long l, T t) {
        put2(l.longValue(), t);
    }

    /* renamed from: putNoLock, reason: avoid collision after fix types in other method */
    public void putNoLock2(Long l, T t) {
        put2NoLock(l.longValue(), t);
    }

    public void put2(long j, T t) {
        this.lock.lock();
        try {
            this.map.put(j, new WeakReference(t));
        } finally {
            this.lock.unlock();
        }
    }

    public void put2NoLock(long j, T t) {
        this.map.put(j, new WeakReference(t));
    }

    /* renamed from: detach, reason: avoid collision after fix types in other method */
    public boolean detach2(Long l, T t) {
        boolean z;
        this.lock.lock();
        try {
            if (get(l) != t || t == null) {
                z = false;
            } else {
                remove(l);
                z = true;
            }
            return z;
        } finally {
            this.lock.unlock();
        }
    }

    @Override // org.greenrobot.greendao.identityscope.IdentityScope
    public void remove(Long l) {
        this.lock.lock();
        try {
            this.map.remove(l.longValue());
        } finally {
            this.lock.unlock();
        }
    }

    @Override // org.greenrobot.greendao.identityscope.IdentityScope
    public void remove(Iterable<Long> iterable) {
        this.lock.lock();
        try {
            Iterator<Long> it = iterable.iterator();
            while (it.hasNext()) {
                this.map.remove(it.next().longValue());
            }
        } finally {
            this.lock.unlock();
        }
    }

    @Override // org.greenrobot.greendao.identityscope.IdentityScope
    public void clear() {
        this.lock.lock();
        try {
            this.map.clear();
        } finally {
            this.lock.unlock();
        }
    }

    @Override // org.greenrobot.greendao.identityscope.IdentityScope
    public void lock() {
        this.lock.lock();
    }

    @Override // org.greenrobot.greendao.identityscope.IdentityScope
    public void unlock() {
        this.lock.unlock();
    }

    @Override // org.greenrobot.greendao.identityscope.IdentityScope
    public void reserveRoom(int i) {
        this.map.reserveRoom(i);
    }
}
