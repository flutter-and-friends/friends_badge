.class public abstract Lcom/chad/library/adapter/base/provider/BaseNodeProvider;
.super Lcom/chad/library/adapter/base/provider/BaseItemProvider;
.source "BaseNodeProvider.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/provider/BaseItemProvider<",
        "Lcom/chad/library/adapter/base/entity/node/BaseNode;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008&\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\n\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/chad/library/adapter/base/provider/BaseNodeProvider;",
        "Lcom/chad/library/adapter/base/provider/BaseItemProvider;",
        "Lcom/chad/library/adapter/base/entity/node/BaseNode;",
        "()V",
        "getAdapter",
        "Lcom/chad/library/adapter/base/BaseNodeAdapter;",
        "com.github.CymChad.brvah"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getAdapter()Lcom/chad/library/adapter/base/BaseNodeAdapter;
    .locals 2

    .line 9
    invoke-super {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->getAdapter()Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;

    move-result-object v0

    instance-of v1, v0, Lcom/chad/library/adapter/base/BaseNodeAdapter;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    check-cast v0, Lcom/chad/library/adapter/base/BaseNodeAdapter;

    return-object v0
.end method

.method public bridge synthetic getAdapter()Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;
    .locals 1

    .line 6
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseNodeProvider;->getAdapter()Lcom/chad/library/adapter/base/BaseNodeAdapter;

    move-result-object v0

    check-cast v0, Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;

    return-object v0
.end method
