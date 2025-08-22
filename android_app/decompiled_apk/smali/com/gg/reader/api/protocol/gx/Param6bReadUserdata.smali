.class public Lcom/gg/reader/api/protocol/gx/Param6bReadUserdata;
.super Lcom/gg/reader/api/protocol/gx/Parameter;
.source "Param6bReadUserdata.java"


# instance fields
.field private len:I

.field private start:I


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
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/Param6bReadUserdata;->start:I

    .line 21
    iput p2, p0, Lcom/gg/reader/api/protocol/gx/Param6bReadUserdata;->len:I

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    .line 24
    invoke-direct {p0}, Lcom/gg/reader/api/protocol/gx/Parameter;-><init>()V

    if-eqz p1, :cond_1

    .line 25
    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 28
    aget-byte v0, p1, v0

    iput v0, p0, Lcom/gg/reader/api/protocol/gx/Param6bReadUserdata;->start:I

    const/4 v0, 0x1

    .line 29
    aget-byte p1, p1, v0

    iput p1, p0, Lcom/gg/reader/api/protocol/gx/Param6bReadUserdata;->len:I

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public getLen()I
    .locals 1

    .line 41
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/Param6bReadUserdata;->len:I

    return v0
.end method

.method public getStart()I
    .locals 1

    .line 33
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/Param6bReadUserdata;->start:I

    return v0
.end method

.method public setLen(I)V
    .locals 0

    .line 45
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/Param6bReadUserdata;->len:I

    return-void
.end method

.method public setStart(I)V
    .locals 0

    .line 37
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/Param6bReadUserdata;->start:I

    return-void
.end method

.method public toBytes()[B
    .locals 4

    .line 51
    invoke-static {}, Lcom/gg/reader/api/utils/BitBuffer;->allocateDynamic()Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object v0

    .line 52
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/Param6bReadUserdata;->start:I

    int-to-long v1, v1

    const/16 v3, 0x8

    invoke-virtual {v0, v1, v2, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putLong(JI)Lcom/gg/reader/api/utils/BitBuffer;

    .line 53
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/Param6bReadUserdata;->len:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putLong(JI)Lcom/gg/reader/api/utils/BitBuffer;

    .line 54
    invoke-virtual {v0}, Lcom/gg/reader/api/utils/BitBuffer;->asByteArray()[B

    move-result-object v0

    return-object v0
.end method
