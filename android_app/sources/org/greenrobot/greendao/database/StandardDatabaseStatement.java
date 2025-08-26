package org.greenrobot.greendao.database;

import android.database.sqlite.SQLiteStatement;

/* loaded from: classes2.dex */
public class StandardDatabaseStatement implements DatabaseStatement {
    private final SQLiteStatement delegate;

    public StandardDatabaseStatement(SQLiteStatement sQLiteStatement) {
        this.delegate = sQLiteStatement;
    }

    @Override // org.greenrobot.greendao.database.DatabaseStatement
    public void execute() {
        this.delegate.execute();
    }

    @Override // org.greenrobot.greendao.database.DatabaseStatement
    public long simpleQueryForLong() {
        return this.delegate.simpleQueryForLong();
    }

    @Override // org.greenrobot.greendao.database.DatabaseStatement
    public void bindNull(int i) {
        this.delegate.bindNull(i);
    }

    @Override // org.greenrobot.greendao.database.DatabaseStatement
    public long executeInsert() {
        return this.delegate.executeInsert();
    }

    @Override // org.greenrobot.greendao.database.DatabaseStatement
    public void bindString(int i, String str) {
        this.delegate.bindString(i, str);
    }

    @Override // org.greenrobot.greendao.database.DatabaseStatement
    public void bindBlob(int i, byte[] bArr) {
        this.delegate.bindBlob(i, bArr);
    }

    @Override // org.greenrobot.greendao.database.DatabaseStatement
    public void bindLong(int i, long j) {
        this.delegate.bindLong(i, j);
    }

    @Override // org.greenrobot.greendao.database.DatabaseStatement
    public void clearBindings() {
        this.delegate.clearBindings();
    }

    @Override // org.greenrobot.greendao.database.DatabaseStatement
    public void bindDouble(int i, double d) {
        this.delegate.bindDouble(i, d);
    }

    @Override // org.greenrobot.greendao.database.DatabaseStatement
    public void close() {
        this.delegate.close();
    }

    @Override // org.greenrobot.greendao.database.DatabaseStatement
    public Object getRawStatement() {
        return this.delegate;
    }
}
