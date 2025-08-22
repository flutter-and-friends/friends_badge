.class final synthetic Lcom/chad/library/adapter/base/BaseQuickAdapter$emptyLayout$1;
.super Lkotlin/jvm/internal/MutablePropertyReference0;
.source "BaseQuickAdapter.kt"


# annotations
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
.method constructor <init>(Lcom/chad/library/adapter/base/BaseQuickAdapter;)V
    .locals 0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/MutablePropertyReference0;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter$emptyLayout$1;->receiver:Ljava/lang/Object;

    check-cast v0, Lcom/chad/library/adapter/base/BaseQuickAdapter;

    .line 1071
    invoke-static {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->access$getMEmptyLayout$p(Lcom/chad/library/adapter/base/BaseQuickAdapter;)Landroid/widget/FrameLayout;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "mEmptyLayout"

    return-object v0
.end method

.method public getOwner()Lkotlin/reflect/KDeclarationContainer;
    .locals 1

    const-class v0, Lcom/chad/library/adapter/base/BaseQuickAdapter;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    return-object v0
.end method

.method public getSignature()Ljava/lang/String;
    .locals 1

    const-string v0, "getMEmptyLayout()Landroid/widget/FrameLayout;"

    return-object v0
.end method

.method public set(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter$emptyLayout$1;->receiver:Ljava/lang/Object;

    check-cast v0, Lcom/chad/library/adapter/base/BaseQuickAdapter;

    .line 1071
    check-cast p1, Landroid/widget/FrameLayout;

    invoke-static {v0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->access$setMEmptyLayout$p(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/widget/FrameLayout;)V

    return-void
.end method
