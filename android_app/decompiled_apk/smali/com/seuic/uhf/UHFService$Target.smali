.class public final enum Lcom/seuic/uhf/UHFService$Target;
.super Ljava/lang/Enum;
.source "UHFService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/seuic/uhf/UHFService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Target"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/seuic/uhf/UHFService$Target;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/seuic/uhf/UHFService$Target;

.field public static final enum A:Lcom/seuic/uhf/UHFService$Target;

.field public static final enum B:Lcom/seuic/uhf/UHFService$Target;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 53
    new-instance v0, Lcom/seuic/uhf/UHFService$Target;

    const/4 v1, 0x0

    const-string v2, "A"

    invoke-direct {v0, v2, v1}, Lcom/seuic/uhf/UHFService$Target;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/seuic/uhf/UHFService$Target;->A:Lcom/seuic/uhf/UHFService$Target;

    .line 54
    new-instance v0, Lcom/seuic/uhf/UHFService$Target;

    const/4 v2, 0x1

    const-string v3, "B"

    invoke-direct {v0, v3, v2}, Lcom/seuic/uhf/UHFService$Target;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/seuic/uhf/UHFService$Target;->B:Lcom/seuic/uhf/UHFService$Target;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/seuic/uhf/UHFService$Target;

    .line 52
    sget-object v3, Lcom/seuic/uhf/UHFService$Target;->A:Lcom/seuic/uhf/UHFService$Target;

    aput-object v3, v0, v1

    sget-object v1, Lcom/seuic/uhf/UHFService$Target;->B:Lcom/seuic/uhf/UHFService$Target;

    aput-object v1, v0, v2

    sput-object v0, Lcom/seuic/uhf/UHFService$Target;->$VALUES:[Lcom/seuic/uhf/UHFService$Target;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 52
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/seuic/uhf/UHFService$Target;
    .locals 1

    .line 52
    const-class v0, Lcom/seuic/uhf/UHFService$Target;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/seuic/uhf/UHFService$Target;

    return-object p0
.end method

.method public static values()[Lcom/seuic/uhf/UHFService$Target;
    .locals 1

    .line 52
    sget-object v0, Lcom/seuic/uhf/UHFService$Target;->$VALUES:[Lcom/seuic/uhf/UHFService$Target;

    invoke-virtual {v0}, [Lcom/seuic/uhf/UHFService$Target;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/seuic/uhf/UHFService$Target;

    return-object v0
.end method
