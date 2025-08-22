.class public final enum Lcom/uhf/api/cls/Reader$CustomCmdType;
.super Ljava/lang/Enum;
.source "Reader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uhf/api/cls/Reader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CustomCmdType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/uhf/api/cls/Reader$CustomCmdType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/uhf/api/cls/Reader$CustomCmdType;

.field public static final enum ALIEN_Higgs2_FullLoadImage:Lcom/uhf/api/cls/Reader$CustomCmdType;

.field public static final enum ALIEN_Higgs2_PartialLoadImage:Lcom/uhf/api/cls/Reader$CustomCmdType;

.field public static final enum ALIEN_Higgs3_BlockPermaLock:Lcom/uhf/api/cls/Reader$CustomCmdType;

.field public static final enum ALIEN_Higgs3_BlockReadLock:Lcom/uhf/api/cls/Reader$CustomCmdType;

.field public static final enum ALIEN_Higgs3_FastLoadImage:Lcom/uhf/api/cls/Reader$CustomCmdType;

.field public static final enum ALIEN_Higgs3_LoadImage:Lcom/uhf/api/cls/Reader$CustomCmdType;

.field public static final enum IMPINJ_M4_Qt:Lcom/uhf/api/cls/Reader$CustomCmdType;

.field public static final enum NXP_Calibrate:Lcom/uhf/api/cls/Reader$CustomCmdType;

.field public static final enum NXP_ChangeEAS:Lcom/uhf/api/cls/Reader$CustomCmdType;

.field public static final enum NXP_EASAlarm:Lcom/uhf/api/cls/Reader$CustomCmdType;

.field public static final enum NXP_ResetReadProtect:Lcom/uhf/api/cls/Reader$CustomCmdType;

.field public static final enum NXP_SetReadProtect:Lcom/uhf/api/cls/Reader$CustomCmdType;

.field public static final enum NXP_U8_InventoryMode:Lcom/uhf/api/cls/Reader$CustomCmdType;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 527
    new-instance v0, Lcom/uhf/api/cls/Reader$CustomCmdType;

    const/4 v1, 0x0

    const-string v2, "NXP_SetReadProtect"

    invoke-direct {v0, v2, v1, v1}, Lcom/uhf/api/cls/Reader$CustomCmdType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/Reader$CustomCmdType;->NXP_SetReadProtect:Lcom/uhf/api/cls/Reader$CustomCmdType;

    .line 528
    new-instance v0, Lcom/uhf/api/cls/Reader$CustomCmdType;

    const/4 v2, 0x1

    const-string v3, "NXP_ResetReadProtect"

    invoke-direct {v0, v3, v2, v2}, Lcom/uhf/api/cls/Reader$CustomCmdType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/Reader$CustomCmdType;->NXP_ResetReadProtect:Lcom/uhf/api/cls/Reader$CustomCmdType;

    .line 529
    new-instance v0, Lcom/uhf/api/cls/Reader$CustomCmdType;

    const/4 v3, 0x2

    const-string v4, "NXP_ChangeEAS"

    invoke-direct {v0, v4, v3, v3}, Lcom/uhf/api/cls/Reader$CustomCmdType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/Reader$CustomCmdType;->NXP_ChangeEAS:Lcom/uhf/api/cls/Reader$CustomCmdType;

    .line 530
    new-instance v0, Lcom/uhf/api/cls/Reader$CustomCmdType;

    const/4 v4, 0x3

    const-string v5, "NXP_EASAlarm"

    invoke-direct {v0, v5, v4, v4}, Lcom/uhf/api/cls/Reader$CustomCmdType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/Reader$CustomCmdType;->NXP_EASAlarm:Lcom/uhf/api/cls/Reader$CustomCmdType;

    .line 531
    new-instance v0, Lcom/uhf/api/cls/Reader$CustomCmdType;

    const/4 v5, 0x4

    const-string v6, "NXP_Calibrate"

    invoke-direct {v0, v6, v5, v5}, Lcom/uhf/api/cls/Reader$CustomCmdType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/Reader$CustomCmdType;->NXP_Calibrate:Lcom/uhf/api/cls/Reader$CustomCmdType;

    .line 533
    new-instance v0, Lcom/uhf/api/cls/Reader$CustomCmdType;

    const/4 v6, 0x5

    const-string v7, "ALIEN_Higgs2_PartialLoadImage"

    invoke-direct {v0, v7, v6, v6}, Lcom/uhf/api/cls/Reader$CustomCmdType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/Reader$CustomCmdType;->ALIEN_Higgs2_PartialLoadImage:Lcom/uhf/api/cls/Reader$CustomCmdType;

    .line 534
    new-instance v0, Lcom/uhf/api/cls/Reader$CustomCmdType;

    const/4 v7, 0x6

    const-string v8, "ALIEN_Higgs2_FullLoadImage"

    invoke-direct {v0, v8, v7, v7}, Lcom/uhf/api/cls/Reader$CustomCmdType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/Reader$CustomCmdType;->ALIEN_Higgs2_FullLoadImage:Lcom/uhf/api/cls/Reader$CustomCmdType;

    .line 536
    new-instance v0, Lcom/uhf/api/cls/Reader$CustomCmdType;

    const/4 v8, 0x7

    const-string v9, "ALIEN_Higgs3_FastLoadImage"

    invoke-direct {v0, v9, v8, v8}, Lcom/uhf/api/cls/Reader$CustomCmdType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/Reader$CustomCmdType;->ALIEN_Higgs3_FastLoadImage:Lcom/uhf/api/cls/Reader$CustomCmdType;

    .line 537
    new-instance v0, Lcom/uhf/api/cls/Reader$CustomCmdType;

    const/16 v9, 0x8

    const-string v10, "ALIEN_Higgs3_LoadImage"

    invoke-direct {v0, v10, v9, v9}, Lcom/uhf/api/cls/Reader$CustomCmdType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/Reader$CustomCmdType;->ALIEN_Higgs3_LoadImage:Lcom/uhf/api/cls/Reader$CustomCmdType;

    .line 538
    new-instance v0, Lcom/uhf/api/cls/Reader$CustomCmdType;

    const/16 v10, 0x9

    const-string v11, "ALIEN_Higgs3_BlockReadLock"

    invoke-direct {v0, v11, v10, v10}, Lcom/uhf/api/cls/Reader$CustomCmdType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/Reader$CustomCmdType;->ALIEN_Higgs3_BlockReadLock:Lcom/uhf/api/cls/Reader$CustomCmdType;

    .line 539
    new-instance v0, Lcom/uhf/api/cls/Reader$CustomCmdType;

    const/16 v11, 0xa

    const-string v12, "ALIEN_Higgs3_BlockPermaLock"

    invoke-direct {v0, v12, v11, v11}, Lcom/uhf/api/cls/Reader$CustomCmdType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/Reader$CustomCmdType;->ALIEN_Higgs3_BlockPermaLock:Lcom/uhf/api/cls/Reader$CustomCmdType;

    .line 541
    new-instance v0, Lcom/uhf/api/cls/Reader$CustomCmdType;

    const/16 v12, 0xb

    const-string v13, "IMPINJ_M4_Qt"

    invoke-direct {v0, v13, v12, v12}, Lcom/uhf/api/cls/Reader$CustomCmdType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/Reader$CustomCmdType;->IMPINJ_M4_Qt:Lcom/uhf/api/cls/Reader$CustomCmdType;

    .line 543
    new-instance v0, Lcom/uhf/api/cls/Reader$CustomCmdType;

    const/16 v13, 0xc

    const-string v14, "NXP_U8_InventoryMode"

    const/16 v15, 0x14

    invoke-direct {v0, v14, v13, v15}, Lcom/uhf/api/cls/Reader$CustomCmdType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/Reader$CustomCmdType;->NXP_U8_InventoryMode:Lcom/uhf/api/cls/Reader$CustomCmdType;

    const/16 v0, 0xd

    new-array v0, v0, [Lcom/uhf/api/cls/Reader$CustomCmdType;

    .line 526
    sget-object v14, Lcom/uhf/api/cls/Reader$CustomCmdType;->NXP_SetReadProtect:Lcom/uhf/api/cls/Reader$CustomCmdType;

    aput-object v14, v0, v1

    sget-object v1, Lcom/uhf/api/cls/Reader$CustomCmdType;->NXP_ResetReadProtect:Lcom/uhf/api/cls/Reader$CustomCmdType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/uhf/api/cls/Reader$CustomCmdType;->NXP_ChangeEAS:Lcom/uhf/api/cls/Reader$CustomCmdType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/uhf/api/cls/Reader$CustomCmdType;->NXP_EASAlarm:Lcom/uhf/api/cls/Reader$CustomCmdType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/uhf/api/cls/Reader$CustomCmdType;->NXP_Calibrate:Lcom/uhf/api/cls/Reader$CustomCmdType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/uhf/api/cls/Reader$CustomCmdType;->ALIEN_Higgs2_PartialLoadImage:Lcom/uhf/api/cls/Reader$CustomCmdType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/uhf/api/cls/Reader$CustomCmdType;->ALIEN_Higgs2_FullLoadImage:Lcom/uhf/api/cls/Reader$CustomCmdType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/uhf/api/cls/Reader$CustomCmdType;->ALIEN_Higgs3_FastLoadImage:Lcom/uhf/api/cls/Reader$CustomCmdType;

    aput-object v1, v0, v8

    sget-object v1, Lcom/uhf/api/cls/Reader$CustomCmdType;->ALIEN_Higgs3_LoadImage:Lcom/uhf/api/cls/Reader$CustomCmdType;

    aput-object v1, v0, v9

    sget-object v1, Lcom/uhf/api/cls/Reader$CustomCmdType;->ALIEN_Higgs3_BlockReadLock:Lcom/uhf/api/cls/Reader$CustomCmdType;

    aput-object v1, v0, v10

    sget-object v1, Lcom/uhf/api/cls/Reader$CustomCmdType;->ALIEN_Higgs3_BlockPermaLock:Lcom/uhf/api/cls/Reader$CustomCmdType;

    aput-object v1, v0, v11

    sget-object v1, Lcom/uhf/api/cls/Reader$CustomCmdType;->IMPINJ_M4_Qt:Lcom/uhf/api/cls/Reader$CustomCmdType;

    aput-object v1, v0, v12

    sget-object v1, Lcom/uhf/api/cls/Reader$CustomCmdType;->NXP_U8_InventoryMode:Lcom/uhf/api/cls/Reader$CustomCmdType;

    aput-object v1, v0, v13

    sput-object v0, Lcom/uhf/api/cls/Reader$CustomCmdType;->$VALUES:[Lcom/uhf/api/cls/Reader$CustomCmdType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 546
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    const/4 p1, 0x0

    .line 544
    iput p1, p0, Lcom/uhf/api/cls/Reader$CustomCmdType;->value:I

    .line 547
    iput p3, p0, Lcom/uhf/api/cls/Reader$CustomCmdType;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/uhf/api/cls/Reader$CustomCmdType;
    .locals 1

    const/16 v0, 0x14

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 575
    :pswitch_0
    sget-object p0, Lcom/uhf/api/cls/Reader$CustomCmdType;->IMPINJ_M4_Qt:Lcom/uhf/api/cls/Reader$CustomCmdType;

    return-object p0

    .line 573
    :pswitch_1
    sget-object p0, Lcom/uhf/api/cls/Reader$CustomCmdType;->ALIEN_Higgs3_BlockPermaLock:Lcom/uhf/api/cls/Reader$CustomCmdType;

    return-object p0

    .line 571
    :pswitch_2
    sget-object p0, Lcom/uhf/api/cls/Reader$CustomCmdType;->ALIEN_Higgs3_BlockReadLock:Lcom/uhf/api/cls/Reader$CustomCmdType;

    return-object p0

    .line 569
    :pswitch_3
    sget-object p0, Lcom/uhf/api/cls/Reader$CustomCmdType;->ALIEN_Higgs3_LoadImage:Lcom/uhf/api/cls/Reader$CustomCmdType;

    return-object p0

    .line 567
    :pswitch_4
    sget-object p0, Lcom/uhf/api/cls/Reader$CustomCmdType;->ALIEN_Higgs3_FastLoadImage:Lcom/uhf/api/cls/Reader$CustomCmdType;

    return-object p0

    .line 565
    :pswitch_5
    sget-object p0, Lcom/uhf/api/cls/Reader$CustomCmdType;->ALIEN_Higgs2_FullLoadImage:Lcom/uhf/api/cls/Reader$CustomCmdType;

    return-object p0

    .line 563
    :pswitch_6
    sget-object p0, Lcom/uhf/api/cls/Reader$CustomCmdType;->ALIEN_Higgs2_PartialLoadImage:Lcom/uhf/api/cls/Reader$CustomCmdType;

    return-object p0

    .line 561
    :pswitch_7
    sget-object p0, Lcom/uhf/api/cls/Reader$CustomCmdType;->NXP_Calibrate:Lcom/uhf/api/cls/Reader$CustomCmdType;

    return-object p0

    .line 559
    :pswitch_8
    sget-object p0, Lcom/uhf/api/cls/Reader$CustomCmdType;->NXP_EASAlarm:Lcom/uhf/api/cls/Reader$CustomCmdType;

    return-object p0

    .line 557
    :pswitch_9
    sget-object p0, Lcom/uhf/api/cls/Reader$CustomCmdType;->NXP_ChangeEAS:Lcom/uhf/api/cls/Reader$CustomCmdType;

    return-object p0

    .line 555
    :pswitch_a
    sget-object p0, Lcom/uhf/api/cls/Reader$CustomCmdType;->NXP_ResetReadProtect:Lcom/uhf/api/cls/Reader$CustomCmdType;

    return-object p0

    .line 553
    :pswitch_b
    sget-object p0, Lcom/uhf/api/cls/Reader$CustomCmdType;->NXP_SetReadProtect:Lcom/uhf/api/cls/Reader$CustomCmdType;

    return-object p0

    .line 577
    :cond_0
    sget-object p0, Lcom/uhf/api/cls/Reader$CustomCmdType;->NXP_U8_InventoryMode:Lcom/uhf/api/cls/Reader$CustomCmdType;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/uhf/api/cls/Reader$CustomCmdType;
    .locals 1

    .line 526
    const-class v0, Lcom/uhf/api/cls/Reader$CustomCmdType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/uhf/api/cls/Reader$CustomCmdType;

    return-object p0
.end method

.method public static values()[Lcom/uhf/api/cls/Reader$CustomCmdType;
    .locals 1

    .line 526
    sget-object v0, Lcom/uhf/api/cls/Reader$CustomCmdType;->$VALUES:[Lcom/uhf/api/cls/Reader$CustomCmdType;

    invoke-virtual {v0}, [Lcom/uhf/api/cls/Reader$CustomCmdType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/uhf/api/cls/Reader$CustomCmdType;

    return-object v0
.end method


# virtual methods
.method public value()I
    .locals 1

    .line 584
    iget v0, p0, Lcom/uhf/api/cls/Reader$CustomCmdType;->value:I

    return v0
.end method
