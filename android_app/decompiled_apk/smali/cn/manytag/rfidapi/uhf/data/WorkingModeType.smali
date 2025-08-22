.class public final enum Lcn/manytag/rfidapi/uhf/data/WorkingModeType;
.super Ljava/lang/Enum;


# static fields
.field private static final synthetic $VALUES:[Lcn/manytag/rfidapi/uhf/data/WorkingModeType;

.field public static final enum BARCODE:Lcn/manytag/rfidapi/uhf/data/WorkingModeType;

.field public static final enum FREE:Lcn/manytag/rfidapi/uhf/data/WorkingModeType;

.field public static final enum RFID:Lcn/manytag/rfidapi/uhf/data/WorkingModeType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcn/manytag/rfidapi/uhf/data/WorkingModeType;

    const/4 v1, 0x0

    const-string v2, "RFID"

    invoke-direct {v0, v2, v1}, Lcn/manytag/rfidapi/uhf/data/WorkingModeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/manytag/rfidapi/uhf/data/WorkingModeType;->RFID:Lcn/manytag/rfidapi/uhf/data/WorkingModeType;

    new-instance v0, Lcn/manytag/rfidapi/uhf/data/WorkingModeType;

    const/4 v2, 0x1

    const-string v3, "BARCODE"

    invoke-direct {v0, v3, v2}, Lcn/manytag/rfidapi/uhf/data/WorkingModeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/manytag/rfidapi/uhf/data/WorkingModeType;->BARCODE:Lcn/manytag/rfidapi/uhf/data/WorkingModeType;

    new-instance v0, Lcn/manytag/rfidapi/uhf/data/WorkingModeType;

    const/4 v3, 0x2

    const-string v4, "FREE"

    invoke-direct {v0, v4, v3}, Lcn/manytag/rfidapi/uhf/data/WorkingModeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/manytag/rfidapi/uhf/data/WorkingModeType;->FREE:Lcn/manytag/rfidapi/uhf/data/WorkingModeType;

    const/4 v0, 0x3

    new-array v0, v0, [Lcn/manytag/rfidapi/uhf/data/WorkingModeType;

    sget-object v4, Lcn/manytag/rfidapi/uhf/data/WorkingModeType;->RFID:Lcn/manytag/rfidapi/uhf/data/WorkingModeType;

    aput-object v4, v0, v1

    sget-object v1, Lcn/manytag/rfidapi/uhf/data/WorkingModeType;->BARCODE:Lcn/manytag/rfidapi/uhf/data/WorkingModeType;

    aput-object v1, v0, v2

    sget-object v1, Lcn/manytag/rfidapi/uhf/data/WorkingModeType;->FREE:Lcn/manytag/rfidapi/uhf/data/WorkingModeType;

    aput-object v1, v0, v3

    sput-object v0, Lcn/manytag/rfidapi/uhf/data/WorkingModeType;->$VALUES:[Lcn/manytag/rfidapi/uhf/data/WorkingModeType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/manytag/rfidapi/uhf/data/WorkingModeType;
    .locals 1

    const-class v0, Lcn/manytag/rfidapi/uhf/data/WorkingModeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/manytag/rfidapi/uhf/data/WorkingModeType;

    return-object p0
.end method

.method public static values()[Lcn/manytag/rfidapi/uhf/data/WorkingModeType;
    .locals 1

    sget-object v0, Lcn/manytag/rfidapi/uhf/data/WorkingModeType;->$VALUES:[Lcn/manytag/rfidapi/uhf/data/WorkingModeType;

    invoke-virtual {v0}, [Lcn/manytag/rfidapi/uhf/data/WorkingModeType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/manytag/rfidapi/uhf/data/WorkingModeType;

    return-object v0
.end method
