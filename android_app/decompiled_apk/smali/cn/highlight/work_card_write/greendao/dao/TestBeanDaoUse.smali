.class public Lcn/highlight/work_card_write/greendao/dao/TestBeanDaoUse;
.super Ljava/lang/Object;
.source "TestBeanDaoUse.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static delete(J)V
    .locals 1

    .line 33
    invoke-static {}, Lcn/highlight/work_card_write/MyApplication;->getDaoInstant()Lcn/highlight/work_card_write/greendao/db/DaoSession;

    move-result-object v0

    invoke-virtual {v0}, Lcn/highlight/work_card_write/greendao/db/DaoSession;->getTestBeanDao()Lcn/highlight/work_card_write/greendao/db/TestBeanDao;

    move-result-object v0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcn/highlight/work_card_write/greendao/db/TestBeanDao;->deleteByKey(Ljava/lang/Object;)V

    return-void
.end method

.method public static deleteAll()V
    .locals 1

    .line 40
    invoke-static {}, Lcn/highlight/work_card_write/MyApplication;->getDaoInstant()Lcn/highlight/work_card_write/greendao/db/DaoSession;

    move-result-object v0

    invoke-virtual {v0}, Lcn/highlight/work_card_write/greendao/db/DaoSession;->getTestBeanDao()Lcn/highlight/work_card_write/greendao/db/TestBeanDao;

    move-result-object v0

    invoke-virtual {v0}, Lcn/highlight/work_card_write/greendao/db/TestBeanDao;->deleteAll()V

    return-void
.end method

.method public static insert(Lcn/highlight/work_card_write/greendao/table/TestBean;)V
    .locals 1

    .line 19
    invoke-static {}, Lcn/highlight/work_card_write/MyApplication;->getDaoInstant()Lcn/highlight/work_card_write/greendao/db/DaoSession;

    move-result-object v0

    invoke-virtual {v0}, Lcn/highlight/work_card_write/greendao/db/DaoSession;->getTestBeanDao()Lcn/highlight/work_card_write/greendao/db/TestBeanDao;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcn/highlight/work_card_write/greendao/db/TestBeanDao;->insert(Ljava/lang/Object;)J

    return-void
.end method

.method public static insertBatch(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/highlight/work_card_write/greendao/table/TestBean;",
            ">;)V"
        }
    .end annotation

    .line 26
    invoke-static {}, Lcn/highlight/work_card_write/MyApplication;->getDaoInstant()Lcn/highlight/work_card_write/greendao/db/DaoSession;

    move-result-object v0

    invoke-virtual {v0}, Lcn/highlight/work_card_write/greendao/db/DaoSession;->getTestBeanDao()Lcn/highlight/work_card_write/greendao/db/TestBeanDao;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcn/highlight/work_card_write/greendao/db/TestBeanDao;->insertInTx(Ljava/lang/Iterable;)V

    return-void
.end method

.method public static queryAll()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/highlight/work_card_write/greendao/table/TestBean;",
            ">;"
        }
    .end annotation

    .line 63
    invoke-static {}, Lcn/highlight/work_card_write/MyApplication;->getDaoInstant()Lcn/highlight/work_card_write/greendao/db/DaoSession;

    move-result-object v0

    invoke-virtual {v0}, Lcn/highlight/work_card_write/greendao/db/DaoSession;->getTestBeanDao()Lcn/highlight/work_card_write/greendao/db/TestBeanDao;

    move-result-object v0

    invoke-virtual {v0}, Lcn/highlight/work_card_write/greendao/db/TestBeanDao;->loadAll()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static update(Lcn/highlight/work_card_write/greendao/table/TestBean;)V
    .locals 1

    .line 47
    invoke-static {}, Lcn/highlight/work_card_write/MyApplication;->getDaoInstant()Lcn/highlight/work_card_write/greendao/db/DaoSession;

    move-result-object v0

    invoke-virtual {v0}, Lcn/highlight/work_card_write/greendao/db/DaoSession;->getTestBeanDao()Lcn/highlight/work_card_write/greendao/db/TestBeanDao;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcn/highlight/work_card_write/greendao/db/TestBeanDao;->update(Ljava/lang/Object;)V

    return-void
.end method

.method public static updateInTx(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/highlight/work_card_write/greendao/table/TestBean;",
            ">;)V"
        }
    .end annotation

    .line 55
    invoke-static {}, Lcn/highlight/work_card_write/MyApplication;->getDaoInstant()Lcn/highlight/work_card_write/greendao/db/DaoSession;

    move-result-object v0

    invoke-virtual {v0}, Lcn/highlight/work_card_write/greendao/db/DaoSession;->getTestBeanDao()Lcn/highlight/work_card_write/greendao/db/TestBeanDao;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcn/highlight/work_card_write/greendao/db/TestBeanDao;->updateInTx(Ljava/lang/Iterable;)V

    return-void
.end method
