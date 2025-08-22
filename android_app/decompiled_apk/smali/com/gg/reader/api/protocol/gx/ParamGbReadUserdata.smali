.class public Lcom/gg/reader/api/protocol/gx/ParamGbReadUserdata;
.super Lcom/gg/reader/api/protocol/gx/Parameter;
.source "ParamGbReadUserdata.java"


# instance fields
.field private childArea:I

.field private len:I

.field private start:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/gg/reader/api/protocol/gx/Parameter;-><init>()V

    return-void
.end method

.method public constructor <init>(III)V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/gg/reader/api/protocol/gx/Parameter;-><init>()V

    .line 16
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/ParamGbReadUserdata;->childArea:I

    .line 17
    iput p2, p0, Lcom/gg/reader/api/protocol/gx/ParamGbReadUserdata;->start:I

    .line 18
    iput p3, p0, Lcom/gg/reader/api/protocol/gx/ParamGbReadUserdata;->len:I

    return-void
.end method

.method public constructor <init>([B)V
    .locals 2

    .line 21
    invoke-direct {p0}, Lcom/gg/reader/api/protocol/gx/Parameter;-><init>()V

    if-eqz p1, :cond_1

    .line 22
    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    .line 25
    :cond_0
    invoke-static {p1}, Lcom/gg/reader/api/utils/BitBuffer;->wrap([B)Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object p1

    const/4 v0, 0x0

    .line 26
    invoke-virtual {p1, v0}, Lcom/gg/reader/api/utils/BitBuffer;->position(I)Lcom/gg/reader/api/utils/BitBuffer;

    const/16 v0, 0x8

    .line 27
    invoke-virtual {p1, v0}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v1

    iput v1, p0, Lcom/gg/reader/api/protocol/gx/ParamGbReadUserdata;->childArea:I

    const/16 v1, 0x10

    .line 28
    invoke-virtual {p1, v1}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v1

    iput v1, p0, Lcom/gg/reader/api/protocol/gx/ParamGbReadUserdata;->start:I

    .line 29
    invoke-virtual {p1, v0}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result p1

    iput p1, p0, Lcom/gg/reader/api/protocol/gx/ParamGbReadUserdata;->len:I

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public getChildArea()I
    .locals 1

    .line 33
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/ParamGbReadUserdata;->childArea:I

    return v0
.end method

.method public getLen()I
    .locals 1

    .line 49
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/ParamGbReadUserdata;->len:I

    return v0
.end method

.method public getStart()I
    .locals 1

    .line 41
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/ParamGbReadUserdata;->start:I

    return v0
.end method

.method public setChildArea(I)V
    .locals 0

    .line 37
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/ParamGbReadUserdata;->childArea:I

    return-void
.end method

.method public setLen(I)V
    .locals 0

    .line 53
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/ParamGbReadUserdata;->len:I

    return-void
.end method

.method public setStart(I)V
    .locals 0

    .line 45
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/ParamGbReadUserdata;->start:I

    return-void
.end method

.method public toBytes()[B
    .locals 4

    .line 59
    invoke-static {}, Lcom/gg/reader/api/utils/BitBuffer;->allocateDynamic()Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object v0

    .line 60
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/ParamGbReadUserdata;->childArea:I

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 61
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/ParamGbReadUserdata;->start:I

    const/16 v3, 0x10

    invoke-virtual {v0, v1, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 62
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/ParamGbReadUserdata;->len:I

    invoke-virtual {v0, v1, v2}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 63
    invoke-virtual {v0}, Lcom/gg/reader/api/utils/BitBuffer;->asByteArray()[B

    move-result-object v0

    return-object v0
.end method
