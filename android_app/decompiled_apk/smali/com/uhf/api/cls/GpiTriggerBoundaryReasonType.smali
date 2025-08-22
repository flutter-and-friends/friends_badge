.class public final enum Lcom/uhf/api/cls/GpiTriggerBoundaryReasonType;
.super Ljava/lang/Enum;
.source "GpiTriggerBoundaryReasonType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/uhf/api/cls/GpiTriggerBoundaryReasonType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/uhf/api/cls/GpiTriggerBoundaryReasonType;

.field public static final enum GpiTriggerBoundaryReason_ByGpi:Lcom/uhf/api/cls/GpiTriggerBoundaryReasonType;

.field public static final enum GpiTriggerBoundaryReason_ByTimeout:Lcom/uhf/api/cls/GpiTriggerBoundaryReasonType;

.field public static final enum GpiTriggerBoundaryReason_None:Lcom/uhf/api/cls/GpiTriggerBoundaryReasonType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 4
    new-instance v0, Lcom/uhf/api/cls/GpiTriggerBoundaryReasonType;

    const/4 v1, 0x0

    const-string v2, "GpiTriggerBoundaryReason_None"

    invoke-direct {v0, v2, v1}, Lcom/uhf/api/cls/GpiTriggerBoundaryReasonType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/uhf/api/cls/GpiTriggerBoundaryReasonType;->GpiTriggerBoundaryReason_None:Lcom/uhf/api/cls/GpiTriggerBoundaryReasonType;

    .line 5
    new-instance v0, Lcom/uhf/api/cls/GpiTriggerBoundaryReasonType;

    const/4 v2, 0x1

    const-string v3, "GpiTriggerBoundaryReason_ByGpi"

    invoke-direct {v0, v3, v2}, Lcom/uhf/api/cls/GpiTriggerBoundaryReasonType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/uhf/api/cls/GpiTriggerBoundaryReasonType;->GpiTriggerBoundaryReason_ByGpi:Lcom/uhf/api/cls/GpiTriggerBoundaryReasonType;

    .line 6
    new-instance v0, Lcom/uhf/api/cls/GpiTriggerBoundaryReasonType;

    const/4 v3, 0x2

    const-string v4, "GpiTriggerBoundaryReason_ByTimeout"

    invoke-direct {v0, v4, v3}, Lcom/uhf/api/cls/GpiTriggerBoundaryReasonType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/uhf/api/cls/GpiTriggerBoundaryReasonType;->GpiTriggerBoundaryReason_ByTimeout:Lcom/uhf/api/cls/GpiTriggerBoundaryReasonType;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/uhf/api/cls/GpiTriggerBoundaryReasonType;

    .line 3
    sget-object v4, Lcom/uhf/api/cls/GpiTriggerBoundaryReasonType;->GpiTriggerBoundaryReason_None:Lcom/uhf/api/cls/GpiTriggerBoundaryReasonType;

    aput-object v4, v0, v1

    sget-object v1, Lcom/uhf/api/cls/GpiTriggerBoundaryReasonType;->GpiTriggerBoundaryReason_ByGpi:Lcom/uhf/api/cls/GpiTriggerBoundaryReasonType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/uhf/api/cls/GpiTriggerBoundaryReasonType;->GpiTriggerBoundaryReason_ByTimeout:Lcom/uhf/api/cls/GpiTriggerBoundaryReasonType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/uhf/api/cls/GpiTriggerBoundaryReasonType;->$VALUES:[Lcom/uhf/api/cls/GpiTriggerBoundaryReasonType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/uhf/api/cls/GpiTriggerBoundaryReasonType;
    .locals 1

    .line 3
    const-class v0, Lcom/uhf/api/cls/GpiTriggerBoundaryReasonType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/uhf/api/cls/GpiTriggerBoundaryReasonType;

    return-object p0
.end method

.method public static values()[Lcom/uhf/api/cls/GpiTriggerBoundaryReasonType;
    .locals 1

    .line 3
    sget-object v0, Lcom/uhf/api/cls/GpiTriggerBoundaryReasonType;->$VALUES:[Lcom/uhf/api/cls/GpiTriggerBoundaryReasonType;

    invoke-virtual {v0}, [Lcom/uhf/api/cls/GpiTriggerBoundaryReasonType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/uhf/api/cls/GpiTriggerBoundaryReasonType;

    return-object v0
.end method
