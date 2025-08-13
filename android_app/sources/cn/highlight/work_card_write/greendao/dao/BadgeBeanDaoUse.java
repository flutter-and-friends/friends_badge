package cn.highlight.work_card_write.greendao.dao;

import cn.highlight.work_card_write.MyApplication;
import cn.highlight.work_card_write.greendao.p005db.BadgeBeanDao;
import cn.highlight.work_card_write.greendao.table.BadgeBean;
import java.util.ArrayList;
import java.util.List;
import org.greenrobot.greendao.query.WhereCondition;

/* loaded from: classes.dex */
public class BadgeBeanDaoUse {
    public static void insert(BadgeBean badgeBean) {
        MyApplication.getDaoInstant().getBadgeBeanDao().insert(badgeBean);
    }

    public static void insertAll(List<BadgeBean> list) {
        MyApplication.getDaoInstant().getBadgeBeanDao().insertInTx(list);
    }

    public static void delete(long j) {
        MyApplication.getDaoInstant().getBadgeBeanDao().deleteByKey(Long.valueOf(j));
    }

    public static void deleteInTx(List<BadgeBean> list) {
        try {
            MyApplication.getDaoInstant().getBadgeBeanDao().deleteInTx(list);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static void deleteAll() {
        MyApplication.getDaoInstant().getBadgeBeanDao().deleteAll();
    }

    public static List<BadgeBean> queryAll() {
        try {
            return MyApplication.getDaoInstant().getBadgeBeanDao().loadAll();
        } catch (Exception unused) {
            return null;
        }
    }

    public static List<BadgeBean> queryAllBySize(String str) {
        try {
            return MyApplication.getDaoInstant().getBadgeBeanDao().queryBuilder().where(BadgeBeanDao.Properties.Size.m900eq(str), new WhereCondition[0]).list();
        } catch (Exception e) {
            e.printStackTrace();
            return new ArrayList();
        }
    }

    public static void update(BadgeBean badgeBean) {
        MyApplication.getDaoInstant().getBadgeBeanDao().update(badgeBean);
    }
}
