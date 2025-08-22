.class public final Lcom/chad/library/adapter/base/entity/SectionEntity$DefaultImpls;
.super Ljava/lang/Object;
.source "SectionEntity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chad/library/adapter/base/entity/SectionEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# direct methods
.method public static getItemType(Lcom/chad/library/adapter/base/entity/SectionEntity;)I
    .locals 0

    .line 17
    invoke-interface {p0}, Lcom/chad/library/adapter/base/entity/SectionEntity;->isHeader()Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, -0x63

    goto :goto_0

    :cond_0
    const/16 p0, -0x64

    :goto_0
    return p0
.end method
