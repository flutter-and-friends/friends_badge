package cn.highlight.work_card_write.greendao.db;

import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteStatement;
import cn.highlight.work_card_write.greendao.table.DoodleBean;
import org.greenrobot.greendao.AbstractDao;
import org.greenrobot.greendao.Property;
import org.greenrobot.greendao.database.Database;
import org.greenrobot.greendao.database.DatabaseStatement;
import org.greenrobot.greendao.internal.DaoConfig;

/* loaded from: classes.dex */
public class DoodleBeanDao extends AbstractDao<DoodleBean, Long> {
    public static final String TABLENAME = "DOODLE_BEAN";

    public static class Properties {
        public static final Property Id = new Property(0, Long.class, "id", true, "_id");
        public static final Property ImageName = new Property(1, String.class, "imageName", false, "IMAGE_NAME");
        public static final Property MIDoodlePen = new Property(2, Integer.TYPE, "mIDoodlePen", false, "M_IDOODLE_PEN");
        public static final Property MSize = new Property(3, Float.TYPE, "mSize", false, "M_SIZE");
        public static final Property MColor = new Property(4, Integer.TYPE, "mColor", false, "M_COLOR");
        public static final Property MLocationX = new Property(5, Float.TYPE, "mLocationX", false, "M_LOCATION_X");
        public static final Property MLocationY = new Property(6, Float.TYPE, "mLocationY", false, "M_LOCATION_Y");
        public static final Property MPivotX = new Property(7, Float.TYPE, "mPivotX", false, "M_PIVOT_X");
        public static final Property MPivotY = new Property(8, Float.TYPE, "mPivotY", false, "M_PIVOT_Y");
        public static final Property MRotate = new Property(9, Float.TYPE, "mRotate", false, "M_ROTATE");
        public static final Property MIsNeedClipOutside = new Property(10, Boolean.TYPE, "mIsNeedClipOutside", false, "M_IS_NEED_CLIP_OUTSIDE");
        public static final Property MScale = new Property(11, Float.TYPE, "mScale", false, "M_SCALE");
        public static final Property MText0 = new Property(12, String.class, "mText0", false, "M_TEXT0");
        public static final Property MText = new Property(13, String.class, "mText", false, "M_TEXT");
        public static final Property MTextStyle = new Property(14, String.class, "mTextStyle", false, "M_TEXT_STYLE");
        public static final Property MTextBgColor = new Property(15, Integer.TYPE, "mTextBgColor", false, "M_TEXT_BG_COLOR");
        public static final Property MTextBold = new Property(16, Integer.TYPE, "mTextBold", false, "M_TEXT_BOLD");
        public static final Property MTextItalic = new Property(17, Integer.TYPE, "mTextItalic", false, "M_TEXT_ITALIC");
        public static final Property MTextUnderline = new Property(18, Integer.TYPE, "mTextUnderline", false, "M_TEXT_UNDERLINE");
        public static final Property MBitmap = new Property(19, byte[].class, "mBitmap", false, "M_BITMAP");
        public static final Property BgColor = new Property(20, Integer.TYPE, "bgColor", false, "BG_COLOR");
        public static final Property FgColor = new Property(21, Integer.TYPE, "fgColor", false, "FG_COLOR");
        public static final Property Shape1 = new Property(22, Integer.TYPE, "shape1", false, "SHAPE1");
        public static final Property Width = new Property(23, Integer.TYPE, "width", false, "WIDTH");
        public static final Property Height = new Property(24, Integer.TYPE, "height", false, "HEIGHT");
        public static final Property Effects = new Property(25, Integer.TYPE, "effects", false, "EFFECTS");
        public static final Property YL1 = new Property(26, String.class, "YL1", false, "YL1");
        public static final Property YL2 = new Property(27, String.class, "YL2", false, "YL2");
        public static final Property YL3 = new Property(28, String.class, "YL3", false, "YL3");
    }

    @Override // org.greenrobot.greendao.AbstractDao
    protected final boolean isEntityUpdateable() {
        return true;
    }

    public DoodleBeanDao(DaoConfig daoConfig) {
        super(daoConfig);
    }

    public DoodleBeanDao(DaoConfig daoConfig, DaoSession daoSession) {
        super(daoConfig, daoSession);
    }

    public static void createTable(Database database, boolean z) throws SQLException {
        database.execSQL("CREATE TABLE " + (z ? "IF NOT EXISTS " : "") + "\"DOODLE_BEAN\" (\"_id\" INTEGER PRIMARY KEY AUTOINCREMENT ,\"IMAGE_NAME\" TEXT,\"M_IDOODLE_PEN\" INTEGER NOT NULL ,\"M_SIZE\" REAL NOT NULL ,\"M_COLOR\" INTEGER NOT NULL ,\"M_LOCATION_X\" REAL NOT NULL ,\"M_LOCATION_Y\" REAL NOT NULL ,\"M_PIVOT_X\" REAL NOT NULL ,\"M_PIVOT_Y\" REAL NOT NULL ,\"M_ROTATE\" REAL NOT NULL ,\"M_IS_NEED_CLIP_OUTSIDE\" INTEGER NOT NULL ,\"M_SCALE\" REAL NOT NULL ,\"M_TEXT0\" TEXT,\"M_TEXT\" TEXT,\"M_TEXT_STYLE\" TEXT,\"M_TEXT_BG_COLOR\" INTEGER NOT NULL ,\"M_TEXT_BOLD\" INTEGER NOT NULL ,\"M_TEXT_ITALIC\" INTEGER NOT NULL ,\"M_TEXT_UNDERLINE\" INTEGER NOT NULL ,\"M_BITMAP\" BLOB,\"BG_COLOR\" INTEGER NOT NULL ,\"FG_COLOR\" INTEGER NOT NULL ,\"SHAPE1\" INTEGER NOT NULL ,\"WIDTH\" INTEGER NOT NULL ,\"HEIGHT\" INTEGER NOT NULL ,\"EFFECTS\" INTEGER NOT NULL ,\"YL1\" TEXT,\"YL2\" TEXT,\"YL3\" TEXT);");
    }

    public static void dropTable(Database database, boolean z) throws SQLException {
        StringBuilder sb = new StringBuilder();
        sb.append("DROP TABLE ");
        sb.append(z ? "IF EXISTS " : "");
        sb.append("\"DOODLE_BEAN\"");
        database.execSQL(sb.toString());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.greenrobot.greendao.AbstractDao
    public final void bindValues(DatabaseStatement databaseStatement, DoodleBean doodleBean) {
        databaseStatement.clearBindings();
        Long id = doodleBean.getId();
        if (id != null) {
            databaseStatement.bindLong(1, id.longValue());
        }
        String imageName = doodleBean.getImageName();
        if (imageName != null) {
            databaseStatement.bindString(2, imageName);
        }
        databaseStatement.bindLong(3, doodleBean.getMIDoodlePen());
        databaseStatement.bindDouble(4, doodleBean.getMSize());
        databaseStatement.bindLong(5, doodleBean.getMColor());
        databaseStatement.bindDouble(6, doodleBean.getMLocationX());
        databaseStatement.bindDouble(7, doodleBean.getMLocationY());
        databaseStatement.bindDouble(8, doodleBean.getMPivotX());
        databaseStatement.bindDouble(9, doodleBean.getMPivotY());
        databaseStatement.bindDouble(10, doodleBean.getMRotate());
        databaseStatement.bindLong(11, doodleBean.getMIsNeedClipOutside() ? 1L : 0L);
        databaseStatement.bindDouble(12, doodleBean.getMScale());
        String mText0 = doodleBean.getMText0();
        if (mText0 != null) {
            databaseStatement.bindString(13, mText0);
        }
        String mText = doodleBean.getMText();
        if (mText != null) {
            databaseStatement.bindString(14, mText);
        }
        String mTextStyle = doodleBean.getMTextStyle();
        if (mTextStyle != null) {
            databaseStatement.bindString(15, mTextStyle);
        }
        databaseStatement.bindLong(16, doodleBean.getMTextBgColor());
        databaseStatement.bindLong(17, doodleBean.getMTextBold());
        databaseStatement.bindLong(18, doodleBean.getMTextItalic());
        databaseStatement.bindLong(19, doodleBean.getMTextUnderline());
        byte[] mBitmap = doodleBean.getMBitmap();
        if (mBitmap != null) {
            databaseStatement.bindBlob(20, mBitmap);
        }
        databaseStatement.bindLong(21, doodleBean.getBgColor());
        databaseStatement.bindLong(22, doodleBean.getFgColor());
        databaseStatement.bindLong(23, doodleBean.getShape1());
        databaseStatement.bindLong(24, doodleBean.getWidth());
        databaseStatement.bindLong(25, doodleBean.getHeight());
        databaseStatement.bindLong(26, doodleBean.getEffects());
        String yl1 = doodleBean.getYL1();
        if (yl1 != null) {
            databaseStatement.bindString(27, yl1);
        }
        String yl2 = doodleBean.getYL2();
        if (yl2 != null) {
            databaseStatement.bindString(28, yl2);
        }
        String yl3 = doodleBean.getYL3();
        if (yl3 != null) {
            databaseStatement.bindString(29, yl3);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.greenrobot.greendao.AbstractDao
    public final void bindValues(SQLiteStatement sQLiteStatement, DoodleBean doodleBean) {
        sQLiteStatement.clearBindings();
        Long id = doodleBean.getId();
        if (id != null) {
            sQLiteStatement.bindLong(1, id.longValue());
        }
        String imageName = doodleBean.getImageName();
        if (imageName != null) {
            sQLiteStatement.bindString(2, imageName);
        }
        sQLiteStatement.bindLong(3, doodleBean.getMIDoodlePen());
        sQLiteStatement.bindDouble(4, doodleBean.getMSize());
        sQLiteStatement.bindLong(5, doodleBean.getMColor());
        sQLiteStatement.bindDouble(6, doodleBean.getMLocationX());
        sQLiteStatement.bindDouble(7, doodleBean.getMLocationY());
        sQLiteStatement.bindDouble(8, doodleBean.getMPivotX());
        sQLiteStatement.bindDouble(9, doodleBean.getMPivotY());
        sQLiteStatement.bindDouble(10, doodleBean.getMRotate());
        sQLiteStatement.bindLong(11, doodleBean.getMIsNeedClipOutside() ? 1L : 0L);
        sQLiteStatement.bindDouble(12, doodleBean.getMScale());
        String mText0 = doodleBean.getMText0();
        if (mText0 != null) {
            sQLiteStatement.bindString(13, mText0);
        }
        String mText = doodleBean.getMText();
        if (mText != null) {
            sQLiteStatement.bindString(14, mText);
        }
        String mTextStyle = doodleBean.getMTextStyle();
        if (mTextStyle != null) {
            sQLiteStatement.bindString(15, mTextStyle);
        }
        sQLiteStatement.bindLong(16, doodleBean.getMTextBgColor());
        sQLiteStatement.bindLong(17, doodleBean.getMTextBold());
        sQLiteStatement.bindLong(18, doodleBean.getMTextItalic());
        sQLiteStatement.bindLong(19, doodleBean.getMTextUnderline());
        byte[] mBitmap = doodleBean.getMBitmap();
        if (mBitmap != null) {
            sQLiteStatement.bindBlob(20, mBitmap);
        }
        sQLiteStatement.bindLong(21, doodleBean.getBgColor());
        sQLiteStatement.bindLong(22, doodleBean.getFgColor());
        sQLiteStatement.bindLong(23, doodleBean.getShape1());
        sQLiteStatement.bindLong(24, doodleBean.getWidth());
        sQLiteStatement.bindLong(25, doodleBean.getHeight());
        sQLiteStatement.bindLong(26, doodleBean.getEffects());
        String yl1 = doodleBean.getYL1();
        if (yl1 != null) {
            sQLiteStatement.bindString(27, yl1);
        }
        String yl2 = doodleBean.getYL2();
        if (yl2 != null) {
            sQLiteStatement.bindString(28, yl2);
        }
        String yl3 = doodleBean.getYL3();
        if (yl3 != null) {
            sQLiteStatement.bindString(29, yl3);
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
    public DoodleBean readEntity(Cursor cursor, int i) {
        int i2 = i + 0;
        Long lValueOf = cursor.isNull(i2) ? null : Long.valueOf(cursor.getLong(i2));
        int i3 = i + 1;
        String string = cursor.isNull(i3) ? null : cursor.getString(i3);
        int i4 = cursor.getInt(i + 2);
        float f = cursor.getFloat(i + 3);
        int i5 = cursor.getInt(i + 4);
        float f2 = cursor.getFloat(i + 5);
        float f3 = cursor.getFloat(i + 6);
        float f4 = cursor.getFloat(i + 7);
        float f5 = cursor.getFloat(i + 8);
        float f6 = cursor.getFloat(i + 9);
        boolean z = cursor.getShort(i + 10) != 0;
        float f7 = cursor.getFloat(i + 11);
        int i6 = i + 12;
        String string2 = cursor.isNull(i6) ? null : cursor.getString(i6);
        int i7 = i + 13;
        String string3 = cursor.isNull(i7) ? null : cursor.getString(i7);
        int i8 = i + 14;
        String string4 = cursor.isNull(i8) ? null : cursor.getString(i8);
        int i9 = cursor.getInt(i + 15);
        int i10 = cursor.getInt(i + 16);
        int i11 = cursor.getInt(i + 17);
        int i12 = cursor.getInt(i + 18);
        int i13 = i + 19;
        byte[] blob = cursor.isNull(i13) ? null : cursor.getBlob(i13);
        int i14 = cursor.getInt(i + 20);
        int i15 = cursor.getInt(i + 21);
        int i16 = cursor.getInt(i + 22);
        int i17 = cursor.getInt(i + 23);
        int i18 = cursor.getInt(i + 24);
        int i19 = cursor.getInt(i + 25);
        int i20 = i + 26;
        String string5 = cursor.isNull(i20) ? null : cursor.getString(i20);
        int i21 = i + 27;
        String string6 = cursor.isNull(i21) ? null : cursor.getString(i21);
        int i22 = i + 28;
        return new DoodleBean(lValueOf, string, i4, f, i5, f2, f3, f4, f5, f6, z, f7, string2, string3, string4, i9, i10, i11, i12, blob, i14, i15, i16, i17, i18, i19, string5, string6, cursor.isNull(i22) ? null : cursor.getString(i22));
    }

    @Override // org.greenrobot.greendao.AbstractDao
    public void readEntity(Cursor cursor, DoodleBean doodleBean, int i) {
        int i2 = i + 0;
        doodleBean.setId(cursor.isNull(i2) ? null : Long.valueOf(cursor.getLong(i2)));
        int i3 = i + 1;
        doodleBean.setImageName(cursor.isNull(i3) ? null : cursor.getString(i3));
        doodleBean.setMIDoodlePen(cursor.getInt(i + 2));
        doodleBean.setMSize(cursor.getFloat(i + 3));
        doodleBean.setMColor(cursor.getInt(i + 4));
        doodleBean.setMLocationX(cursor.getFloat(i + 5));
        doodleBean.setMLocationY(cursor.getFloat(i + 6));
        doodleBean.setMPivotX(cursor.getFloat(i + 7));
        doodleBean.setMPivotY(cursor.getFloat(i + 8));
        doodleBean.setMRotate(cursor.getFloat(i + 9));
        doodleBean.setMIsNeedClipOutside(cursor.getShort(i + 10) != 0);
        doodleBean.setMScale(cursor.getFloat(i + 11));
        int i4 = i + 12;
        doodleBean.setMText0(cursor.isNull(i4) ? null : cursor.getString(i4));
        int i5 = i + 13;
        doodleBean.setMText(cursor.isNull(i5) ? null : cursor.getString(i5));
        int i6 = i + 14;
        doodleBean.setMTextStyle(cursor.isNull(i6) ? null : cursor.getString(i6));
        doodleBean.setMTextBgColor(cursor.getInt(i + 15));
        doodleBean.setMTextBold(cursor.getInt(i + 16));
        doodleBean.setMTextItalic(cursor.getInt(i + 17));
        doodleBean.setMTextUnderline(cursor.getInt(i + 18));
        int i7 = i + 19;
        doodleBean.setMBitmap(cursor.isNull(i7) ? null : cursor.getBlob(i7));
        doodleBean.setBgColor(cursor.getInt(i + 20));
        doodleBean.setFgColor(cursor.getInt(i + 21));
        doodleBean.setShape1(cursor.getInt(i + 22));
        doodleBean.setWidth(cursor.getInt(i + 23));
        doodleBean.setHeight(cursor.getInt(i + 24));
        doodleBean.setEffects(cursor.getInt(i + 25));
        int i8 = i + 26;
        doodleBean.setYL1(cursor.isNull(i8) ? null : cursor.getString(i8));
        int i9 = i + 27;
        doodleBean.setYL2(cursor.isNull(i9) ? null : cursor.getString(i9));
        int i10 = i + 28;
        doodleBean.setYL3(cursor.isNull(i10) ? null : cursor.getString(i10));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.greenrobot.greendao.AbstractDao
    public final Long updateKeyAfterInsert(DoodleBean doodleBean, long j) {
        doodleBean.setId(Long.valueOf(j));
        return Long.valueOf(j);
    }

    @Override // org.greenrobot.greendao.AbstractDao
    public Long getKey(DoodleBean doodleBean) {
        if (doodleBean != null) {
            return doodleBean.getId();
        }
        return null;
    }

    @Override // org.greenrobot.greendao.AbstractDao
    public boolean hasKey(DoodleBean doodleBean) {
        return doodleBean.getId() != null;
    }
}
