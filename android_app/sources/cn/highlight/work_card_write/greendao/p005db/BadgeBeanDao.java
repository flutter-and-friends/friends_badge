package cn.highlight.work_card_write.greendao.p005db;

import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteStatement;
import cn.highlight.work_card_write.greendao.table.BadgeBean;
import org.greenrobot.greendao.AbstractDao;
import org.greenrobot.greendao.Property;
import org.greenrobot.greendao.database.Database;
import org.greenrobot.greendao.database.DatabaseStatement;
import org.greenrobot.greendao.internal.DaoConfig;

/* loaded from: classes.dex */
public class BadgeBeanDao extends AbstractDao<BadgeBean, Long> {
    public static final String TABLENAME = "BADGE_BEAN";

    public static class Properties {

        /* renamed from: Id */
        public static final Property f102Id = new Property(0, Long.class, "id", true, "_id");
        public static final Property ImageName = new Property(1, String.class, "imageName", false, "IMAGE_NAME");
        public static final Property Size = new Property(2, String.class, "size", false, "SIZE");
        public static final Property Color = new Property(3, String.class, "color", false, "COLOR");
        public static final Property BitmapStart = new Property(4, byte[].class, "bitmapStart", false, "BITMAP_START");
        public static final Property BitmapEnd = new Property(5, byte[].class, "bitmapEnd", false, "BITMAP_END");
        public static final Property Time = new Property(6, String.class, "time", false, "TIME");
        public static final Property YL1 = new Property(7, String.class, "YL1", false, "YL1");
        public static final Property YL2 = new Property(8, String.class, "YL2", false, "YL2");
        public static final Property YL3 = new Property(9, String.class, "YL3", false, "YL3");
    }

    @Override // org.greenrobot.greendao.AbstractDao
    protected final boolean isEntityUpdateable() {
        return true;
    }

    public BadgeBeanDao(DaoConfig daoConfig) {
        super(daoConfig);
    }

    public BadgeBeanDao(DaoConfig daoConfig, DaoSession daoSession) {
        super(daoConfig, daoSession);
    }

    public static void createTable(Database database, boolean z) throws SQLException {
        database.execSQL("CREATE TABLE " + (z ? "IF NOT EXISTS " : "") + "\"BADGE_BEAN\" (\"_id\" INTEGER PRIMARY KEY AUTOINCREMENT ,\"IMAGE_NAME\" TEXT,\"SIZE\" TEXT,\"COLOR\" TEXT,\"BITMAP_START\" BLOB,\"BITMAP_END\" BLOB,\"TIME\" TEXT,\"YL1\" TEXT,\"YL2\" TEXT,\"YL3\" TEXT);");
    }

    public static void dropTable(Database database, boolean z) throws SQLException {
        StringBuilder sb = new StringBuilder();
        sb.append("DROP TABLE ");
        sb.append(z ? "IF EXISTS " : "");
        sb.append("\"BADGE_BEAN\"");
        database.execSQL(sb.toString());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.greenrobot.greendao.AbstractDao
    public final void bindValues(DatabaseStatement databaseStatement, BadgeBean badgeBean) {
        databaseStatement.clearBindings();
        Long id = badgeBean.getId();
        if (id != null) {
            databaseStatement.bindLong(1, id.longValue());
        }
        String imageName = badgeBean.getImageName();
        if (imageName != null) {
            databaseStatement.bindString(2, imageName);
        }
        String size = badgeBean.getSize();
        if (size != null) {
            databaseStatement.bindString(3, size);
        }
        String color = badgeBean.getColor();
        if (color != null) {
            databaseStatement.bindString(4, color);
        }
        byte[] bitmapStart = badgeBean.getBitmapStart();
        if (bitmapStart != null) {
            databaseStatement.bindBlob(5, bitmapStart);
        }
        byte[] bitmapEnd = badgeBean.getBitmapEnd();
        if (bitmapEnd != null) {
            databaseStatement.bindBlob(6, bitmapEnd);
        }
        String time = badgeBean.getTime();
        if (time != null) {
            databaseStatement.bindString(7, time);
        }
        String yl1 = badgeBean.getYL1();
        if (yl1 != null) {
            databaseStatement.bindString(8, yl1);
        }
        String yl2 = badgeBean.getYL2();
        if (yl2 != null) {
            databaseStatement.bindString(9, yl2);
        }
        String yl3 = badgeBean.getYL3();
        if (yl3 != null) {
            databaseStatement.bindString(10, yl3);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.greenrobot.greendao.AbstractDao
    public final void bindValues(SQLiteStatement sQLiteStatement, BadgeBean badgeBean) {
        sQLiteStatement.clearBindings();
        Long id = badgeBean.getId();
        if (id != null) {
            sQLiteStatement.bindLong(1, id.longValue());
        }
        String imageName = badgeBean.getImageName();
        if (imageName != null) {
            sQLiteStatement.bindString(2, imageName);
        }
        String size = badgeBean.getSize();
        if (size != null) {
            sQLiteStatement.bindString(3, size);
        }
        String color = badgeBean.getColor();
        if (color != null) {
            sQLiteStatement.bindString(4, color);
        }
        byte[] bitmapStart = badgeBean.getBitmapStart();
        if (bitmapStart != null) {
            sQLiteStatement.bindBlob(5, bitmapStart);
        }
        byte[] bitmapEnd = badgeBean.getBitmapEnd();
        if (bitmapEnd != null) {
            sQLiteStatement.bindBlob(6, bitmapEnd);
        }
        String time = badgeBean.getTime();
        if (time != null) {
            sQLiteStatement.bindString(7, time);
        }
        String yl1 = badgeBean.getYL1();
        if (yl1 != null) {
            sQLiteStatement.bindString(8, yl1);
        }
        String yl2 = badgeBean.getYL2();
        if (yl2 != null) {
            sQLiteStatement.bindString(9, yl2);
        }
        String yl3 = badgeBean.getYL3();
        if (yl3 != null) {
            sQLiteStatement.bindString(10, yl3);
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
    public BadgeBean readEntity(Cursor cursor, int i) {
        int i2 = i + 0;
        Long lValueOf = cursor.isNull(i2) ? null : Long.valueOf(cursor.getLong(i2));
        int i3 = i + 1;
        String string = cursor.isNull(i3) ? null : cursor.getString(i3);
        int i4 = i + 2;
        String string2 = cursor.isNull(i4) ? null : cursor.getString(i4);
        int i5 = i + 3;
        String string3 = cursor.isNull(i5) ? null : cursor.getString(i5);
        int i6 = i + 4;
        byte[] blob = cursor.isNull(i6) ? null : cursor.getBlob(i6);
        int i7 = i + 5;
        byte[] blob2 = cursor.isNull(i7) ? null : cursor.getBlob(i7);
        int i8 = i + 6;
        String string4 = cursor.isNull(i8) ? null : cursor.getString(i8);
        int i9 = i + 7;
        String string5 = cursor.isNull(i9) ? null : cursor.getString(i9);
        int i10 = i + 8;
        int i11 = i + 9;
        return new BadgeBean(lValueOf, string, string2, string3, blob, blob2, string4, string5, cursor.isNull(i10) ? null : cursor.getString(i10), cursor.isNull(i11) ? null : cursor.getString(i11));
    }

    @Override // org.greenrobot.greendao.AbstractDao
    public void readEntity(Cursor cursor, BadgeBean badgeBean, int i) {
        int i2 = i + 0;
        badgeBean.setId(cursor.isNull(i2) ? null : Long.valueOf(cursor.getLong(i2)));
        int i3 = i + 1;
        badgeBean.setImageName(cursor.isNull(i3) ? null : cursor.getString(i3));
        int i4 = i + 2;
        badgeBean.setSize(cursor.isNull(i4) ? null : cursor.getString(i4));
        int i5 = i + 3;
        badgeBean.setColor(cursor.isNull(i5) ? null : cursor.getString(i5));
        int i6 = i + 4;
        badgeBean.setBitmapStart(cursor.isNull(i6) ? null : cursor.getBlob(i6));
        int i7 = i + 5;
        badgeBean.setBitmapEnd(cursor.isNull(i7) ? null : cursor.getBlob(i7));
        int i8 = i + 6;
        badgeBean.setTime(cursor.isNull(i8) ? null : cursor.getString(i8));
        int i9 = i + 7;
        badgeBean.setYL1(cursor.isNull(i9) ? null : cursor.getString(i9));
        int i10 = i + 8;
        badgeBean.setYL2(cursor.isNull(i10) ? null : cursor.getString(i10));
        int i11 = i + 9;
        badgeBean.setYL3(cursor.isNull(i11) ? null : cursor.getString(i11));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.greenrobot.greendao.AbstractDao
    public final Long updateKeyAfterInsert(BadgeBean badgeBean, long j) {
        badgeBean.setId(Long.valueOf(j));
        return Long.valueOf(j);
    }

    @Override // org.greenrobot.greendao.AbstractDao
    public Long getKey(BadgeBean badgeBean) {
        if (badgeBean != null) {
            return badgeBean.getId();
        }
        return null;
    }

    @Override // org.greenrobot.greendao.AbstractDao
    public boolean hasKey(BadgeBean badgeBean) {
        return badgeBean.getId() != null;
    }
}
