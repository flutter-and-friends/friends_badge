.class public Lcn/highlight/work_card_write/greendao/db/BadgeBeanDao;
.super Lorg/greenrobot/greendao/AbstractDao;
.source "BadgeBeanDao.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/highlight/work_card_write/greendao/db/BadgeBeanDao$Properties;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/greenrobot/greendao/AbstractDao<",
        "Lcn/highlight/work_card_write/greendao/table/BadgeBean;",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# static fields
.field public static final TABLENAME:Ljava/lang/String; = "BADGE_BEAN"


# direct methods
.method public constructor <init>(Lorg/greenrobot/greendao/internal/DaoConfig;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lorg/greenrobot/greendao/AbstractDao;-><init>(Lorg/greenrobot/greendao/internal/DaoConfig;)V

    return-void
.end method

.method public constructor <init>(Lorg/greenrobot/greendao/internal/DaoConfig;Lcn/highlight/work_card_write/greendao/db/DaoSession;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2}, Lorg/greenrobot/greendao/AbstractDao;-><init>(Lorg/greenrobot/greendao/internal/DaoConfig;Lorg/greenrobot/greendao/AbstractDaoSession;)V

    return-void
.end method

.method public static createTable(Lorg/greenrobot/greendao/database/Database;Z)V
    .locals 2

    if-eqz p1, :cond_0

    const-string p1, "IF NOT EXISTS "

    goto :goto_0

    :cond_0
    const-string p1, ""

    .line 51
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE TABLE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\"BADGE_BEAN\" (\"_id\" INTEGER PRIMARY KEY AUTOINCREMENT ,\"IMAGE_NAME\" TEXT,\"SIZE\" TEXT,\"COLOR\" TEXT,\"BITMAP_START\" BLOB,\"BITMAP_END\" BLOB,\"TIME\" TEXT,\"YL1\" TEXT,\"YL2\" TEXT,\"YL3\" TEXT);"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/greenrobot/greendao/database/Database;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public static dropTable(Lorg/greenrobot/greendao/database/Database;Z)V
    .locals 2

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DROP TABLE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    const-string p1, "IF EXISTS "

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\"BADGE_BEAN\""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 67
    invoke-interface {p0, p1}, Lorg/greenrobot/greendao/database/Database;->execSQL(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final bindValues(Landroid/database/sqlite/SQLiteStatement;Lcn/highlight/work_card_write/greendao/table/BadgeBean;)V
    .locals 4

    .line 127
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    .line 129
    invoke-virtual {p2}, Lcn/highlight/work_card_write/greendao/table/BadgeBean;->getId()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 131
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 134
    :cond_0
    invoke-virtual {p2}, Lcn/highlight/work_card_write/greendao/table/BadgeBean;->getImageName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    .line 136
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 139
    :cond_1
    invoke-virtual {p2}, Lcn/highlight/work_card_write/greendao/table/BadgeBean;->getSize()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x3

    .line 141
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 144
    :cond_2
    invoke-virtual {p2}, Lcn/highlight/work_card_write/greendao/table/BadgeBean;->getColor()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    const/4 v1, 0x4

    .line 146
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 149
    :cond_3
    invoke-virtual {p2}, Lcn/highlight/work_card_write/greendao/table/BadgeBean;->getBitmapStart()[B

    move-result-object v0

    if-eqz v0, :cond_4

    const/4 v1, 0x5

    .line 151
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindBlob(I[B)V

    .line 154
    :cond_4
    invoke-virtual {p2}, Lcn/highlight/work_card_write/greendao/table/BadgeBean;->getBitmapEnd()[B

    move-result-object v0

    if-eqz v0, :cond_5

    const/4 v1, 0x6

    .line 156
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindBlob(I[B)V

    .line 159
    :cond_5
    invoke-virtual {p2}, Lcn/highlight/work_card_write/greendao/table/BadgeBean;->getTime()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    const/4 v1, 0x7

    .line 161
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 164
    :cond_6
    invoke-virtual {p2}, Lcn/highlight/work_card_write/greendao/table/BadgeBean;->getYL1()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    const/16 v1, 0x8

    .line 166
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 169
    :cond_7
    invoke-virtual {p2}, Lcn/highlight/work_card_write/greendao/table/BadgeBean;->getYL2()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    const/16 v1, 0x9

    .line 171
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 174
    :cond_8
    invoke-virtual {p2}, Lcn/highlight/work_card_write/greendao/table/BadgeBean;->getYL3()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_9

    const/16 v0, 0xa

    .line 176
    invoke-virtual {p1, v0, p2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    :cond_9
    return-void
.end method

.method protected bridge synthetic bindValues(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/Object;)V
    .locals 0

    .line 18
    check-cast p2, Lcn/highlight/work_card_write/greendao/table/BadgeBean;

    invoke-virtual {p0, p1, p2}, Lcn/highlight/work_card_write/greendao/db/BadgeBeanDao;->bindValues(Landroid/database/sqlite/SQLiteStatement;Lcn/highlight/work_card_write/greendao/table/BadgeBean;)V

    return-void
.end method

.method protected final bindValues(Lorg/greenrobot/greendao/database/DatabaseStatement;Lcn/highlight/work_card_write/greendao/table/BadgeBean;)V
    .locals 4

    .line 72
    invoke-interface {p1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->clearBindings()V

    .line 74
    invoke-virtual {p2}, Lcn/highlight/work_card_write/greendao/table/BadgeBean;->getId()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 76
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 79
    :cond_0
    invoke-virtual {p2}, Lcn/highlight/work_card_write/greendao/table/BadgeBean;->getImageName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    .line 81
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 84
    :cond_1
    invoke-virtual {p2}, Lcn/highlight/work_card_write/greendao/table/BadgeBean;->getSize()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x3

    .line 86
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 89
    :cond_2
    invoke-virtual {p2}, Lcn/highlight/work_card_write/greendao/table/BadgeBean;->getColor()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    const/4 v1, 0x4

    .line 91
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 94
    :cond_3
    invoke-virtual {p2}, Lcn/highlight/work_card_write/greendao/table/BadgeBean;->getBitmapStart()[B

    move-result-object v0

    if-eqz v0, :cond_4

    const/4 v1, 0x5

    .line 96
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindBlob(I[B)V

    .line 99
    :cond_4
    invoke-virtual {p2}, Lcn/highlight/work_card_write/greendao/table/BadgeBean;->getBitmapEnd()[B

    move-result-object v0

    if-eqz v0, :cond_5

    const/4 v1, 0x6

    .line 101
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindBlob(I[B)V

    .line 104
    :cond_5
    invoke-virtual {p2}, Lcn/highlight/work_card_write/greendao/table/BadgeBean;->getTime()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    const/4 v1, 0x7

    .line 106
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 109
    :cond_6
    invoke-virtual {p2}, Lcn/highlight/work_card_write/greendao/table/BadgeBean;->getYL1()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    const/16 v1, 0x8

    .line 111
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 114
    :cond_7
    invoke-virtual {p2}, Lcn/highlight/work_card_write/greendao/table/BadgeBean;->getYL2()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    const/16 v1, 0x9

    .line 116
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 119
    :cond_8
    invoke-virtual {p2}, Lcn/highlight/work_card_write/greendao/table/BadgeBean;->getYL3()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_9

    const/16 v0, 0xa

    .line 121
    invoke-interface {p1, v0, p2}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    :cond_9
    return-void
.end method

.method protected bridge synthetic bindValues(Lorg/greenrobot/greendao/database/DatabaseStatement;Ljava/lang/Object;)V
    .locals 0

    .line 18
    check-cast p2, Lcn/highlight/work_card_write/greendao/table/BadgeBean;

    invoke-virtual {p0, p1, p2}, Lcn/highlight/work_card_write/greendao/db/BadgeBeanDao;->bindValues(Lorg/greenrobot/greendao/database/DatabaseStatement;Lcn/highlight/work_card_write/greendao/table/BadgeBean;)V

    return-void
.end method

.method public getKey(Lcn/highlight/work_card_write/greendao/table/BadgeBean;)Ljava/lang/Long;
    .locals 0

    if-eqz p1, :cond_0

    .line 225
    invoke-virtual {p1}, Lcn/highlight/work_card_write/greendao/table/BadgeBean;->getId()Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic getKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 18
    check-cast p1, Lcn/highlight/work_card_write/greendao/table/BadgeBean;

    invoke-virtual {p0, p1}, Lcn/highlight/work_card_write/greendao/db/BadgeBeanDao;->getKey(Lcn/highlight/work_card_write/greendao/table/BadgeBean;)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public hasKey(Lcn/highlight/work_card_write/greendao/table/BadgeBean;)Z
    .locals 0

    .line 233
    invoke-virtual {p1}, Lcn/highlight/work_card_write/greendao/table/BadgeBean;->getId()Ljava/lang/Long;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public bridge synthetic hasKey(Ljava/lang/Object;)Z
    .locals 0

    .line 18
    check-cast p1, Lcn/highlight/work_card_write/greendao/table/BadgeBean;

    invoke-virtual {p0, p1}, Lcn/highlight/work_card_write/greendao/db/BadgeBeanDao;->hasKey(Lcn/highlight/work_card_write/greendao/table/BadgeBean;)Z

    move-result p1

    return p1
.end method

.method protected final isEntityUpdateable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public readEntity(Landroid/database/Cursor;I)Lcn/highlight/work_card_write/greendao/table/BadgeBean;
    .locals 12

    .line 187
    new-instance v11, Lcn/highlight/work_card_write/greendao/table/BadgeBean;

    add-int/lit8 v0, p2, 0x0

    .line 188
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    move-object v1, v0

    :goto_0
    add-int/lit8 v0, p2, 0x1

    .line 189
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v3, v2

    goto :goto_1

    :cond_1
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    :goto_1
    add-int/lit8 v0, p2, 0x2

    .line 190
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v4, v2

    goto :goto_2

    :cond_2
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    :goto_2
    add-int/lit8 v0, p2, 0x3

    .line 191
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_3

    move-object v5, v2

    goto :goto_3

    :cond_3
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    :goto_3
    add-int/lit8 v0, p2, 0x4

    .line 192
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v6

    if-eqz v6, :cond_4

    move-object v6, v2

    goto :goto_4

    :cond_4
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    move-object v6, v0

    :goto_4
    add-int/lit8 v0, p2, 0x5

    .line 193
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-eqz v7, :cond_5

    move-object v7, v2

    goto :goto_5

    :cond_5
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    move-object v7, v0

    :goto_5
    add-int/lit8 v0, p2, 0x6

    .line 194
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v8

    if-eqz v8, :cond_6

    move-object v8, v2

    goto :goto_6

    :cond_6
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v8, v0

    :goto_6
    add-int/lit8 v0, p2, 0x7

    .line 195
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v9

    if-eqz v9, :cond_7

    move-object v9, v2

    goto :goto_7

    :cond_7
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v9, v0

    :goto_7
    add-int/lit8 v0, p2, 0x8

    .line 196
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v10

    if-eqz v10, :cond_8

    move-object v10, v2

    goto :goto_8

    :cond_8
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v10, v0

    :goto_8
    add-int/lit8 p2, p2, 0x9

    .line 197
    invoke-interface {p1, p2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_9

    move-object p1, v2

    goto :goto_9

    :cond_9
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_9
    move-object v0, v11

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    move-object v9, v10

    move-object v10, p1

    invoke-direct/range {v0 .. v10}, Lcn/highlight/work_card_write/greendao/table/BadgeBean;-><init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v11
.end method

.method public bridge synthetic readEntity(Landroid/database/Cursor;I)Ljava/lang/Object;
    .locals 0

    .line 18
    invoke-virtual {p0, p1, p2}, Lcn/highlight/work_card_write/greendao/db/BadgeBeanDao;->readEntity(Landroid/database/Cursor;I)Lcn/highlight/work_card_write/greendao/table/BadgeBean;

    move-result-object p1

    return-object p1
.end method

.method public readEntity(Landroid/database/Cursor;Lcn/highlight/work_card_write/greendao/table/BadgeBean;I)V
    .locals 3

    add-int/lit8 v0, p3, 0x0

    .line 204
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v0, v2

    goto :goto_0

    :cond_0
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :goto_0
    invoke-virtual {p2, v0}, Lcn/highlight/work_card_write/greendao/table/BadgeBean;->setId(Ljava/lang/Long;)V

    add-int/lit8 v0, p3, 0x1

    .line 205
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v0, v2

    goto :goto_1

    :cond_1
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {p2, v0}, Lcn/highlight/work_card_write/greendao/table/BadgeBean;->setImageName(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0x2

    .line 206
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_2

    move-object v0, v2

    goto :goto_2

    :cond_2
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {p2, v0}, Lcn/highlight/work_card_write/greendao/table/BadgeBean;->setSize(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0x3

    .line 207
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_3

    move-object v0, v2

    goto :goto_3

    :cond_3
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-virtual {p2, v0}, Lcn/highlight/work_card_write/greendao/table/BadgeBean;->setColor(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0x4

    .line 208
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_4

    move-object v0, v2

    goto :goto_4

    :cond_4
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    :goto_4
    invoke-virtual {p2, v0}, Lcn/highlight/work_card_write/greendao/table/BadgeBean;->setBitmapStart([B)V

    add-int/lit8 v0, p3, 0x5

    .line 209
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_5

    move-object v0, v2

    goto :goto_5

    :cond_5
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    :goto_5
    invoke-virtual {p2, v0}, Lcn/highlight/work_card_write/greendao/table/BadgeBean;->setBitmapEnd([B)V

    add-int/lit8 v0, p3, 0x6

    .line 210
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_6

    move-object v0, v2

    goto :goto_6

    :cond_6
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_6
    invoke-virtual {p2, v0}, Lcn/highlight/work_card_write/greendao/table/BadgeBean;->setTime(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0x7

    .line 211
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_7

    move-object v0, v2

    goto :goto_7

    :cond_7
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_7
    invoke-virtual {p2, v0}, Lcn/highlight/work_card_write/greendao/table/BadgeBean;->setYL1(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0x8

    .line 212
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_8

    move-object v0, v2

    goto :goto_8

    :cond_8
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_8
    invoke-virtual {p2, v0}, Lcn/highlight/work_card_write/greendao/table/BadgeBean;->setYL2(Ljava/lang/String;)V

    add-int/lit8 p3, p3, 0x9

    .line 213
    invoke-interface {p1, p3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_9

    :cond_9
    invoke-interface {p1, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_9
    invoke-virtual {p2, v2}, Lcn/highlight/work_card_write/greendao/table/BadgeBean;->setYL3(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic readEntity(Landroid/database/Cursor;Ljava/lang/Object;I)V
    .locals 0

    .line 18
    check-cast p2, Lcn/highlight/work_card_write/greendao/table/BadgeBean;

    invoke-virtual {p0, p1, p2, p3}, Lcn/highlight/work_card_write/greendao/db/BadgeBeanDao;->readEntity(Landroid/database/Cursor;Lcn/highlight/work_card_write/greendao/table/BadgeBean;I)V

    return-void
.end method

.method public readKey(Landroid/database/Cursor;I)Ljava/lang/Long;
    .locals 1

    add-int/lit8 p2, p2, 0x0

    .line 182
    invoke-interface {p1, p2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public bridge synthetic readKey(Landroid/database/Cursor;I)Ljava/lang/Object;
    .locals 0

    .line 18
    invoke-virtual {p0, p1, p2}, Lcn/highlight/work_card_write/greendao/db/BadgeBeanDao;->readKey(Landroid/database/Cursor;I)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method protected final updateKeyAfterInsert(Lcn/highlight/work_card_write/greendao/table/BadgeBean;J)Ljava/lang/Long;
    .locals 1

    .line 218
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/highlight/work_card_write/greendao/table/BadgeBean;->setId(Ljava/lang/Long;)V

    .line 219
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic updateKeyAfterInsert(Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 0

    .line 18
    check-cast p1, Lcn/highlight/work_card_write/greendao/table/BadgeBean;

    invoke-virtual {p0, p1, p2, p3}, Lcn/highlight/work_card_write/greendao/db/BadgeBeanDao;->updateKeyAfterInsert(Lcn/highlight/work_card_write/greendao/table/BadgeBean;J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method
