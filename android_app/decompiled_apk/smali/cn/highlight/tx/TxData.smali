.class public Lcn/highlight/tx/TxData;
.super Ljava/lang/Object;
.source "TxData.java"


# instance fields
.field data:[B

.field dataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcn/highlight/tx/TxData;->dataList:Ljava/util/List;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcn/highlight/tx/TxData;->data:[B

    return-void
.end method


# virtual methods
.method public getData()[B
    .locals 1

    .line 23
    iget-object v0, p0, Lcn/highlight/tx/TxData;->data:[B

    return-object v0
.end method

.method public getDataList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation

    .line 31
    iget-object v0, p0, Lcn/highlight/tx/TxData;->dataList:Ljava/util/List;

    return-object v0
.end method

.method public setData([B)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcn/highlight/tx/TxData;->data:[B

    return-void
.end method

.method public setDataList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    .line 35
    iput-object p1, p0, Lcn/highlight/tx/TxData;->dataList:Ljava/util/List;

    return-void
.end method
