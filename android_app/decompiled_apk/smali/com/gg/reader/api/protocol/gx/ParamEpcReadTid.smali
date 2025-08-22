.class public Lcom/gg/reader/api/protocol/gx/ParamEpcReadTid;
.super Lcom/gg/reader/api/protocol/gx/Parameter;
.source "ParamEpcReadTid.java"


# instance fields
.field private len:I

.field private mode:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/gg/reader/api/protocol/gx/Parameter;-><init>()V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/gg/reader/api/protocol/gx/Parameter;-><init>()V

    .line 20
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/ParamEpcReadTid;->mode:I

    .line 21
    iput p2, p0, Lcom/gg/reader/api/protocol/gx/ParamEpcReadTid;->len:I

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    .line 40
    invoke-direct {p0}, Lcom/gg/reader/api/protocol/gx/Parameter;-><init>()V

    if-eqz p1, :cond_1

    .line 41
    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 44
    aget-byte v0, p1, v0

    iput v0, p0, Lcom/gg/reader/api/protocol/gx/ParamEpcReadTid;->mode:I

    const/4 v0, 0x1

    .line 45
    aget-byte p1, p1, v0

    iput p1, p0, Lcom/gg/reader/api/protocol/gx/ParamEpcReadTid;->len:I

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public getLen()I
    .locals 1

    .line 33
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/ParamEpcReadTid;->len:I

    return v0
.end method

.method public getMode()I
    .locals 1

    .line 25
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/ParamEpcReadTid;->mode:I

    return v0
.end method

.method public setLen(I)V
    .locals 0

    .line 37
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/ParamEpcReadTid;->len:I

    return-void
.end method

.method public setMode(I)V
    .locals 0

    .line 29
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/ParamEpcReadTid;->mode:I

    return-void
.end method

.method public toBytes()[B
    .locals 4

    .line 50
    invoke-static {}, Lcom/gg/reader/api/utils/BitBuffer;->allocateDynamic()Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object v0

    .line 51
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/ParamEpcReadTid;->mode:I

    int-to-long v1, v1

    const/16 v3, 0x8

    invoke-virtual {v0, v1, v2, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putLong(JI)Lcom/gg/reader/api/utils/BitBuffer;

    .line 52
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/ParamEpcReadTid;->len:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putLong(JI)Lcom/gg/reader/api/utils/BitBuffer;

    .line 53
    invoke-virtual {v0}, Lcom/gg/reader/api/utils/BitBuffer;->asByteArray()[B

    move-result-object v0

    return-object v0
.end method
