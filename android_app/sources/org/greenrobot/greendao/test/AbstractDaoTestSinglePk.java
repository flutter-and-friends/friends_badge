package org.greenrobot.greendao.test;

import android.database.Cursor;
import android.database.DatabaseUtils;
import android.database.SQLException;
import androidx.exifinterface.media.ExifInterface;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import kotlin.text.Typography;
import org.greenrobot.greendao.AbstractDao;
import org.greenrobot.greendao.DaoLog;
import org.greenrobot.greendao.Property;
import org.greenrobot.greendao.internal.SqlUtils;

/* loaded from: classes2.dex */
public abstract class AbstractDaoTestSinglePk<D extends AbstractDao<T, K>, T, K> extends AbstractDaoTest<D, T, K> {
    private Property pkColumn;
    protected Set<K> usedPks;

    protected abstract T createEntity(K k);

    protected abstract K createRandomPk();

    public AbstractDaoTestSinglePk(Class<D> cls) {
        super(cls);
        this.usedPks = new HashSet();
    }

    @Override // org.greenrobot.greendao.test.AbstractDaoTest, org.greenrobot.greendao.test.DbTest
    protected void setUp() throws Exception {
        super.setUp();
        for (Property property : this.daoAccess.getProperties()) {
            if (property.primaryKey) {
                if (this.pkColumn != null) {
                    throw new RuntimeException("Test does not work with multiple PK columns");
                }
                this.pkColumn = property;
            }
        }
        if (this.pkColumn == null) {
            throw new RuntimeException("Test does not work without a PK column");
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void testInsertAndLoad() {
        K kNextPk = nextPk();
        T tCreateEntity = createEntity(kNextPk);
        this.dao.insert(tCreateEntity);
        assertEquals(kNextPk, this.daoAccess.getKey(tCreateEntity));
        Object objLoad = this.dao.load(kNextPk);
        assertNotNull(objLoad);
        assertEquals(this.daoAccess.getKey(tCreateEntity), this.daoAccess.getKey(objLoad));
    }

    public void testInsertInTx() throws SQLException {
        this.dao.deleteAll();
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < 20; i++) {
            arrayList.add(createEntityWithRandomPk());
        }
        this.dao.insertInTx(arrayList);
        assertEquals(arrayList.size(), this.dao.count());
    }

    public void testCount() throws SQLException {
        this.dao.deleteAll();
        assertEquals(0L, this.dao.count());
        this.dao.insert(createEntityWithRandomPk());
        assertEquals(1L, this.dao.count());
        this.dao.insert(createEntityWithRandomPk());
        assertEquals(2L, this.dao.count());
    }

    public void testInsertTwice() {
        T tCreateEntity = createEntity(nextPk());
        this.dao.insert(tCreateEntity);
        try {
            this.dao.insert(tCreateEntity);
            fail("Inserting twice should not work");
        } catch (SQLException unused) {
        }
    }

    public void testInsertOrReplaceTwice() {
        T tCreateEntityWithRandomPk = createEntityWithRandomPk();
        long jInsert = this.dao.insert(tCreateEntityWithRandomPk);
        long jInsertOrReplace = this.dao.insertOrReplace(tCreateEntityWithRandomPk);
        if (this.dao.getPkProperty().type == Long.class) {
            assertEquals(jInsert, jInsertOrReplace);
        }
    }

    public void testInsertOrReplaceInTx() throws SQLException {
        this.dao.deleteAll();
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (int i = 0; i < 20; i++) {
            T tCreateEntityWithRandomPk = createEntityWithRandomPk();
            if (i % 2 == 0) {
                arrayList.add(tCreateEntityWithRandomPk);
            }
            arrayList2.add(tCreateEntityWithRandomPk);
        }
        this.dao.insertOrReplaceInTx(arrayList);
        this.dao.insertOrReplaceInTx(arrayList2);
        assertEquals(arrayList2.size(), this.dao.count());
    }

    public void testDelete() {
        K kNextPk = nextPk();
        this.dao.deleteByKey(kNextPk);
        this.dao.insert(createEntity(kNextPk));
        assertNotNull(this.dao.load(kNextPk));
        this.dao.deleteByKey(kNextPk);
        assertNull(this.dao.load(kNextPk));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void testDeleteAll() throws SQLException {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < 10; i++) {
            arrayList.add(createEntityWithRandomPk());
        }
        this.dao.insertInTx(arrayList);
        this.dao.deleteAll();
        assertEquals(0L, this.dao.count());
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            Object key = this.daoAccess.getKey(it.next());
            assertNotNull(key);
            assertNull(this.dao.load(key));
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void testDeleteInTx() {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < 10; i++) {
            arrayList.add(createEntityWithRandomPk());
        }
        this.dao.insertInTx(arrayList);
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add(arrayList.get(0));
        arrayList2.add(arrayList.get(3));
        arrayList2.add(arrayList.get(4));
        arrayList2.add(arrayList.get(8));
        this.dao.deleteInTx(arrayList2);
        assertEquals(arrayList.size() - arrayList2.size(), this.dao.count());
        Iterator it = arrayList2.iterator();
        while (it.hasNext()) {
            Object key = this.daoAccess.getKey(it.next());
            assertNotNull(key);
            assertNull(this.dao.load(key));
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void testDeleteByKeyInTx() {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < 10; i++) {
            arrayList.add(createEntityWithRandomPk());
        }
        this.dao.insertInTx(arrayList);
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add(this.daoAccess.getKey(arrayList.get(0)));
        arrayList2.add(this.daoAccess.getKey(arrayList.get(3)));
        arrayList2.add(this.daoAccess.getKey(arrayList.get(4)));
        arrayList2.add(this.daoAccess.getKey(arrayList.get(8)));
        this.dao.deleteByKeyInTx(arrayList2);
        assertEquals(arrayList.size() - arrayList2.size(), this.dao.count());
        for (Object obj : arrayList2) {
            assertNotNull(obj);
            assertNull(this.dao.load(obj));
        }
    }

    public void testRowId() {
        assertTrue(this.dao.insert(createEntityWithRandomPk()) != this.dao.insert(createEntityWithRandomPk()));
    }

    public void testLoadAll() throws SQLException {
        this.dao.deleteAll();
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < 15; i++) {
            arrayList.add(createEntity(nextPk()));
        }
        this.dao.insertInTx(arrayList);
        assertEquals(arrayList.size(), this.dao.loadAll().size());
    }

    public void testQuery() {
        this.dao.insert(createEntityWithRandomPk());
        K kNextPk = nextPk();
        this.dao.insert(createEntity(kNextPk));
        this.dao.insert(createEntityWithRandomPk());
        List<T> listQueryRaw = this.dao.queryRaw("WHERE " + this.dao.getPkColumns()[0] + "=?", kNextPk.toString());
        assertEquals(1, listQueryRaw.size());
        assertEquals(kNextPk, this.daoAccess.getKey(listQueryRaw.get(0)));
    }

    public void testUpdate() throws SQLException {
        this.dao.deleteAll();
        T tCreateEntityWithRandomPk = createEntityWithRandomPk();
        this.dao.insert(tCreateEntityWithRandomPk);
        this.dao.update(tCreateEntityWithRandomPk);
        assertEquals(1L, this.dao.count());
    }

    public void testReadWithOffset() {
        K kNextPk = nextPk();
        this.dao.insert(createEntity(kNextPk));
        Cursor cursorQueryWithDummyColumnsInFront = queryWithDummyColumnsInFront(5, "42", kNextPk);
        try {
            assertEquals(kNextPk, this.daoAccess.getKey(this.daoAccess.readEntity(cursorQueryWithDummyColumnsInFront, 5)));
        } finally {
            cursorQueryWithDummyColumnsInFront.close();
        }
    }

    public void testLoadPkWithOffset() {
        runLoadPkTest(10);
    }

    public void testLoadPk() {
        runLoadPkTest(0);
    }

    public void testSave() throws SQLException {
        if (checkKeyIsNullable()) {
            this.dao.deleteAll();
            T tCreateEntity = createEntity(null);
            if (tCreateEntity != null) {
                this.dao.save(tCreateEntity);
                this.dao.save(tCreateEntity);
                assertEquals(1L, this.dao.count());
            }
        }
    }

    public void testSaveInTx() throws SQLException {
        if (checkKeyIsNullable()) {
            this.dao.deleteAll();
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            for (int i = 0; i < 20; i++) {
                T tCreateEntity = createEntity(null);
                if (i % 2 == 0) {
                    arrayList.add(tCreateEntity);
                }
                arrayList2.add(tCreateEntity);
            }
            this.dao.saveInTx(arrayList);
            this.dao.saveInTx(arrayList2);
            assertEquals(arrayList2.size(), this.dao.count());
        }
    }

    protected void runLoadPkTest(int i) {
        K kNextPk = nextPk();
        this.dao.insert(createEntity(kNextPk));
        Cursor cursorQueryWithDummyColumnsInFront = queryWithDummyColumnsInFront(i, "42", kNextPk);
        try {
            assertEquals(kNextPk, this.daoAccess.readKey(cursorQueryWithDummyColumnsInFront, i));
        } finally {
            cursorQueryWithDummyColumnsInFront.close();
        }
    }

    protected Cursor queryWithDummyColumnsInFront(int i, String str, K k) {
        StringBuilder sb = new StringBuilder("SELECT ");
        for (int i2 = 0; i2 < i; i2++) {
            sb.append(str);
            sb.append(",");
        }
        SqlUtils.appendColumns(sb, ExifInterface.GPS_DIRECTION_TRUE, this.dao.getAllColumns()).append(" FROM ");
        sb.append(Typography.quote);
        sb.append(this.dao.getTablename());
        sb.append(Typography.quote);
        sb.append(" T");
        if (k != null) {
            sb.append(" WHERE ");
            assertEquals(1, this.dao.getPkColumns().length);
            sb.append(this.dao.getPkColumns()[0]);
            sb.append("=");
            DatabaseUtils.appendValueToSql(sb, k);
        }
        Cursor cursorRawQuery = this.f1195db.rawQuery(sb.toString(), null);
        assertTrue(cursorRawQuery.moveToFirst());
        for (int i3 = 0; i3 < i; i3++) {
            try {
                assertEquals(str, cursorRawQuery.getString(i3));
            } catch (RuntimeException e) {
                cursorRawQuery.close();
                throw e;
            }
        }
        if (k != null) {
            assertEquals(1, cursorRawQuery.getCount());
        }
        return cursorRawQuery;
    }

    protected boolean checkKeyIsNullable() {
        if (createEntity(null) != null) {
            return true;
        }
        DaoLog.m889d("Test is not available for entities with non-null keys");
        return false;
    }

    protected K nextPk() {
        for (int i = 0; i < 100000; i++) {
            K kCreateRandomPk = createRandomPk();
            if (this.usedPks.add(kCreateRandomPk)) {
                return kCreateRandomPk;
            }
        }
        throw new IllegalStateException("Could not find a new PK");
    }

    protected T createEntityWithRandomPk() {
        return createEntity(nextPk());
    }
}
