package org.greenrobot.greendao.database;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import net.sqlcipher.database.SQLiteDatabase;

/* loaded from: classes2.dex */
public abstract class DatabaseOpenHelper extends SQLiteOpenHelper {
    private final Context context;
    private EncryptedHelper encryptedHelper;
    private boolean loadSQLCipherNativeLibs;
    private final String name;
    private final int version;

    public void onCreate(Database database) {
    }

    public void onOpen(Database database) {
    }

    public void onUpgrade(Database database, int i, int i2) {
    }

    public DatabaseOpenHelper(Context context, String str, int i) {
        this(context, str, null, i);
    }

    public DatabaseOpenHelper(Context context, String str, SQLiteDatabase.CursorFactory cursorFactory, int i) {
        super(context, str, cursorFactory, i);
        this.loadSQLCipherNativeLibs = true;
        this.context = context;
        this.name = str;
        this.version = i;
    }

    public void setLoadSQLCipherNativeLibs(boolean z) {
        this.loadSQLCipherNativeLibs = z;
    }

    public Database getWritableDb() {
        return wrap(getWritableDatabase());
    }

    public Database getReadableDb() {
        return wrap(getReadableDatabase());
    }

    protected Database wrap(SQLiteDatabase sQLiteDatabase) {
        return new StandardDatabase(sQLiteDatabase);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onCreate(SQLiteDatabase sQLiteDatabase) {
        onCreate(wrap(sQLiteDatabase));
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        onUpgrade(wrap(sQLiteDatabase), i, i2);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onOpen(SQLiteDatabase sQLiteDatabase) {
        onOpen(wrap(sQLiteDatabase));
    }

    private EncryptedHelper checkEncryptedHelper() {
        if (this.encryptedHelper == null) {
            this.encryptedHelper = new EncryptedHelper(this.context, this.name, this.version, this.loadSQLCipherNativeLibs);
        }
        return this.encryptedHelper;
    }

    public Database getEncryptedWritableDb(String str) {
        EncryptedHelper encryptedHelperCheckEncryptedHelper = checkEncryptedHelper();
        return encryptedHelperCheckEncryptedHelper.wrap(encryptedHelperCheckEncryptedHelper.getWritableDatabase(str));
    }

    public Database getEncryptedWritableDb(char[] cArr) {
        EncryptedHelper encryptedHelperCheckEncryptedHelper = checkEncryptedHelper();
        return encryptedHelperCheckEncryptedHelper.wrap(encryptedHelperCheckEncryptedHelper.getWritableDatabase(cArr));
    }

    public Database getEncryptedReadableDb(String str) {
        EncryptedHelper encryptedHelperCheckEncryptedHelper = checkEncryptedHelper();
        return encryptedHelperCheckEncryptedHelper.wrap(encryptedHelperCheckEncryptedHelper.getReadableDatabase(str));
    }

    public Database getEncryptedReadableDb(char[] cArr) {
        EncryptedHelper encryptedHelperCheckEncryptedHelper = checkEncryptedHelper();
        return encryptedHelperCheckEncryptedHelper.wrap(encryptedHelperCheckEncryptedHelper.getReadableDatabase(cArr));
    }

    private class EncryptedHelper extends net.sqlcipher.database.SQLiteOpenHelper {
        public EncryptedHelper(Context context, String str, int i, boolean z) {
            super(context, str, (SQLiteDatabase.CursorFactory) null, i);
            if (z) {
                net.sqlcipher.database.SQLiteDatabase.loadLibs(context);
            }
        }

        public void onCreate(net.sqlcipher.database.SQLiteDatabase sQLiteDatabase) {
            DatabaseOpenHelper.this.onCreate(wrap(sQLiteDatabase));
        }

        public void onUpgrade(net.sqlcipher.database.SQLiteDatabase sQLiteDatabase, int i, int i2) {
            DatabaseOpenHelper.this.onUpgrade(wrap(sQLiteDatabase), i, i2);
        }

        public void onOpen(net.sqlcipher.database.SQLiteDatabase sQLiteDatabase) {
            DatabaseOpenHelper.this.onOpen(wrap(sQLiteDatabase));
        }

        protected Database wrap(net.sqlcipher.database.SQLiteDatabase sQLiteDatabase) {
            return new EncryptedDatabase(sQLiteDatabase);
        }
    }
}
