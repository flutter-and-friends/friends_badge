.class public final enum Lcom/seuic/uhf/UHFService$Speed;
.super Ljava/lang/Enum;
.source "UHFService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/seuic/uhf/UHFService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Speed"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/seuic/uhf/UHFService$Speed;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/seuic/uhf/UHFService$Speed;

.field public static final enum FAST:Lcom/seuic/uhf/UHFService$Speed;

.field public static final enum SLOW:Lcom/seuic/uhf/UHFService$Speed;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 57
    new-instance v0, Lcom/seuic/uhf/UHFService$Speed;

    const/4 v1, 0x0

    const-string v2, "FAST"

    invoke-direct {v0, v2, v1}, Lcom/seuic/uhf/UHFService$Speed;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/seuic/uhf/UHFService$Speed;->FAST:Lcom/seuic/uhf/UHFService$Speed;

    .line 58
    new-instance v0, Lcom/seuic/uhf/UHFService$Speed;

    const/4 v2, 0x1

    const-string v3, "SLOW"

    invoke-direct {v0, v3, v2}, Lcom/seuic/uhf/UHFService$Speed;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/seuic/uhf/UHFService$Speed;->SLOW:Lcom/seuic/uhf/UHFService$Speed;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/seuic/uhf/UHFService$Speed;

    .line 56
    sget-object v3, Lcom/seuic/uhf/UHFService$Speed;->FAST:Lcom/seuic/uhf/UHFService$Speed;

    aput-object v3, v0, v1

    sget-object v1, Lcom/seuic/uhf/UHFService$Speed;->SLOW:Lcom/seuic/uhf/UHFService$Speed;

    aput-object v1, v0, v2

    sput-object v0, Lcom/seuic/uhf/UHFService$Speed;->$VALUES:[Lcom/seuic/uhf/UHFService$Speed;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 56
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/seuic/uhf/UHFService$Speed;
    .locals 1

    .line 56
    const-class v0, Lcom/seuic/uhf/UHFService$Speed;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/seuic/uhf/UHFService$Speed;

    return-object p0
.end method

.method public static values()[Lcom/seuic/uhf/UHFService$Speed;
    .locals 1

    .line 56
    sget-object v0, Lcom/seuic/uhf/UHFService$Speed;->$VALUES:[Lcom/seuic/uhf/UHFService$Speed;

    invoke-virtual {v0}, [Lcom/seuic/uhf/UHFService$Speed;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/seuic/uhf/UHFService$Speed;

    return-object v0
.end method
