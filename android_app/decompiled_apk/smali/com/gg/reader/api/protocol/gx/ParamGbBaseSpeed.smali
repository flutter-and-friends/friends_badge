.class public Lcom/gg/reader/api/protocol/gx/ParamGbBaseSpeed;
.super Lcom/gg/reader/api/protocol/gx/Parameter;
.source "ParamGbBaseSpeed.java"


# instance fields
.field LS:I

.field RLC:I

.field RLF:I

.field Tc:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/gg/reader/api/protocol/gx/Parameter;-><init>()V

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/gg/reader/api/protocol/gx/Parameter;-><init>()V

    .line 26
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/ParamGbBaseSpeed;->Tc:I

    .line 27
    iput p2, p0, Lcom/gg/reader/api/protocol/gx/ParamGbBaseSpeed;->LS:I

    .line 28
    iput p3, p0, Lcom/gg/reader/api/protocol/gx/ParamGbBaseSpeed;->RLF:I

    .line 29
    iput p4, p0, Lcom/gg/reader/api/protocol/gx/ParamGbBaseSpeed;->RLC:I

    return-void
.end method

.method public constructor <init>([B)V
    .locals 2

    .line 64
    invoke-direct {p0}, Lcom/gg/reader/api/protocol/gx/Parameter;-><init>()V

    if-nez p1, :cond_0

    return-void

    .line 69
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/gg/reader/api/utils/BitBuffer;->wrap([B)Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object p1

    const/4 v0, 0x0

    .line 70
    invoke-virtual {p1, v0}, Lcom/gg/reader/api/utils/BitBuffer;->position(I)Lcom/gg/reader/api/utils/BitBuffer;

    const/4 v0, 0x1

    .line 71
    invoke-virtual {p1, v0}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v1

    iput v1, p0, Lcom/gg/reader/api/protocol/gx/ParamGbBaseSpeed;->Tc:I

    .line 72
    invoke-virtual {p1, v0}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v0

    iput v0, p0, Lcom/gg/reader/api/protocol/gx/ParamGbBaseSpeed;->LS:I

    const/4 v0, 0x4

    .line 73
    invoke-virtual {p1, v0}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v0

    iput v0, p0, Lcom/gg/reader/api/protocol/gx/ParamGbBaseSpeed;->RLF:I

    const/4 v0, 0x2

    .line 74
    invoke-virtual {p1, v0}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result p1

    iput p1, p0, Lcom/gg/reader/api/protocol/gx/ParamGbBaseSpeed;->RLC:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method public getLS()I
    .locals 1

    .line 41
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/ParamGbBaseSpeed;->LS:I

    return v0
.end method

.method public getRLC()I
    .locals 1

    .line 57
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/ParamGbBaseSpeed;->RLC:I

    return v0
.end method

.method public getRLF()I
    .locals 1

    .line 49
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/ParamGbBaseSpeed;->RLF:I

    return v0
.end method

.method public getTc()I
    .locals 1

    .line 33
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/ParamGbBaseSpeed;->Tc:I

    return v0
.end method

.method public setLS(I)V
    .locals 0

    .line 45
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/ParamGbBaseSpeed;->LS:I

    return-void
.end method

.method public setRLC(I)V
    .locals 0

    .line 61
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/ParamGbBaseSpeed;->RLC:I

    return-void
.end method

.method public setRLF(I)V
    .locals 0

    .line 53
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/ParamGbBaseSpeed;->RLF:I

    return-void
.end method

.method public setTc(I)V
    .locals 0

    .line 37
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/ParamGbBaseSpeed;->Tc:I

    return-void
.end method

.method public toBytes()[B
    .locals 4

    .line 82
    invoke-static {}, Lcom/gg/reader/api/utils/BitBuffer;->allocateDynamic()Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object v0

    .line 83
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/ParamGbBaseSpeed;->Tc:I

    int-to-long v1, v1

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putLong(JI)Lcom/gg/reader/api/utils/BitBuffer;

    .line 84
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/ParamGbBaseSpeed;->LS:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putLong(JI)Lcom/gg/reader/api/utils/BitBuffer;

    .line 85
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/ParamGbBaseSpeed;->RLF:I

    int-to-long v1, v1

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putLong(JI)Lcom/gg/reader/api/utils/BitBuffer;

    .line 86
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/ParamGbBaseSpeed;->RLC:I

    int-to-long v1, v1

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putLong(JI)Lcom/gg/reader/api/utils/BitBuffer;

    .line 87
    invoke-virtual {v0}, Lcom/gg/reader/api/utils/BitBuffer;->asByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ParamGbBaseSpeed{Tc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/gg/reader/api/protocol/gx/ParamGbBaseSpeed;->Tc:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", LS="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/gg/reader/api/protocol/gx/ParamGbBaseSpeed;->LS:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", RLF="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/gg/reader/api/protocol/gx/ParamGbBaseSpeed;->RLF:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", RLC="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/gg/reader/api/protocol/gx/ParamGbBaseSpeed;->RLC:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
