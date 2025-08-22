.class public Lcn/highlight/work_card_write/greendao/db/DoodleBeanDao$Properties;
.super Ljava/lang/Object;
.source "DoodleBeanDao.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/highlight/work_card_write/greendao/db/DoodleBeanDao;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Properties"
.end annotation


# static fields
.field public static final BgColor:Lorg/greenrobot/greendao/Property;

.field public static final Effects:Lorg/greenrobot/greendao/Property;

.field public static final FgColor:Lorg/greenrobot/greendao/Property;

.field public static final Height:Lorg/greenrobot/greendao/Property;

.field public static final Id:Lorg/greenrobot/greendao/Property;

.field public static final ImageName:Lorg/greenrobot/greendao/Property;

.field public static final MBitmap:Lorg/greenrobot/greendao/Property;

.field public static final MColor:Lorg/greenrobot/greendao/Property;

.field public static final MIDoodlePen:Lorg/greenrobot/greendao/Property;

.field public static final MIsNeedClipOutside:Lorg/greenrobot/greendao/Property;

.field public static final MLocationX:Lorg/greenrobot/greendao/Property;

.field public static final MLocationY:Lorg/greenrobot/greendao/Property;

.field public static final MPivotX:Lorg/greenrobot/greendao/Property;

.field public static final MPivotY:Lorg/greenrobot/greendao/Property;

.field public static final MRotate:Lorg/greenrobot/greendao/Property;

.field public static final MScale:Lorg/greenrobot/greendao/Property;

.field public static final MSize:Lorg/greenrobot/greendao/Property;

.field public static final MText:Lorg/greenrobot/greendao/Property;

.field public static final MText0:Lorg/greenrobot/greendao/Property;

.field public static final MTextBgColor:Lorg/greenrobot/greendao/Property;

.field public static final MTextBold:Lorg/greenrobot/greendao/Property;

.field public static final MTextItalic:Lorg/greenrobot/greendao/Property;

.field public static final MTextStyle:Lorg/greenrobot/greendao/Property;

.field public static final MTextUnderline:Lorg/greenrobot/greendao/Property;

.field public static final Shape1:Lorg/greenrobot/greendao/Property;

.field public static final Width:Lorg/greenrobot/greendao/Property;

.field public static final YL1:Lorg/greenrobot/greendao/Property;

.field public static final YL2:Lorg/greenrobot/greendao/Property;

.field public static final YL3:Lorg/greenrobot/greendao/Property;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 27
    new-instance v6, Lorg/greenrobot/greendao/Property;

    const-class v2, Ljava/lang/Long;

    const/4 v1, 0x0

    const-string v3, "id"

    const/4 v4, 0x1

    const-string v5, "_id"

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v6, Lcn/highlight/work_card_write/greendao/db/DoodleBeanDao$Properties;->Id:Lorg/greenrobot/greendao/Property;

    .line 28
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v9, Ljava/lang/String;

    const/4 v8, 0x1

    const-string v10, "imageName"

    const/4 v11, 0x0

    const-string v12, "IMAGE_NAME"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcn/highlight/work_card_write/greendao/db/DoodleBeanDao$Properties;->ImageName:Lorg/greenrobot/greendao/Property;

    .line 29
    new-instance v0, Lorg/greenrobot/greendao/Property;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x2

    const-string v4, "mIDoodlePen"

    const/4 v5, 0x0

    const-string v6, "M_IDOODLE_PEN"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcn/highlight/work_card_write/greendao/db/DoodleBeanDao$Properties;->MIDoodlePen:Lorg/greenrobot/greendao/Property;

    .line 30
    new-instance v0, Lorg/greenrobot/greendao/Property;

    sget-object v9, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x3

    const-string v10, "mSize"

    const-string v12, "M_SIZE"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcn/highlight/work_card_write/greendao/db/DoodleBeanDao$Properties;->MSize:Lorg/greenrobot/greendao/Property;

    .line 31
    new-instance v0, Lorg/greenrobot/greendao/Property;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x4

    const-string v4, "mColor"

    const-string v6, "M_COLOR"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcn/highlight/work_card_write/greendao/db/DoodleBeanDao$Properties;->MColor:Lorg/greenrobot/greendao/Property;

    .line 32
    new-instance v0, Lorg/greenrobot/greendao/Property;

    sget-object v9, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x5

    const-string v10, "mLocationX"

    const-string v12, "M_LOCATION_X"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcn/highlight/work_card_write/greendao/db/DoodleBeanDao$Properties;->MLocationX:Lorg/greenrobot/greendao/Property;

    .line 33
    new-instance v0, Lorg/greenrobot/greendao/Property;

    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x6

    const-string v4, "mLocationY"

    const-string v6, "M_LOCATION_Y"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcn/highlight/work_card_write/greendao/db/DoodleBeanDao$Properties;->MLocationY:Lorg/greenrobot/greendao/Property;

    .line 34
    new-instance v0, Lorg/greenrobot/greendao/Property;

    sget-object v9, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x7

    const-string v10, "mPivotX"

    const-string v12, "M_PIVOT_X"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcn/highlight/work_card_write/greendao/db/DoodleBeanDao$Properties;->MPivotX:Lorg/greenrobot/greendao/Property;

    .line 35
    new-instance v0, Lorg/greenrobot/greendao/Property;

    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const/16 v2, 0x8

    const-string v4, "mPivotY"

    const-string v6, "M_PIVOT_Y"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcn/highlight/work_card_write/greendao/db/DoodleBeanDao$Properties;->MPivotY:Lorg/greenrobot/greendao/Property;

    .line 36
    new-instance v0, Lorg/greenrobot/greendao/Property;

    sget-object v9, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const/16 v8, 0x9

    const-string v10, "mRotate"

    const-string v12, "M_ROTATE"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcn/highlight/work_card_write/greendao/db/DoodleBeanDao$Properties;->MRotate:Lorg/greenrobot/greendao/Property;

    .line 37
    new-instance v0, Lorg/greenrobot/greendao/Property;

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/16 v2, 0xa

    const-string v4, "mIsNeedClipOutside"

    const-string v6, "M_IS_NEED_CLIP_OUTSIDE"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcn/highlight/work_card_write/greendao/db/DoodleBeanDao$Properties;->MIsNeedClipOutside:Lorg/greenrobot/greendao/Property;

    .line 38
    new-instance v0, Lorg/greenrobot/greendao/Property;

    sget-object v9, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const/16 v8, 0xb

    const-string v10, "mScale"

    const-string v12, "M_SCALE"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcn/highlight/work_card_write/greendao/db/DoodleBeanDao$Properties;->MScale:Lorg/greenrobot/greendao/Property;

    .line 39
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v3, Ljava/lang/String;

    const/16 v2, 0xc

    const-string v4, "mText0"

    const-string v6, "M_TEXT0"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcn/highlight/work_card_write/greendao/db/DoodleBeanDao$Properties;->MText0:Lorg/greenrobot/greendao/Property;

    .line 40
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v9, Ljava/lang/String;

    const/16 v8, 0xd

    const-string v10, "mText"

    const-string v12, "M_TEXT"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcn/highlight/work_card_write/greendao/db/DoodleBeanDao$Properties;->MText:Lorg/greenrobot/greendao/Property;

    .line 41
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v3, Ljava/lang/String;

    const/16 v2, 0xe

    const-string v4, "mTextStyle"

    const-string v6, "M_TEXT_STYLE"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcn/highlight/work_card_write/greendao/db/DoodleBeanDao$Properties;->MTextStyle:Lorg/greenrobot/greendao/Property;

    .line 42
    new-instance v0, Lorg/greenrobot/greendao/Property;

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v8, 0xf

    const-string v10, "mTextBgColor"

    const-string v12, "M_TEXT_BG_COLOR"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcn/highlight/work_card_write/greendao/db/DoodleBeanDao$Properties;->MTextBgColor:Lorg/greenrobot/greendao/Property;

    .line 43
    new-instance v0, Lorg/greenrobot/greendao/Property;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v2, 0x10

    const-string v4, "mTextBold"

    const-string v6, "M_TEXT_BOLD"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcn/highlight/work_card_write/greendao/db/DoodleBeanDao$Properties;->MTextBold:Lorg/greenrobot/greendao/Property;

    .line 44
    new-instance v0, Lorg/greenrobot/greendao/Property;

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v8, 0x11

    const-string v10, "mTextItalic"

    const-string v12, "M_TEXT_ITALIC"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcn/highlight/work_card_write/greendao/db/DoodleBeanDao$Properties;->MTextItalic:Lorg/greenrobot/greendao/Property;

    .line 45
    new-instance v0, Lorg/greenrobot/greendao/Property;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v2, 0x12

    const-string v4, "mTextUnderline"

    const-string v6, "M_TEXT_UNDERLINE"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcn/highlight/work_card_write/greendao/db/DoodleBeanDao$Properties;->MTextUnderline:Lorg/greenrobot/greendao/Property;

    .line 46
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v9, [B

    const/16 v8, 0x13

    const-string v10, "mBitmap"

    const-string v12, "M_BITMAP"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcn/highlight/work_card_write/greendao/db/DoodleBeanDao$Properties;->MBitmap:Lorg/greenrobot/greendao/Property;

    .line 47
    new-instance v0, Lorg/greenrobot/greendao/Property;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v2, 0x14

    const-string v4, "bgColor"

    const-string v6, "BG_COLOR"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcn/highlight/work_card_write/greendao/db/DoodleBeanDao$Properties;->BgColor:Lorg/greenrobot/greendao/Property;

    .line 48
    new-instance v0, Lorg/greenrobot/greendao/Property;

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v8, 0x15

    const-string v10, "fgColor"

    const-string v12, "FG_COLOR"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcn/highlight/work_card_write/greendao/db/DoodleBeanDao$Properties;->FgColor:Lorg/greenrobot/greendao/Property;

    .line 49
    new-instance v0, Lorg/greenrobot/greendao/Property;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v2, 0x16

    const-string v4, "shape1"

    const-string v6, "SHAPE1"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcn/highlight/work_card_write/greendao/db/DoodleBeanDao$Properties;->Shape1:Lorg/greenrobot/greendao/Property;

    .line 50
    new-instance v0, Lorg/greenrobot/greendao/Property;

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v8, 0x17

    const-string v10, "width"

    const-string v12, "WIDTH"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcn/highlight/work_card_write/greendao/db/DoodleBeanDao$Properties;->Width:Lorg/greenrobot/greendao/Property;

    .line 51
    new-instance v0, Lorg/greenrobot/greendao/Property;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v2, 0x18

    const-string v4, "height"

    const-string v6, "HEIGHT"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcn/highlight/work_card_write/greendao/db/DoodleBeanDao$Properties;->Height:Lorg/greenrobot/greendao/Property;

    .line 52
    new-instance v0, Lorg/greenrobot/greendao/Property;

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v8, 0x19

    const-string v10, "effects"

    const-string v12, "EFFECTS"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcn/highlight/work_card_write/greendao/db/DoodleBeanDao$Properties;->Effects:Lorg/greenrobot/greendao/Property;

    .line 53
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v3, Ljava/lang/String;

    const/16 v2, 0x1a

    const-string v4, "YL1"

    const-string v6, "YL1"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcn/highlight/work_card_write/greendao/db/DoodleBeanDao$Properties;->YL1:Lorg/greenrobot/greendao/Property;

    .line 54
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v9, Ljava/lang/String;

    const/16 v8, 0x1b

    const-string v10, "YL2"

    const-string v12, "YL2"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcn/highlight/work_card_write/greendao/db/DoodleBeanDao$Properties;->YL2:Lorg/greenrobot/greendao/Property;

    .line 55
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v3, Ljava/lang/String;

    const/16 v2, 0x1c

    const-string v4, "YL3"

    const-string v6, "YL3"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcn/highlight/work_card_write/greendao/db/DoodleBeanDao$Properties;->YL3:Lorg/greenrobot/greendao/Property;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
