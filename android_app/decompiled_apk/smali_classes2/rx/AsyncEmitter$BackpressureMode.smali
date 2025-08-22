.class public final enum Lrx/AsyncEmitter$BackpressureMode;
.super Ljava/lang/Enum;
.source "AsyncEmitter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/AsyncEmitter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BackpressureMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lrx/AsyncEmitter$BackpressureMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lrx/AsyncEmitter$BackpressureMode;

.field public static final enum BUFFER:Lrx/AsyncEmitter$BackpressureMode;

.field public static final enum DROP:Lrx/AsyncEmitter$BackpressureMode;

.field public static final enum ERROR:Lrx/AsyncEmitter$BackpressureMode;

.field public static final enum LATEST:Lrx/AsyncEmitter$BackpressureMode;

.field public static final enum NONE:Lrx/AsyncEmitter$BackpressureMode;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 80
    new-instance v0, Lrx/AsyncEmitter$BackpressureMode;

    const/4 v1, 0x0

    const-string v2, "NONE"

    invoke-direct {v0, v2, v1}, Lrx/AsyncEmitter$BackpressureMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lrx/AsyncEmitter$BackpressureMode;->NONE:Lrx/AsyncEmitter$BackpressureMode;

    .line 84
    new-instance v0, Lrx/AsyncEmitter$BackpressureMode;

    const/4 v2, 0x1

    const-string v3, "ERROR"

    invoke-direct {v0, v3, v2}, Lrx/AsyncEmitter$BackpressureMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lrx/AsyncEmitter$BackpressureMode;->ERROR:Lrx/AsyncEmitter$BackpressureMode;

    .line 88
    new-instance v0, Lrx/AsyncEmitter$BackpressureMode;

    const/4 v3, 0x2

    const-string v4, "BUFFER"

    invoke-direct {v0, v4, v3}, Lrx/AsyncEmitter$BackpressureMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lrx/AsyncEmitter$BackpressureMode;->BUFFER:Lrx/AsyncEmitter$BackpressureMode;

    .line 92
    new-instance v0, Lrx/AsyncEmitter$BackpressureMode;

    const/4 v4, 0x3

    const-string v5, "DROP"

    invoke-direct {v0, v5, v4}, Lrx/AsyncEmitter$BackpressureMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lrx/AsyncEmitter$BackpressureMode;->DROP:Lrx/AsyncEmitter$BackpressureMode;

    .line 97
    new-instance v0, Lrx/AsyncEmitter$BackpressureMode;

    const/4 v5, 0x4

    const-string v6, "LATEST"

    invoke-direct {v0, v6, v5}, Lrx/AsyncEmitter$BackpressureMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lrx/AsyncEmitter$BackpressureMode;->LATEST:Lrx/AsyncEmitter$BackpressureMode;

    const/4 v0, 0x5

    new-array v0, v0, [Lrx/AsyncEmitter$BackpressureMode;

    .line 74
    sget-object v6, Lrx/AsyncEmitter$BackpressureMode;->NONE:Lrx/AsyncEmitter$BackpressureMode;

    aput-object v6, v0, v1

    sget-object v1, Lrx/AsyncEmitter$BackpressureMode;->ERROR:Lrx/AsyncEmitter$BackpressureMode;

    aput-object v1, v0, v2

    sget-object v1, Lrx/AsyncEmitter$BackpressureMode;->BUFFER:Lrx/AsyncEmitter$BackpressureMode;

    aput-object v1, v0, v3

    sget-object v1, Lrx/AsyncEmitter$BackpressureMode;->DROP:Lrx/AsyncEmitter$BackpressureMode;

    aput-object v1, v0, v4

    sget-object v1, Lrx/AsyncEmitter$BackpressureMode;->LATEST:Lrx/AsyncEmitter$BackpressureMode;

    aput-object v1, v0, v5

    sput-object v0, Lrx/AsyncEmitter$BackpressureMode;->$VALUES:[Lrx/AsyncEmitter$BackpressureMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 74
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lrx/AsyncEmitter$BackpressureMode;
    .locals 1

    .line 74
    const-class v0, Lrx/AsyncEmitter$BackpressureMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lrx/AsyncEmitter$BackpressureMode;

    return-object p0
.end method

.method public static values()[Lrx/AsyncEmitter$BackpressureMode;
    .locals 1

    .line 74
    sget-object v0, Lrx/AsyncEmitter$BackpressureMode;->$VALUES:[Lrx/AsyncEmitter$BackpressureMode;

    invoke-virtual {v0}, [Lrx/AsyncEmitter$BackpressureMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lrx/AsyncEmitter$BackpressureMode;

    return-object v0
.end method
