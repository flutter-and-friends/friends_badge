.class public Lcn/manytag/rfidapi/uhf/data/TagInfo;
.super Ljava/lang/Object;


# instance fields
.field private epc:Ljava/lang/String;

.field private rssi:F


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEpc()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/manytag/rfidapi/uhf/data/TagInfo;->epc:Ljava/lang/String;

    return-object v0
.end method

.method public getRssi()F
    .locals 1

    iget v0, p0, Lcn/manytag/rfidapi/uhf/data/TagInfo;->rssi:F

    return v0
.end method

.method public setEpc(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/manytag/rfidapi/uhf/data/TagInfo;->epc:Ljava/lang/String;

    return-void
.end method

.method public setRssi(F)V
    .locals 0

    iput p1, p0, Lcn/manytag/rfidapi/uhf/data/TagInfo;->rssi:F

    return-void
.end method
