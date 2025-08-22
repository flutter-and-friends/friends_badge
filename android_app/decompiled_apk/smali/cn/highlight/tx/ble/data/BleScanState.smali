.class public final enum Lcn/highlight/tx/ble/data/BleScanState;
.super Ljava/lang/Enum;
.source "BleScanState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/highlight/tx/ble/data/BleScanState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/highlight/tx/ble/data/BleScanState;

.field public static final enum STATE_IDLE:Lcn/highlight/tx/ble/data/BleScanState;

.field public static final enum STATE_SCANNING:Lcn/highlight/tx/ble/data/BleScanState;


# instance fields
.field private code:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 7
    new-instance v0, Lcn/highlight/tx/ble/data/BleScanState;

    const/4 v1, 0x0

    const-string v2, "STATE_IDLE"

    const/4 v3, -0x1

    invoke-direct {v0, v2, v1, v3}, Lcn/highlight/tx/ble/data/BleScanState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcn/highlight/tx/ble/data/BleScanState;->STATE_IDLE:Lcn/highlight/tx/ble/data/BleScanState;

    .line 8
    new-instance v0, Lcn/highlight/tx/ble/data/BleScanState;

    const/4 v2, 0x1

    const-string v3, "STATE_SCANNING"

    invoke-direct {v0, v3, v2, v2}, Lcn/highlight/tx/ble/data/BleScanState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcn/highlight/tx/ble/data/BleScanState;->STATE_SCANNING:Lcn/highlight/tx/ble/data/BleScanState;

    const/4 v0, 0x2

    new-array v0, v0, [Lcn/highlight/tx/ble/data/BleScanState;

    .line 5
    sget-object v3, Lcn/highlight/tx/ble/data/BleScanState;->STATE_IDLE:Lcn/highlight/tx/ble/data/BleScanState;

    aput-object v3, v0, v1

    sget-object v1, Lcn/highlight/tx/ble/data/BleScanState;->STATE_SCANNING:Lcn/highlight/tx/ble/data/BleScanState;

    aput-object v1, v0, v2

    sput-object v0, Lcn/highlight/tx/ble/data/BleScanState;->$VALUES:[Lcn/highlight/tx/ble/data/BleScanState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 13
    iput p3, p0, Lcn/highlight/tx/ble/data/BleScanState;->code:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/highlight/tx/ble/data/BleScanState;
    .locals 1

    .line 5
    const-class v0, Lcn/highlight/tx/ble/data/BleScanState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/highlight/tx/ble/data/BleScanState;

    return-object p0
.end method

.method public static values()[Lcn/highlight/tx/ble/data/BleScanState;
    .locals 1

    .line 5
    sget-object v0, Lcn/highlight/tx/ble/data/BleScanState;->$VALUES:[Lcn/highlight/tx/ble/data/BleScanState;

    invoke-virtual {v0}, [Lcn/highlight/tx/ble/data/BleScanState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/highlight/tx/ble/data/BleScanState;

    return-object v0
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .line 17
    iget v0, p0, Lcn/highlight/tx/ble/data/BleScanState;->code:I

    return v0
.end method
