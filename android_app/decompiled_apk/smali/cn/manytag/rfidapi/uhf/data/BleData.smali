.class public Lcn/manytag/rfidapi/uhf/data/BleData;
.super Ljava/lang/Object;


# instance fields
.field dataList:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/manytag/rfidapi/uhf/data/BleData;->dataList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getDataList()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcn/manytag/rfidapi/uhf/data/BleData;->dataList:Ljava/util/List;

    return-object v0
.end method

.method public setDataList(Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcn/manytag/rfidapi/uhf/data/BleData;->dataList:Ljava/util/List;

    return-void
.end method
