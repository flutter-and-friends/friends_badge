package org.greenrobot.greendao.query;

import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.greenrobot.greendao.AbstractDao;
import org.greenrobot.greendao.query.AbstractQuery;

/* loaded from: classes2.dex */
abstract class AbstractQueryData<T, Q extends AbstractQuery<T>> {
    final AbstractDao<T, ?> dao;
    final String[] initialValues;
    final Map<Long, WeakReference<Q>> queriesForThreads = new HashMap();
    final String sql;

    protected abstract Q createQuery();

    AbstractQueryData(AbstractDao<T, ?> abstractDao, String str, String[] strArr) {
        this.dao = abstractDao;
        this.sql = str;
        this.initialValues = strArr;
    }

    Q forCurrentThread(Q q) {
        if (Thread.currentThread() == q.ownerThread) {
            System.arraycopy(this.initialValues, 0, q.parameters, 0, this.initialValues.length);
            return q;
        }
        return (Q) forCurrentThread();
    }

    Q forCurrentThread() {
        Q q;
        long id = Thread.currentThread().getId();
        synchronized (this.queriesForThreads) {
            WeakReference<Q> weakReference = this.queriesForThreads.get(Long.valueOf(id));
            q = weakReference != null ? weakReference.get() : null;
            if (q == null) {
                m907gc();
                q = (Q) createQuery();
                this.queriesForThreads.put(Long.valueOf(id), new WeakReference<>(q));
            } else {
                System.arraycopy(this.initialValues, 0, q.parameters, 0, this.initialValues.length);
            }
        }
        return q;
    }

    /* renamed from: gc */
    void m907gc() {
        synchronized (this.queriesForThreads) {
            Iterator<Map.Entry<Long, WeakReference<Q>>> it = this.queriesForThreads.entrySet().iterator();
            while (it.hasNext()) {
                if (it.next().getValue().get() == null) {
                    it.remove();
                }
            }
        }
    }
}
