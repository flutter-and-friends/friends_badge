.class public final enum Lcom/seuic/uhf/UHFService$Profile;
.super Ljava/lang/Enum;
.source "UHFService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/seuic/uhf/UHFService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Profile"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/seuic/uhf/UHFService$Profile;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/seuic/uhf/UHFService$Profile;

.field public static final enum P0:Lcom/seuic/uhf/UHFService$Profile;

.field public static final enum P1:Lcom/seuic/uhf/UHFService$Profile;

.field public static final enum P2:Lcom/seuic/uhf/UHFService$Profile;

.field public static final enum P3:Lcom/seuic/uhf/UHFService$Profile;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 41
    new-instance v0, Lcom/seuic/uhf/UHFService$Profile;

    const/4 v1, 0x0

    const-string v2, "P0"

    invoke-direct {v0, v2, v1}, Lcom/seuic/uhf/UHFService$Profile;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/seuic/uhf/UHFService$Profile;->P0:Lcom/seuic/uhf/UHFService$Profile;

    .line 42
    new-instance v0, Lcom/seuic/uhf/UHFService$Profile;

    const/4 v2, 0x1

    const-string v3, "P1"

    invoke-direct {v0, v3, v2}, Lcom/seuic/uhf/UHFService$Profile;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/seuic/uhf/UHFService$Profile;->P1:Lcom/seuic/uhf/UHFService$Profile;

    .line 43
    new-instance v0, Lcom/seuic/uhf/UHFService$Profile;

    const/4 v3, 0x2

    const-string v4, "P2"

    invoke-direct {v0, v4, v3}, Lcom/seuic/uhf/UHFService$Profile;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/seuic/uhf/UHFService$Profile;->P2:Lcom/seuic/uhf/UHFService$Profile;

    .line 44
    new-instance v0, Lcom/seuic/uhf/UHFService$Profile;

    const/4 v4, 0x3

    const-string v5, "P3"

    invoke-direct {v0, v5, v4}, Lcom/seuic/uhf/UHFService$Profile;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/seuic/uhf/UHFService$Profile;->P3:Lcom/seuic/uhf/UHFService$Profile;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/seuic/uhf/UHFService$Profile;

    .line 40
    sget-object v5, Lcom/seuic/uhf/UHFService$Profile;->P0:Lcom/seuic/uhf/UHFService$Profile;

    aput-object v5, v0, v1

    sget-object v1, Lcom/seuic/uhf/UHFService$Profile;->P1:Lcom/seuic/uhf/UHFService$Profile;

    aput-object v1, v0, v2

    sget-object v1, Lcom/seuic/uhf/UHFService$Profile;->P2:Lcom/seuic/uhf/UHFService$Profile;

    aput-object v1, v0, v3

    sget-object v1, Lcom/seuic/uhf/UHFService$Profile;->P3:Lcom/seuic/uhf/UHFService$Profile;

    aput-object v1, v0, v4

    sput-object v0, Lcom/seuic/uhf/UHFService$Profile;->$VALUES:[Lcom/seuic/uhf/UHFService$Profile;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 40
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/seuic/uhf/UHFService$Profile;
    .locals 1

    .line 40
    const-class v0, Lcom/seuic/uhf/UHFService$Profile;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/seuic/uhf/UHFService$Profile;

    return-object p0
.end method

.method public static values()[Lcom/seuic/uhf/UHFService$Profile;
    .locals 1

    .line 40
    sget-object v0, Lcom/seuic/uhf/UHFService$Profile;->$VALUES:[Lcom/seuic/uhf/UHFService$Profile;

    invoke-virtual {v0}, [Lcom/seuic/uhf/UHFService$Profile;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/seuic/uhf/UHFService$Profile;

    return-object v0
.end method
