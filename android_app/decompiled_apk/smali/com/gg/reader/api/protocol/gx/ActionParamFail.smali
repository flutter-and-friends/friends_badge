.class public Lcom/gg/reader/api/protocol/gx/ActionParamFail;
.super Lcom/gg/reader/api/protocol/gx/Parameter;
.source "ActionParamFail.java"


# instance fields
.field private gpo1:I

.field private gpo2:I

.field private gpo3:I

.field private gpo4:I

.field private keepTime:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Lcom/gg/reader/api/protocol/gx/Parameter;-><init>()V

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lcom/gg/reader/api/protocol/gx/ActionParamFail;->keepTime:I

    const v0, 0x7fffffff

    .line 7
    iput v0, p0, Lcom/gg/reader/api/protocol/gx/ActionParamFail;->gpo1:I

    .line 8
    iput v0, p0, Lcom/gg/reader/api/protocol/gx/ActionParamFail;->gpo2:I

    .line 9
    iput v0, p0, Lcom/gg/reader/api/protocol/gx/ActionParamFail;->gpo3:I

    .line 10
    iput v0, p0, Lcom/gg/reader/api/protocol/gx/ActionParamFail;->gpo4:I

    return-void
.end method

.method public constructor <init>([B)V
    .locals 4

    .line 15
    invoke-direct {p0}, Lcom/gg/reader/api/protocol/gx/Parameter;-><init>()V

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lcom/gg/reader/api/protocol/gx/ActionParamFail;->keepTime:I

    const v1, 0x7fffffff

    .line 7
    iput v1, p0, Lcom/gg/reader/api/protocol/gx/ActionParamFail;->gpo1:I

    .line 8
    iput v1, p0, Lcom/gg/reader/api/protocol/gx/ActionParamFail;->gpo2:I

    .line 9
    iput v1, p0, Lcom/gg/reader/api/protocol/gx/ActionParamFail;->gpo3:I

    .line 10
    iput v1, p0, Lcom/gg/reader/api/protocol/gx/ActionParamFail;->gpo4:I

    if-eqz p1, :cond_5

    .line 16
    array-length v1, p1

    if-nez v1, :cond_0

    goto :goto_1

    .line 19
    :cond_0
    invoke-static {p1}, Lcom/gg/reader/api/utils/BitBuffer;->wrap([B)Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object v1

    .line 20
    invoke-virtual {v1, v0}, Lcom/gg/reader/api/utils/BitBuffer;->position(I)Lcom/gg/reader/api/utils/BitBuffer;

    const/16 v0, 0x10

    .line 21
    invoke-virtual {v1, v0}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v0

    iput v0, p0, Lcom/gg/reader/api/protocol/gx/ActionParamFail;->keepTime:I

    .line 22
    :goto_0
    invoke-virtual {v1}, Lcom/gg/reader/api/utils/BitBuffer;->position()I

    move-result v0

    const/16 v2, 0x8

    div-int/2addr v0, v2

    array-length v3, p1

    if-ge v0, v3, :cond_5

    .line 23
    invoke-virtual {v1, v2}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_4

    const/4 v3, 0x2

    if-eq v0, v3, :cond_3

    const/4 v3, 0x3

    if-eq v0, v3, :cond_2

    const/4 v3, 0x4

    if-eq v0, v3, :cond_1

    goto :goto_0

    .line 35
    :cond_1
    invoke-virtual {v1, v2}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v0

    iput v0, p0, Lcom/gg/reader/api/protocol/gx/ActionParamFail;->gpo4:I

    goto :goto_0

    .line 32
    :cond_2
    invoke-virtual {v1, v2}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v0

    iput v0, p0, Lcom/gg/reader/api/protocol/gx/ActionParamFail;->gpo3:I

    goto :goto_0

    .line 29
    :cond_3
    invoke-virtual {v1, v2}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v0

    iput v0, p0, Lcom/gg/reader/api/protocol/gx/ActionParamFail;->gpo2:I

    goto :goto_0

    .line 26
    :cond_4
    invoke-virtual {v1, v2}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v0

    iput v0, p0, Lcom/gg/reader/api/protocol/gx/ActionParamFail;->gpo1:I

    goto :goto_0

    :cond_5
    :goto_1
    return-void
.end method


# virtual methods
.method public getGpo1()I
    .locals 1

    .line 50
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/ActionParamFail;->gpo1:I

    return v0
.end method

.method public getGpo2()I
    .locals 1

    .line 58
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/ActionParamFail;->gpo2:I

    return v0
.end method

.method public getGpo3()I
    .locals 1

    .line 66
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/ActionParamFail;->gpo3:I

    return v0
.end method

.method public getGpo4()I
    .locals 1

    .line 74
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/ActionParamFail;->gpo4:I

    return v0
.end method

.method public getKeepTime()I
    .locals 1

    .line 42
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/ActionParamFail;->keepTime:I

    return v0
.end method

.method public setGpo1(I)V
    .locals 0

    .line 54
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/ActionParamFail;->gpo1:I

    return-void
.end method

.method public setGpo2(I)V
    .locals 0

    .line 62
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/ActionParamFail;->gpo2:I

    return-void
.end method

.method public setGpo3(I)V
    .locals 0

    .line 70
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/ActionParamFail;->gpo3:I

    return-void
.end method

.method public setGpo4(I)V
    .locals 0

    .line 78
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/ActionParamFail;->gpo4:I

    return-void
.end method

.method public setKeepTime(I)V
    .locals 0

    .line 46
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/ActionParamFail;->keepTime:I

    return-void
.end method

.method public toBytes()[B
    .locals 4

    .line 83
    invoke-static {}, Lcom/gg/reader/api/utils/BitBuffer;->allocateDynamic()Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object v0

    .line 84
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/ActionParamFail;->keepTime:I

    int-to-long v1, v1

    const/16 v3, 0x10

    invoke-virtual {v0, v1, v2, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putLong(JI)Lcom/gg/reader/api/utils/BitBuffer;

    .line 85
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/ActionParamFail;->gpo1:I

    const v2, 0x7fffffff

    const/16 v3, 0x8

    if-eq v2, v1, :cond_0

    const/4 v1, 0x1

    .line 86
    invoke-virtual {v0, v1, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 87
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/ActionParamFail;->gpo1:I

    invoke-virtual {v0, v1, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 89
    :cond_0
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/ActionParamFail;->gpo2:I

    if-eq v2, v1, :cond_1

    const/4 v1, 0x2

    .line 90
    invoke-virtual {v0, v1, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 91
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/ActionParamFail;->gpo2:I

    invoke-virtual {v0, v1, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 93
    :cond_1
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/ActionParamFail;->gpo3:I

    if-eq v2, v1, :cond_2

    const/4 v1, 0x3

    .line 94
    invoke-virtual {v0, v1, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 95
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/ActionParamFail;->gpo3:I

    invoke-virtual {v0, v1, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 97
    :cond_2
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/ActionParamFail;->gpo4:I

    if-eq v2, v1, :cond_3

    const/4 v1, 0x4

    .line 98
    invoke-virtual {v0, v1, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 99
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/ActionParamFail;->gpo4:I

    invoke-virtual {v0, v1, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 101
    :cond_3
    invoke-virtual {v0}, Lcom/gg/reader/api/utils/BitBuffer;->asByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ActionParamFail{keepTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/gg/reader/api/protocol/gx/ActionParamFail;->keepTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", gpo1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/gg/reader/api/protocol/gx/ActionParamFail;->gpo1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", gpo2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/gg/reader/api/protocol/gx/ActionParamFail;->gpo2:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", gpo3="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/gg/reader/api/protocol/gx/ActionParamFail;->gpo3:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", gpo4="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/gg/reader/api/protocol/gx/ActionParamFail;->gpo4:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
