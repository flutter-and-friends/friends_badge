.class public final enum Lcom/uhf/api/cls/GpiTrigger_Type;
.super Ljava/lang/Enum;
.source "GpiTrigger_Type.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/uhf/api/cls/GpiTrigger_Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/uhf/api/cls/GpiTrigger_Type;

.field public static final enum GPITRIGGER_NONE:Lcom/uhf/api/cls/GpiTrigger_Type;

.field public static final enum GPITRIGGER_TRI1ORTRI2START_TIMEOUTSTOP:Lcom/uhf/api/cls/GpiTrigger_Type;

.field public static final enum GPITRIGGER_TRI1START_TIMEOUTSTOP:Lcom/uhf/api/cls/GpiTrigger_Type;

.field public static final enum GPITRIGGER_TRI1START_TRI2STOP:Lcom/uhf/api/cls/GpiTrigger_Type;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 4
    new-instance v0, Lcom/uhf/api/cls/GpiTrigger_Type;

    const/4 v1, 0x0

    const-string v2, "GPITRIGGER_NONE"

    invoke-direct {v0, v2, v1}, Lcom/uhf/api/cls/GpiTrigger_Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/uhf/api/cls/GpiTrigger_Type;->GPITRIGGER_NONE:Lcom/uhf/api/cls/GpiTrigger_Type;

    .line 5
    new-instance v0, Lcom/uhf/api/cls/GpiTrigger_Type;

    const/4 v2, 0x1

    const-string v3, "GPITRIGGER_TRI1START_TRI2STOP"

    invoke-direct {v0, v3, v2}, Lcom/uhf/api/cls/GpiTrigger_Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/uhf/api/cls/GpiTrigger_Type;->GPITRIGGER_TRI1START_TRI2STOP:Lcom/uhf/api/cls/GpiTrigger_Type;

    .line 6
    new-instance v0, Lcom/uhf/api/cls/GpiTrigger_Type;

    const/4 v3, 0x2

    const-string v4, "GPITRIGGER_TRI1START_TIMEOUTSTOP"

    invoke-direct {v0, v4, v3}, Lcom/uhf/api/cls/GpiTrigger_Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/uhf/api/cls/GpiTrigger_Type;->GPITRIGGER_TRI1START_TIMEOUTSTOP:Lcom/uhf/api/cls/GpiTrigger_Type;

    .line 7
    new-instance v0, Lcom/uhf/api/cls/GpiTrigger_Type;

    const/4 v4, 0x3

    const-string v5, "GPITRIGGER_TRI1ORTRI2START_TIMEOUTSTOP"

    invoke-direct {v0, v5, v4}, Lcom/uhf/api/cls/GpiTrigger_Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/uhf/api/cls/GpiTrigger_Type;->GPITRIGGER_TRI1ORTRI2START_TIMEOUTSTOP:Lcom/uhf/api/cls/GpiTrigger_Type;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/uhf/api/cls/GpiTrigger_Type;

    .line 3
    sget-object v5, Lcom/uhf/api/cls/GpiTrigger_Type;->GPITRIGGER_NONE:Lcom/uhf/api/cls/GpiTrigger_Type;

    aput-object v5, v0, v1

    sget-object v1, Lcom/uhf/api/cls/GpiTrigger_Type;->GPITRIGGER_TRI1START_TRI2STOP:Lcom/uhf/api/cls/GpiTrigger_Type;

    aput-object v1, v0, v2

    sget-object v1, Lcom/uhf/api/cls/GpiTrigger_Type;->GPITRIGGER_TRI1START_TIMEOUTSTOP:Lcom/uhf/api/cls/GpiTrigger_Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/uhf/api/cls/GpiTrigger_Type;->GPITRIGGER_TRI1ORTRI2START_TIMEOUTSTOP:Lcom/uhf/api/cls/GpiTrigger_Type;

    aput-object v1, v0, v4

    sput-object v0, Lcom/uhf/api/cls/GpiTrigger_Type;->$VALUES:[Lcom/uhf/api/cls/GpiTrigger_Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/uhf/api/cls/GpiTrigger_Type;
    .locals 1

    .line 3
    const-class v0, Lcom/uhf/api/cls/GpiTrigger_Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/uhf/api/cls/GpiTrigger_Type;

    return-object p0
.end method

.method public static values()[Lcom/uhf/api/cls/GpiTrigger_Type;
    .locals 1

    .line 3
    sget-object v0, Lcom/uhf/api/cls/GpiTrigger_Type;->$VALUES:[Lcom/uhf/api/cls/GpiTrigger_Type;

    invoke-virtual {v0}, [Lcom/uhf/api/cls/GpiTrigger_Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/uhf/api/cls/GpiTrigger_Type;

    return-object v0
.end method
