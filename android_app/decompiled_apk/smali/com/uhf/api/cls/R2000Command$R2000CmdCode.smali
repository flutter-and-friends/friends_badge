.class public final enum Lcom/uhf/api/cls/R2000Command$R2000CmdCode;
.super Ljava/lang/Enum;
.source "R2000Command.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uhf/api/cls/R2000Command;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "R2000CmdCode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/uhf/api/cls/R2000Command$R2000CmdCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/uhf/api/cls/R2000Command$R2000CmdCode;

.field public static final enum AntGet:Lcom/uhf/api/cls/R2000Command$R2000CmdCode;

.field public static final enum AntSet:Lcom/uhf/api/cls/R2000Command$R2000CmdCode;

.field public static final enum CarrytoProgram:Lcom/uhf/api/cls/R2000Command$R2000CmdCode;

.field public static final enum CheckFlash:Lcom/uhf/api/cls/R2000Command$R2000CmdCode;

.field public static final enum CustomFrequencySelect:Lcom/uhf/api/cls/R2000Command$R2000CmdCode;

.field public static final enum FetchTag:Lcom/uhf/api/cls/R2000Command$R2000CmdCode;

.field public static final enum FrequencySelect:Lcom/uhf/api/cls/R2000Command$R2000CmdCode;

.field public static final enum GetCurrentFrequency:Lcom/uhf/api/cls/R2000Command$R2000CmdCode;

.field public static final enum GetCurrentSession:Lcom/uhf/api/cls/R2000Command$R2000CmdCode;

.field public static final enum GetIOStatus:Lcom/uhf/api/cls/R2000Command$R2000CmdCode;

.field public static final enum GetRFPower:Lcom/uhf/api/cls/R2000Command$R2000CmdCode;

.field public static final enum GetVersion:Lcom/uhf/api/cls/R2000Command$R2000CmdCode;

.field public static final enum KillTag:Lcom/uhf/api/cls/R2000Command$R2000CmdCode;

.field public static final enum LockTag:Lcom/uhf/api/cls/R2000Command$R2000CmdCode;

.field public static final enum MuliteTagInventry:Lcom/uhf/api/cls/R2000Command$R2000CmdCode;

.field public static final enum RFPwdSet:Lcom/uhf/api/cls/R2000Command$R2000CmdCode;

.field public static final enum ReadTagMem:Lcom/uhf/api/cls/R2000Command$R2000CmdCode;

.field public static final enum ReadyWriteFlash:Lcom/uhf/api/cls/R2000Command$R2000CmdCode;

.field public static final enum SetIO:Lcom/uhf/api/cls/R2000Command$R2000CmdCode;

.field public static final enum SetSession:Lcom/uhf/api/cls/R2000Command$R2000CmdCode;

.field public static final enum SingleTagInventry:Lcom/uhf/api/cls/R2000Command$R2000CmdCode;

.field public static final enum WriteFlash:Lcom/uhf/api/cls/R2000Command$R2000CmdCode;

.field public static final enum WriteTagMem:Lcom/uhf/api/cls/R2000Command$R2000CmdCode;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 14
    new-instance v0, Lcom/uhf/api/cls/R2000Command$R2000CmdCode;

    const/4 v1, 0x0

    const/16 v2, 0xf

    const-string v3, "RFPwdSet"

    invoke-direct {v0, v3, v1, v2}, Lcom/uhf/api/cls/R2000Command$R2000CmdCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/R2000Command$R2000CmdCode;->RFPwdSet:Lcom/uhf/api/cls/R2000Command$R2000CmdCode;

    .line 15
    new-instance v0, Lcom/uhf/api/cls/R2000Command$R2000CmdCode;

    const/16 v3, 0x10

    const/4 v4, 0x1

    const-string v5, "FrequencySelect"

    invoke-direct {v0, v5, v4, v3}, Lcom/uhf/api/cls/R2000Command$R2000CmdCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/R2000Command$R2000CmdCode;->FrequencySelect:Lcom/uhf/api/cls/R2000Command$R2000CmdCode;

    .line 16
    new-instance v0, Lcom/uhf/api/cls/R2000Command$R2000CmdCode;

    const/4 v5, 0x2

    const/16 v6, 0x11

    const-string v7, "CustomFrequencySelect"

    invoke-direct {v0, v7, v5, v6}, Lcom/uhf/api/cls/R2000Command$R2000CmdCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/R2000Command$R2000CmdCode;->CustomFrequencySelect:Lcom/uhf/api/cls/R2000Command$R2000CmdCode;

    .line 17
    new-instance v0, Lcom/uhf/api/cls/R2000Command$R2000CmdCode;

    const/4 v7, 0x3

    const/16 v8, 0x13

    const-string v9, "SetSession"

    invoke-direct {v0, v9, v7, v8}, Lcom/uhf/api/cls/R2000Command$R2000CmdCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/R2000Command$R2000CmdCode;->SetSession:Lcom/uhf/api/cls/R2000Command$R2000CmdCode;

    .line 18
    new-instance v0, Lcom/uhf/api/cls/R2000Command$R2000CmdCode;

    const/4 v9, 0x4

    const-string v10, "SingleTagInventry"

    const/16 v11, 0x21

    invoke-direct {v0, v10, v9, v11}, Lcom/uhf/api/cls/R2000Command$R2000CmdCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/R2000Command$R2000CmdCode;->SingleTagInventry:Lcom/uhf/api/cls/R2000Command$R2000CmdCode;

    .line 19
    new-instance v0, Lcom/uhf/api/cls/R2000Command$R2000CmdCode;

    const/4 v10, 0x5

    const-string v11, "MuliteTagInventry"

    const/16 v12, 0x22

    invoke-direct {v0, v11, v10, v12}, Lcom/uhf/api/cls/R2000Command$R2000CmdCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/R2000Command$R2000CmdCode;->MuliteTagInventry:Lcom/uhf/api/cls/R2000Command$R2000CmdCode;

    .line 20
    new-instance v0, Lcom/uhf/api/cls/R2000Command$R2000CmdCode;

    const/4 v11, 0x6

    const-string v12, "WriteTagMem"

    const/16 v13, 0x24

    invoke-direct {v0, v12, v11, v13}, Lcom/uhf/api/cls/R2000Command$R2000CmdCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/R2000Command$R2000CmdCode;->WriteTagMem:Lcom/uhf/api/cls/R2000Command$R2000CmdCode;

    .line 21
    new-instance v0, Lcom/uhf/api/cls/R2000Command$R2000CmdCode;

    const-string v12, "ReadTagMem"

    const/4 v13, 0x7

    const/16 v14, 0x28

    invoke-direct {v0, v12, v13, v14}, Lcom/uhf/api/cls/R2000Command$R2000CmdCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/R2000Command$R2000CmdCode;->ReadTagMem:Lcom/uhf/api/cls/R2000Command$R2000CmdCode;

    .line 22
    new-instance v0, Lcom/uhf/api/cls/R2000Command$R2000CmdCode;

    const/16 v12, 0x8

    const-string v13, "FetchTag"

    const/16 v14, 0x29

    invoke-direct {v0, v13, v12, v14}, Lcom/uhf/api/cls/R2000Command$R2000CmdCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/R2000Command$R2000CmdCode;->FetchTag:Lcom/uhf/api/cls/R2000Command$R2000CmdCode;

    .line 23
    new-instance v0, Lcom/uhf/api/cls/R2000Command$R2000CmdCode;

    const/16 v13, 0x9

    const-string v14, "GetRFPower"

    const/16 v15, 0x41

    invoke-direct {v0, v14, v13, v15}, Lcom/uhf/api/cls/R2000Command$R2000CmdCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/R2000Command$R2000CmdCode;->GetRFPower:Lcom/uhf/api/cls/R2000Command$R2000CmdCode;

    .line 24
    new-instance v0, Lcom/uhf/api/cls/R2000Command$R2000CmdCode;

    const-string v14, "GetCurrentFrequency"

    const/16 v15, 0xa

    const/16 v11, 0x42

    invoke-direct {v0, v14, v15, v11}, Lcom/uhf/api/cls/R2000Command$R2000CmdCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/R2000Command$R2000CmdCode;->GetCurrentFrequency:Lcom/uhf/api/cls/R2000Command$R2000CmdCode;

    .line 25
    new-instance v0, Lcom/uhf/api/cls/R2000Command$R2000CmdCode;

    const-string v11, "GetCurrentSession"

    const/16 v14, 0xb

    const/16 v15, 0x43

    invoke-direct {v0, v11, v14, v15}, Lcom/uhf/api/cls/R2000Command$R2000CmdCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/R2000Command$R2000CmdCode;->GetCurrentSession:Lcom/uhf/api/cls/R2000Command$R2000CmdCode;

    .line 26
    new-instance v0, Lcom/uhf/api/cls/R2000Command$R2000CmdCode;

    const-string v11, "GetVersion"

    const/16 v14, 0xc

    const/16 v15, 0x44

    invoke-direct {v0, v11, v14, v15}, Lcom/uhf/api/cls/R2000Command$R2000CmdCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/R2000Command$R2000CmdCode;->GetVersion:Lcom/uhf/api/cls/R2000Command$R2000CmdCode;

    .line 27
    new-instance v0, Lcom/uhf/api/cls/R2000Command$R2000CmdCode;

    const-string v11, "CarrytoProgram"

    const/16 v14, 0xd

    invoke-direct {v0, v11, v14, v9}, Lcom/uhf/api/cls/R2000Command$R2000CmdCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/R2000Command$R2000CmdCode;->CarrytoProgram:Lcom/uhf/api/cls/R2000Command$R2000CmdCode;

    .line 28
    new-instance v0, Lcom/uhf/api/cls/R2000Command$R2000CmdCode;

    const-string v11, "LockTag"

    const/16 v14, 0xe

    const/16 v15, 0x25

    invoke-direct {v0, v11, v14, v15}, Lcom/uhf/api/cls/R2000Command$R2000CmdCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/R2000Command$R2000CmdCode;->LockTag:Lcom/uhf/api/cls/R2000Command$R2000CmdCode;

    .line 29
    new-instance v0, Lcom/uhf/api/cls/R2000Command$R2000CmdCode;

    const-string v11, "KillTag"

    const/16 v14, 0x26

    invoke-direct {v0, v11, v2, v14}, Lcom/uhf/api/cls/R2000Command$R2000CmdCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/R2000Command$R2000CmdCode;->KillTag:Lcom/uhf/api/cls/R2000Command$R2000CmdCode;

    .line 30
    new-instance v0, Lcom/uhf/api/cls/R2000Command$R2000CmdCode;

    const-string v11, "SetIO"

    const/16 v14, 0x50

    invoke-direct {v0, v11, v3, v14}, Lcom/uhf/api/cls/R2000Command$R2000CmdCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/R2000Command$R2000CmdCode;->SetIO:Lcom/uhf/api/cls/R2000Command$R2000CmdCode;

    .line 31
    new-instance v0, Lcom/uhf/api/cls/R2000Command$R2000CmdCode;

    const-string v11, "GetIOStatus"

    const/16 v14, 0x51

    invoke-direct {v0, v11, v6, v14}, Lcom/uhf/api/cls/R2000Command$R2000CmdCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/R2000Command$R2000CmdCode;->GetIOStatus:Lcom/uhf/api/cls/R2000Command$R2000CmdCode;

    .line 33
    new-instance v0, Lcom/uhf/api/cls/R2000Command$R2000CmdCode;

    const/16 v11, 0x14

    const-string v14, "AntSet"

    const/16 v15, 0x12

    invoke-direct {v0, v14, v15, v11}, Lcom/uhf/api/cls/R2000Command$R2000CmdCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/R2000Command$R2000CmdCode;->AntSet:Lcom/uhf/api/cls/R2000Command$R2000CmdCode;

    .line 34
    new-instance v0, Lcom/uhf/api/cls/R2000Command$R2000CmdCode;

    const/16 v14, 0x15

    const-string v15, "AntGet"

    invoke-direct {v0, v15, v8, v14}, Lcom/uhf/api/cls/R2000Command$R2000CmdCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/R2000Command$R2000CmdCode;->AntGet:Lcom/uhf/api/cls/R2000Command$R2000CmdCode;

    .line 37
    new-instance v0, Lcom/uhf/api/cls/R2000Command$R2000CmdCode;

    const-string v15, "WriteFlash"

    invoke-direct {v0, v15, v11, v4}, Lcom/uhf/api/cls/R2000Command$R2000CmdCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/R2000Command$R2000CmdCode;->WriteFlash:Lcom/uhf/api/cls/R2000Command$R2000CmdCode;

    .line 38
    new-instance v0, Lcom/uhf/api/cls/R2000Command$R2000CmdCode;

    const-string v15, "ReadyWriteFlash"

    invoke-direct {v0, v15, v14, v13}, Lcom/uhf/api/cls/R2000Command$R2000CmdCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/R2000Command$R2000CmdCode;->ReadyWriteFlash:Lcom/uhf/api/cls/R2000Command$R2000CmdCode;

    .line 39
    new-instance v0, Lcom/uhf/api/cls/R2000Command$R2000CmdCode;

    const-string v15, "CheckFlash"

    const/16 v14, 0x16

    invoke-direct {v0, v15, v14, v12}, Lcom/uhf/api/cls/R2000Command$R2000CmdCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/R2000Command$R2000CmdCode;->CheckFlash:Lcom/uhf/api/cls/R2000Command$R2000CmdCode;

    const/16 v0, 0x17

    new-array v0, v0, [Lcom/uhf/api/cls/R2000Command$R2000CmdCode;

    .line 12
    sget-object v14, Lcom/uhf/api/cls/R2000Command$R2000CmdCode;->RFPwdSet:Lcom/uhf/api/cls/R2000Command$R2000CmdCode;

    aput-object v14, v0, v1

    sget-object v1, Lcom/uhf/api/cls/R2000Command$R2000CmdCode;->FrequencySelect:Lcom/uhf/api/cls/R2000Command$R2000CmdCode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/uhf/api/cls/R2000Command$R2000CmdCode;->CustomFrequencySelect:Lcom/uhf/api/cls/R2000Command$R2000CmdCode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/uhf/api/cls/R2000Command$R2000CmdCode;->SetSession:Lcom/uhf/api/cls/R2000Command$R2000CmdCode;

    aput-object v1, v0, v7

    sget-object v1, Lcom/uhf/api/cls/R2000Command$R2000CmdCode;->SingleTagInventry:Lcom/uhf/api/cls/R2000Command$R2000CmdCode;

    aput-object v1, v0, v9

    sget-object v1, Lcom/uhf/api/cls/R2000Command$R2000CmdCode;->MuliteTagInventry:Lcom/uhf/api/cls/R2000Command$R2000CmdCode;

    aput-object v1, v0, v10

    sget-object v1, Lcom/uhf/api/cls/R2000Command$R2000CmdCode;->WriteTagMem:Lcom/uhf/api/cls/R2000Command$R2000CmdCode;

    const/4 v4, 0x6

    aput-object v1, v0, v4

    sget-object v1, Lcom/uhf/api/cls/R2000Command$R2000CmdCode;->ReadTagMem:Lcom/uhf/api/cls/R2000Command$R2000CmdCode;

    const/4 v4, 0x7

    aput-object v1, v0, v4

    sget-object v1, Lcom/uhf/api/cls/R2000Command$R2000CmdCode;->FetchTag:Lcom/uhf/api/cls/R2000Command$R2000CmdCode;

    aput-object v1, v0, v12

    sget-object v1, Lcom/uhf/api/cls/R2000Command$R2000CmdCode;->GetRFPower:Lcom/uhf/api/cls/R2000Command$R2000CmdCode;

    aput-object v1, v0, v13

    sget-object v1, Lcom/uhf/api/cls/R2000Command$R2000CmdCode;->GetCurrentFrequency:Lcom/uhf/api/cls/R2000Command$R2000CmdCode;

    const/16 v4, 0xa

    aput-object v1, v0, v4

    sget-object v1, Lcom/uhf/api/cls/R2000Command$R2000CmdCode;->GetCurrentSession:Lcom/uhf/api/cls/R2000Command$R2000CmdCode;

    const/16 v4, 0xb

    aput-object v1, v0, v4

    sget-object v1, Lcom/uhf/api/cls/R2000Command$R2000CmdCode;->GetVersion:Lcom/uhf/api/cls/R2000Command$R2000CmdCode;

    const/16 v4, 0xc

    aput-object v1, v0, v4

    sget-object v1, Lcom/uhf/api/cls/R2000Command$R2000CmdCode;->CarrytoProgram:Lcom/uhf/api/cls/R2000Command$R2000CmdCode;

    const/16 v4, 0xd

    aput-object v1, v0, v4

    sget-object v1, Lcom/uhf/api/cls/R2000Command$R2000CmdCode;->LockTag:Lcom/uhf/api/cls/R2000Command$R2000CmdCode;

    const/16 v4, 0xe

    aput-object v1, v0, v4

    sget-object v1, Lcom/uhf/api/cls/R2000Command$R2000CmdCode;->KillTag:Lcom/uhf/api/cls/R2000Command$R2000CmdCode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/uhf/api/cls/R2000Command$R2000CmdCode;->SetIO:Lcom/uhf/api/cls/R2000Command$R2000CmdCode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/uhf/api/cls/R2000Command$R2000CmdCode;->GetIOStatus:Lcom/uhf/api/cls/R2000Command$R2000CmdCode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/uhf/api/cls/R2000Command$R2000CmdCode;->AntSet:Lcom/uhf/api/cls/R2000Command$R2000CmdCode;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Lcom/uhf/api/cls/R2000Command$R2000CmdCode;->AntGet:Lcom/uhf/api/cls/R2000Command$R2000CmdCode;

    aput-object v1, v0, v8

    sget-object v1, Lcom/uhf/api/cls/R2000Command$R2000CmdCode;->WriteFlash:Lcom/uhf/api/cls/R2000Command$R2000CmdCode;

    aput-object v1, v0, v11

    sget-object v1, Lcom/uhf/api/cls/R2000Command$R2000CmdCode;->ReadyWriteFlash:Lcom/uhf/api/cls/R2000Command$R2000CmdCode;

    const/16 v2, 0x15

    aput-object v1, v0, v2

    sget-object v1, Lcom/uhf/api/cls/R2000Command$R2000CmdCode;->CheckFlash:Lcom/uhf/api/cls/R2000Command$R2000CmdCode;

    const/16 v2, 0x16

    aput-object v1, v0, v2

    sput-object v0, Lcom/uhf/api/cls/R2000Command$R2000CmdCode;->$VALUES:[Lcom/uhf/api/cls/R2000Command$R2000CmdCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 46
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    const/4 p1, 0x0

    .line 41
    iput p1, p0, Lcom/uhf/api/cls/R2000Command$R2000CmdCode;->value:I

    .line 47
    iput p3, p0, Lcom/uhf/api/cls/R2000Command$R2000CmdCode;->value:I

    return-void
.end method

.method static synthetic access$000(Lcom/uhf/api/cls/R2000Command$R2000CmdCode;)I
    .locals 0

    .line 12
    iget p0, p0, Lcom/uhf/api/cls/R2000Command$R2000CmdCode;->value:I

    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/uhf/api/cls/R2000Command$R2000CmdCode;
    .locals 1

    .line 12
    const-class v0, Lcom/uhf/api/cls/R2000Command$R2000CmdCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/uhf/api/cls/R2000Command$R2000CmdCode;

    return-object p0
.end method

.method public static values()[Lcom/uhf/api/cls/R2000Command$R2000CmdCode;
    .locals 1

    .line 12
    sget-object v0, Lcom/uhf/api/cls/R2000Command$R2000CmdCode;->$VALUES:[Lcom/uhf/api/cls/R2000Command$R2000CmdCode;

    invoke-virtual {v0}, [Lcom/uhf/api/cls/R2000Command$R2000CmdCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/uhf/api/cls/R2000Command$R2000CmdCode;

    return-object v0
.end method


# virtual methods
.method public Value()I
    .locals 1

    .line 44
    iget v0, p0, Lcom/uhf/api/cls/R2000Command$R2000CmdCode;->value:I

    return v0
.end method
