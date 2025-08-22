.class public Lcom/handheld/uhfr/CusParamFilter;
.super Ljava/lang/Object;
.source "CusParamFilter.java"


# instance fields
.field filter:Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;

.field matching:Z


# direct methods
.method public constructor <init>(Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;Z)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/handheld/uhfr/CusParamFilter;->filter:Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;

    .line 11
    iput-boolean p2, p0, Lcom/handheld/uhfr/CusParamFilter;->matching:Z

    return-void
.end method


# virtual methods
.method public getFilter()Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/handheld/uhfr/CusParamFilter;->filter:Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;

    return-object v0
.end method

.method public isMatching()Z
    .locals 1

    .line 23
    iget-boolean v0, p0, Lcom/handheld/uhfr/CusParamFilter;->matching:Z

    return v0
.end method

.method public setFilter(Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/handheld/uhfr/CusParamFilter;->filter:Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;

    return-void
.end method

.method public setMatching(Z)V
    .locals 0

    .line 27
    iput-boolean p1, p0, Lcom/handheld/uhfr/CusParamFilter;->matching:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CusParamFilter{filter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/handheld/uhfr/CusParamFilter;->filter:Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", matching="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/handheld/uhfr/CusParamFilter;->matching:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
