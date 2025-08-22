.class public Lcom/gg/reader/api/protocol/gx/ParamGbAntiCollision;
.super Lcom/gg/reader/api/protocol/gx/Parameter;
.source "ParamGbAntiCollision.java"


# instance fields
.field CCN:I

.field CIN:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/gg/reader/api/protocol/gx/Parameter;-><init>()V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/gg/reader/api/protocol/gx/Parameter;-><init>()V

    .line 22
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/ParamGbAntiCollision;->CIN:I

    .line 23
    iput p2, p0, Lcom/gg/reader/api/protocol/gx/ParamGbAntiCollision;->CCN:I

    return-void
.end method

.method public constructor <init>([B)V
    .locals 2

    .line 42
    invoke-direct {p0}, Lcom/gg/reader/api/protocol/gx/Parameter;-><init>()V

    if-nez p1, :cond_0

    return-void

    .line 47
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/gg/reader/api/utils/BitBuffer;->wrap([B)Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object p1

    const/4 v0, 0x0

    .line 48
    invoke-virtual {p1, v0}, Lcom/gg/reader/api/utils/BitBuffer;->position(I)Lcom/gg/reader/api/utils/BitBuffer;

    const/4 v0, 0x4

    .line 49
    invoke-virtual {p1, v0}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v1

    iput v1, p0, Lcom/gg/reader/api/protocol/gx/ParamGbAntiCollision;->CIN:I

    .line 50
    invoke-virtual {p1, v0}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result p1

    iput p1, p0, Lcom/gg/reader/api/protocol/gx/ParamGbAntiCollision;->CCN:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method public getCCN()I
    .locals 1

    .line 35
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/ParamGbAntiCollision;->CCN:I

    return v0
.end method

.method public getCIN()I
    .locals 1

    .line 27
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/ParamGbAntiCollision;->CIN:I

    return v0
.end method

.method public setCCN(I)V
    .locals 0

    .line 39
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/ParamGbAntiCollision;->CCN:I

    return-void
.end method

.method public setCIN(I)V
    .locals 0

    .line 31
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/ParamGbAntiCollision;->CIN:I

    return-void
.end method

.method public toBytes()[B
    .locals 4

    .line 58
    invoke-static {}, Lcom/gg/reader/api/utils/BitBuffer;->allocateDynamic()Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object v0

    .line 59
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/ParamGbAntiCollision;->CIN:I

    int-to-long v1, v1

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putLong(JI)Lcom/gg/reader/api/utils/BitBuffer;

    .line 60
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/ParamGbAntiCollision;->CCN:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putLong(JI)Lcom/gg/reader/api/utils/BitBuffer;

    .line 61
    invoke-virtual {v0}, Lcom/gg/reader/api/utils/BitBuffer;->asByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ParamGbAntiCollision{CIN="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/gg/reader/api/protocol/gx/ParamGbAntiCollision;->CIN:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", CCN="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/gg/reader/api/protocol/gx/ParamGbAntiCollision;->CCN:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
