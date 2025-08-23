package cn.highlight.work_card_write.greendao.dao;

import android.database.SQLException;
import cn.highlight.work_card_write.MyApplication;
import cn.highlight.work_card_write.greendao.db.DoodleBeanDao;
import cn.highlight.work_card_write.greendao.table.DoodleBean;
import java.util.ArrayList;
import java.util.List;
import org.greenrobot.greendao.query.WhereCondition;

/* loaded from: classes.dex */
public class DoodleBeanDaoUse {
    public static void insert(DoodleBean doodleBean) {
        MyApplication.getDaoInstant().getDoodleBeanDao().insert(doodleBean);
    }

    public static void insertAll(List<DoodleBean> list) {
        MyApplication.getDaoInstant().getDoodleBeanDao().insertInTx(list);
    }

    public static void delete(long j) {
        MyApplication.getDaoInstant().getDoodleBeanDao().deleteByKey(Long.valueOf(j));
    }

    public static void deleteInTx(List<DoodleBean> list) {
        try {
            MyApplication.getDaoInstant().getDoodleBeanDao().deleteInTx(list);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static void deleteAll() {
        MyApplication.getDaoInstant().getDoodleBeanDao().deleteAll();
    }

    public static void deleteAllByName(String str) throws SQLException {
        MyApplication.getDaoInstant().getDoodleBeanDao().queryBuilder().where(DoodleBeanDao.Properties.ImageName.eq(str), new WhereCondition[0]).buildDelete().executeDeleteWithoutDetachingEntities();
    }

    public static List<DoodleBean> queryAllByName(String str) {
        try {
            return MyApplication.getDaoInstant().getDoodleBeanDao().queryBuilder().where(DoodleBeanDao.Properties.ImageName.eq(str), new WhereCondition[0]).list();
        } catch (Exception e) {
            e.printStackTrace();
            return new ArrayList();
        }
    }
}
