package org.greenrobot.greendao.identityscope;

import java.lang.ref.Reference;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Iterator;
import java.util.concurrent.locks.ReentrantLock;

/* loaded from: classes2.dex */
public class IdentityScopeObject<K, T> implements IdentityScope<K, T> {
    private final HashMap<K, Reference<T>> map = new HashMap<>();
    private final ReentrantLock lock = new ReentrantLock();

    @Override // org.greenrobot.greendao.identityscope.IdentityScope
    public void reserveRoom(int i) {
    }

    @Override // org.greenrobot.greendao.identityscope.IdentityScope
    public T get(K k) {
        this.lock.lock();
        try {
            Reference<T> reference = this.map.get(k);
            if (reference != null) {
                return reference.get();
            }
            return null;
        } finally {
            this.lock.unlock();
        }
    }

    @Override // org.greenrobot.greendao.identityscope.IdentityScope
    public T getNoLock(K k) {
        Reference<T> reference = this.map.get(k);
        if (reference != null) {
            return reference.get();
        }
        return null;
    }

    @Override // org.greenrobot.greendao.identityscope.IdentityScope
    public void put(K k, T t) {
        this.lock.lock();
        try {
            this.map.put(k, new WeakReference(t));
        } finally {
            this.lock.unlock();
        }
    }

    @Override // org.greenrobot.greendao.identityscope.IdentityScope
    public void putNoLock(K k, T t) {
        this.map.put(k, new WeakReference(t));
    }

    @Override // org.greenrobot.greendao.identityscope.IdentityScope
    public boolean detach(K k, T t) {
        boolean z;
        this.lock.lock();
        try {
            if (get(k) != t || t == null) {
                z = false;
            } else {
                remove((IdentityScopeObject<K, T>) k);
                z = true;
            }
            return z;
        } finally {
            this.lock.unlock();
        }
    }

    @Override // org.greenrobot.greendao.identityscope.IdentityScope
    public void remove(K k) {
        this.lock.lock();
        try {
            this.map.remove(k);
        } finally {
            this.lock.unlock();
        }
    }

    @Override // org.greenrobot.greendao.identityscope.IdentityScope
    public void remove(Iterable<K> iterable) {
        this.lock.lock();
        try {
            Iterator<K> it = iterable.iterator();
            while (it.hasNext()) {
                this.map.remove(it.next());
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
}
