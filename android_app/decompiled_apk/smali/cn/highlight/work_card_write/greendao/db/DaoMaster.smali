.class public Lcn/highlight/work_card_write/greendao/db/DaoMaster;
.super Lorg/greenrobot/greendao/AbstractDaoMaster;
.source "DaoMaster.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/highlight/work_card_write/greendao/db/DaoMaster$DevOpenHelper;,
        Lcn/highlight/work_card_write/greendao/db/DaoMaster$OpenHelper;
    }
.end annotation


# static fields
.field public static final SCHEMA_VERSION:I = 0x3


# direct methods
.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .line 47
    new-instance v0, Lorg/greenrobot/greendao/database/StandardDatabase;

    invoke-direct {v0, p1}, Lorg/greenrobot/greendao/database/StandardDatabase;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-direct {p0, v0}, Lcn/highlight/work_card_write/greendao/db/DaoMaster;-><init>(Lorg/greenrobot/greendao/database/Database;)V

    return-void
.end method

.method public constructor <init>(Lorg/greenrobot/greendao/database/Database;)V
    .locals 1

    const/4 v0, 0x3

    .line 51
    invoke-direct {p0, p1, v0}, Lorg/greenrobot/greendao/AbstractDaoMaster;-><init>(Lorg/greenrobot/greendao/database/Database;I)V

    .line 52
    const-class p1, Lcn/highlight/work_card_write/greendao/db/BadgeBeanDao;

    invoke-virtual {p0, p1}, Lcn/highlight/work_card_write/greendao/db/DaoMaster;->registerDaoClass(Ljava/lang/Class;)V

    .line 53
    const-class p1, Lcn/highlight/work_card_write/greendao/db/DoodleBeanDao;

    invoke-virtual {p0, p1}, Lcn/highlight/work_card_write/greendao/db/DaoMaster;->registerDaoClass(Ljava/lang/Class;)V

    .line 54
    const-class p1, Lcn/highlight/work_card_write/greendao/db/TestBeanDao;

    invoke-virtual {p0, p1}, Lcn/highlight/work_card_write/greendao/db/DaoMaster;->registerDaoClass(Ljava/lang/Class;)V

    return-void
.end method

.method public static createAllTables(Lorg/greenrobot/greendao/database/Database;Z)V
    .locals 0

    .line 24
    invoke-static {p0, p1}, Lcn/highlight/work_card_write/greendao/db/BadgeBeanDao;->createTable(Lorg/greenrobot/greendao/database/Database;Z)V

    .line 25
    invoke-static {p0, p1}, Lcn/highlight/work_card_write/greendao/db/DoodleBeanDao;->createTable(Lorg/greenrobot/greendao/database/Database;Z)V

    .line 26
    invoke-static {p0, p1}, Lcn/highlight/work_card_write/greendao/db/TestBeanDao;->createTable(Lorg/greenrobot/greendao/database/Database;Z)V

    return-void
.end method

.method public static dropAllTables(Lorg/greenrobot/greendao/database/Database;Z)V
    .locals 0

    .line 31
    invoke-static {p0, p1}, Lcn/highlight/work_card_write/greendao/db/BadgeBeanDao;->dropTable(Lorg/greenrobot/greendao/database/Database;Z)V

    .line 32
    invoke-static {p0, p1}, Lcn/highlight/work_card_write/greendao/db/DoodleBeanDao;->dropTable(Lorg/greenrobot/greendao/database/Database;Z)V

    .line 33
    invoke-static {p0, p1}, Lcn/highlight/work_card_write/greendao/db/TestBeanDao;->dropTable(Lorg/greenrobot/greendao/database/Database;Z)V

    return-void
.end method

.method public static newDevSession(Landroid/content/Context;Ljava/lang/String;)Lcn/highlight/work_card_write/greendao/db/DaoSession;
    .locals 1

    .line 41
    new-instance v0, Lcn/highlight/work_card_write/greendao/db/DaoMaster$DevOpenHelper;

    invoke-direct {v0, p0, p1}, Lcn/highlight/work_card_write/greendao/db/DaoMaster$DevOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcn/highlight/work_card_write/greendao/db/DaoMaster$DevOpenHelper;->getWritableDb()Lorg/greenrobot/greendao/database/Database;

    move-result-object p0

    .line 42
    new-instance p1, Lcn/highlight/work_card_write/greendao/db/DaoMaster;

    invoke-direct {p1, p0}, Lcn/highlight/work_card_write/greendao/db/DaoMaster;-><init>(Lorg/greenrobot/greendao/database/Database;)V

    .line 43
    invoke-virtual {p1}, Lcn/highlight/work_card_write/greendao/db/DaoMaster;->newSession()Lcn/highlight/work_card_write/greendao/db/DaoSession;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public newSession()Lcn/highlight/work_card_write/greendao/db/DaoSession;
    .locals 4

    .line 58
    new-instance v0, Lcn/highlight/work_card_write/greendao/db/DaoSession;

    iget-object v1, p0, Lcn/highlight/work_card_write/greendao/db/DaoMaster;->db:Lorg/greenrobot/greendao/database/Database;

    sget-object v2, Lorg/greenrobot/greendao/identityscope/IdentityScopeType;->Session:Lorg/greenrobot/greendao/identityscope/IdentityScopeType;

    iget-object v3, p0, Lcn/highlight/work_card_write/greendao/db/DaoMaster;->daoConfigMap:Ljava/util/Map;

    invoke-direct {v0, v1, v2, v3}, Lcn/highlight/work_card_write/greendao/db/DaoSession;-><init>(Lorg/greenrobot/greendao/database/Database;Lorg/greenrobot/greendao/identityscope/IdentityScopeType;Ljava/util/Map;)V

    return-object v0
.end method

.method public newSession(Lorg/greenrobot/greendao/identityscope/IdentityScopeType;)Lcn/highlight/work_card_write/greendao/db/DaoSession;
    .locals 3

    .line 62
    new-instance v0, Lcn/highlight/work_card_write/greendao/db/DaoSession;

    iget-object v1, p0, Lcn/highlight/work_card_write/greendao/db/DaoMaster;->db:Lorg/greenrobot/greendao/database/Database;

    iget-object v2, p0, Lcn/highlight/work_card_write/greendao/db/DaoMaster;->daoConfigMap:Ljava/util/Map;

    invoke-direct {v0, v1, p1, v2}, Lcn/highlight/work_card_write/greendao/db/DaoSession;-><init>(Lorg/greenrobot/greendao/database/Database;Lorg/greenrobot/greendao/identityscope/IdentityScopeType;Ljava/util/Map;)V

    return-object v0
.end method

.method public bridge synthetic newSession()Lorg/greenrobot/greendao/AbstractDaoSession;
    .locals 1

    .line 19
    invoke-virtual {p0}, Lcn/highlight/work_card_write/greendao/db/DaoMaster;->newSession()Lcn/highlight/work_card_write/greendao/db/DaoSession;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newSession(Lorg/greenrobot/greendao/identityscope/IdentityScopeType;)Lorg/greenrobot/greendao/AbstractDaoSession;
    .locals 0

    .line 19
    invoke-virtual {p0, p1}, Lcn/highlight/work_card_write/greendao/db/DaoMaster;->newSession(Lorg/greenrobot/greendao/identityscope/IdentityScopeType;)Lcn/highlight/work_card_write/greendao/db/DaoSession;

    move-result-object p1

    return-object p1
.end method
