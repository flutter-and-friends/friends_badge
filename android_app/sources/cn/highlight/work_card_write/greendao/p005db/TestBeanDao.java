package cn.highlight.work_card_write.greendao.p005db;

import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteStatement;
import cn.highlight.work_card_write.greendao.table.TestBean;
import org.greenrobot.greendao.AbstractDao;
import org.greenrobot.greendao.Property;
import org.greenrobot.greendao.database.Database;
import org.greenrobot.greendao.database.DatabaseStatement;
import org.greenrobot.greendao.internal.DaoConfig;

/* loaded from: classes.dex */
public class TestBeanDao extends AbstractDao<TestBean, Long> {
    public static final String TABLENAME = "TEST_BEAN";

    public static class Properties {

        /* renamed from: Id */
        public static final Property f104Id = new Property(0, Long.class, "id", true, "_id");
        public static final Property Title = new Property(1, String.class, "title", false, "TITLE");
        public static final Property Content = new Property(2, String.class, "content", false, "CONTENT");
    }

    @Override // org.greenrobot.greendao.AbstractDao
    protected final boolean isEntityUpdateable() {
        return true;
    }

    public TestBeanDao(DaoConfig daoConfig) {
        super(daoConfig);
    }

    public TestBeanDao(DaoConfig daoConfig, DaoSession daoSession) {
        super(daoConfig, daoSession);
    }

    public static void createTable(Database database, boolean z) throws SQLException {
        database.execSQL("CREATE TABLE " + (z ? "IF NOT EXISTS " : "") + "\"TEST_BEAN\" (\"_id\" INTEGER PRIMARY KEY AUTOINCREMENT ,\"TITLE\" TEXT,\"CONTENT\" TEXT);");
    }

    public static void dropTable(Database database, boolean z) throws SQLException {
        StringBuilder sb = new StringBuilder();
        sb.append("DROP TABLE ");
        sb.append(z ? "IF EXISTS " : "");
        sb.append("\"TEST_BEAN\"");
        database.execSQL(sb.toString());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.greenrobot.greendao.AbstractDao
    public final void bindValues(DatabaseStatement databaseStatement, TestBean testBean) {
        databaseStatement.clearBindings();
        Long id = testBean.getId();
        if (id != null) {
            databaseStatement.bindLong(1, id.longValue());
        }
        String title = testBean.getTitle();
        if (title != null) {
            databaseStatement.bindString(2, title);
        }
        String content = testBean.getContent();
        if (content != null) {
            databaseStatement.bindString(3, content);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.greenrobot.greendao.AbstractDao
    public final void bindValues(SQLiteStatement sQLiteStatement, TestBean testBean) {
        sQLiteStatement.clearBindings();
        Long id = testBean.getId();
        if (id != null) {
            sQLiteStatement.bindLong(1, id.longValue());
        }
        String title = testBean.getTitle();
        if (title != null) {
            sQLiteStatement.bindString(2, title);
        }
        String content = testBean.getContent();
        if (content != null) {
            sQLiteStatement.bindString(3, content);
        }
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // org.greenrobot.greendao.AbstractDao
    public Long readKey(Cursor cursor, int i) {
        int i2 = i + 0;
        if (cursor.isNull(i2)) {
            return null;
        }
        return Long.valueOf(cursor.getLong(i2));
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // org.greenrobot.greendao.AbstractDao
    public TestBean readEntity(Cursor cursor, int i) {
        int i2 = i + 0;
        int i3 = i + 1;
        int i4 = i + 2;
        return new TestBean(cursor.isNull(i2) ? null : Long.valueOf(cursor.getLong(i2)), cursor.isNull(i3) ? null : cursor.getString(i3), cursor.isNull(i4) ? null : cursor.getString(i4));
    }

    @Override // org.greenrobot.greendao.AbstractDao
    public void readEntity(Cursor cursor, TestBean testBean, int i) {
        int i2 = i + 0;
        testBean.setId(cursor.isNull(i2) ? null : Long.valueOf(cursor.getLong(i2)));
        int i3 = i + 1;
        testBean.setTitle(cursor.isNull(i3) ? null : cursor.getString(i3));
        int i4 = i + 2;
        testBean.setContent(cursor.isNull(i4) ? null : cursor.getString(i4));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.greenrobot.greendao.AbstractDao
    public final Long updateKeyAfterInsert(TestBean testBean, long j) {
        testBean.setId(Long.valueOf(j));
        return Long.valueOf(j);
    }

    @Override // org.greenrobot.greendao.AbstractDao
    public Long getKey(TestBean testBean) {
        if (testBean != null) {
            return testBean.getId();
        }
        return null;
    }

    @Override // org.greenrobot.greendao.AbstractDao
    public boolean hasKey(TestBean testBean) {
        return testBean.getId() != null;
    }
}
