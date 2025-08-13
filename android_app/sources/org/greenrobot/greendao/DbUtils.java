package org.greenrobot.greendao;

import android.content.Context;
import android.database.Cursor;
import android.database.DatabaseUtils;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import org.greenrobot.greendao.database.Database;

/* loaded from: classes2.dex */
public class DbUtils {
    public static void vacuum(Database database) throws SQLException {
        database.execSQL("VACUUM");
    }

    public static int executeSqlScript(Context context, Database database, String str) throws IOException {
        return executeSqlScript(context, database, str, true);
    }

    public static int executeSqlScript(Context context, Database database, String str, boolean z) throws IOException, SQLException {
        int iExecuteSqlStatements;
        String[] strArrSplit = new String(readAsset(context, str), "UTF-8").split(";(\\s)*[\n\r]");
        if (z) {
            iExecuteSqlStatements = executeSqlStatementsInTx(database, strArrSplit);
        } else {
            iExecuteSqlStatements = executeSqlStatements(database, strArrSplit);
        }
        DaoLog.m893i("Executed " + iExecuteSqlStatements + " statements from SQL script '" + str + "'");
        return iExecuteSqlStatements;
    }

    public static int executeSqlStatementsInTx(Database database, String[] strArr) {
        database.beginTransaction();
        try {
            int iExecuteSqlStatements = executeSqlStatements(database, strArr);
            database.setTransactionSuccessful();
            return iExecuteSqlStatements;
        } finally {
            database.endTransaction();
        }
    }

    public static int executeSqlStatements(Database database, String[] strArr) throws SQLException {
        int i = 0;
        for (String str : strArr) {
            String strTrim = str.trim();
            if (strTrim.length() > 0) {
                database.execSQL(strTrim);
                i++;
            }
        }
        return i;
    }

    public static int copyAllBytes(InputStream inputStream, OutputStream outputStream) throws IOException {
        byte[] bArr = new byte[4096];
        int i = 0;
        while (true) {
            int i2 = inputStream.read(bArr);
            if (i2 == -1) {
                return i;
            }
            outputStream.write(bArr, 0, i2);
            i += i2;
        }
    }

    public static byte[] readAllBytes(InputStream inputStream) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        copyAllBytes(inputStream, byteArrayOutputStream);
        return byteArrayOutputStream.toByteArray();
    }

    public static byte[] readAsset(Context context, String str) throws IOException {
        InputStream inputStreamOpen = context.getResources().getAssets().open(str);
        try {
            return readAllBytes(inputStreamOpen);
        } finally {
            inputStreamOpen.close();
        }
    }

    public static void logTableDump(SQLiteDatabase sQLiteDatabase, String str) {
        Cursor cursorQuery = sQLiteDatabase.query(str, null, null, null, null, null, null);
        try {
            DaoLog.m889d(DatabaseUtils.dumpCursorToString(cursorQuery));
        } finally {
            cursorQuery.close();
        }
    }
}
