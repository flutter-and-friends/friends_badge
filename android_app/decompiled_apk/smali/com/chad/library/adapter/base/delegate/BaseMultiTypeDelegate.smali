.class public abstract Lcom/chad/library/adapter/base/delegate/BaseMultiTypeDelegate;
.super Ljava/lang/Object;
.source "BaseMultiTypeDelegate.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBaseMultiTypeDelegate.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BaseMultiTypeDelegate.kt\ncom/chad/library/adapter/base/delegate/BaseMultiTypeDelegate\n*L\n1#1,74:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0015\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0008\u0005\u0008&\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u00020\u0002B\u000f\u0012\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005J\u001e\u0010\t\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00002\u0006\u0010\n\u001a\u00020\u000b2\u0008\u0008\u0001\u0010\u000c\u001a\u00020\u000bJ\u001a\u0010\r\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00002\u000c\u0008\u0001\u0010\u000e\u001a\u00020\u000f\"\u00020\u000bJ\u0010\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0007H\u0002J\u001e\u0010\u0013\u001a\u00020\u000b2\u000c\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00152\u0006\u0010\u0016\u001a\u00020\u000bH&J\u000e\u0010\u0017\u001a\u00020\u000b2\u0006\u0010\u0018\u001a\u00020\u000bJ\u001a\u0010\u0019\u001a\u00020\u00112\u0006\u0010\n\u001a\u00020\u000b2\u0008\u0008\u0001\u0010\u000c\u001a\u00020\u000bH\u0002R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/chad/library/adapter/base/delegate/BaseMultiTypeDelegate;",
        "T",
        "",
        "layouts",
        "Landroid/util/SparseIntArray;",
        "(Landroid/util/SparseIntArray;)V",
        "autoMode",
        "",
        "selfMode",
        "addItemType",
        "type",
        "",
        "layoutResId",
        "addItemTypeAutoIncrease",
        "layoutResIds",
        "",
        "checkMode",
        "",
        "mode",
        "getItemType",
        "data",
        "",
        "position",
        "getLayoutId",
        "viewType",
        "registerItemType",
        "com.github.CymChad.brvah"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private autoMode:Z

.field private layouts:Landroid/util/SparseIntArray;

.field private selfMode:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/chad/library/adapter/base/delegate/BaseMultiTypeDelegate;-><init>(Landroid/util/SparseIntArray;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/util/SparseIntArray;)V
    .locals 1

    const-string v0, "layouts"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/chad/library/adapter/base/delegate/BaseMultiTypeDelegate;->layouts:Landroid/util/SparseIntArray;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/util/SparseIntArray;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 17
    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    :cond_0
    invoke-direct {p0, p1}, Lcom/chad/library/adapter/base/delegate/BaseMultiTypeDelegate;-><init>(Landroid/util/SparseIntArray;)V

    return-void
.end method

.method private final checkMode(Z)V
    .locals 1

    xor-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_0

    return-void

    .line 70
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Don\'t mess two register mode"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method private final registerItemType(II)V
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/chad/library/adapter/base/delegate/BaseMultiTypeDelegate;->layouts:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method


# virtual methods
.method public final addItemType(II)Lcom/chad/library/adapter/base/delegate/BaseMultiTypeDelegate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/chad/library/adapter/base/delegate/BaseMultiTypeDelegate<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 63
    iput-boolean v0, p0, Lcom/chad/library/adapter/base/delegate/BaseMultiTypeDelegate;->selfMode:Z

    .line 64
    iget-boolean v0, p0, Lcom/chad/library/adapter/base/delegate/BaseMultiTypeDelegate;->autoMode:Z

    invoke-direct {p0, v0}, Lcom/chad/library/adapter/base/delegate/BaseMultiTypeDelegate;->checkMode(Z)V

    .line 65
    invoke-direct {p0, p1, p2}, Lcom/chad/library/adapter/base/delegate/BaseMultiTypeDelegate;->registerItemType(II)V

    return-object p0
.end method

.method public final varargs addItemTypeAutoIncrease([I)Lcom/chad/library/adapter/base/delegate/BaseMultiTypeDelegate;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Lcom/chad/library/adapter/base/delegate/BaseMultiTypeDelegate<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "layoutResIds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 47
    iput-boolean v0, p0, Lcom/chad/library/adapter/base/delegate/BaseMultiTypeDelegate;->autoMode:Z

    .line 48
    iget-boolean v0, p0, Lcom/chad/library/adapter/base/delegate/BaseMultiTypeDelegate;->selfMode:Z

    invoke-direct {p0, v0}, Lcom/chad/library/adapter/base/delegate/BaseMultiTypeDelegate;->checkMode(Z)V

    .line 49
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 50
    aget v2, p1, v1

    invoke-direct {p0, v1, v2}, Lcom/chad/library/adapter/base/delegate/BaseMultiTypeDelegate;->registerItemType(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public abstract getItemType(Ljava/util/List;I)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+TT;>;I)I"
        }
    .end annotation
.end method

.method public final getLayoutId(I)I
    .locals 2

    .line 31
    iget-object v0, p0, Lcom/chad/library/adapter/base/delegate/BaseMultiTypeDelegate;->layouts:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    return v0

    .line 32
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ViewType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " found layoutResId\uff0cplease use registerItemType() first!"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method
