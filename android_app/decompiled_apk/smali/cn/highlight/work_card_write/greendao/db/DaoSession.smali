.class public Lcn/highlight/work_card_write/greendao/db/DaoSession;
.super Lorg/greenrobot/greendao/AbstractDaoSession;
.source "DaoSession.java"


# instance fields
.field private final badgeBeanDao:Lcn/highlight/work_card_write/greendao/db/BadgeBeanDao;

.field private final badgeBeanDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

.field private final doodleBeanDao:Lcn/highlight/work_card_write/greendao/db/DoodleBeanDao;

.field private final doodleBeanDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

.field private final testBeanDao:Lcn/highlight/work_card_write/greendao/db/TestBeanDao;

.field private final testBeanDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;


# direct methods
.method public constructor <init>(Lorg/greenrobot/greendao/database/Database;Lorg/greenrobot/greendao/identityscope/IdentityScopeType;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/greenrobot/greendao/database/Database;",
            "Lorg/greenrobot/greendao/identityscope/IdentityScopeType;",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Lorg/greenrobot/greendao/AbstractDao<",
            "**>;>;",
            "Lorg/greenrobot/greendao/internal/DaoConfig;",
            ">;)V"
        }
    .end annotation

    .line 38
    invoke-direct {p0, p1}, Lorg/greenrobot/greendao/AbstractDaoSession;-><init>(Lorg/greenrobot/greendao/database/Database;)V

    .line 40
    const-class p1, Lcn/highlight/work_card_write/greendao/db/BadgeBeanDao;

    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-virtual {p1}, Lorg/greenrobot/greendao/internal/DaoConfig;->clone()Lorg/greenrobot/greendao/internal/DaoConfig;

    move-result-object p1

    iput-object p1, p0, Lcn/highlight/work_card_write/greendao/db/DaoSession;->badgeBeanDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

    .line 41
    iget-object p1, p0, Lcn/highlight/work_card_write/greendao/db/DaoSession;->badgeBeanDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-virtual {p1, p2}, Lorg/greenrobot/greendao/internal/DaoConfig;->initIdentityScope(Lorg/greenrobot/greendao/identityscope/IdentityScopeType;)V

    .line 43
    const-class p1, Lcn/highlight/work_card_write/greendao/db/DoodleBeanDao;

    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-virtual {p1}, Lorg/greenrobot/greendao/internal/DaoConfig;->clone()Lorg/greenrobot/greendao/internal/DaoConfig;

    move-result-object p1

    iput-object p1, p0, Lcn/highlight/work_card_write/greendao/db/DaoSession;->doodleBeanDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

    .line 44
    iget-object p1, p0, Lcn/highlight/work_card_write/greendao/db/DaoSession;->doodleBeanDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-virtual {p1, p2}, Lorg/greenrobot/greendao/internal/DaoConfig;->initIdentityScope(Lorg/greenrobot/greendao/identityscope/IdentityScopeType;)V

    .line 46
    const-class p1, Lcn/highlight/work_card_write/greendao/db/TestBeanDao;

    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-virtual {p1}, Lorg/greenrobot/greendao/internal/DaoConfig;->clone()Lorg/greenrobot/greendao/internal/DaoConfig;

    move-result-object p1

    iput-object p1, p0, Lcn/highlight/work_card_write/greendao/db/DaoSession;->testBeanDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

    .line 47
    iget-object p1, p0, Lcn/highlight/work_card_write/greendao/db/DaoSession;->testBeanDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-virtual {p1, p2}, Lorg/greenrobot/greendao/internal/DaoConfig;->initIdentityScope(Lorg/greenrobot/greendao/identityscope/IdentityScopeType;)V

    .line 49
    new-instance p1, Lcn/highlight/work_card_write/greendao/db/BadgeBeanDao;

    iget-object p2, p0, Lcn/highlight/work_card_write/greendao/db/DaoSession;->badgeBeanDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-direct {p1, p2, p0}, Lcn/highlight/work_card_write/greendao/db/BadgeBeanDao;-><init>(Lorg/greenrobot/greendao/internal/DaoConfig;Lcn/highlight/work_card_write/greendao/db/DaoSession;)V

    iput-object p1, p0, Lcn/highlight/work_card_write/greendao/db/DaoSession;->badgeBeanDao:Lcn/highlight/work_card_write/greendao/db/BadgeBeanDao;

    .line 50
    new-instance p1, Lcn/highlight/work_card_write/greendao/db/DoodleBeanDao;

    iget-object p2, p0, Lcn/highlight/work_card_write/greendao/db/DaoSession;->doodleBeanDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-direct {p1, p2, p0}, Lcn/highlight/work_card_write/greendao/db/DoodleBeanDao;-><init>(Lorg/greenrobot/greendao/internal/DaoConfig;Lcn/highlight/work_card_write/greendao/db/DaoSession;)V

    iput-object p1, p0, Lcn/highlight/work_card_write/greendao/db/DaoSession;->doodleBeanDao:Lcn/highlight/work_card_write/greendao/db/DoodleBeanDao;

    .line 51
    new-instance p1, Lcn/highlight/work_card_write/greendao/db/TestBeanDao;

    iget-object p2, p0, Lcn/highlight/work_card_write/greendao/db/DaoSession;->testBeanDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-direct {p1, p2, p0}, Lcn/highlight/work_card_write/greendao/db/TestBeanDao;-><init>(Lorg/greenrobot/greendao/internal/DaoConfig;Lcn/highlight/work_card_write/greendao/db/DaoSession;)V

    iput-object p1, p0, Lcn/highlight/work_card_write/greendao/db/DaoSession;->testBeanDao:Lcn/highlight/work_card_write/greendao/db/TestBeanDao;

    .line 53
    const-class p1, Lcn/highlight/work_card_write/greendao/table/BadgeBean;

    iget-object p2, p0, Lcn/highlight/work_card_write/greendao/db/DaoSession;->badgeBeanDao:Lcn/highlight/work_card_write/greendao/db/BadgeBeanDao;

    invoke-virtual {p0, p1, p2}, Lcn/highlight/work_card_write/greendao/db/DaoSession;->registerDao(Ljava/lang/Class;Lorg/greenrobot/greendao/AbstractDao;)V

    .line 54
    const-class p1, Lcn/highlight/work_card_write/greendao/table/DoodleBean;

    iget-object p2, p0, Lcn/highlight/work_card_write/greendao/db/DaoSession;->doodleBeanDao:Lcn/highlight/work_card_write/greendao/db/DoodleBeanDao;

    invoke-virtual {p0, p1, p2}, Lcn/highlight/work_card_write/greendao/db/DaoSession;->registerDao(Ljava/lang/Class;Lorg/greenrobot/greendao/AbstractDao;)V

    .line 55
    const-class p1, Lcn/highlight/work_card_write/greendao/table/TestBean;

    iget-object p2, p0, Lcn/highlight/work_card_write/greendao/db/DaoSession;->testBeanDao:Lcn/highlight/work_card_write/greendao/db/TestBeanDao;

    invoke-virtual {p0, p1, p2}, Lcn/highlight/work_card_write/greendao/db/DaoSession;->registerDao(Ljava/lang/Class;Lorg/greenrobot/greendao/AbstractDao;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 59
    iget-object v0, p0, Lcn/highlight/work_card_write/greendao/db/DaoSession;->badgeBeanDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/internal/DaoConfig;->clearIdentityScope()V

    .line 60
    iget-object v0, p0, Lcn/highlight/work_card_write/greendao/db/DaoSession;->doodleBeanDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/internal/DaoConfig;->clearIdentityScope()V

    .line 61
    iget-object v0, p0, Lcn/highlight/work_card_write/greendao/db/DaoSession;->testBeanDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/internal/DaoConfig;->clearIdentityScope()V

    return-void
.end method

.method public getBadgeBeanDao()Lcn/highlight/work_card_write/greendao/db/BadgeBeanDao;
    .locals 1

    .line 65
    iget-object v0, p0, Lcn/highlight/work_card_write/greendao/db/DaoSession;->badgeBeanDao:Lcn/highlight/work_card_write/greendao/db/BadgeBeanDao;

    return-object v0
.end method

.method public getDoodleBeanDao()Lcn/highlight/work_card_write/greendao/db/DoodleBeanDao;
    .locals 1

    .line 69
    iget-object v0, p0, Lcn/highlight/work_card_write/greendao/db/DaoSession;->doodleBeanDao:Lcn/highlight/work_card_write/greendao/db/DoodleBeanDao;

    return-object v0
.end method

.method public getTestBeanDao()Lcn/highlight/work_card_write/greendao/db/TestBeanDao;
    .locals 1

    .line 73
    iget-object v0, p0, Lcn/highlight/work_card_write/greendao/db/DaoSession;->testBeanDao:Lcn/highlight/work_card_write/greendao/db/TestBeanDao;

    return-object v0
.end method
