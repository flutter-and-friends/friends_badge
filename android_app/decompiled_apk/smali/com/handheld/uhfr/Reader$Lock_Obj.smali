.class public final enum Lcom/handheld/uhfr/Reader$Lock_Obj;
.super Ljava/lang/Enum;
.source "Reader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/handheld/uhfr/Reader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Lock_Obj"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/handheld/uhfr/Reader$Lock_Obj;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/handheld/uhfr/Reader$Lock_Obj;

.field public static final enum LOCK_OBJECT_ACCESS_PASSWD:Lcom/handheld/uhfr/Reader$Lock_Obj;

.field public static final enum LOCK_OBJECT_BANK1:Lcom/handheld/uhfr/Reader$Lock_Obj;

.field public static final enum LOCK_OBJECT_BANK2:Lcom/handheld/uhfr/Reader$Lock_Obj;

.field public static final enum LOCK_OBJECT_BANK3:Lcom/handheld/uhfr/Reader$Lock_Obj;

.field public static final enum LOCK_OBJECT_KILL_PASSWORD:Lcom/handheld/uhfr/Reader$Lock_Obj;


# instance fields
.field p_v:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 6
    new-instance v0, Lcom/handheld/uhfr/Reader$Lock_Obj;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "LOCK_OBJECT_KILL_PASSWORD"

    invoke-direct {v0, v3, v1, v2}, Lcom/handheld/uhfr/Reader$Lock_Obj;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/handheld/uhfr/Reader$Lock_Obj;->LOCK_OBJECT_KILL_PASSWORD:Lcom/handheld/uhfr/Reader$Lock_Obj;

    .line 7
    new-instance v0, Lcom/handheld/uhfr/Reader$Lock_Obj;

    const/4 v3, 0x2

    const-string v4, "LOCK_OBJECT_ACCESS_PASSWD"

    invoke-direct {v0, v4, v2, v3}, Lcom/handheld/uhfr/Reader$Lock_Obj;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/handheld/uhfr/Reader$Lock_Obj;->LOCK_OBJECT_ACCESS_PASSWD:Lcom/handheld/uhfr/Reader$Lock_Obj;

    .line 8
    new-instance v0, Lcom/handheld/uhfr/Reader$Lock_Obj;

    const/4 v4, 0x4

    const-string v5, "LOCK_OBJECT_BANK1"

    invoke-direct {v0, v5, v3, v4}, Lcom/handheld/uhfr/Reader$Lock_Obj;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/handheld/uhfr/Reader$Lock_Obj;->LOCK_OBJECT_BANK1:Lcom/handheld/uhfr/Reader$Lock_Obj;

    .line 9
    new-instance v0, Lcom/handheld/uhfr/Reader$Lock_Obj;

    const/4 v5, 0x3

    const-string v6, "LOCK_OBJECT_BANK2"

    const/16 v7, 0x8

    invoke-direct {v0, v6, v5, v7}, Lcom/handheld/uhfr/Reader$Lock_Obj;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/handheld/uhfr/Reader$Lock_Obj;->LOCK_OBJECT_BANK2:Lcom/handheld/uhfr/Reader$Lock_Obj;

    .line 10
    new-instance v0, Lcom/handheld/uhfr/Reader$Lock_Obj;

    const-string v6, "LOCK_OBJECT_BANK3"

    const/16 v7, 0x10

    invoke-direct {v0, v6, v4, v7}, Lcom/handheld/uhfr/Reader$Lock_Obj;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/handheld/uhfr/Reader$Lock_Obj;->LOCK_OBJECT_BANK3:Lcom/handheld/uhfr/Reader$Lock_Obj;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/handheld/uhfr/Reader$Lock_Obj;

    .line 5
    sget-object v6, Lcom/handheld/uhfr/Reader$Lock_Obj;->LOCK_OBJECT_KILL_PASSWORD:Lcom/handheld/uhfr/Reader$Lock_Obj;

    aput-object v6, v0, v1

    sget-object v1, Lcom/handheld/uhfr/Reader$Lock_Obj;->LOCK_OBJECT_ACCESS_PASSWD:Lcom/handheld/uhfr/Reader$Lock_Obj;

    aput-object v1, v0, v2

    sget-object v1, Lcom/handheld/uhfr/Reader$Lock_Obj;->LOCK_OBJECT_BANK1:Lcom/handheld/uhfr/Reader$Lock_Obj;

    aput-object v1, v0, v3

    sget-object v1, Lcom/handheld/uhfr/Reader$Lock_Obj;->LOCK_OBJECT_BANK2:Lcom/handheld/uhfr/Reader$Lock_Obj;

    aput-object v1, v0, v5

    sget-object v1, Lcom/handheld/uhfr/Reader$Lock_Obj;->LOCK_OBJECT_BANK3:Lcom/handheld/uhfr/Reader$Lock_Obj;

    aput-object v1, v0, v4

    sput-object v0, Lcom/handheld/uhfr/Reader$Lock_Obj;->$VALUES:[Lcom/handheld/uhfr/Reader$Lock_Obj;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 15
    iput p3, p0, Lcom/handheld/uhfr/Reader$Lock_Obj;->p_v:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/handheld/uhfr/Reader$Lock_Obj;
    .locals 1

    .line 5
    const-class v0, Lcom/handheld/uhfr/Reader$Lock_Obj;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/handheld/uhfr/Reader$Lock_Obj;

    return-object p0
.end method

.method public static values()[Lcom/handheld/uhfr/Reader$Lock_Obj;
    .locals 1

    .line 5
    sget-object v0, Lcom/handheld/uhfr/Reader$Lock_Obj;->$VALUES:[Lcom/handheld/uhfr/Reader$Lock_Obj;

    invoke-virtual {v0}, [Lcom/handheld/uhfr/Reader$Lock_Obj;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/handheld/uhfr/Reader$Lock_Obj;

    return-object v0
.end method


# virtual methods
.method public value()I
    .locals 1

    .line 19
    iget v0, p0, Lcom/handheld/uhfr/Reader$Lock_Obj;->p_v:I

    return v0
.end method
