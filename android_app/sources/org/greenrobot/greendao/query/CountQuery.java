package org.greenrobot.greendao.query;

import android.database.Cursor;
import java.util.Date;
import org.greenrobot.greendao.AbstractDao;
import org.greenrobot.greendao.DaoException;

/* loaded from: classes2.dex */
public class CountQuery<T> extends AbstractQuery<T> {
    private final QueryData<T> queryData;

    private static final class QueryData<T2> extends AbstractQueryData<T2, CountQuery<T2>> {
        private QueryData(AbstractDao<T2, ?> abstractDao, String str, String[] strArr) {
            super(abstractDao, str, strArr);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // org.greenrobot.greendao.query.AbstractQueryData
        public CountQuery<T2> createQuery() {
            return new CountQuery<>(this, this.dao, this.sql, (String[]) this.initialValues.clone());
        }
    }

    static <T2> CountQuery<T2> create(AbstractDao<T2, ?> abstractDao, String str, Object[] objArr) {
        return new QueryData(abstractDao, str, toStringArray(objArr)).forCurrentThread();
    }

    private CountQuery(QueryData<T> queryData, AbstractDao<T, ?> abstractDao, String str, String[] strArr) {
        super(abstractDao, str, strArr);
        this.queryData = queryData;
    }

    public CountQuery<T> forCurrentThread() {
        return (CountQuery) this.queryData.forCurrentThread(this);
    }

    public long count() {
        checkThread();
        Cursor cursorRawQuery = this.dao.getDatabase().rawQuery(this.sql, this.parameters);
        try {
            if (!cursorRawQuery.moveToNext()) {
                throw new DaoException("No result for count");
            }
            if (!cursorRawQuery.isLast()) {
                throw new DaoException("Unexpected row count: " + cursorRawQuery.getCount());
            }
            if (cursorRawQuery.getColumnCount() != 1) {
                throw new DaoException("Unexpected column count: " + cursorRawQuery.getColumnCount());
            }
            return cursorRawQuery.getLong(0);
        } finally {
            cursorRawQuery.close();
        }
    }

    @Override // org.greenrobot.greendao.query.AbstractQuery
    public CountQuery<T> setParameter(int i, Object obj) {
        return (CountQuery) super.setParameter(i, obj);
    }

    @Override // org.greenrobot.greendao.query.AbstractQuery
    public CountQuery<T> setParameter(int i, Date date) {
        return (CountQuery) super.setParameter(i, date);
    }

    @Override // org.greenrobot.greendao.query.AbstractQuery
    public CountQuery<T> setParameter(int i, Boolean bool) {
        return (CountQuery) super.setParameter(i, bool);
    }
}
