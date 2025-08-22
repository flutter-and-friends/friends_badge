.class public final enum Lcn/manytag/rfidapi/ble/data/c;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcn/manytag/rfidapi/ble/data/c;

.field public static final enum b:Lcn/manytag/rfidapi/ble/data/c;

.field private static final synthetic d:[Lcn/manytag/rfidapi/ble/data/c;


# instance fields
.field private c:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcn/manytag/rfidapi/ble/data/c;

    const/4 v1, 0x0

    const-string v2, "STATE_IDLE"

    const/4 v3, -0x1

    invoke-direct {v0, v2, v1, v3}, Lcn/manytag/rfidapi/ble/data/c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcn/manytag/rfidapi/ble/data/c;->a:Lcn/manytag/rfidapi/ble/data/c;

    new-instance v0, Lcn/manytag/rfidapi/ble/data/c;

    const/4 v2, 0x1

    const-string v3, "STATE_SCANNING"

    invoke-direct {v0, v3, v2, v2}, Lcn/manytag/rfidapi/ble/data/c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcn/manytag/rfidapi/ble/data/c;->b:Lcn/manytag/rfidapi/ble/data/c;

    const/4 v0, 0x2

    new-array v0, v0, [Lcn/manytag/rfidapi/ble/data/c;

    sget-object v3, Lcn/manytag/rfidapi/ble/data/c;->a:Lcn/manytag/rfidapi/ble/data/c;

    aput-object v3, v0, v1

    sget-object v1, Lcn/manytag/rfidapi/ble/data/c;->b:Lcn/manytag/rfidapi/ble/data/c;

    aput-object v1, v0, v2

    sput-object v0, Lcn/manytag/rfidapi/ble/data/c;->d:[Lcn/manytag/rfidapi/ble/data/c;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcn/manytag/rfidapi/ble/data/c;->c:I

    return-void
.end method
