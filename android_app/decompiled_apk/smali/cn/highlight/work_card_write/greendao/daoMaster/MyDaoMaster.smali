.class public Lcn/highlight/work_card_write/greendao/daoMaster/MyDaoMaster;
.super Lcn/highlight/work_card_write/greendao/db/DaoMaster;
.source "MyDaoMaster.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/highlight/work_card_write/greendao/daoMaster/MyDaoMaster$MyHelper;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcn/highlight/work_card_write/greendao/db/DaoMaster;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public constructor <init>(Lorg/greenrobot/greendao/database/Database;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lcn/highlight/work_card_write/greendao/db/DaoMaster;-><init>(Lorg/greenrobot/greendao/database/Database;)V

    return-void
.end method
