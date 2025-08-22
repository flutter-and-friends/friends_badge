.class public final enum Lcn/manytag/rfidapi/uhf/data/KeypadStatus;
.super Ljava/lang/Enum;


# static fields
.field private static final synthetic $VALUES:[Lcn/manytag/rfidapi/uhf/data/KeypadStatus;

.field public static final enum START:Lcn/manytag/rfidapi/uhf/data/KeypadStatus;

.field public static final enum STOP:Lcn/manytag/rfidapi/uhf/data/KeypadStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcn/manytag/rfidapi/uhf/data/KeypadStatus;

    const/4 v1, 0x0

    const-string v2, "START"

    invoke-direct {v0, v2, v1}, Lcn/manytag/rfidapi/uhf/data/KeypadStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/manytag/rfidapi/uhf/data/KeypadStatus;->START:Lcn/manytag/rfidapi/uhf/data/KeypadStatus;

    new-instance v0, Lcn/manytag/rfidapi/uhf/data/KeypadStatus;

    const/4 v2, 0x1

    const-string v3, "STOP"

    invoke-direct {v0, v3, v2}, Lcn/manytag/rfidapi/uhf/data/KeypadStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/manytag/rfidapi/uhf/data/KeypadStatus;->STOP:Lcn/manytag/rfidapi/uhf/data/KeypadStatus;

    const/4 v0, 0x2

    new-array v0, v0, [Lcn/manytag/rfidapi/uhf/data/KeypadStatus;

    sget-object v3, Lcn/manytag/rfidapi/uhf/data/KeypadStatus;->START:Lcn/manytag/rfidapi/uhf/data/KeypadStatus;

    aput-object v3, v0, v1

    sget-object v1, Lcn/manytag/rfidapi/uhf/data/KeypadStatus;->STOP:Lcn/manytag/rfidapi/uhf/data/KeypadStatus;

    aput-object v1, v0, v2

    sput-object v0, Lcn/manytag/rfidapi/uhf/data/KeypadStatus;->$VALUES:[Lcn/manytag/rfidapi/uhf/data/KeypadStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/manytag/rfidapi/uhf/data/KeypadStatus;
    .locals 1

    const-class v0, Lcn/manytag/rfidapi/uhf/data/KeypadStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/manytag/rfidapi/uhf/data/KeypadStatus;

    return-object p0
.end method

.method public static values()[Lcn/manytag/rfidapi/uhf/data/KeypadStatus;
    .locals 1

    sget-object v0, Lcn/manytag/rfidapi/uhf/data/KeypadStatus;->$VALUES:[Lcn/manytag/rfidapi/uhf/data/KeypadStatus;

    invoke-virtual {v0}, [Lcn/manytag/rfidapi/uhf/data/KeypadStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/manytag/rfidapi/uhf/data/KeypadStatus;

    return-object v0
.end method
