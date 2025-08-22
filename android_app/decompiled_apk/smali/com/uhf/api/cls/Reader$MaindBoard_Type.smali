.class public final enum Lcom/uhf/api/cls/Reader$MaindBoard_Type;
.super Ljava/lang/Enum;
.source "Reader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uhf/api/cls/Reader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MaindBoard_Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/uhf/api/cls/Reader$MaindBoard_Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/uhf/api/cls/Reader$MaindBoard_Type;

.field public static final enum MAINBOARD_ARM7:Lcom/uhf/api/cls/Reader$MaindBoard_Type;

.field public static final enum MAINBOARD_ARM9:Lcom/uhf/api/cls/Reader$MaindBoard_Type;

.field public static final enum MAINBOARD_ARM9_WIFI:Lcom/uhf/api/cls/Reader$MaindBoard_Type;

.field public static final enum MAINBOARD_NONE:Lcom/uhf/api/cls/Reader$MaindBoard_Type;

.field public static final enum MAINBOARD_SERIAL:Lcom/uhf/api/cls/Reader$MaindBoard_Type;

.field public static final enum MAINBOARD_WIFI:Lcom/uhf/api/cls/Reader$MaindBoard_Type;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 232
    new-instance v0, Lcom/uhf/api/cls/Reader$MaindBoard_Type;

    const/4 v1, 0x0

    const-string v2, "MAINBOARD_NONE"

    invoke-direct {v0, v2, v1}, Lcom/uhf/api/cls/Reader$MaindBoard_Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/uhf/api/cls/Reader$MaindBoard_Type;->MAINBOARD_NONE:Lcom/uhf/api/cls/Reader$MaindBoard_Type;

    .line 233
    new-instance v0, Lcom/uhf/api/cls/Reader$MaindBoard_Type;

    const/4 v2, 0x1

    const-string v3, "MAINBOARD_ARM7"

    invoke-direct {v0, v3, v2}, Lcom/uhf/api/cls/Reader$MaindBoard_Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/uhf/api/cls/Reader$MaindBoard_Type;->MAINBOARD_ARM7:Lcom/uhf/api/cls/Reader$MaindBoard_Type;

    .line 234
    new-instance v0, Lcom/uhf/api/cls/Reader$MaindBoard_Type;

    const/4 v3, 0x2

    const-string v4, "MAINBOARD_SERIAL"

    invoke-direct {v0, v4, v3}, Lcom/uhf/api/cls/Reader$MaindBoard_Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/uhf/api/cls/Reader$MaindBoard_Type;->MAINBOARD_SERIAL:Lcom/uhf/api/cls/Reader$MaindBoard_Type;

    .line 235
    new-instance v0, Lcom/uhf/api/cls/Reader$MaindBoard_Type;

    const/4 v4, 0x3

    const-string v5, "MAINBOARD_WIFI"

    invoke-direct {v0, v5, v4}, Lcom/uhf/api/cls/Reader$MaindBoard_Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/uhf/api/cls/Reader$MaindBoard_Type;->MAINBOARD_WIFI:Lcom/uhf/api/cls/Reader$MaindBoard_Type;

    .line 236
    new-instance v0, Lcom/uhf/api/cls/Reader$MaindBoard_Type;

    const/4 v5, 0x4

    const-string v6, "MAINBOARD_ARM9"

    invoke-direct {v0, v6, v5}, Lcom/uhf/api/cls/Reader$MaindBoard_Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/uhf/api/cls/Reader$MaindBoard_Type;->MAINBOARD_ARM9:Lcom/uhf/api/cls/Reader$MaindBoard_Type;

    .line 237
    new-instance v0, Lcom/uhf/api/cls/Reader$MaindBoard_Type;

    const/4 v6, 0x5

    const-string v7, "MAINBOARD_ARM9_WIFI"

    invoke-direct {v0, v7, v6}, Lcom/uhf/api/cls/Reader$MaindBoard_Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/uhf/api/cls/Reader$MaindBoard_Type;->MAINBOARD_ARM9_WIFI:Lcom/uhf/api/cls/Reader$MaindBoard_Type;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/uhf/api/cls/Reader$MaindBoard_Type;

    .line 231
    sget-object v7, Lcom/uhf/api/cls/Reader$MaindBoard_Type;->MAINBOARD_NONE:Lcom/uhf/api/cls/Reader$MaindBoard_Type;

    aput-object v7, v0, v1

    sget-object v1, Lcom/uhf/api/cls/Reader$MaindBoard_Type;->MAINBOARD_ARM7:Lcom/uhf/api/cls/Reader$MaindBoard_Type;

    aput-object v1, v0, v2

    sget-object v1, Lcom/uhf/api/cls/Reader$MaindBoard_Type;->MAINBOARD_SERIAL:Lcom/uhf/api/cls/Reader$MaindBoard_Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/uhf/api/cls/Reader$MaindBoard_Type;->MAINBOARD_WIFI:Lcom/uhf/api/cls/Reader$MaindBoard_Type;

    aput-object v1, v0, v4

    sget-object v1, Lcom/uhf/api/cls/Reader$MaindBoard_Type;->MAINBOARD_ARM9:Lcom/uhf/api/cls/Reader$MaindBoard_Type;

    aput-object v1, v0, v5

    sget-object v1, Lcom/uhf/api/cls/Reader$MaindBoard_Type;->MAINBOARD_ARM9_WIFI:Lcom/uhf/api/cls/Reader$MaindBoard_Type;

    aput-object v1, v0, v6

    sput-object v0, Lcom/uhf/api/cls/Reader$MaindBoard_Type;->$VALUES:[Lcom/uhf/api/cls/Reader$MaindBoard_Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 231
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/uhf/api/cls/Reader$MaindBoard_Type;
    .locals 1

    .line 231
    const-class v0, Lcom/uhf/api/cls/Reader$MaindBoard_Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/uhf/api/cls/Reader$MaindBoard_Type;

    return-object p0
.end method

.method public static values()[Lcom/uhf/api/cls/Reader$MaindBoard_Type;
    .locals 1

    .line 231
    sget-object v0, Lcom/uhf/api/cls/Reader$MaindBoard_Type;->$VALUES:[Lcom/uhf/api/cls/Reader$MaindBoard_Type;

    invoke-virtual {v0}, [Lcom/uhf/api/cls/Reader$MaindBoard_Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/uhf/api/cls/Reader$MaindBoard_Type;

    return-object v0
.end method
