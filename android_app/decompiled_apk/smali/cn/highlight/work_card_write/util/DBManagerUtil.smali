.class public Lcn/highlight/work_card_write/util/DBManagerUtil;
.super Ljava/lang/Object;
.source "DBManagerUtil.java"


# static fields
.field private static DB_NAME:Ljava/lang/String; = "BadgeMould.db"

.field private static DB_PATH:Ljava/lang/String; = "/data/data/cn.highlight.work_card_write/databases/"

.field private static mInstance:Lcn/highlight/work_card_write/util/DBManagerUtil;


# instance fields
.field private mDaoMaster:Lcn/highlight/work_card_write/greendao/db/DaoMaster;

.field private mDaoSession:Lcn/highlight/work_card_write/greendao/db/DaoSession;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    sget-object v0, Lcn/highlight/work_card_write/util/DBManagerUtil;->mInstance:Lcn/highlight/work_card_write/util/DBManagerUtil;

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Lcn/highlight/work_card_write/greendao/daoMaster/MyDaoMaster$MyHelper;

    new-instance v1, Lcn/highlight/work_card_write/greendao/util/DatabaseContext;

    sget-object v2, Lcn/highlight/work_card_write/util/DBManagerUtil;->DB_PATH:Ljava/lang/String;

    invoke-direct {v1, p1, v2}, Lcn/highlight/work_card_write/greendao/util/DatabaseContext;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sget-object p1, Lcn/highlight/work_card_write/util/DBManagerUtil;->DB_NAME:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lcn/highlight/work_card_write/greendao/daoMaster/MyDaoMaster$MyHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)V

    .line 42
    new-instance p1, Lcn/highlight/work_card_write/greendao/db/DaoMaster;

    invoke-virtual {v0}, Lcn/highlight/work_card_write/greendao/daoMaster/MyDaoMaster$MyHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-direct {p1, v0}, Lcn/highlight/work_card_write/greendao/db/DaoMaster;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iput-object p1, p0, Lcn/highlight/work_card_write/util/DBManagerUtil;->mDaoMaster:Lcn/highlight/work_card_write/greendao/db/DaoMaster;

    .line 43
    iget-object p1, p0, Lcn/highlight/work_card_write/util/DBManagerUtil;->mDaoMaster:Lcn/highlight/work_card_write/greendao/db/DaoMaster;

    invoke-virtual {p1}, Lcn/highlight/work_card_write/greendao/db/DaoMaster;->newSession()Lcn/highlight/work_card_write/greendao/db/DaoSession;

    move-result-object p1

    iput-object p1, p0, Lcn/highlight/work_card_write/util/DBManagerUtil;->mDaoSession:Lcn/highlight/work_card_write/greendao/db/DaoSession;

    :cond_0
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcn/highlight/work_card_write/util/DBManagerUtil;
    .locals 2

    .line 28
    sget-object v0, Lcn/highlight/work_card_write/util/DBManagerUtil;->mInstance:Lcn/highlight/work_card_write/util/DBManagerUtil;

    if-nez v0, :cond_1

    .line 30
    const-class v0, Lcn/highlight/work_card_write/util/DBManagerUtil;

    monitor-enter v0

    .line 31
    :try_start_0
    sget-object v1, Lcn/highlight/work_card_write/util/DBManagerUtil;->mInstance:Lcn/highlight/work_card_write/util/DBManagerUtil;

    if-nez v1, :cond_0

    .line 32
    new-instance v1, Lcn/highlight/work_card_write/util/DBManagerUtil;

    invoke-direct {v1, p0}, Lcn/highlight/work_card_write/util/DBManagerUtil;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcn/highlight/work_card_write/util/DBManagerUtil;->mInstance:Lcn/highlight/work_card_write/util/DBManagerUtil;

    .line 34
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 36
    :cond_1
    :goto_0
    sget-object p0, Lcn/highlight/work_card_write/util/DBManagerUtil;->mInstance:Lcn/highlight/work_card_write/util/DBManagerUtil;

    return-object p0
.end method

.method public static setDB_NAME(Landroid/content/Context;)V
    .locals 5

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcn/highlight/work_card_write/util/DBManagerUtil;->DB_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcn/highlight/work_card_write/util/DBManagerUtil;->DB_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 67
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 68
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 69
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_0

    const-string p0, "DB_DELETE"

    const-string v0, "Failed to delete database file"

    .line 71
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 75
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    .line 77
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 78
    sget-object v0, Lcn/highlight/work_card_write/MyApplication;->instance:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "db/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcn/highlight/work_card_write/util/DBManagerUtil;->DB_NAME:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    const/16 v2, 0x400

    new-array v2, v2, [B

    .line 81
    :goto_0
    invoke-virtual {v0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    const/4 v4, 0x0

    .line 82
    invoke-virtual {v1, v2, v4, v3}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_0

    .line 83
    :cond_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 84
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 86
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 88
    :goto_1
    invoke-static {p0}, Lcn/highlight/work_card_write/util/DBManagerUtil;->getInstance(Landroid/content/Context;)Lcn/highlight/work_card_write/util/DBManagerUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcn/highlight/work_card_write/util/DBManagerUtil;->getmDaoSession()Lcn/highlight/work_card_write/greendao/db/DaoSession;

    move-result-object v0

    invoke-virtual {v0}, Lcn/highlight/work_card_write/greendao/db/DaoSession;->getDoodleBeanDao()Lcn/highlight/work_card_write/greendao/db/DoodleBeanDao;

    move-result-object v0

    invoke-virtual {v0}, Lcn/highlight/work_card_write/greendao/db/DoodleBeanDao;->loadAll()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcn/highlight/work_card_write/greendao/dao/DoodleBeanDaoUse;->deleteInTx(Ljava/util/List;)V

    .line 89
    invoke-static {p0}, Lcn/highlight/work_card_write/util/DBManagerUtil;->getInstance(Landroid/content/Context;)Lcn/highlight/work_card_write/util/DBManagerUtil;

    move-result-object p0

    invoke-virtual {p0}, Lcn/highlight/work_card_write/util/DBManagerUtil;->getmDaoSession()Lcn/highlight/work_card_write/greendao/db/DaoSession;

    move-result-object p0

    invoke-virtual {p0}, Lcn/highlight/work_card_write/greendao/db/DaoSession;->getDoodleBeanDao()Lcn/highlight/work_card_write/greendao/db/DoodleBeanDao;

    move-result-object p0

    invoke-virtual {p0}, Lcn/highlight/work_card_write/greendao/db/DoodleBeanDao;->loadAll()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lcn/highlight/work_card_write/greendao/dao/DoodleBeanDaoUse;->insertAll(Ljava/util/List;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public getmDaoMaster()Lcn/highlight/work_card_write/greendao/db/DaoMaster;
    .locals 1

    .line 49
    iget-object v0, p0, Lcn/highlight/work_card_write/util/DBManagerUtil;->mDaoMaster:Lcn/highlight/work_card_write/greendao/db/DaoMaster;

    return-object v0
.end method

.method public getmDaoSession()Lcn/highlight/work_card_write/greendao/db/DaoSession;
    .locals 1

    .line 57
    iget-object v0, p0, Lcn/highlight/work_card_write/util/DBManagerUtil;->mDaoSession:Lcn/highlight/work_card_write/greendao/db/DaoSession;

    return-object v0
.end method

.method public setmDaoMaster(Lcn/highlight/work_card_write/greendao/db/DaoMaster;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcn/highlight/work_card_write/util/DBManagerUtil;->mDaoMaster:Lcn/highlight/work_card_write/greendao/db/DaoMaster;

    return-void
.end method

.method public setmDaoSession(Lcn/highlight/work_card_write/greendao/db/DaoSession;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcn/highlight/work_card_write/util/DBManagerUtil;->mDaoSession:Lcn/highlight/work_card_write/greendao/db/DaoSession;

    return-void
.end method
