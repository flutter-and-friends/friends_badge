.class public Lcom/gg/reader/api/protocol/gx/ParamFastId;
.super Lcom/gg/reader/api/protocol/gx/Parameter;
.source "ParamFastId.java"


# instance fields
.field private fastId:I

.field private tagFoucs:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/gg/reader/api/protocol/gx/Parameter;-><init>()V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/gg/reader/api/protocol/gx/Parameter;-><init>()V

    .line 13
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/ParamFastId;->fastId:I

    .line 14
    iput p2, p0, Lcom/gg/reader/api/protocol/gx/ParamFastId;->tagFoucs:I

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    .line 17
    invoke-direct {p0}, Lcom/gg/reader/api/protocol/gx/Parameter;-><init>()V

    if-eqz p1, :cond_1

    .line 18
    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 21
    aget-byte v0, p1, v0

    iput v0, p0, Lcom/gg/reader/api/protocol/gx/ParamFastId;->fastId:I

    const/4 v0, 0x1

    .line 22
    aget-byte p1, p1, v0

    iput p1, p0, Lcom/gg/reader/api/protocol/gx/ParamFastId;->tagFoucs:I

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public getFastId()I
    .locals 1

    .line 26
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/ParamFastId;->fastId:I

    return v0
.end method

.method public getTagFoucs()I
    .locals 1

    .line 34
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/ParamFastId;->tagFoucs:I

    return v0
.end method

.method public setFastId(I)V
    .locals 0

    .line 30
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/ParamFastId;->fastId:I

    return-void
.end method

.method public setTagFoucs(I)V
    .locals 0

    .line 38
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/ParamFastId;->tagFoucs:I

    return-void
.end method

.method public toBytes()[B
    .locals 3

    .line 43
    invoke-static {}, Lcom/gg/reader/api/utils/BitBuffer;->allocateDynamic()Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object v0

    .line 44
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/ParamFastId;->fastId:I

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 45
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/ParamFastId;->tagFoucs:I

    invoke-virtual {v0, v1, v2}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 46
    invoke-virtual {v0}, Lcom/gg/reader/api/utils/BitBuffer;->asByteArray()[B

    move-result-object v0

    return-object v0
.end method
