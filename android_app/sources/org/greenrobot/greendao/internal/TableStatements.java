package org.greenrobot.greendao.internal;

import androidx.exifinterface.media.ExifInterface;
import org.greenrobot.greendao.database.Database;
import org.greenrobot.greendao.database.DatabaseStatement;

/* loaded from: classes2.dex */
public class TableStatements {
    private final String[] allColumns;
    private DatabaseStatement countStatement;

    /* renamed from: db */
    private final Database f1193db;
    private DatabaseStatement deleteStatement;
    private DatabaseStatement insertOrReplaceStatement;
    private DatabaseStatement insertStatement;
    private final String[] pkColumns;
    private volatile String selectAll;
    private volatile String selectByKey;
    private volatile String selectByRowId;
    private volatile String selectKeys;
    private final String tablename;
    private DatabaseStatement updateStatement;

    public TableStatements(Database database, String str, String[] strArr, String[] strArr2) {
        this.f1193db = database;
        this.tablename = str;
        this.allColumns = strArr;
        this.pkColumns = strArr2;
    }

    public DatabaseStatement getInsertStatement() {
        if (this.insertStatement == null) {
            DatabaseStatement databaseStatementCompileStatement = this.f1193db.compileStatement(SqlUtils.createSqlInsert("INSERT INTO ", this.tablename, this.allColumns));
            synchronized (this) {
                if (this.insertStatement == null) {
                    this.insertStatement = databaseStatementCompileStatement;
                }
            }
            if (this.insertStatement != databaseStatementCompileStatement) {
                databaseStatementCompileStatement.close();
            }
        }
        return this.insertStatement;
    }

    public DatabaseStatement getInsertOrReplaceStatement() {
        if (this.insertOrReplaceStatement == null) {
            DatabaseStatement databaseStatementCompileStatement = this.f1193db.compileStatement(SqlUtils.createSqlInsert("INSERT OR REPLACE INTO ", this.tablename, this.allColumns));
            synchronized (this) {
                if (this.insertOrReplaceStatement == null) {
                    this.insertOrReplaceStatement = databaseStatementCompileStatement;
                }
            }
            if (this.insertOrReplaceStatement != databaseStatementCompileStatement) {
                databaseStatementCompileStatement.close();
            }
        }
        return this.insertOrReplaceStatement;
    }

    public DatabaseStatement getDeleteStatement() {
        if (this.deleteStatement == null) {
            DatabaseStatement databaseStatementCompileStatement = this.f1193db.compileStatement(SqlUtils.createSqlDelete(this.tablename, this.pkColumns));
            synchronized (this) {
                if (this.deleteStatement == null) {
                    this.deleteStatement = databaseStatementCompileStatement;
                }
            }
            if (this.deleteStatement != databaseStatementCompileStatement) {
                databaseStatementCompileStatement.close();
            }
        }
        return this.deleteStatement;
    }

    public DatabaseStatement getUpdateStatement() {
        if (this.updateStatement == null) {
            DatabaseStatement databaseStatementCompileStatement = this.f1193db.compileStatement(SqlUtils.createSqlUpdate(this.tablename, this.allColumns, this.pkColumns));
            synchronized (this) {
                if (this.updateStatement == null) {
                    this.updateStatement = databaseStatementCompileStatement;
                }
            }
            if (this.updateStatement != databaseStatementCompileStatement) {
                databaseStatementCompileStatement.close();
            }
        }
        return this.updateStatement;
    }

    public DatabaseStatement getCountStatement() {
        if (this.countStatement == null) {
            this.countStatement = this.f1193db.compileStatement(SqlUtils.createSqlCount(this.tablename));
        }
        return this.countStatement;
    }

    public String getSelectAll() {
        if (this.selectAll == null) {
            this.selectAll = SqlUtils.createSqlSelect(this.tablename, ExifInterface.GPS_DIRECTION_TRUE, this.allColumns, false);
        }
        return this.selectAll;
    }

    public String getSelectKeys() {
        if (this.selectKeys == null) {
            this.selectKeys = SqlUtils.createSqlSelect(this.tablename, ExifInterface.GPS_DIRECTION_TRUE, this.pkColumns, false);
        }
        return this.selectKeys;
    }

    public String getSelectByKey() {
        if (this.selectByKey == null) {
            StringBuilder sb = new StringBuilder(getSelectAll());
            sb.append("WHERE ");
            SqlUtils.appendColumnsEqValue(sb, ExifInterface.GPS_DIRECTION_TRUE, this.pkColumns);
            this.selectByKey = sb.toString();
        }
        return this.selectByKey;
    }

    public String getSelectByRowId() {
        if (this.selectByRowId == null) {
            this.selectByRowId = getSelectAll() + "WHERE ROWID=?";
        }
        return this.selectByRowId;
    }
}
