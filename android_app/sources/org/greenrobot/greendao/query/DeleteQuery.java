package org.greenrobot.greendao.query;

import android.database.SQLException;
import java.util.Date;
import org.greenrobot.greendao.AbstractDao;
import org.greenrobot.greendao.database.Database;

/* loaded from: classes2.dex */
public class DeleteQuery<T> extends AbstractQuery<T> {
    private final QueryData<T> queryData;

    private static final class QueryData<T2> extends AbstractQueryData<T2, DeleteQuery<T2>> {
        private QueryData(AbstractDao<T2, ?> abstractDao, String str, String[] strArr) {
            super(abstractDao, str, strArr);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // org.greenrobot.greendao.query.AbstractQueryData
        public DeleteQuery<T2> createQuery() {
            return new DeleteQuery<>(this, this.dao, this.sql, (String[]) this.initialValues.clone());
        }
    }

    static <T2> DeleteQuery<T2> create(AbstractDao<T2, ?> abstractDao, String str, Object[] objArr) {
        return new QueryData(abstractDao, str, toStringArray(objArr)).forCurrentThread();
    }

    private DeleteQuery(QueryData<T> queryData, AbstractDao<T, ?> abstractDao, String str, String[] strArr) {
        super(abstractDao, str, strArr);
        this.queryData = queryData;
    }

    public DeleteQuery<T> forCurrentThread() {
        return (DeleteQuery) this.queryData.forCurrentThread(this);
    }

    public void executeDeleteWithoutDetachingEntities() throws SQLException {
        checkThread();
        Database database = this.dao.getDatabase();
        if (database.isDbLockedByCurrentThread()) {
            this.dao.getDatabase().execSQL(this.sql, this.parameters);
            return;
        }
        database.beginTransaction();
        try {
            this.dao.getDatabase().execSQL(this.sql, this.parameters);
            database.setTransactionSuccessful();
        } finally {
            database.endTransaction();
        }
    }

    @Override // org.greenrobot.greendao.query.AbstractQuery
    public DeleteQuery<T> setParameter(int i, Object obj) {
        return (DeleteQuery) super.setParameter(i, obj);
    }

    @Override // org.greenrobot.greendao.query.AbstractQuery
    public DeleteQuery<T> setParameter(int i, Date date) {
        return (DeleteQuery) super.setParameter(i, date);
    }

    @Override // org.greenrobot.greendao.query.AbstractQuery
    public DeleteQuery<T> setParameter(int i, Boolean bool) {
        return (DeleteQuery) super.setParameter(i, bool);
    }
}
