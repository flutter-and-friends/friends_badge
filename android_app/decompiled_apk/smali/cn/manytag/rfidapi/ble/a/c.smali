.class final enum Lcn/manytag/rfidapi/ble/a/c;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcn/manytag/rfidapi/ble/a/c;

.field public static final enum b:Lcn/manytag/rfidapi/ble/a/c;

.field public static final enum c:Lcn/manytag/rfidapi/ble/a/c;

.field public static final enum d:Lcn/manytag/rfidapi/ble/a/c;

.field public static final enum e:Lcn/manytag/rfidapi/ble/a/c;

.field private static final synthetic f:[Lcn/manytag/rfidapi/ble/a/c;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcn/manytag/rfidapi/ble/a/c;

    const/4 v1, 0x0

    const-string v2, "CONNECT_IDLE"

    invoke-direct {v0, v2, v1}, Lcn/manytag/rfidapi/ble/a/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/manytag/rfidapi/ble/a/c;->a:Lcn/manytag/rfidapi/ble/a/c;

    new-instance v0, Lcn/manytag/rfidapi/ble/a/c;

    const/4 v2, 0x1

    const-string v3, "CONNECT_CONNECTING"

    invoke-direct {v0, v3, v2}, Lcn/manytag/rfidapi/ble/a/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/manytag/rfidapi/ble/a/c;->b:Lcn/manytag/rfidapi/ble/a/c;

    new-instance v0, Lcn/manytag/rfidapi/ble/a/c;

    const/4 v3, 0x2

    const-string v4, "CONNECT_CONNECTED"

    invoke-direct {v0, v4, v3}, Lcn/manytag/rfidapi/ble/a/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/manytag/rfidapi/ble/a/c;->c:Lcn/manytag/rfidapi/ble/a/c;

    new-instance v0, Lcn/manytag/rfidapi/ble/a/c;

    const/4 v4, 0x3

    const-string v5, "CONNECT_FAILURE"

    invoke-direct {v0, v5, v4}, Lcn/manytag/rfidapi/ble/a/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/manytag/rfidapi/ble/a/c;->d:Lcn/manytag/rfidapi/ble/a/c;

    new-instance v0, Lcn/manytag/rfidapi/ble/a/c;

    const/4 v5, 0x4

    const-string v6, "CONNECT_DISCONNECT"

    invoke-direct {v0, v6, v5}, Lcn/manytag/rfidapi/ble/a/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/manytag/rfidapi/ble/a/c;->e:Lcn/manytag/rfidapi/ble/a/c;

    const/4 v0, 0x5

    new-array v0, v0, [Lcn/manytag/rfidapi/ble/a/c;

    sget-object v6, Lcn/manytag/rfidapi/ble/a/c;->a:Lcn/manytag/rfidapi/ble/a/c;

    aput-object v6, v0, v1

    sget-object v1, Lcn/manytag/rfidapi/ble/a/c;->b:Lcn/manytag/rfidapi/ble/a/c;

    aput-object v1, v0, v2

    sget-object v1, Lcn/manytag/rfidapi/ble/a/c;->c:Lcn/manytag/rfidapi/ble/a/c;

    aput-object v1, v0, v3

    sget-object v1, Lcn/manytag/rfidapi/ble/a/c;->d:Lcn/manytag/rfidapi/ble/a/c;

    aput-object v1, v0, v4

    sget-object v1, Lcn/manytag/rfidapi/ble/a/c;->e:Lcn/manytag/rfidapi/ble/a/c;

    aput-object v1, v0, v5

    sput-object v0, Lcn/manytag/rfidapi/ble/a/c;->f:[Lcn/manytag/rfidapi/ble/a/c;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method
