.class public Lcn/highlight/work_card_write/greendao/dao/DoodleBeanDaoUse;
.super Ljava/lang/Object;
.source "DoodleBeanDaoUse.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static delete(J)V
    .locals 1

    .line 32
    invoke-static {}, Lcn/highlight/work_card_write/MyApplication;->getDaoInstant()Lcn/highlight/work_card_write/greendao/db/DaoSession;

    move-result-object v0

    invoke-virtual {v0}, Lcn/highlight/work_card_write/greendao/db/DaoSession;->getDoodleBeanDao()Lcn/highlight/work_card_write/greendao/db/DoodleBeanDao;

    move-result-object v0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcn/highlight/work_card_write/greendao/db/DoodleBeanDao;->deleteByKey(Ljava/lang/Object;)V

    return-void
.end method

.method public static deleteAll()V
    .locals 1

    .line 50
    invoke-static {}, Lcn/highlight/work_card_write/MyApplication;->getDaoInstant()Lcn/highlight/work_card_write/greendao/db/DaoSession;

    move-result-object v0

    invoke-virtual {v0}, Lcn/highlight/work_card_write/greendao/db/DaoSession;->getDoodleBeanDao()Lcn/highlight/work_card_write/greendao/db/DoodleBeanDao;

    move-result-object v0

    invoke-virtual {v0}, Lcn/highlight/work_card_write/greendao/db/DoodleBeanDao;->deleteAll()V

    return-void
.end method

.method public static deleteAllByName(Ljava/lang/String;)V
    .locals 2

    .line 57
    invoke-static {}, Lcn/highlight/work_card_write/MyApplication;->getDaoInstant()Lcn/highlight/work_card_write/greendao/db/DaoSession;

    move-result-object v0

    invoke-virtual {v0}, Lcn/highlight/work_card_write/greendao/db/DaoSession;->getDoodleBeanDao()Lcn/highlight/work_card_write/greendao/db/DoodleBeanDao;

    move-result-object v0

    invoke-virtual {v0}, Lcn/highlight/work_card_write/greendao/db/DoodleBeanDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    sget-object v1, Lcn/highlight/work_card_write/greendao/db/DoodleBeanDao$Properties;->ImageName:Lorg/greenrobot/greendao/Property;

    invoke-virtual {v1, p0}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object p0

    const/4 v1, 0x0

    new-array v1, v1, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {v0, p0, v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lorg/greenrobot/greendao/query/QueryBuilder;->buildDelete()Lorg/greenrobot/greendao/query/DeleteQuery;

    move-result-object p0

    invoke-virtual {p0}, Lorg/greenrobot/greendao/query/DeleteQuery;->executeDeleteWithoutDetachingEntities()V

    return-void
.end method

.method public static deleteInTx(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/highlight/work_card_write/greendao/table/DoodleBean;",
            ">;)V"
        }
    .end annotation

    .line 40
    :try_start_0
    invoke-static {}, Lcn/highlight/work_card_write/MyApplication;->getDaoInstant()Lcn/highlight/work_card_write/greendao/db/DaoSession;

    move-result-object v0

    invoke-virtual {v0}, Lcn/highlight/work_card_write/greendao/db/DaoSession;->getDoodleBeanDao()Lcn/highlight/work_card_write/greendao/db/DoodleBeanDao;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcn/highlight/work_card_write/greendao/db/DoodleBeanDao;->deleteInTx(Ljava/lang/Iterable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 42
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static insert(Lcn/highlight/work_card_write/greendao/table/DoodleBean;)V
    .locals 1

    .line 18
    invoke-static {}, Lcn/highlight/work_card_write/MyApplication;->getDaoInstant()Lcn/highlight/work_card_write/greendao/db/DaoSession;

    move-result-object v0

    invoke-virtual {v0}, Lcn/highlight/work_card_write/greendao/db/DaoSession;->getDoodleBeanDao()Lcn/highlight/work_card_write/greendao/db/DoodleBeanDao;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcn/highlight/work_card_write/greendao/db/DoodleBeanDao;->insert(Ljava/lang/Object;)J

    return-void
.end method

.method public static insertAll(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/highlight/work_card_write/greendao/table/DoodleBean;",
            ">;)V"
        }
    .end annotation

    .line 25
    invoke-static {}, Lcn/highlight/work_card_write/MyApplication;->getDaoInstant()Lcn/highlight/work_card_write/greendao/db/DaoSession;

    move-result-object v0

    invoke-virtual {v0}, Lcn/highlight/work_card_write/greendao/db/DaoSession;->getDoodleBeanDao()Lcn/highlight/work_card_write/greendao/db/DoodleBeanDao;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcn/highlight/work_card_write/greendao/db/DoodleBeanDao;->insertInTx(Ljava/lang/Iterable;)V

    return-void
.end method

.method public static queryAllByName(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcn/highlight/work_card_write/greendao/table/DoodleBean;",
            ">;"
        }
    .end annotation

    .line 66
    :try_start_0
    invoke-static {}, Lcn/highlight/work_card_write/MyApplication;->getDaoInstant()Lcn/highlight/work_card_write/greendao/db/DaoSession;

    move-result-object v0

    invoke-virtual {v0}, Lcn/highlight/work_card_write/greendao/db/DaoSession;->getDoodleBeanDao()Lcn/highlight/work_card_write/greendao/db/DoodleBeanDao;

    move-result-object v0

    invoke-virtual {v0}, Lcn/highlight/work_card_write/greendao/db/DoodleBeanDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    sget-object v1, Lcn/highlight/work_card_write/greendao/db/DoodleBeanDao$Properties;->ImageName:Lorg/greenrobot/greendao/Property;

    invoke-virtual {v1, p0}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object p0

    const/4 v1, 0x0

    new-array v1, v1, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {v0, p0, v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lorg/greenrobot/greendao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 68
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 69
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    return-object p0
.end method
