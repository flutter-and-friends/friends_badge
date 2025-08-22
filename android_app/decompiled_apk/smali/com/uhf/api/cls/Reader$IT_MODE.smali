.class public final enum Lcom/uhf/api/cls/Reader$IT_MODE;
.super Ljava/lang/Enum;
.source "Reader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uhf/api/cls/Reader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "IT_MODE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/uhf/api/cls/Reader$IT_MODE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/uhf/api/cls/Reader$IT_MODE;

.field public static final enum IT_MODE_CT:Lcom/uhf/api/cls/Reader$IT_MODE;

.field public static final enum IT_MODE_E7:Lcom/uhf/api/cls/Reader$IT_MODE;

.field public static final enum IT_MODE_E7v2:Lcom/uhf/api/cls/Reader$IT_MODE;

.field public static final enum IT_MODE_S2:Lcom/uhf/api/cls/Reader$IT_MODE;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1228
    new-instance v0, Lcom/uhf/api/cls/Reader$IT_MODE;

    const/4 v1, 0x0

    const-string v2, "IT_MODE_CT"

    invoke-direct {v0, v2, v1}, Lcom/uhf/api/cls/Reader$IT_MODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/uhf/api/cls/Reader$IT_MODE;->IT_MODE_CT:Lcom/uhf/api/cls/Reader$IT_MODE;

    .line 1229
    new-instance v0, Lcom/uhf/api/cls/Reader$IT_MODE;

    const/4 v2, 0x1

    const-string v3, "IT_MODE_S2"

    invoke-direct {v0, v3, v2}, Lcom/uhf/api/cls/Reader$IT_MODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/uhf/api/cls/Reader$IT_MODE;->IT_MODE_S2:Lcom/uhf/api/cls/Reader$IT_MODE;

    .line 1230
    new-instance v0, Lcom/uhf/api/cls/Reader$IT_MODE;

    const/4 v3, 0x2

    const-string v4, "IT_MODE_E7"

    invoke-direct {v0, v4, v3}, Lcom/uhf/api/cls/Reader$IT_MODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/uhf/api/cls/Reader$IT_MODE;->IT_MODE_E7:Lcom/uhf/api/cls/Reader$IT_MODE;

    .line 1231
    new-instance v0, Lcom/uhf/api/cls/Reader$IT_MODE;

    const/4 v4, 0x3

    const-string v5, "IT_MODE_E7v2"

    invoke-direct {v0, v5, v4}, Lcom/uhf/api/cls/Reader$IT_MODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/uhf/api/cls/Reader$IT_MODE;->IT_MODE_E7v2:Lcom/uhf/api/cls/Reader$IT_MODE;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/uhf/api/cls/Reader$IT_MODE;

    .line 1227
    sget-object v5, Lcom/uhf/api/cls/Reader$IT_MODE;->IT_MODE_CT:Lcom/uhf/api/cls/Reader$IT_MODE;

    aput-object v5, v0, v1

    sget-object v1, Lcom/uhf/api/cls/Reader$IT_MODE;->IT_MODE_S2:Lcom/uhf/api/cls/Reader$IT_MODE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/uhf/api/cls/Reader$IT_MODE;->IT_MODE_E7:Lcom/uhf/api/cls/Reader$IT_MODE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/uhf/api/cls/Reader$IT_MODE;->IT_MODE_E7v2:Lcom/uhf/api/cls/Reader$IT_MODE;

    aput-object v1, v0, v4

    sput-object v0, Lcom/uhf/api/cls/Reader$IT_MODE;->$VALUES:[Lcom/uhf/api/cls/Reader$IT_MODE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1227
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/uhf/api/cls/Reader$IT_MODE;
    .locals 1

    .line 1227
    const-class v0, Lcom/uhf/api/cls/Reader$IT_MODE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/uhf/api/cls/Reader$IT_MODE;

    return-object p0
.end method

.method public static values()[Lcom/uhf/api/cls/Reader$IT_MODE;
    .locals 1

    .line 1227
    sget-object v0, Lcom/uhf/api/cls/Reader$IT_MODE;->$VALUES:[Lcom/uhf/api/cls/Reader$IT_MODE;

    invoke-virtual {v0}, [Lcom/uhf/api/cls/Reader$IT_MODE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/uhf/api/cls/Reader$IT_MODE;

    return-object v0
.end method
