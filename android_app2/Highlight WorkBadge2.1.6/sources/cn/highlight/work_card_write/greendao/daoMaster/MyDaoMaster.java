package cn.highlight.work_card_write.greendao.daoMaster;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import cn.highlight.work_card_write.greendao.db.DaoMaster;
import org.greenrobot.greendao.database.Database;

/* loaded from: classes.dex */
public class MyDaoMaster extends DaoMaster {
    public MyDaoMaster(SQLiteDatabase sQLiteDatabase) {
        super(sQLiteDatabase);
    }

    public MyDaoMaster(Database database) {
        super(database);
    }

    public static class MyHelper extends DaoMaster.DevOpenHelper {
        @Override // cn.highlight.work_card_write.greendao.db.DaoMaster.DevOpenHelper, org.greenrobot.greendao.database.DatabaseOpenHelper
        public void onUpgrade(Database database, int i, int i2) {
        }

        public MyHelper(Context context, String str) {
            super(context, str);
        }

        public MyHelper(Context context, String str, SQLiteDatabase.CursorFactory cursorFactory) {
            super(context, str, cursorFactory);
        }
    }
}
