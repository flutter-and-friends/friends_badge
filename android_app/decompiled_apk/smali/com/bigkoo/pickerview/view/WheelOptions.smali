.class public Lcom/bigkoo/pickerview/view/WheelOptions;
.super Ljava/lang/Object;
.source "WheelOptions.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private isRestoreItem:Z

.field private linkage:Z

.field private mOptions1Items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field private mOptions2Items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private mOptions3Items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "TT;>;>;>;"
        }
    .end annotation
.end field

.field private optionsSelectChangeListener:Lcom/bigkoo/pickerview/listener/OnOptionsSelectChangeListener;

.field private view:Landroid/view/View;

.field private wheelListener_option1:Lcom/contrarywind/listener/OnItemSelectedListener;

.field private wheelListener_option2:Lcom/contrarywind/listener/OnItemSelectedListener;

.field private wv_option1:Lcom/contrarywind/view/WheelView;

.field private wv_option2:Lcom/contrarywind/view/WheelView;

.field private wv_option3:Lcom/contrarywind/view/WheelView;


# direct methods
.method public constructor <init>(Landroid/view/View;Z)V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 24
    iput-boolean v0, p0, Lcom/bigkoo/pickerview/view/WheelOptions;->linkage:Z

    .line 41
    iput-boolean p2, p0, Lcom/bigkoo/pickerview/view/WheelOptions;->isRestoreItem:Z

    .line 42
    iput-object p1, p0, Lcom/bigkoo/pickerview/view/WheelOptions;->view:Landroid/view/View;

    .line 43
    sget p2, Lcom/bigkoo/pickerview/R$id;->options1:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/contrarywind/view/WheelView;

    iput-object p2, p0, Lcom/bigkoo/pickerview/view/WheelOptions;->wv_option1:Lcom/contrarywind/view/WheelView;

    .line 44
    sget p2, Lcom/bigkoo/pickerview/R$id;->options2:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/contrarywind/view/WheelView;

    iput-object p2, p0, Lcom/bigkoo/pickerview/view/WheelOptions;->wv_option2:Lcom/contrarywind/view/WheelView;

    .line 45
    sget p2, Lcom/bigkoo/pickerview/R$id;->options3:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/contrarywind/view/WheelView;

    iput-object p1, p0, Lcom/bigkoo/pickerview/view/WheelOptions;->wv_option3:Lcom/contrarywind/view/WheelView;

    return-void
.end method

.method static synthetic access$000(Lcom/bigkoo/pickerview/view/WheelOptions;)Ljava/util/List;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/bigkoo/pickerview/view/WheelOptions;->mOptions2Items:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lcom/bigkoo/pickerview/view/WheelOptions;)Lcom/bigkoo/pickerview/listener/OnOptionsSelectChangeListener;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/bigkoo/pickerview/view/WheelOptions;->optionsSelectChangeListener:Lcom/bigkoo/pickerview/listener/OnOptionsSelectChangeListener;

    return-object p0
.end method

.method static synthetic access$200(Lcom/bigkoo/pickerview/view/WheelOptions;)Lcom/contrarywind/view/WheelView;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/bigkoo/pickerview/view/WheelOptions;->wv_option1:Lcom/contrarywind/view/WheelView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/bigkoo/pickerview/view/WheelOptions;)Z
    .locals 0

    .line 14
    iget-boolean p0, p0, Lcom/bigkoo/pickerview/view/WheelOptions;->isRestoreItem:Z

    return p0
.end method

.method static synthetic access$400(Lcom/bigkoo/pickerview/view/WheelOptions;)Lcom/contrarywind/view/WheelView;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/bigkoo/pickerview/view/WheelOptions;->wv_option2:Lcom/contrarywind/view/WheelView;

    return-object p0
.end method

.method static synthetic access$500(Lcom/bigkoo/pickerview/view/WheelOptions;)Ljava/util/List;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/bigkoo/pickerview/view/WheelOptions;->mOptions3Items:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$600(Lcom/bigkoo/pickerview/view/WheelOptions;)Lcom/contrarywind/listener/OnItemSelectedListener;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/bigkoo/pickerview/view/WheelOptions;->wheelListener_option2:Lcom/contrarywind/listener/OnItemSelectedListener;

    return-object p0
.end method

.method static synthetic access$700(Lcom/bigkoo/pickerview/view/WheelOptions;)Lcom/contrarywind/view/WheelView;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/bigkoo/pickerview/view/WheelOptions;->wv_option3:Lcom/contrarywind/view/WheelView;

    return-object p0
.end method

.method private itemSelected(III)V
    .locals 3

    .line 326
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelOptions;->mOptions1Items:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 327
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelOptions;->wv_option1:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v0, p1}, Lcom/contrarywind/view/WheelView;->setCurrentItem(I)V

    .line 329
    :cond_0
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelOptions;->mOptions2Items:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 330
    iget-object v1, p0, Lcom/bigkoo/pickerview/view/WheelOptions;->wv_option2:Lcom/contrarywind/view/WheelView;

    new-instance v2, Lcom/bigkoo/pickerview/adapter/ArrayWheelAdapter;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-direct {v2, v0}, Lcom/bigkoo/pickerview/adapter/ArrayWheelAdapter;-><init>(Ljava/util/List;)V

    invoke-virtual {v1, v2}, Lcom/contrarywind/view/WheelView;->setAdapter(Lcom/contrarywind/adapter/WheelAdapter;)V

    .line 331
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelOptions;->wv_option2:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v0, p2}, Lcom/contrarywind/view/WheelView;->setCurrentItem(I)V

    .line 333
    :cond_1
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelOptions;->mOptions3Items:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 334
    iget-object v1, p0, Lcom/bigkoo/pickerview/view/WheelOptions;->wv_option3:Lcom/contrarywind/view/WheelView;

    new-instance v2, Lcom/bigkoo/pickerview/adapter/ArrayWheelAdapter;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-direct {v2, p1}, Lcom/bigkoo/pickerview/adapter/ArrayWheelAdapter;-><init>(Ljava/util/List;)V

    invoke-virtual {v1, v2}, Lcom/contrarywind/view/WheelView;->setAdapter(Lcom/contrarywind/adapter/WheelAdapter;)V

    .line 335
    iget-object p1, p0, Lcom/bigkoo/pickerview/view/WheelOptions;->wv_option3:Lcom/contrarywind/view/WheelView;

    invoke-virtual {p1, p3}, Lcom/contrarywind/view/WheelView;->setCurrentItem(I)V

    :cond_2
    return-void
.end method

.method private setLineSpacingMultiplier()V
    .locals 0

    return-void
.end method


# virtual methods
.method public getCurrentItems()[I
    .locals 7

    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 298
    iget-object v1, p0, Lcom/bigkoo/pickerview/view/WheelOptions;->wv_option1:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v1}, Lcom/contrarywind/view/WheelView;->getCurrentItem()I

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 300
    iget-object v1, p0, Lcom/bigkoo/pickerview/view/WheelOptions;->mOptions2Items:Ljava/util/List;

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 301
    iget-object v1, p0, Lcom/bigkoo/pickerview/view/WheelOptions;->wv_option2:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v1}, Lcom/contrarywind/view/WheelView;->getCurrentItem()I

    move-result v1

    iget-object v4, p0, Lcom/bigkoo/pickerview/view/WheelOptions;->mOptions2Items:Ljava/util/List;

    aget v5, v0, v2

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v3

    if-le v1, v4, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/bigkoo/pickerview/view/WheelOptions;->wv_option2:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v1}, Lcom/contrarywind/view/WheelView;->getCurrentItem()I

    move-result v1

    :goto_0
    aput v1, v0, v3

    goto :goto_1

    .line 303
    :cond_1
    iget-object v1, p0, Lcom/bigkoo/pickerview/view/WheelOptions;->wv_option2:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v1}, Lcom/contrarywind/view/WheelView;->getCurrentItem()I

    move-result v1

    aput v1, v0, v3

    .line 306
    :goto_1
    iget-object v1, p0, Lcom/bigkoo/pickerview/view/WheelOptions;->mOptions3Items:Ljava/util/List;

    const/4 v4, 0x2

    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 307
    iget-object v1, p0, Lcom/bigkoo/pickerview/view/WheelOptions;->wv_option3:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v1}, Lcom/contrarywind/view/WheelView;->getCurrentItem()I

    move-result v1

    iget-object v5, p0, Lcom/bigkoo/pickerview/view/WheelOptions;->mOptions3Items:Ljava/util/List;

    aget v6, v0, v2

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    aget v6, v0, v3

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v3

    if-le v1, v5, :cond_2

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lcom/bigkoo/pickerview/view/WheelOptions;->wv_option3:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v1}, Lcom/contrarywind/view/WheelView;->getCurrentItem()I

    move-result v2

    :goto_2
    aput v2, v0, v4

    goto :goto_3

    .line 309
    :cond_3
    iget-object v1, p0, Lcom/bigkoo/pickerview/view/WheelOptions;->wv_option3:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v1}, Lcom/contrarywind/view/WheelView;->getCurrentItem()I

    move-result v1

    aput v1, v0, v4

    :goto_3
    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelOptions;->view:Landroid/view/View;

    return-object v0
.end method

.method public isCenterLabel(Z)V
    .locals 1

    .line 400
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelOptions;->wv_option1:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v0, p1}, Lcom/contrarywind/view/WheelView;->isCenterLabel(Z)V

    .line 401
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelOptions;->wv_option2:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v0, p1}, Lcom/contrarywind/view/WheelView;->isCenterLabel(Z)V

    .line 402
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelOptions;->wv_option3:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v0, p1}, Lcom/contrarywind/view/WheelView;->isCenterLabel(Z)V

    return-void
.end method

.method public setAlphaGradient(Z)V
    .locals 1

    .line 425
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelOptions;->wv_option1:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v0, p1}, Lcom/contrarywind/view/WheelView;->setAlphaGradient(Z)V

    .line 426
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelOptions;->wv_option2:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v0, p1}, Lcom/contrarywind/view/WheelView;->setAlphaGradient(Z)V

    .line 427
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelOptions;->wv_option3:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v0, p1}, Lcom/contrarywind/view/WheelView;->setAlphaGradient(Z)V

    return-void
.end method

.method public setCurrentItems(III)V
    .locals 1

    .line 316
    iget-boolean v0, p0, Lcom/bigkoo/pickerview/view/WheelOptions;->linkage:Z

    if-eqz v0, :cond_0

    .line 317
    invoke-direct {p0, p1, p2, p3}, Lcom/bigkoo/pickerview/view/WheelOptions;->itemSelected(III)V

    goto :goto_0

    .line 319
    :cond_0
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelOptions;->wv_option1:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v0, p1}, Lcom/contrarywind/view/WheelView;->setCurrentItem(I)V

    .line 320
    iget-object p1, p0, Lcom/bigkoo/pickerview/view/WheelOptions;->wv_option2:Lcom/contrarywind/view/WheelView;

    invoke-virtual {p1, p2}, Lcom/contrarywind/view/WheelView;->setCurrentItem(I)V

    .line 321
    iget-object p1, p0, Lcom/bigkoo/pickerview/view/WheelOptions;->wv_option3:Lcom/contrarywind/view/WheelView;

    invoke-virtual {p1, p3}, Lcom/contrarywind/view/WheelView;->setCurrentItem(I)V

    :goto_0
    return-void
.end method

.method public setCyclic(Z)V
    .locals 1

    .line 263
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelOptions;->wv_option1:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v0, p1}, Lcom/contrarywind/view/WheelView;->setCyclic(Z)V

    .line 264
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelOptions;->wv_option2:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v0, p1}, Lcom/contrarywind/view/WheelView;->setCyclic(Z)V

    .line 265
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelOptions;->wv_option3:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v0, p1}, Lcom/contrarywind/view/WheelView;->setCyclic(Z)V

    return-void
.end method

.method public setCyclic(ZZZ)V
    .locals 1

    .line 285
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelOptions;->wv_option1:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v0, p1}, Lcom/contrarywind/view/WheelView;->setCyclic(Z)V

    .line 286
    iget-object p1, p0, Lcom/bigkoo/pickerview/view/WheelOptions;->wv_option2:Lcom/contrarywind/view/WheelView;

    invoke-virtual {p1, p2}, Lcom/contrarywind/view/WheelView;->setCyclic(Z)V

    .line 287
    iget-object p1, p0, Lcom/bigkoo/pickerview/view/WheelOptions;->wv_option3:Lcom/contrarywind/view/WheelView;

    invoke-virtual {p1, p3}, Lcom/contrarywind/view/WheelView;->setCyclic(Z)V

    return-void
.end method

.method public setDividerColor(I)V
    .locals 1

    .line 356
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelOptions;->wv_option1:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v0, p1}, Lcom/contrarywind/view/WheelView;->setDividerColor(I)V

    .line 357
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelOptions;->wv_option2:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v0, p1}, Lcom/contrarywind/view/WheelView;->setDividerColor(I)V

    .line 358
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelOptions;->wv_option3:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v0, p1}, Lcom/contrarywind/view/WheelView;->setDividerColor(I)V

    return-void
.end method

.method public setDividerType(Lcom/contrarywind/view/WheelView$DividerType;)V
    .locals 1

    .line 367
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelOptions;->wv_option1:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v0, p1}, Lcom/contrarywind/view/WheelView;->setDividerType(Lcom/contrarywind/view/WheelView$DividerType;)V

    .line 368
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelOptions;->wv_option2:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v0, p1}, Lcom/contrarywind/view/WheelView;->setDividerType(Lcom/contrarywind/view/WheelView$DividerType;)V

    .line 369
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelOptions;->wv_option3:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v0, p1}, Lcom/contrarywind/view/WheelView;->setDividerType(Lcom/contrarywind/view/WheelView$DividerType;)V

    return-void
.end method

.method public setItemsVisible(I)V
    .locals 1

    .line 419
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelOptions;->wv_option1:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v0, p1}, Lcom/contrarywind/view/WheelView;->setItemsVisibleCount(I)V

    .line 420
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelOptions;->wv_option2:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v0, p1}, Lcom/contrarywind/view/WheelView;->setItemsVisibleCount(I)V

    .line 421
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelOptions;->wv_option3:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v0, p1}, Lcom/contrarywind/view/WheelView;->setItemsVisibleCount(I)V

    return-void
.end method

.method public setLabels(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 238
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelOptions;->wv_option1:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v0, p1}, Lcom/contrarywind/view/WheelView;->setLabel(Ljava/lang/String;)V

    :cond_0
    if-eqz p2, :cond_1

    .line 241
    iget-object p1, p0, Lcom/bigkoo/pickerview/view/WheelOptions;->wv_option2:Lcom/contrarywind/view/WheelView;

    invoke-virtual {p1, p2}, Lcom/contrarywind/view/WheelView;->setLabel(Ljava/lang/String;)V

    :cond_1
    if-eqz p3, :cond_2

    .line 244
    iget-object p1, p0, Lcom/bigkoo/pickerview/view/WheelOptions;->wv_option3:Lcom/contrarywind/view/WheelView;

    invoke-virtual {p1, p3}, Lcom/contrarywind/view/WheelView;->setLabel(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public setLineSpacingMultiplier(F)V
    .locals 1

    .line 345
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelOptions;->wv_option1:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v0, p1}, Lcom/contrarywind/view/WheelView;->setLineSpacingMultiplier(F)V

    .line 346
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelOptions;->wv_option2:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v0, p1}, Lcom/contrarywind/view/WheelView;->setLineSpacingMultiplier(F)V

    .line 347
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelOptions;->wv_option3:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v0, p1}, Lcom/contrarywind/view/WheelView;->setLineSpacingMultiplier(F)V

    return-void
.end method

.method public setLinkage(Z)V
    .locals 0

    .line 410
    iput-boolean p1, p0, Lcom/bigkoo/pickerview/view/WheelOptions;->linkage:Z

    return-void
.end method

.method public setNPicker(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;",
            "Ljava/util/List<",
            "TT;>;",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 166
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelOptions;->wv_option1:Lcom/contrarywind/view/WheelView;

    new-instance v1, Lcom/bigkoo/pickerview/adapter/ArrayWheelAdapter;

    invoke-direct {v1, p1}, Lcom/bigkoo/pickerview/adapter/ArrayWheelAdapter;-><init>(Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/contrarywind/view/WheelView;->setAdapter(Lcom/contrarywind/adapter/WheelAdapter;)V

    .line 167
    iget-object p1, p0, Lcom/bigkoo/pickerview/view/WheelOptions;->wv_option1:Lcom/contrarywind/view/WheelView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/contrarywind/view/WheelView;->setCurrentItem(I)V

    if-eqz p2, :cond_0

    .line 170
    iget-object p1, p0, Lcom/bigkoo/pickerview/view/WheelOptions;->wv_option2:Lcom/contrarywind/view/WheelView;

    new-instance v1, Lcom/bigkoo/pickerview/adapter/ArrayWheelAdapter;

    invoke-direct {v1, p2}, Lcom/bigkoo/pickerview/adapter/ArrayWheelAdapter;-><init>(Ljava/util/List;)V

    invoke-virtual {p1, v1}, Lcom/contrarywind/view/WheelView;->setAdapter(Lcom/contrarywind/adapter/WheelAdapter;)V

    .line 172
    :cond_0
    iget-object p1, p0, Lcom/bigkoo/pickerview/view/WheelOptions;->wv_option2:Lcom/contrarywind/view/WheelView;

    invoke-virtual {p1}, Lcom/contrarywind/view/WheelView;->getCurrentItem()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/contrarywind/view/WheelView;->setCurrentItem(I)V

    if-eqz p3, :cond_1

    .line 175
    iget-object p1, p0, Lcom/bigkoo/pickerview/view/WheelOptions;->wv_option3:Lcom/contrarywind/view/WheelView;

    new-instance v1, Lcom/bigkoo/pickerview/adapter/ArrayWheelAdapter;

    invoke-direct {v1, p3}, Lcom/bigkoo/pickerview/adapter/ArrayWheelAdapter;-><init>(Ljava/util/List;)V

    invoke-virtual {p1, v1}, Lcom/contrarywind/view/WheelView;->setAdapter(Lcom/contrarywind/adapter/WheelAdapter;)V

    .line 177
    :cond_1
    iget-object p1, p0, Lcom/bigkoo/pickerview/view/WheelOptions;->wv_option3:Lcom/contrarywind/view/WheelView;

    invoke-virtual {p1}, Lcom/contrarywind/view/WheelView;->getCurrentItem()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/contrarywind/view/WheelView;->setCurrentItem(I)V

    .line 178
    iget-object p1, p0, Lcom/bigkoo/pickerview/view/WheelOptions;->wv_option1:Lcom/contrarywind/view/WheelView;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/contrarywind/view/WheelView;->setIsOptions(Z)V

    .line 179
    iget-object p1, p0, Lcom/bigkoo/pickerview/view/WheelOptions;->wv_option2:Lcom/contrarywind/view/WheelView;

    invoke-virtual {p1, v1}, Lcom/contrarywind/view/WheelView;->setIsOptions(Z)V

    .line 180
    iget-object p1, p0, Lcom/bigkoo/pickerview/view/WheelOptions;->wv_option3:Lcom/contrarywind/view/WheelView;

    invoke-virtual {p1, v1}, Lcom/contrarywind/view/WheelView;->setIsOptions(Z)V

    .line 182
    iget-object p1, p0, Lcom/bigkoo/pickerview/view/WheelOptions;->optionsSelectChangeListener:Lcom/bigkoo/pickerview/listener/OnOptionsSelectChangeListener;

    if-eqz p1, :cond_2

    .line 183
    iget-object p1, p0, Lcom/bigkoo/pickerview/view/WheelOptions;->wv_option1:Lcom/contrarywind/view/WheelView;

    new-instance v1, Lcom/bigkoo/pickerview/view/WheelOptions$4;

    invoke-direct {v1, p0}, Lcom/bigkoo/pickerview/view/WheelOptions$4;-><init>(Lcom/bigkoo/pickerview/view/WheelOptions;)V

    invoke-virtual {p1, v1}, Lcom/contrarywind/view/WheelView;->setOnItemSelectedListener(Lcom/contrarywind/listener/OnItemSelectedListener;)V

    :cond_2
    const/16 p1, 0x8

    if-nez p2, :cond_3

    .line 192
    iget-object p2, p0, Lcom/bigkoo/pickerview/view/WheelOptions;->wv_option2:Lcom/contrarywind/view/WheelView;

    invoke-virtual {p2, p1}, Lcom/contrarywind/view/WheelView;->setVisibility(I)V

    goto :goto_0

    .line 194
    :cond_3
    iget-object p2, p0, Lcom/bigkoo/pickerview/view/WheelOptions;->wv_option2:Lcom/contrarywind/view/WheelView;

    invoke-virtual {p2, v0}, Lcom/contrarywind/view/WheelView;->setVisibility(I)V

    .line 195
    iget-object p2, p0, Lcom/bigkoo/pickerview/view/WheelOptions;->optionsSelectChangeListener:Lcom/bigkoo/pickerview/listener/OnOptionsSelectChangeListener;

    if-eqz p2, :cond_4

    .line 196
    iget-object p2, p0, Lcom/bigkoo/pickerview/view/WheelOptions;->wv_option2:Lcom/contrarywind/view/WheelView;

    new-instance v1, Lcom/bigkoo/pickerview/view/WheelOptions$5;

    invoke-direct {v1, p0}, Lcom/bigkoo/pickerview/view/WheelOptions$5;-><init>(Lcom/bigkoo/pickerview/view/WheelOptions;)V

    invoke-virtual {p2, v1}, Lcom/contrarywind/view/WheelView;->setOnItemSelectedListener(Lcom/contrarywind/listener/OnItemSelectedListener;)V

    :cond_4
    :goto_0
    if-nez p3, :cond_5

    .line 205
    iget-object p2, p0, Lcom/bigkoo/pickerview/view/WheelOptions;->wv_option3:Lcom/contrarywind/view/WheelView;

    invoke-virtual {p2, p1}, Lcom/contrarywind/view/WheelView;->setVisibility(I)V

    goto :goto_1

    .line 207
    :cond_5
    iget-object p1, p0, Lcom/bigkoo/pickerview/view/WheelOptions;->wv_option3:Lcom/contrarywind/view/WheelView;

    invoke-virtual {p1, v0}, Lcom/contrarywind/view/WheelView;->setVisibility(I)V

    .line 208
    iget-object p1, p0, Lcom/bigkoo/pickerview/view/WheelOptions;->optionsSelectChangeListener:Lcom/bigkoo/pickerview/listener/OnOptionsSelectChangeListener;

    if-eqz p1, :cond_6

    .line 209
    iget-object p1, p0, Lcom/bigkoo/pickerview/view/WheelOptions;->wv_option3:Lcom/contrarywind/view/WheelView;

    new-instance p2, Lcom/bigkoo/pickerview/view/WheelOptions$6;

    invoke-direct {p2, p0}, Lcom/bigkoo/pickerview/view/WheelOptions$6;-><init>(Lcom/bigkoo/pickerview/view/WheelOptions;)V

    invoke-virtual {p1, p2}, Lcom/contrarywind/view/WheelView;->setOnItemSelectedListener(Lcom/contrarywind/listener/OnItemSelectedListener;)V

    :cond_6
    :goto_1
    return-void
.end method

.method public setOptionsSelectChangeListener(Lcom/bigkoo/pickerview/listener/OnOptionsSelectChangeListener;)V
    .locals 0

    .line 406
    iput-object p1, p0, Lcom/bigkoo/pickerview/view/WheelOptions;->optionsSelectChangeListener:Lcom/bigkoo/pickerview/listener/OnOptionsSelectChangeListener;

    return-void
.end method

.method public setPicker(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "TT;>;>;",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "TT;>;>;>;)V"
        }
    .end annotation

    .line 52
    iput-object p1, p0, Lcom/bigkoo/pickerview/view/WheelOptions;->mOptions1Items:Ljava/util/List;

    .line 53
    iput-object p2, p0, Lcom/bigkoo/pickerview/view/WheelOptions;->mOptions2Items:Ljava/util/List;

    .line 54
    iput-object p3, p0, Lcom/bigkoo/pickerview/view/WheelOptions;->mOptions3Items:Ljava/util/List;

    .line 57
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelOptions;->wv_option1:Lcom/contrarywind/view/WheelView;

    new-instance v1, Lcom/bigkoo/pickerview/adapter/ArrayWheelAdapter;

    iget-object v2, p0, Lcom/bigkoo/pickerview/view/WheelOptions;->mOptions1Items:Ljava/util/List;

    invoke-direct {v1, v2}, Lcom/bigkoo/pickerview/adapter/ArrayWheelAdapter;-><init>(Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/contrarywind/view/WheelView;->setAdapter(Lcom/contrarywind/adapter/WheelAdapter;)V

    .line 58
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelOptions;->wv_option1:Lcom/contrarywind/view/WheelView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/contrarywind/view/WheelView;->setCurrentItem(I)V

    .line 60
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelOptions;->mOptions2Items:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 61
    iget-object v2, p0, Lcom/bigkoo/pickerview/view/WheelOptions;->wv_option2:Lcom/contrarywind/view/WheelView;

    new-instance v3, Lcom/bigkoo/pickerview/adapter/ArrayWheelAdapter;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-direct {v3, v0}, Lcom/bigkoo/pickerview/adapter/ArrayWheelAdapter;-><init>(Ljava/util/List;)V

    invoke-virtual {v2, v3}, Lcom/contrarywind/view/WheelView;->setAdapter(Lcom/contrarywind/adapter/WheelAdapter;)V

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelOptions;->wv_option2:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v0}, Lcom/contrarywind/view/WheelView;->getCurrentItem()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/contrarywind/view/WheelView;->setCurrentItem(I)V

    .line 65
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelOptions;->mOptions3Items:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 66
    iget-object v2, p0, Lcom/bigkoo/pickerview/view/WheelOptions;->wv_option3:Lcom/contrarywind/view/WheelView;

    new-instance v3, Lcom/bigkoo/pickerview/adapter/ArrayWheelAdapter;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-direct {v3, v0}, Lcom/bigkoo/pickerview/adapter/ArrayWheelAdapter;-><init>(Ljava/util/List;)V

    invoke-virtual {v2, v3}, Lcom/contrarywind/view/WheelView;->setAdapter(Lcom/contrarywind/adapter/WheelAdapter;)V

    .line 68
    :cond_1
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelOptions;->wv_option3:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v0}, Lcom/contrarywind/view/WheelView;->getCurrentItem()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/contrarywind/view/WheelView;->setCurrentItem(I)V

    .line 69
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelOptions;->wv_option1:Lcom/contrarywind/view/WheelView;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/contrarywind/view/WheelView;->setIsOptions(Z)V

    .line 70
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelOptions;->wv_option2:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v0, v2}, Lcom/contrarywind/view/WheelView;->setIsOptions(Z)V

    .line 71
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelOptions;->wv_option3:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v0, v2}, Lcom/contrarywind/view/WheelView;->setIsOptions(Z)V

    .line 73
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelOptions;->mOptions2Items:Ljava/util/List;

    const/16 v2, 0x8

    if-nez v0, :cond_2

    .line 74
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelOptions;->wv_option2:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v0, v2}, Lcom/contrarywind/view/WheelView;->setVisibility(I)V

    goto :goto_0

    .line 76
    :cond_2
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelOptions;->wv_option2:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v0, v1}, Lcom/contrarywind/view/WheelView;->setVisibility(I)V

    .line 78
    :goto_0
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelOptions;->mOptions3Items:Ljava/util/List;

    if-nez v0, :cond_3

    .line 79
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelOptions;->wv_option3:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v0, v2}, Lcom/contrarywind/view/WheelView;->setVisibility(I)V

    goto :goto_1

    .line 81
    :cond_3
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelOptions;->wv_option3:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v0, v1}, Lcom/contrarywind/view/WheelView;->setVisibility(I)V

    .line 85
    :goto_1
    new-instance v0, Lcom/bigkoo/pickerview/view/WheelOptions$1;

    invoke-direct {v0, p0}, Lcom/bigkoo/pickerview/view/WheelOptions$1;-><init>(Lcom/bigkoo/pickerview/view/WheelOptions;)V

    iput-object v0, p0, Lcom/bigkoo/pickerview/view/WheelOptions;->wheelListener_option1:Lcom/contrarywind/listener/OnItemSelectedListener;

    .line 114
    new-instance v0, Lcom/bigkoo/pickerview/view/WheelOptions$2;

    invoke-direct {v0, p0}, Lcom/bigkoo/pickerview/view/WheelOptions$2;-><init>(Lcom/bigkoo/pickerview/view/WheelOptions;)V

    iput-object v0, p0, Lcom/bigkoo/pickerview/view/WheelOptions;->wheelListener_option2:Lcom/contrarywind/listener/OnItemSelectedListener;

    if-eqz p1, :cond_4

    .line 145
    iget-boolean p1, p0, Lcom/bigkoo/pickerview/view/WheelOptions;->linkage:Z

    if-eqz p1, :cond_4

    .line 146
    iget-object p1, p0, Lcom/bigkoo/pickerview/view/WheelOptions;->wv_option1:Lcom/contrarywind/view/WheelView;

    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelOptions;->wheelListener_option1:Lcom/contrarywind/listener/OnItemSelectedListener;

    invoke-virtual {p1, v0}, Lcom/contrarywind/view/WheelView;->setOnItemSelectedListener(Lcom/contrarywind/listener/OnItemSelectedListener;)V

    :cond_4
    if-eqz p2, :cond_5

    .line 148
    iget-boolean p1, p0, Lcom/bigkoo/pickerview/view/WheelOptions;->linkage:Z

    if-eqz p1, :cond_5

    .line 149
    iget-object p1, p0, Lcom/bigkoo/pickerview/view/WheelOptions;->wv_option2:Lcom/contrarywind/view/WheelView;

    iget-object p2, p0, Lcom/bigkoo/pickerview/view/WheelOptions;->wheelListener_option2:Lcom/contrarywind/listener/OnItemSelectedListener;

    invoke-virtual {p1, p2}, Lcom/contrarywind/view/WheelView;->setOnItemSelectedListener(Lcom/contrarywind/listener/OnItemSelectedListener;)V

    :cond_5
    if-eqz p3, :cond_6

    .line 151
    iget-boolean p1, p0, Lcom/bigkoo/pickerview/view/WheelOptions;->linkage:Z

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/bigkoo/pickerview/view/WheelOptions;->optionsSelectChangeListener:Lcom/bigkoo/pickerview/listener/OnOptionsSelectChangeListener;

    if-eqz p1, :cond_6

    .line 152
    iget-object p1, p0, Lcom/bigkoo/pickerview/view/WheelOptions;->wv_option3:Lcom/contrarywind/view/WheelView;

    new-instance p2, Lcom/bigkoo/pickerview/view/WheelOptions$3;

    invoke-direct {p2, p0}, Lcom/bigkoo/pickerview/view/WheelOptions$3;-><init>(Lcom/bigkoo/pickerview/view/WheelOptions;)V

    invoke-virtual {p1, p2}, Lcom/contrarywind/view/WheelView;->setOnItemSelectedListener(Lcom/contrarywind/listener/OnItemSelectedListener;)V

    :cond_6
    return-void
.end method

.method public setTextColorCenter(I)V
    .locals 1

    .line 378
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelOptions;->wv_option1:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v0, p1}, Lcom/contrarywind/view/WheelView;->setTextColorCenter(I)V

    .line 379
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelOptions;->wv_option2:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v0, p1}, Lcom/contrarywind/view/WheelView;->setTextColorCenter(I)V

    .line 380
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelOptions;->wv_option3:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v0, p1}, Lcom/contrarywind/view/WheelView;->setTextColorCenter(I)V

    return-void
.end method

.method public setTextColorOut(I)V
    .locals 1

    .line 389
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelOptions;->wv_option1:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v0, p1}, Lcom/contrarywind/view/WheelView;->setTextColorOut(I)V

    .line 390
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelOptions;->wv_option2:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v0, p1}, Lcom/contrarywind/view/WheelView;->setTextColorOut(I)V

    .line 391
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelOptions;->wv_option3:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v0, p1}, Lcom/contrarywind/view/WheelView;->setTextColorOut(I)V

    return-void
.end method

.method public setTextContentSize(I)V
    .locals 1

    .line 220
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelOptions;->wv_option1:Lcom/contrarywind/view/WheelView;

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Lcom/contrarywind/view/WheelView;->setTextSize(F)V

    .line 221
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelOptions;->wv_option2:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v0, p1}, Lcom/contrarywind/view/WheelView;->setTextSize(F)V

    .line 222
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelOptions;->wv_option3:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v0, p1}, Lcom/contrarywind/view/WheelView;->setTextSize(F)V

    return-void
.end method

.method public setTextXOffset(III)V
    .locals 1

    .line 252
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelOptions;->wv_option1:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v0, p1}, Lcom/contrarywind/view/WheelView;->setTextXOffset(I)V

    .line 253
    iget-object p1, p0, Lcom/bigkoo/pickerview/view/WheelOptions;->wv_option2:Lcom/contrarywind/view/WheelView;

    invoke-virtual {p1, p2}, Lcom/contrarywind/view/WheelView;->setTextXOffset(I)V

    .line 254
    iget-object p1, p0, Lcom/bigkoo/pickerview/view/WheelOptions;->wv_option3:Lcom/contrarywind/view/WheelView;

    invoke-virtual {p1, p3}, Lcom/contrarywind/view/WheelView;->setTextXOffset(I)V

    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .locals 1

    .line 274
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelOptions;->wv_option1:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v0, p1}, Lcom/contrarywind/view/WheelView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 275
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelOptions;->wv_option2:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v0, p1}, Lcom/contrarywind/view/WheelView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 276
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelOptions;->wv_option3:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v0, p1}, Lcom/contrarywind/view/WheelView;->setTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/bigkoo/pickerview/view/WheelOptions;->view:Landroid/view/View;

    return-void
.end method
