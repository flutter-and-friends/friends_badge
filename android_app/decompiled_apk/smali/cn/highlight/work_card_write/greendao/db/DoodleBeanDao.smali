.class public Lcn/highlight/work_card_write/greendao/db/DoodleBeanDao;
.super Lorg/greenrobot/greendao/AbstractDao;
.source "DoodleBeanDao.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/highlight/work_card_write/greendao/db/DoodleBeanDao$Properties;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/greenrobot/greendao/AbstractDao<",
        "Lcn/highlight/work_card_write/greendao/table/DoodleBean;",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# static fields
.field public static final TABLENAME:Ljava/lang/String; = "DOODLE_BEAN"


# direct methods
.method public constructor <init>(Lorg/greenrobot/greendao/internal/DaoConfig;)V
    .locals 0

    .line 60
    invoke-direct {p0, p1}, Lorg/greenrobot/greendao/AbstractDao;-><init>(Lorg/greenrobot/greendao/internal/DaoConfig;)V

    return-void
.end method

.method public constructor <init>(Lorg/greenrobot/greendao/internal/DaoConfig;Lcn/highlight/work_card_write/greendao/db/DaoSession;)V
    .locals 0

    .line 64
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

    .line 70
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE TABLE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\"DOODLE_BEAN\" (\"_id\" INTEGER PRIMARY KEY AUTOINCREMENT ,\"IMAGE_NAME\" TEXT,\"M_IDOODLE_PEN\" INTEGER NOT NULL ,\"M_SIZE\" REAL NOT NULL ,\"M_COLOR\" INTEGER NOT NULL ,\"M_LOCATION_X\" REAL NOT NULL ,\"M_LOCATION_Y\" REAL NOT NULL ,\"M_PIVOT_X\" REAL NOT NULL ,\"M_PIVOT_Y\" REAL NOT NULL ,\"M_ROTATE\" REAL NOT NULL ,\"M_IS_NEED_CLIP_OUTSIDE\" INTEGER NOT NULL ,\"M_SCALE\" REAL NOT NULL ,\"M_TEXT0\" TEXT,\"M_TEXT\" TEXT,\"M_TEXT_STYLE\" TEXT,\"M_TEXT_BG_COLOR\" INTEGER NOT NULL ,\"M_TEXT_BOLD\" INTEGER NOT NULL ,\"M_TEXT_ITALIC\" INTEGER NOT NULL ,\"M_TEXT_UNDERLINE\" INTEGER NOT NULL ,\"M_BITMAP\" BLOB,\"BG_COLOR\" INTEGER NOT NULL ,\"FG_COLOR\" INTEGER NOT NULL ,\"SHAPE1\" INTEGER NOT NULL ,\"WIDTH\" INTEGER NOT NULL ,\"HEIGHT\" INTEGER NOT NULL ,\"EFFECTS\" INTEGER NOT NULL ,\"YL1\" TEXT,\"YL2\" TEXT,\"YL3\" TEXT);"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/greenrobot/greendao/database/Database;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public static dropTable(Lorg/greenrobot/greendao/database/Database;Z)V
    .locals 2

    .line 104
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

    const-string p1, "\"DOODLE_BEAN\""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 105
    invoke-interface {p0, p1}, Lorg/greenrobot/greendao/database/Database;->execSQL(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final bindValues(Landroid/database/sqlite/SQLiteStatement;Lcn/highlight/work_card_write/greendao/table/DoodleBean;)V
    .locals 4

    .line 180
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    .line 182
    invoke-virtual {p2}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->getId()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 184
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 187
    :cond_0
    invoke-virtual {p2}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->getImageName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    .line 189
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    :cond_1
    const/4 v0, 0x3

    .line 191
    invoke-virtual {p2}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->getMIDoodlePen()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/4 v0, 0x4

    .line 192
    invoke-virtual {p2}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->getMSize()F

    move-result v1

    float-to-double v1, v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindDouble(ID)V

    const/4 v0, 0x5

    .line 193
    invoke-virtual {p2}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->getMColor()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/4 v0, 0x6

    .line 194
    invoke-virtual {p2}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->getMLocationX()F

    move-result v1

    float-to-double v1, v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindDouble(ID)V

    const/4 v0, 0x7

    .line 195
    invoke-virtual {p2}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->getMLocationY()F

    move-result v1

    float-to-double v1, v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindDouble(ID)V

    const/16 v0, 0x8

    .line 196
    invoke-virtual {p2}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->getMPivotX()F

    move-result v1

    float-to-double v1, v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindDouble(ID)V

    const/16 v0, 0x9

    .line 197
    invoke-virtual {p2}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->getMPivotY()F

    move-result v1

    float-to-double v1, v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindDouble(ID)V

    const/16 v0, 0xa

    .line 198
    invoke-virtual {p2}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->getMRotate()F

    move-result v1

    float-to-double v1, v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindDouble(ID)V

    const/16 v0, 0xb

    .line 199
    invoke-virtual {p2}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->getMIsNeedClipOutside()Z

    move-result v1

    if-eqz v1, :cond_2

    const-wide/16 v1, 0x1

    goto :goto_0

    :cond_2
    const-wide/16 v1, 0x0

    :goto_0
    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/16 v0, 0xc

    .line 200
    invoke-virtual {p2}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->getMScale()F

    move-result v1

    float-to-double v1, v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindDouble(ID)V

    .line 202
    invoke-virtual {p2}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->getMText0()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    const/16 v1, 0xd

    .line 204
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 207
    :cond_3
    invoke-virtual {p2}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->getMText()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    const/16 v1, 0xe

    .line 209
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 212
    :cond_4
    invoke-virtual {p2}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->getMTextStyle()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    const/16 v1, 0xf

    .line 214
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    :cond_5
    const/16 v0, 0x10

    .line 216
    invoke-virtual {p2}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->getMTextBgColor()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/16 v0, 0x11

    .line 217
    invoke-virtual {p2}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->getMTextBold()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/16 v0, 0x12

    .line 218
    invoke-virtual {p2}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->getMTextItalic()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/16 v0, 0x13

    .line 219
    invoke-virtual {p2}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->getMTextUnderline()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 221
    invoke-virtual {p2}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->getMBitmap()[B

    move-result-object v0

    if-eqz v0, :cond_6

    const/16 v1, 0x14

    .line 223
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindBlob(I[B)V

    :cond_6
    const/16 v0, 0x15

    .line 225
    invoke-virtual {p2}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->getBgColor()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/16 v0, 0x16

    .line 226
    invoke-virtual {p2}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->getFgColor()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/16 v0, 0x17

    .line 227
    invoke-virtual {p2}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->getShape1()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/16 v0, 0x18

    .line 228
    invoke-virtual {p2}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->getWidth()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/16 v0, 0x19

    .line 229
    invoke-virtual {p2}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->getHeight()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/16 v0, 0x1a

    .line 230
    invoke-virtual {p2}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->getEffects()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 232
    invoke-virtual {p2}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->getYL1()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    const/16 v1, 0x1b

    .line 234
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 237
    :cond_7
    invoke-virtual {p2}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->getYL2()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    const/16 v1, 0x1c

    .line 239
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 242
    :cond_8
    invoke-virtual {p2}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->getYL3()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_9

    const/16 v0, 0x1d

    .line 244
    invoke-virtual {p1, v0, p2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    :cond_9
    return-void
.end method

.method protected bridge synthetic bindValues(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/Object;)V
    .locals 0

    .line 18
    check-cast p2, Lcn/highlight/work_card_write/greendao/table/DoodleBean;

    invoke-virtual {p0, p1, p2}, Lcn/highlight/work_card_write/greendao/db/DoodleBeanDao;->bindValues(Landroid/database/sqlite/SQLiteStatement;Lcn/highlight/work_card_write/greendao/table/DoodleBean;)V

    return-void
.end method

.method protected final bindValues(Lorg/greenrobot/greendao/database/DatabaseStatement;Lcn/highlight/work_card_write/greendao/table/DoodleBean;)V
    .locals 4

    .line 110
    invoke-interface {p1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->clearBindings()V

    .line 112
    invoke-virtual {p2}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->getId()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 114
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 117
    :cond_0
    invoke-virtual {p2}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->getImageName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    .line 119
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    :cond_1
    const/4 v0, 0x3

    .line 121
    invoke-virtual {p2}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->getMIDoodlePen()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    const/4 v0, 0x4

    .line 122
    invoke-virtual {p2}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->getMSize()F

    move-result v1

    float-to-double v1, v1

    invoke-interface {p1, v0, v1, v2}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindDouble(ID)V

    const/4 v0, 0x5

    .line 123
    invoke-virtual {p2}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->getMColor()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    const/4 v0, 0x6

    .line 124
    invoke-virtual {p2}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->getMLocationX()F

    move-result v1

    float-to-double v1, v1

    invoke-interface {p1, v0, v1, v2}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindDouble(ID)V

    const/4 v0, 0x7

    .line 125
    invoke-virtual {p2}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->getMLocationY()F

    move-result v1

    float-to-double v1, v1

    invoke-interface {p1, v0, v1, v2}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindDouble(ID)V

    const/16 v0, 0x8

    .line 126
    invoke-virtual {p2}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->getMPivotX()F

    move-result v1

    float-to-double v1, v1

    invoke-interface {p1, v0, v1, v2}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindDouble(ID)V

    const/16 v0, 0x9

    .line 127
    invoke-virtual {p2}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->getMPivotY()F

    move-result v1

    float-to-double v1, v1

    invoke-interface {p1, v0, v1, v2}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindDouble(ID)V

    const/16 v0, 0xa

    .line 128
    invoke-virtual {p2}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->getMRotate()F

    move-result v1

    float-to-double v1, v1

    invoke-interface {p1, v0, v1, v2}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindDouble(ID)V

    const/16 v0, 0xb

    .line 129
    invoke-virtual {p2}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->getMIsNeedClipOutside()Z

    move-result v1

    if-eqz v1, :cond_2

    const-wide/16 v1, 0x1

    goto :goto_0

    :cond_2
    const-wide/16 v1, 0x0

    :goto_0
    invoke-interface {p1, v0, v1, v2}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    const/16 v0, 0xc

    .line 130
    invoke-virtual {p2}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->getMScale()F

    move-result v1

    float-to-double v1, v1

    invoke-interface {p1, v0, v1, v2}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindDouble(ID)V

    .line 132
    invoke-virtual {p2}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->getMText0()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    const/16 v1, 0xd

    .line 134
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 137
    :cond_3
    invoke-virtual {p2}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->getMText()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    const/16 v1, 0xe

    .line 139
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 142
    :cond_4
    invoke-virtual {p2}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->getMTextStyle()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    const/16 v1, 0xf

    .line 144
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    :cond_5
    const/16 v0, 0x10

    .line 146
    invoke-virtual {p2}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->getMTextBgColor()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    const/16 v0, 0x11

    .line 147
    invoke-virtual {p2}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->getMTextBold()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    const/16 v0, 0x12

    .line 148
    invoke-virtual {p2}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->getMTextItalic()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    const/16 v0, 0x13

    .line 149
    invoke-virtual {p2}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->getMTextUnderline()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 151
    invoke-virtual {p2}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->getMBitmap()[B

    move-result-object v0

    if-eqz v0, :cond_6

    const/16 v1, 0x14

    .line 153
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindBlob(I[B)V

    :cond_6
    const/16 v0, 0x15

    .line 155
    invoke-virtual {p2}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->getBgColor()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    const/16 v0, 0x16

    .line 156
    invoke-virtual {p2}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->getFgColor()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    const/16 v0, 0x17

    .line 157
    invoke-virtual {p2}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->getShape1()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    const/16 v0, 0x18

    .line 158
    invoke-virtual {p2}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->getWidth()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    const/16 v0, 0x19

    .line 159
    invoke-virtual {p2}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->getHeight()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    const/16 v0, 0x1a

    .line 160
    invoke-virtual {p2}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->getEffects()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 162
    invoke-virtual {p2}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->getYL1()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    const/16 v1, 0x1b

    .line 164
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 167
    :cond_7
    invoke-virtual {p2}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->getYL2()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    const/16 v1, 0x1c

    .line 169
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 172
    :cond_8
    invoke-virtual {p2}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->getYL3()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_9

    const/16 v0, 0x1d

    .line 174
    invoke-interface {p1, v0, p2}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    :cond_9
    return-void
.end method

.method protected bridge synthetic bindValues(Lorg/greenrobot/greendao/database/DatabaseStatement;Ljava/lang/Object;)V
    .locals 0

    .line 18
    check-cast p2, Lcn/highlight/work_card_write/greendao/table/DoodleBean;

    invoke-virtual {p0, p1, p2}, Lcn/highlight/work_card_write/greendao/db/DoodleBeanDao;->bindValues(Lorg/greenrobot/greendao/database/DatabaseStatement;Lcn/highlight/work_card_write/greendao/table/DoodleBean;)V

    return-void
.end method

.method public getKey(Lcn/highlight/work_card_write/greendao/table/DoodleBean;)Ljava/lang/Long;
    .locals 0

    if-eqz p1, :cond_0

    .line 331
    invoke-virtual {p1}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->getId()Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic getKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 18
    check-cast p1, Lcn/highlight/work_card_write/greendao/table/DoodleBean;

    invoke-virtual {p0, p1}, Lcn/highlight/work_card_write/greendao/db/DoodleBeanDao;->getKey(Lcn/highlight/work_card_write/greendao/table/DoodleBean;)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public hasKey(Lcn/highlight/work_card_write/greendao/table/DoodleBean;)Z
    .locals 0

    .line 339
    invoke-virtual {p1}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->getId()Ljava/lang/Long;

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
    check-cast p1, Lcn/highlight/work_card_write/greendao/table/DoodleBean;

    invoke-virtual {p0, p1}, Lcn/highlight/work_card_write/greendao/db/DoodleBeanDao;->hasKey(Lcn/highlight/work_card_write/greendao/table/DoodleBean;)Z

    move-result p1

    return p1
.end method

.method protected final isEntityUpdateable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public readEntity(Landroid/database/Cursor;I)Lcn/highlight/work_card_write/greendao/table/DoodleBean;
    .locals 33

    move-object/from16 v0, p1

    .line 255
    new-instance v30, Lcn/highlight/work_card_write/greendao/table/DoodleBean;

    add-int/lit8 v1, p2, 0x0

    .line 256
    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    :goto_0
    add-int/lit8 v2, p2, 0x1

    .line 257
    invoke-interface {v0, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_1
    add-int/lit8 v4, p2, 0x2

    .line 258
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    add-int/lit8 v5, p2, 0x3

    .line 259
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getFloat(I)F

    move-result v5

    add-int/lit8 v6, p2, 0x4

    .line 260
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    add-int/lit8 v7, p2, 0x5

    .line 261
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getFloat(I)F

    move-result v7

    add-int/lit8 v8, p2, 0x6

    .line 262
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getFloat(I)F

    move-result v8

    add-int/lit8 v9, p2, 0x7

    .line 263
    invoke-interface {v0, v9}, Landroid/database/Cursor;->getFloat(I)F

    move-result v9

    add-int/lit8 v10, p2, 0x8

    .line 264
    invoke-interface {v0, v10}, Landroid/database/Cursor;->getFloat(I)F

    move-result v10

    add-int/lit8 v11, p2, 0x9

    .line 265
    invoke-interface {v0, v11}, Landroid/database/Cursor;->getFloat(I)F

    move-result v11

    add-int/lit8 v12, p2, 0xa

    .line 266
    invoke-interface {v0, v12}, Landroid/database/Cursor;->getShort(I)S

    move-result v12

    if-eqz v12, :cond_2

    const/4 v12, 0x1

    goto :goto_2

    :cond_2
    const/4 v12, 0x0

    :goto_2
    add-int/lit8 v13, p2, 0xb

    .line 267
    invoke-interface {v0, v13}, Landroid/database/Cursor;->getFloat(I)F

    move-result v13

    add-int/lit8 v14, p2, 0xc

    .line 268
    invoke-interface {v0, v14}, Landroid/database/Cursor;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_3

    const/4 v14, 0x0

    goto :goto_3

    :cond_3
    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    :goto_3
    add-int/lit8 v15, p2, 0xd

    .line 269
    invoke-interface {v0, v15}, Landroid/database/Cursor;->isNull(I)Z

    move-result v16

    if-eqz v16, :cond_4

    const/4 v15, 0x0

    goto :goto_4

    :cond_4
    invoke-interface {v0, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    :goto_4
    add-int/lit8 v3, p2, 0xe

    .line 270
    invoke-interface {v0, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v17

    if-eqz v17, :cond_5

    const/16 v17, 0x0

    goto :goto_5

    :cond_5
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v17, v3

    :goto_5
    add-int/lit8 v3, p2, 0xf

    .line 271
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    add-int/lit8 v3, p2, 0x10

    .line 272
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    add-int/lit8 v3, p2, 0x11

    .line 273
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    add-int/lit8 v3, p2, 0x12

    .line 274
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    add-int/lit8 v3, p2, 0x13

    .line 275
    invoke-interface {v0, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v22

    if-eqz v22, :cond_6

    const/16 v22, 0x0

    goto :goto_6

    :cond_6
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v3

    move-object/from16 v22, v3

    :goto_6
    add-int/lit8 v3, p2, 0x14

    .line 276
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v23

    add-int/lit8 v3, p2, 0x15

    .line 277
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v24

    add-int/lit8 v3, p2, 0x16

    .line 278
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    add-int/lit8 v3, p2, 0x17

    .line 279
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v26

    add-int/lit8 v3, p2, 0x18

    .line 280
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v27

    add-int/lit8 v3, p2, 0x19

    .line 281
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v28

    add-int/lit8 v3, p2, 0x1a

    .line 282
    invoke-interface {v0, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v29

    if-eqz v29, :cond_7

    const/16 v29, 0x0

    goto :goto_7

    :cond_7
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v29, v3

    :goto_7
    add-int/lit8 v3, p2, 0x1b

    .line 283
    invoke-interface {v0, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v31

    if-eqz v31, :cond_8

    const/16 v31, 0x0

    goto :goto_8

    :cond_8
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v31, v3

    :goto_8
    add-int/lit8 v3, p2, 0x1c

    .line 284
    invoke-interface {v0, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v32

    if-eqz v32, :cond_9

    const/16 v32, 0x0

    goto :goto_9

    :cond_9
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v32, v0

    :goto_9
    move-object/from16 v0, v30

    move v3, v4

    move v4, v5

    move v5, v6

    move v6, v7

    move v7, v8

    move v8, v9

    move v9, v10

    move v10, v11

    move v11, v12

    move v12, v13

    move-object v13, v14

    move-object v14, v15

    move-object/from16 v15, v17

    move/from16 v16, v18

    move/from16 v17, v19

    move/from16 v18, v20

    move/from16 v19, v21

    move-object/from16 v20, v22

    move/from16 v21, v23

    move/from16 v22, v24

    move/from16 v23, v25

    move/from16 v24, v26

    move/from16 v25, v27

    move/from16 v26, v28

    move-object/from16 v27, v29

    move-object/from16 v28, v31

    move-object/from16 v29, v32

    invoke-direct/range {v0 .. v29}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;-><init>(Ljava/lang/Long;Ljava/lang/String;IFIFFFFFZFLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIII[BIIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v30
.end method

.method public bridge synthetic readEntity(Landroid/database/Cursor;I)Ljava/lang/Object;
    .locals 0

    .line 18
    invoke-virtual {p0, p1, p2}, Lcn/highlight/work_card_write/greendao/db/DoodleBeanDao;->readEntity(Landroid/database/Cursor;I)Lcn/highlight/work_card_write/greendao/table/DoodleBean;

    move-result-object p1

    return-object p1
.end method

.method public readEntity(Landroid/database/Cursor;Lcn/highlight/work_card_write/greendao/table/DoodleBean;I)V
    .locals 3

    add-int/lit8 v0, p3, 0x0

    .line 291
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
    invoke-virtual {p2, v0}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->setId(Ljava/lang/Long;)V

    add-int/lit8 v0, p3, 0x1

    .line 292
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v0, v2

    goto :goto_1

    :cond_1
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {p2, v0}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->setImageName(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0x2

    .line 293
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->setMIDoodlePen(I)V

    add-int/lit8 v0, p3, 0x3

    .line 294
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getFloat(I)F

    move-result v0

    invoke-virtual {p2, v0}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->setMSize(F)V

    add-int/lit8 v0, p3, 0x4

    .line 295
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->setMColor(I)V

    add-int/lit8 v0, p3, 0x5

    .line 296
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getFloat(I)F

    move-result v0

    invoke-virtual {p2, v0}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->setMLocationX(F)V

    add-int/lit8 v0, p3, 0x6

    .line 297
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getFloat(I)F

    move-result v0

    invoke-virtual {p2, v0}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->setMLocationY(F)V

    add-int/lit8 v0, p3, 0x7

    .line 298
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getFloat(I)F

    move-result v0

    invoke-virtual {p2, v0}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->setMPivotX(F)V

    add-int/lit8 v0, p3, 0x8

    .line 299
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getFloat(I)F

    move-result v0

    invoke-virtual {p2, v0}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->setMPivotY(F)V

    add-int/lit8 v0, p3, 0x9

    .line 300
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getFloat(I)F

    move-result v0

    invoke-virtual {p2, v0}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->setMRotate(F)V

    add-int/lit8 v0, p3, 0xa

    .line 301
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    invoke-virtual {p2, v0}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->setMIsNeedClipOutside(Z)V

    add-int/lit8 v0, p3, 0xb

    .line 302
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getFloat(I)F

    move-result v0

    invoke-virtual {p2, v0}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->setMScale(F)V

    add-int/lit8 v0, p3, 0xc

    .line 303
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_3

    move-object v0, v2

    goto :goto_3

    :cond_3
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-virtual {p2, v0}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->setMText0(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0xd

    .line 304
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_4

    move-object v0, v2

    goto :goto_4

    :cond_4
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_4
    invoke-virtual {p2, v0}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->setMText(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0xe

    .line 305
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_5

    move-object v0, v2

    goto :goto_5

    :cond_5
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_5
    invoke-virtual {p2, v0}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->setMTextStyle(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0xf

    .line 306
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->setMTextBgColor(I)V

    add-int/lit8 v0, p3, 0x10

    .line 307
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->setMTextBold(I)V

    add-int/lit8 v0, p3, 0x11

    .line 308
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->setMTextItalic(I)V

    add-int/lit8 v0, p3, 0x12

    .line 309
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->setMTextUnderline(I)V

    add-int/lit8 v0, p3, 0x13

    .line 310
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_6

    move-object v0, v2

    goto :goto_6

    :cond_6
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    :goto_6
    invoke-virtual {p2, v0}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->setMBitmap([B)V

    add-int/lit8 v0, p3, 0x14

    .line 311
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->setBgColor(I)V

    add-int/lit8 v0, p3, 0x15

    .line 312
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->setFgColor(I)V

    add-int/lit8 v0, p3, 0x16

    .line 313
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->setShape1(I)V

    add-int/lit8 v0, p3, 0x17

    .line 314
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->setWidth(I)V

    add-int/lit8 v0, p3, 0x18

    .line 315
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->setHeight(I)V

    add-int/lit8 v0, p3, 0x19

    .line 316
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->setEffects(I)V

    add-int/lit8 v0, p3, 0x1a

    .line 317
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_7

    move-object v0, v2

    goto :goto_7

    :cond_7
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_7
    invoke-virtual {p2, v0}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->setYL1(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0x1b

    .line 318
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_8

    move-object v0, v2

    goto :goto_8

    :cond_8
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_8
    invoke-virtual {p2, v0}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->setYL2(Ljava/lang/String;)V

    add-int/lit8 p3, p3, 0x1c

    .line 319
    invoke-interface {p1, p3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_9

    :cond_9
    invoke-interface {p1, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_9
    invoke-virtual {p2, v2}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->setYL3(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic readEntity(Landroid/database/Cursor;Ljava/lang/Object;I)V
    .locals 0

    .line 18
    check-cast p2, Lcn/highlight/work_card_write/greendao/table/DoodleBean;

    invoke-virtual {p0, p1, p2, p3}, Lcn/highlight/work_card_write/greendao/db/DoodleBeanDao;->readEntity(Landroid/database/Cursor;Lcn/highlight/work_card_write/greendao/table/DoodleBean;I)V

    return-void
.end method

.method public readKey(Landroid/database/Cursor;I)Ljava/lang/Long;
    .locals 1

    add-int/lit8 p2, p2, 0x0

    .line 250
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
    invoke-virtual {p0, p1, p2}, Lcn/highlight/work_card_write/greendao/db/DoodleBeanDao;->readKey(Landroid/database/Cursor;I)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method protected final updateKeyAfterInsert(Lcn/highlight/work_card_write/greendao/table/DoodleBean;J)Ljava/lang/Long;
    .locals 1

    .line 324
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->setId(Ljava/lang/Long;)V

    .line 325
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic updateKeyAfterInsert(Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 0

    .line 18
    check-cast p1, Lcn/highlight/work_card_write/greendao/table/DoodleBean;

    invoke-virtual {p0, p1, p2, p3}, Lcn/highlight/work_card_write/greendao/db/DoodleBeanDao;->updateKeyAfterInsert(Lcn/highlight/work_card_write/greendao/table/DoodleBean;J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method
