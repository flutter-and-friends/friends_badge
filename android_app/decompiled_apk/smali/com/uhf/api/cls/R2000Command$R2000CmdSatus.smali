.class public final enum Lcom/uhf/api/cls/R2000Command$R2000CmdSatus;
.super Ljava/lang/Enum;
.source "R2000Command.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uhf/api/cls/R2000Command;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "R2000CmdSatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/uhf/api/cls/R2000Command$R2000CmdSatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/uhf/api/cls/R2000Command$R2000CmdSatus;

.field public static final enum AntSetError:Lcom/uhf/api/cls/R2000Command$R2000CmdSatus;

.field public static final enum Error_Or_Failed:Lcom/uhf/api/cls/R2000Command$R2000CmdSatus;

.field public static final enum MemOverranging:Lcom/uhf/api/cls/R2000Command$R2000CmdSatus;

.field public static final enum ModuleFatalError:Lcom/uhf/api/cls/R2000Command$R2000CmdSatus;

.field public static final enum NonTag:Lcom/uhf/api/cls/R2000Command$R2000CmdSatus;

.field public static final enum Non_Identifiability_CMD:Lcom/uhf/api/cls/R2000Command$R2000CmdSatus;

.field public static final enum OK:Lcom/uhf/api/cls/R2000Command$R2000CmdSatus;

.field public static final enum OptionCodeError:Lcom/uhf/api/cls/R2000Command$R2000CmdSatus;

.field public static final enum PWD_ERR_OR_TAG_NO_RESPONE:Lcom/uhf/api/cls/R2000Command$R2000CmdSatus;

.field public static final enum PswZeroError:Lcom/uhf/api/cls/R2000Command$R2000CmdSatus;

.field public static final enum RSSI_High:Lcom/uhf/api/cls/R2000Command$R2000CmdSatus;

.field public static final enum TagLocked:Lcom/uhf/api/cls/R2000Command$R2000CmdSatus;

.field public static final enum TagNonsupportedOrLowPwr:Lcom/uhf/api/cls/R2000Command$R2000CmdSatus;

.field public static final enum TagOpFailed:Lcom/uhf/api/cls/R2000Command$R2000CmdSatus;

.field public static final enum Temperatrue_High:Lcom/uhf/api/cls/R2000Command$R2000CmdSatus;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 54
    new-instance v0, Lcom/uhf/api/cls/R2000Command$R2000CmdSatus;

    const/4 v1, 0x0

    const-string v2, "Non_Identifiability_CMD"

    const/16 v3, 0x88

    invoke-direct {v0, v2, v1, v3}, Lcom/uhf/api/cls/R2000Command$R2000CmdSatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/R2000Command$R2000CmdSatus;->Non_Identifiability_CMD:Lcom/uhf/api/cls/R2000Command$R2000CmdSatus;

    .line 55
    new-instance v0, Lcom/uhf/api/cls/R2000Command$R2000CmdSatus;

    const/4 v2, 0x1

    const-string v3, "OK"

    invoke-direct {v0, v3, v2, v1}, Lcom/uhf/api/cls/R2000Command$R2000CmdSatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/R2000Command$R2000CmdSatus;->OK:Lcom/uhf/api/cls/R2000Command$R2000CmdSatus;

    .line 56
    new-instance v0, Lcom/uhf/api/cls/R2000Command$R2000CmdSatus;

    const/16 v3, 0xff

    const/4 v4, 0x2

    const-string v5, "Error_Or_Failed"

    invoke-direct {v0, v5, v4, v3}, Lcom/uhf/api/cls/R2000Command$R2000CmdSatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/R2000Command$R2000CmdSatus;->Error_Or_Failed:Lcom/uhf/api/cls/R2000Command$R2000CmdSatus;

    .line 58
    new-instance v0, Lcom/uhf/api/cls/R2000Command$R2000CmdSatus;

    const/4 v5, 0x3

    const-string v6, "NonTag"

    invoke-direct {v0, v6, v5, v2}, Lcom/uhf/api/cls/R2000Command$R2000CmdSatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/R2000Command$R2000CmdSatus;->NonTag:Lcom/uhf/api/cls/R2000Command$R2000CmdSatus;

    .line 59
    new-instance v0, Lcom/uhf/api/cls/R2000Command$R2000CmdSatus;

    const/4 v6, 0x4

    const-string v7, "RSSI_High"

    invoke-direct {v0, v7, v6, v3}, Lcom/uhf/api/cls/R2000Command$R2000CmdSatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/R2000Command$R2000CmdSatus;->RSSI_High:Lcom/uhf/api/cls/R2000Command$R2000CmdSatus;

    .line 60
    new-instance v0, Lcom/uhf/api/cls/R2000Command$R2000CmdSatus;

    const/4 v3, 0x5

    const-string v7, "OptionCodeError"

    invoke-direct {v0, v7, v3, v4}, Lcom/uhf/api/cls/R2000Command$R2000CmdSatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/R2000Command$R2000CmdSatus;->OptionCodeError:Lcom/uhf/api/cls/R2000Command$R2000CmdSatus;

    .line 61
    new-instance v0, Lcom/uhf/api/cls/R2000Command$R2000CmdSatus;

    const/4 v7, 0x6

    const-string v8, "AntSetError"

    const/16 v9, 0xfe

    invoke-direct {v0, v8, v7, v9}, Lcom/uhf/api/cls/R2000Command$R2000CmdSatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/R2000Command$R2000CmdSatus;->AntSetError:Lcom/uhf/api/cls/R2000Command$R2000CmdSatus;

    .line 63
    new-instance v0, Lcom/uhf/api/cls/R2000Command$R2000CmdSatus;

    const/4 v8, 0x7

    const-string v9, "PWD_ERR_OR_TAG_NO_RESPONE"

    const/16 v10, 0x50

    invoke-direct {v0, v9, v8, v10}, Lcom/uhf/api/cls/R2000Command$R2000CmdSatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/R2000Command$R2000CmdSatus;->PWD_ERR_OR_TAG_NO_RESPONE:Lcom/uhf/api/cls/R2000Command$R2000CmdSatus;

    .line 64
    new-instance v0, Lcom/uhf/api/cls/R2000Command$R2000CmdSatus;

    const/16 v9, 0x8

    const-string v10, "TagNonsupportedOrLowPwr"

    const/16 v11, 0x20

    invoke-direct {v0, v10, v9, v11}, Lcom/uhf/api/cls/R2000Command$R2000CmdSatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/R2000Command$R2000CmdSatus;->TagNonsupportedOrLowPwr:Lcom/uhf/api/cls/R2000Command$R2000CmdSatus;

    .line 65
    new-instance v0, Lcom/uhf/api/cls/R2000Command$R2000CmdSatus;

    const/16 v10, 0x9

    const-string v11, "MemOverranging"

    const/16 v12, 0x21

    invoke-direct {v0, v11, v10, v12}, Lcom/uhf/api/cls/R2000Command$R2000CmdSatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/R2000Command$R2000CmdSatus;->MemOverranging:Lcom/uhf/api/cls/R2000Command$R2000CmdSatus;

    .line 66
    new-instance v0, Lcom/uhf/api/cls/R2000Command$R2000CmdSatus;

    const/16 v11, 0xa

    const-string v12, "TagLocked"

    const/16 v13, 0x22

    invoke-direct {v0, v12, v11, v13}, Lcom/uhf/api/cls/R2000Command$R2000CmdSatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/R2000Command$R2000CmdSatus;->TagLocked:Lcom/uhf/api/cls/R2000Command$R2000CmdSatus;

    .line 67
    new-instance v0, Lcom/uhf/api/cls/R2000Command$R2000CmdSatus;

    const/16 v12, 0xb

    const-string v13, "TagOpFailed"

    const/16 v14, 0x30

    invoke-direct {v0, v13, v12, v14}, Lcom/uhf/api/cls/R2000Command$R2000CmdSatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/R2000Command$R2000CmdSatus;->TagOpFailed:Lcom/uhf/api/cls/R2000Command$R2000CmdSatus;

    .line 69
    new-instance v0, Lcom/uhf/api/cls/R2000Command$R2000CmdSatus;

    const/16 v13, 0xc

    const-string v14, "PswZeroError"

    const/16 v15, 0x51

    invoke-direct {v0, v14, v13, v15}, Lcom/uhf/api/cls/R2000Command$R2000CmdSatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/R2000Command$R2000CmdSatus;->PswZeroError:Lcom/uhf/api/cls/R2000Command$R2000CmdSatus;

    .line 70
    new-instance v0, Lcom/uhf/api/cls/R2000Command$R2000CmdSatus;

    const/16 v14, 0xd

    const-string v15, "ModuleFatalError"

    const/16 v13, 0xee

    invoke-direct {v0, v15, v14, v13}, Lcom/uhf/api/cls/R2000Command$R2000CmdSatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/R2000Command$R2000CmdSatus;->ModuleFatalError:Lcom/uhf/api/cls/R2000Command$R2000CmdSatus;

    .line 71
    new-instance v0, Lcom/uhf/api/cls/R2000Command$R2000CmdSatus;

    const-string v13, "Temperatrue_High"

    const/16 v15, 0xe

    const/16 v14, 0xfd

    invoke-direct {v0, v13, v15, v14}, Lcom/uhf/api/cls/R2000Command$R2000CmdSatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/R2000Command$R2000CmdSatus;->Temperatrue_High:Lcom/uhf/api/cls/R2000Command$R2000CmdSatus;

    const/16 v0, 0xf

    new-array v0, v0, [Lcom/uhf/api/cls/R2000Command$R2000CmdSatus;

    .line 52
    sget-object v13, Lcom/uhf/api/cls/R2000Command$R2000CmdSatus;->Non_Identifiability_CMD:Lcom/uhf/api/cls/R2000Command$R2000CmdSatus;

    aput-object v13, v0, v1

    sget-object v1, Lcom/uhf/api/cls/R2000Command$R2000CmdSatus;->OK:Lcom/uhf/api/cls/R2000Command$R2000CmdSatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/uhf/api/cls/R2000Command$R2000CmdSatus;->Error_Or_Failed:Lcom/uhf/api/cls/R2000Command$R2000CmdSatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/uhf/api/cls/R2000Command$R2000CmdSatus;->NonTag:Lcom/uhf/api/cls/R2000Command$R2000CmdSatus;

    aput-object v1, v0, v5

    sget-object v1, Lcom/uhf/api/cls/R2000Command$R2000CmdSatus;->RSSI_High:Lcom/uhf/api/cls/R2000Command$R2000CmdSatus;

    aput-object v1, v0, v6

    sget-object v1, Lcom/uhf/api/cls/R2000Command$R2000CmdSatus;->OptionCodeError:Lcom/uhf/api/cls/R2000Command$R2000CmdSatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/uhf/api/cls/R2000Command$R2000CmdSatus;->AntSetError:Lcom/uhf/api/cls/R2000Command$R2000CmdSatus;

    aput-object v1, v0, v7

    sget-object v1, Lcom/uhf/api/cls/R2000Command$R2000CmdSatus;->PWD_ERR_OR_TAG_NO_RESPONE:Lcom/uhf/api/cls/R2000Command$R2000CmdSatus;

    aput-object v1, v0, v8

    sget-object v1, Lcom/uhf/api/cls/R2000Command$R2000CmdSatus;->TagNonsupportedOrLowPwr:Lcom/uhf/api/cls/R2000Command$R2000CmdSatus;

    aput-object v1, v0, v9

    sget-object v1, Lcom/uhf/api/cls/R2000Command$R2000CmdSatus;->MemOverranging:Lcom/uhf/api/cls/R2000Command$R2000CmdSatus;

    aput-object v1, v0, v10

    sget-object v1, Lcom/uhf/api/cls/R2000Command$R2000CmdSatus;->TagLocked:Lcom/uhf/api/cls/R2000Command$R2000CmdSatus;

    aput-object v1, v0, v11

    sget-object v1, Lcom/uhf/api/cls/R2000Command$R2000CmdSatus;->TagOpFailed:Lcom/uhf/api/cls/R2000Command$R2000CmdSatus;

    aput-object v1, v0, v12

    sget-object v1, Lcom/uhf/api/cls/R2000Command$R2000CmdSatus;->PswZeroError:Lcom/uhf/api/cls/R2000Command$R2000CmdSatus;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/uhf/api/cls/R2000Command$R2000CmdSatus;->ModuleFatalError:Lcom/uhf/api/cls/R2000Command$R2000CmdSatus;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/uhf/api/cls/R2000Command$R2000CmdSatus;->Temperatrue_High:Lcom/uhf/api/cls/R2000Command$R2000CmdSatus;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sput-object v0, Lcom/uhf/api/cls/R2000Command$R2000CmdSatus;->$VALUES:[Lcom/uhf/api/cls/R2000Command$R2000CmdSatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 74
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    const/4 p1, 0x0

    .line 73
    iput p1, p0, Lcom/uhf/api/cls/R2000Command$R2000CmdSatus;->value:I

    .line 75
    iput p3, p0, Lcom/uhf/api/cls/R2000Command$R2000CmdSatus;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/uhf/api/cls/R2000Command$R2000CmdSatus;
    .locals 1

    if-eqz p0, :cond_8

    const/4 v0, 0x1

    if-eq p0, v0, :cond_7

    const/4 v0, 0x2

    if-eq p0, v0, :cond_6

    const/16 v0, 0x30

    if-eq p0, v0, :cond_5

    const/16 v0, 0x88

    if-eq p0, v0, :cond_4

    const/16 v0, 0xee

    if-eq p0, v0, :cond_3

    const/16 v0, 0xfb

    if-eq p0, v0, :cond_2

    const/16 v0, 0x50

    if-eq p0, v0, :cond_1

    const/16 v0, 0x51

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    .line 113
    sget-object p0, Lcom/uhf/api/cls/R2000Command$R2000CmdSatus;->OK:Lcom/uhf/api/cls/R2000Command$R2000CmdSatus;

    return-object p0

    .line 90
    :pswitch_0
    sget-object p0, Lcom/uhf/api/cls/R2000Command$R2000CmdSatus;->RSSI_High:Lcom/uhf/api/cls/R2000Command$R2000CmdSatus;

    return-object p0

    .line 94
    :pswitch_1
    sget-object p0, Lcom/uhf/api/cls/R2000Command$R2000CmdSatus;->AntSetError:Lcom/uhf/api/cls/R2000Command$R2000CmdSatus;

    return-object p0

    .line 106
    :pswitch_2
    sget-object p0, Lcom/uhf/api/cls/R2000Command$R2000CmdSatus;->Temperatrue_High:Lcom/uhf/api/cls/R2000Command$R2000CmdSatus;

    return-object p0

    .line 98
    :pswitch_3
    sget-object p0, Lcom/uhf/api/cls/R2000Command$R2000CmdSatus;->TagLocked:Lcom/uhf/api/cls/R2000Command$R2000CmdSatus;

    return-object p0

    .line 96
    :pswitch_4
    sget-object p0, Lcom/uhf/api/cls/R2000Command$R2000CmdSatus;->MemOverranging:Lcom/uhf/api/cls/R2000Command$R2000CmdSatus;

    return-object p0

    .line 110
    :pswitch_5
    sget-object p0, Lcom/uhf/api/cls/R2000Command$R2000CmdSatus;->TagNonsupportedOrLowPwr:Lcom/uhf/api/cls/R2000Command$R2000CmdSatus;

    return-object p0

    .line 102
    :cond_0
    sget-object p0, Lcom/uhf/api/cls/R2000Command$R2000CmdSatus;->PswZeroError:Lcom/uhf/api/cls/R2000Command$R2000CmdSatus;

    return-object p0

    .line 108
    :cond_1
    sget-object p0, Lcom/uhf/api/cls/R2000Command$R2000CmdSatus;->PWD_ERR_OR_TAG_NO_RESPONE:Lcom/uhf/api/cls/R2000Command$R2000CmdSatus;

    return-object p0

    .line 88
    :cond_2
    sget-object p0, Lcom/uhf/api/cls/R2000Command$R2000CmdSatus;->Error_Or_Failed:Lcom/uhf/api/cls/R2000Command$R2000CmdSatus;

    return-object p0

    .line 104
    :cond_3
    sget-object p0, Lcom/uhf/api/cls/R2000Command$R2000CmdSatus;->ModuleFatalError:Lcom/uhf/api/cls/R2000Command$R2000CmdSatus;

    return-object p0

    .line 84
    :cond_4
    sget-object p0, Lcom/uhf/api/cls/R2000Command$R2000CmdSatus;->Non_Identifiability_CMD:Lcom/uhf/api/cls/R2000Command$R2000CmdSatus;

    return-object p0

    .line 100
    :cond_5
    sget-object p0, Lcom/uhf/api/cls/R2000Command$R2000CmdSatus;->TagOpFailed:Lcom/uhf/api/cls/R2000Command$R2000CmdSatus;

    return-object p0

    .line 92
    :cond_6
    sget-object p0, Lcom/uhf/api/cls/R2000Command$R2000CmdSatus;->OptionCodeError:Lcom/uhf/api/cls/R2000Command$R2000CmdSatus;

    return-object p0

    .line 86
    :cond_7
    sget-object p0, Lcom/uhf/api/cls/R2000Command$R2000CmdSatus;->NonTag:Lcom/uhf/api/cls/R2000Command$R2000CmdSatus;

    return-object p0

    .line 82
    :cond_8
    sget-object p0, Lcom/uhf/api/cls/R2000Command$R2000CmdSatus;->OK:Lcom/uhf/api/cls/R2000Command$R2000CmdSatus;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x20
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xfd
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/uhf/api/cls/R2000Command$R2000CmdSatus;
    .locals 1

    .line 52
    const-class v0, Lcom/uhf/api/cls/R2000Command$R2000CmdSatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/uhf/api/cls/R2000Command$R2000CmdSatus;

    return-object p0
.end method

.method public static values()[Lcom/uhf/api/cls/R2000Command$R2000CmdSatus;
    .locals 1

    .line 52
    sget-object v0, Lcom/uhf/api/cls/R2000Command$R2000CmdSatus;->$VALUES:[Lcom/uhf/api/cls/R2000Command$R2000CmdSatus;

    invoke-virtual {v0}, [Lcom/uhf/api/cls/R2000Command$R2000CmdSatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/uhf/api/cls/R2000Command$R2000CmdSatus;

    return-object v0
.end method
