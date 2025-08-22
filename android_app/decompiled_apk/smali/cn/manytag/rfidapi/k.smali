.class Lcn/manytag/rfidapi/k;
.super Ljava/lang/Object;

# interfaces
.implements Lcn/manytag/rfidapi/uhf/k;


# instance fields
.field final synthetic a:Lcn/manytag/rfidapi/uhf/listen/OnWorkingMode;

.field final synthetic b:Lcn/manytag/rfidapi/Reader;


# direct methods
.method constructor <init>(Lcn/manytag/rfidapi/Reader;Lcn/manytag/rfidapi/uhf/listen/OnWorkingMode;)V
    .locals 0

    iput-object p1, p0, Lcn/manytag/rfidapi/k;->b:Lcn/manytag/rfidapi/Reader;

    iput-object p2, p0, Lcn/manytag/rfidapi/k;->a:Lcn/manytag/rfidapi/uhf/listen/OnWorkingMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a([B)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x2

    aget-byte v1, p1, v0

    const/16 v2, 0x31

    if-eq v1, v2, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x5

    aget-byte v2, p1, v1

    if-nez v2, :cond_2

    iget-object v2, p0, Lcn/manytag/rfidapi/k;->a:Lcn/manytag/rfidapi/uhf/listen/OnWorkingMode;

    sget-object v3, Lcn/manytag/rfidapi/uhf/data/WorkingModeType;->FREE:Lcn/manytag/rfidapi/uhf/data/WorkingModeType;

    invoke-interface {v2, v3}, Lcn/manytag/rfidapi/uhf/listen/OnWorkingMode;->onWorkingMode(Lcn/manytag/rfidapi/uhf/data/WorkingModeType;)V

    :cond_2
    aget-byte v2, p1, v1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcn/manytag/rfidapi/k;->a:Lcn/manytag/rfidapi/uhf/listen/OnWorkingMode;

    sget-object v3, Lcn/manytag/rfidapi/uhf/data/WorkingModeType;->RFID:Lcn/manytag/rfidapi/uhf/data/WorkingModeType;

    invoke-interface {v2, v3}, Lcn/manytag/rfidapi/uhf/listen/OnWorkingMode;->onWorkingMode(Lcn/manytag/rfidapi/uhf/data/WorkingModeType;)V

    :cond_3
    aget-byte p1, p1, v1

    if-ne p1, v0, :cond_4

    iget-object p1, p0, Lcn/manytag/rfidapi/k;->a:Lcn/manytag/rfidapi/uhf/listen/OnWorkingMode;

    sget-object v0, Lcn/manytag/rfidapi/uhf/data/WorkingModeType;->BARCODE:Lcn/manytag/rfidapi/uhf/data/WorkingModeType;

    invoke-interface {p1, v0}, Lcn/manytag/rfidapi/uhf/listen/OnWorkingMode;->onWorkingMode(Lcn/manytag/rfidapi/uhf/data/WorkingModeType;)V

    :cond_4
    return-void
.end method
