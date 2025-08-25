package cn.highlight.work_card_write.greendao.dao;

import cn.highlight.work_card_write.MyApplication;
import cn.highlight.work_card_write.greendao.table.TestBean;
import java.util.List;

/* loaded from: classes.dex */
public class TestBeanDaoUse {
    public static void insert(TestBean testBean) {
        MyApplication.getDaoInstant().getTestBeanDao().insert(testBean);
    }

    public static void insertBatch(List<TestBean> list) {
        MyApplication.getDaoInstant().getTestBeanDao().insertInTx(list);
    }

    public static void delete(long j) {
        MyApplication.getDaoInstant().getTestBeanDao().deleteByKey(Long.valueOf(j));
    }

    public static void deleteAll() {
        MyApplication.getDaoInstant().getTestBeanDao().deleteAll();
    }

    public static void update(TestBean testBean) {
        MyApplication.getDaoInstant().getTestBeanDao().update(testBean);
    }

    public static void updateInTx(List<TestBean> list) {
        MyApplication.getDaoInstant().getTestBeanDao().updateInTx(list);
    }

    public static List<TestBean> queryAll() {
        return MyApplication.getDaoInstant().getTestBeanDao().loadAll();
    }
}
