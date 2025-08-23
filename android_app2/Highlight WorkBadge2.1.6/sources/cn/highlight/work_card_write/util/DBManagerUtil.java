package cn.highlight.work_card_write.util;

import android.content.Context;
import android.util.Log;
import cn.highlight.work_card_write.MyApplication;
import cn.highlight.work_card_write.greendao.dao.DoodleBeanDaoUse;
import cn.highlight.work_card_write.greendao.daoMaster.MyDaoMaster;
import cn.highlight.work_card_write.greendao.db.DaoMaster;
import cn.highlight.work_card_write.greendao.db.DaoSession;
import cn.highlight.work_card_write.greendao.util.DatabaseContext;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;

/* loaded from: classes.dex */
public class DBManagerUtil {
    private static String DB_NAME = "BadgeMould.db";
    private static String DB_PATH = "/data/data/cn.highlight.work_card_write/databases/";
    private static DBManagerUtil mInstance;
    private DaoMaster mDaoMaster;
    private DaoSession mDaoSession;

    public static DBManagerUtil getInstance(Context context) {
        if (mInstance == null) {
            synchronized (DBManagerUtil.class) {
                if (mInstance == null) {
                    mInstance = new DBManagerUtil(context);
                }
            }
        }
        return mInstance;
    }

    public DBManagerUtil(Context context) {
        if (mInstance == null) {
            this.mDaoMaster = new DaoMaster(new MyDaoMaster.MyHelper(new DatabaseContext(context, DB_PATH), DB_NAME, null).getWritableDatabase());
            this.mDaoSession = this.mDaoMaster.newSession();
        }
    }

    public DaoMaster getmDaoMaster() {
        return this.mDaoMaster;
    }

    public void setmDaoMaster(DaoMaster daoMaster) {
        this.mDaoMaster = daoMaster;
    }

    public DaoSession getmDaoSession() {
        return this.mDaoSession;
    }

    public void setmDaoSession(DaoSession daoSession) {
        this.mDaoSession = daoSession;
    }

    public static void setDB_NAME(Context context) throws IOException {
        String str = DB_PATH + DB_NAME;
        File file = new File(str);
        if (file.exists() && !file.delete()) {
            Log.e("DB_DELETE", "Failed to delete database file");
            return;
        }
        if (file.exists()) {
            return;
        }
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(str);
            InputStream inputStreamOpen = MyApplication.instance.getAssets().open("db/" + DB_NAME);
            byte[] bArr = new byte[1024];
            while (true) {
                int i = inputStreamOpen.read(bArr);
                if (i == -1) {
                    break;
                } else {
                    fileOutputStream.write(bArr, 0, i);
                }
            }
            inputStreamOpen.close();
            fileOutputStream.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
        DoodleBeanDaoUse.deleteInTx(getInstance(context).getmDaoSession().getDoodleBeanDao().loadAll());
        DoodleBeanDaoUse.insertAll(getInstance(context).getmDaoSession().getDoodleBeanDao().loadAll());
    }
}
