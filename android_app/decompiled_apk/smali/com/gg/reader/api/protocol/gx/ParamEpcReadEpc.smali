.class public Lcom/gg/reader/api/protocol/gx/ParamEpcReadEpc;
.super Lcom/gg/reader/api/protocol/gx/Parameter;
.source "ParamEpcReadEpc.java"


# instance fields
.field private len:I

.field private start:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/gg/reader/api/protocol/gx/Parameter;-><init>()V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/gg/reader/api/protocol/gx/Parameter;-><init>()V

    .line 14
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/ParamEpcReadEpc;->start:I

    .line 15
    iput p2, p0, Lcom/gg/reader/api/protocol/gx/ParamEpcReadEpc;->len:I

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    .line 34
    invoke-direct {p0}, Lcom/gg/reader/api/protocol/gx/Parameter;-><init>()V

    if-eqz p1, :cond_1

    .line 35
    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    .line 38
    :cond_0
    invoke-static {p1}, Lcom/gg/reader/api/utils/BitBuffer;->wrap([B)Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object p1

    const/4 v0, 0x0

    .line 39
    invoke-virtual {p1, v0}, Lcom/gg/reader/api/utils/BitBuffer;->position(I)Lcom/gg/reader/api/utils/BitBuffer;

    const/16 v0, 0x10

    .line 40
    invoke-virtual {p1, v0}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v0

    iput v0, p0, Lcom/gg/reader/api/protocol/gx/ParamEpcReadEpc;->start:I

    const/16 v0, 0x8

    .line 41
    invoke-virtual {p1, v0}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result p1

    iput p1, p0, Lcom/gg/reader/api/protocol/gx/ParamEpcReadEpc;->len:I

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public getLen()I
    .locals 1

    .line 27
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/ParamEpcReadEpc;->len:I

    return v0
.end method

.method public getStart()I
    .locals 1

    .line 19
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/ParamEpcReadEpc;->start:I

    return v0
.end method

.method public setLen(I)V
    .locals 0

    .line 31
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/ParamEpcReadEpc;->len:I

    return-void
.end method

.method public setStart(I)V
    .locals 0

    .line 23
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/ParamEpcReadEpc;->start:I

    return-void
.end method

.method public toBytes()[B
    .locals 4

    .line 46
    invoke-static {}, Lcom/gg/reader/api/utils/BitBuffer;->allocateDynamic()Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object v0

    .line 47
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/ParamEpcReadEpc;->start:I

    int-to-long v1, v1

    const/16 v3, 0x10

    invoke-virtual {v0, v1, v2, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putLong(JI)Lcom/gg/reader/api/utils/BitBuffer;

    .line 48
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/ParamEpcReadEpc;->len:I

    int-to-long v1, v1

    const/16 v3, 0x8

    invoke-virtual {v0, v1, v2, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putLong(JI)Lcom/gg/reader/api/utils/BitBuffer;

    .line 49
    invoke-virtual {v0}, Lcom/gg/reader/api/utils/BitBuffer;->asByteArray()[B

    move-result-object v0

    return-object v0
.end method
