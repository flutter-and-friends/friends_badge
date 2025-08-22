.class Lcom/bigkoo/pickerview/view/WheelTime$3;
.super Ljava/lang/Object;
.source "WheelTime.java"

# interfaces
.implements Lcom/contrarywind/listener/OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bigkoo/pickerview/view/WheelTime;->setSolar(IIIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bigkoo/pickerview/view/WheelTime;

.field final synthetic val$list_big:Ljava/util/List;

.field final synthetic val$list_little:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/bigkoo/pickerview/view/WheelTime;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    .line 378
    iput-object p1, p0, Lcom/bigkoo/pickerview/view/WheelTime$3;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    iput-object p2, p0, Lcom/bigkoo/pickerview/view/WheelTime$3;->val$list_big:Ljava/util/List;

    iput-object p3, p0, Lcom/bigkoo/pickerview/view/WheelTime$3;->val$list_little:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(I)V
    .locals 8

    .line 381
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelTime$3;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    invoke-static {v0}, Lcom/bigkoo/pickerview/view/WheelTime;->access$000(Lcom/bigkoo/pickerview/view/WheelTime;)I

    move-result v0

    add-int v2, p1, v0

    .line 382
    iget-object p1, p0, Lcom/bigkoo/pickerview/view/WheelTime$3;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    invoke-static {p1, v2}, Lcom/bigkoo/pickerview/view/WheelTime;->access$502(Lcom/bigkoo/pickerview/view/WheelTime;I)I

    .line 383
    iget-object p1, p0, Lcom/bigkoo/pickerview/view/WheelTime$3;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    invoke-static {p1}, Lcom/bigkoo/pickerview/view/WheelTime;->access$100(Lcom/bigkoo/pickerview/view/WheelTime;)Lcom/contrarywind/view/WheelView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/contrarywind/view/WheelView;->getCurrentItem()I

    move-result p1

    .line 385
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelTime$3;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    invoke-static {v0}, Lcom/bigkoo/pickerview/view/WheelTime;->access$000(Lcom/bigkoo/pickerview/view/WheelTime;)I

    move-result v0

    iget-object v1, p0, Lcom/bigkoo/pickerview/view/WheelTime$3;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    invoke-static {v1}, Lcom/bigkoo/pickerview/view/WheelTime;->access$600(Lcom/bigkoo/pickerview/view/WheelTime;)I

    move-result v1

    const/4 v3, 0x1

    if-ne v0, v1, :cond_4

    .line 387
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelTime$3;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    invoke-static {v0}, Lcom/bigkoo/pickerview/view/WheelTime;->access$100(Lcom/bigkoo/pickerview/view/WheelTime;)Lcom/contrarywind/view/WheelView;

    move-result-object v0

    new-instance v1, Lcom/bigkoo/pickerview/adapter/NumericWheelAdapter;

    iget-object v4, p0, Lcom/bigkoo/pickerview/view/WheelTime$3;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    invoke-static {v4}, Lcom/bigkoo/pickerview/view/WheelTime;->access$700(Lcom/bigkoo/pickerview/view/WheelTime;)I

    move-result v4

    iget-object v5, p0, Lcom/bigkoo/pickerview/view/WheelTime$3;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    invoke-static {v5}, Lcom/bigkoo/pickerview/view/WheelTime;->access$800(Lcom/bigkoo/pickerview/view/WheelTime;)I

    move-result v5

    invoke-direct {v1, v4, v5}, Lcom/bigkoo/pickerview/adapter/NumericWheelAdapter;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/contrarywind/view/WheelView;->setAdapter(Lcom/contrarywind/adapter/WheelAdapter;)V

    .line 389
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelTime$3;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    invoke-static {v0}, Lcom/bigkoo/pickerview/view/WheelTime;->access$100(Lcom/bigkoo/pickerview/view/WheelTime;)Lcom/contrarywind/view/WheelView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/contrarywind/view/WheelView;->getAdapter()Lcom/contrarywind/adapter/WheelAdapter;

    move-result-object v0

    invoke-interface {v0}, Lcom/contrarywind/adapter/WheelAdapter;->getItemsCount()I

    move-result v0

    sub-int/2addr v0, v3

    if-le p1, v0, :cond_0

    .line 390
    iget-object p1, p0, Lcom/bigkoo/pickerview/view/WheelTime$3;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    invoke-static {p1}, Lcom/bigkoo/pickerview/view/WheelTime;->access$100(Lcom/bigkoo/pickerview/view/WheelTime;)Lcom/contrarywind/view/WheelView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/contrarywind/view/WheelView;->getAdapter()Lcom/contrarywind/adapter/WheelAdapter;

    move-result-object p1

    invoke-interface {p1}, Lcom/contrarywind/adapter/WheelAdapter;->getItemsCount()I

    move-result p1

    sub-int/2addr p1, v3

    .line 391
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelTime$3;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    invoke-static {v0}, Lcom/bigkoo/pickerview/view/WheelTime;->access$100(Lcom/bigkoo/pickerview/view/WheelTime;)Lcom/contrarywind/view/WheelView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/contrarywind/view/WheelView;->setCurrentItem(I)V

    .line 394
    :cond_0
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelTime$3;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    invoke-static {v0}, Lcom/bigkoo/pickerview/view/WheelTime;->access$700(Lcom/bigkoo/pickerview/view/WheelTime;)I

    move-result v0

    add-int v3, p1, v0

    .line 396
    iget-object p1, p0, Lcom/bigkoo/pickerview/view/WheelTime$3;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    invoke-static {p1}, Lcom/bigkoo/pickerview/view/WheelTime;->access$700(Lcom/bigkoo/pickerview/view/WheelTime;)I

    move-result p1

    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelTime$3;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    invoke-static {v0}, Lcom/bigkoo/pickerview/view/WheelTime;->access$800(Lcom/bigkoo/pickerview/view/WheelTime;)I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 398
    iget-object v1, p0, Lcom/bigkoo/pickerview/view/WheelTime$3;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    invoke-static {v1}, Lcom/bigkoo/pickerview/view/WheelTime;->access$900(Lcom/bigkoo/pickerview/view/WheelTime;)I

    move-result v4

    iget-object p1, p0, Lcom/bigkoo/pickerview/view/WheelTime$3;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    invoke-static {p1}, Lcom/bigkoo/pickerview/view/WheelTime;->access$1000(Lcom/bigkoo/pickerview/view/WheelTime;)I

    move-result v5

    iget-object v6, p0, Lcom/bigkoo/pickerview/view/WheelTime$3;->val$list_big:Ljava/util/List;

    iget-object v7, p0, Lcom/bigkoo/pickerview/view/WheelTime$3;->val$list_little:Ljava/util/List;

    invoke-static/range {v1 .. v7}, Lcom/bigkoo/pickerview/view/WheelTime;->access$1100(Lcom/bigkoo/pickerview/view/WheelTime;IIIILjava/util/List;Ljava/util/List;)V

    goto/16 :goto_0

    .line 399
    :cond_1
    iget-object p1, p0, Lcom/bigkoo/pickerview/view/WheelTime$3;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    invoke-static {p1}, Lcom/bigkoo/pickerview/view/WheelTime;->access$700(Lcom/bigkoo/pickerview/view/WheelTime;)I

    move-result p1

    if-ne v3, p1, :cond_2

    .line 401
    iget-object v1, p0, Lcom/bigkoo/pickerview/view/WheelTime$3;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    invoke-static {v1}, Lcom/bigkoo/pickerview/view/WheelTime;->access$900(Lcom/bigkoo/pickerview/view/WheelTime;)I

    move-result v4

    const/16 v5, 0x1f

    iget-object v6, p0, Lcom/bigkoo/pickerview/view/WheelTime$3;->val$list_big:Ljava/util/List;

    iget-object v7, p0, Lcom/bigkoo/pickerview/view/WheelTime$3;->val$list_little:Ljava/util/List;

    invoke-static/range {v1 .. v7}, Lcom/bigkoo/pickerview/view/WheelTime;->access$1100(Lcom/bigkoo/pickerview/view/WheelTime;IIIILjava/util/List;Ljava/util/List;)V

    goto/16 :goto_0

    .line 402
    :cond_2
    iget-object p1, p0, Lcom/bigkoo/pickerview/view/WheelTime$3;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    invoke-static {p1}, Lcom/bigkoo/pickerview/view/WheelTime;->access$800(Lcom/bigkoo/pickerview/view/WheelTime;)I

    move-result p1

    if-ne v3, p1, :cond_3

    .line 403
    iget-object v1, p0, Lcom/bigkoo/pickerview/view/WheelTime$3;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    const/4 v4, 0x1

    invoke-static {v1}, Lcom/bigkoo/pickerview/view/WheelTime;->access$1000(Lcom/bigkoo/pickerview/view/WheelTime;)I

    move-result v5

    iget-object v6, p0, Lcom/bigkoo/pickerview/view/WheelTime$3;->val$list_big:Ljava/util/List;

    iget-object v7, p0, Lcom/bigkoo/pickerview/view/WheelTime$3;->val$list_little:Ljava/util/List;

    invoke-static/range {v1 .. v7}, Lcom/bigkoo/pickerview/view/WheelTime;->access$1100(Lcom/bigkoo/pickerview/view/WheelTime;IIIILjava/util/List;Ljava/util/List;)V

    goto/16 :goto_0

    .line 405
    :cond_3
    iget-object v1, p0, Lcom/bigkoo/pickerview/view/WheelTime$3;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    const/4 v4, 0x1

    const/16 v5, 0x1f

    iget-object v6, p0, Lcom/bigkoo/pickerview/view/WheelTime$3;->val$list_big:Ljava/util/List;

    iget-object v7, p0, Lcom/bigkoo/pickerview/view/WheelTime$3;->val$list_little:Ljava/util/List;

    invoke-static/range {v1 .. v7}, Lcom/bigkoo/pickerview/view/WheelTime;->access$1100(Lcom/bigkoo/pickerview/view/WheelTime;IIIILjava/util/List;Ljava/util/List;)V

    goto/16 :goto_0

    .line 407
    :cond_4
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelTime$3;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    invoke-static {v0}, Lcom/bigkoo/pickerview/view/WheelTime;->access$000(Lcom/bigkoo/pickerview/view/WheelTime;)I

    move-result v0

    const/16 v1, 0xc

    if-ne v2, v0, :cond_7

    .line 409
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelTime$3;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    invoke-static {v0}, Lcom/bigkoo/pickerview/view/WheelTime;->access$100(Lcom/bigkoo/pickerview/view/WheelTime;)Lcom/contrarywind/view/WheelView;

    move-result-object v0

    new-instance v4, Lcom/bigkoo/pickerview/adapter/NumericWheelAdapter;

    iget-object v5, p0, Lcom/bigkoo/pickerview/view/WheelTime$3;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    invoke-static {v5}, Lcom/bigkoo/pickerview/view/WheelTime;->access$700(Lcom/bigkoo/pickerview/view/WheelTime;)I

    move-result v5

    invoke-direct {v4, v5, v1}, Lcom/bigkoo/pickerview/adapter/NumericWheelAdapter;-><init>(II)V

    invoke-virtual {v0, v4}, Lcom/contrarywind/view/WheelView;->setAdapter(Lcom/contrarywind/adapter/WheelAdapter;)V

    .line 411
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelTime$3;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    invoke-static {v0}, Lcom/bigkoo/pickerview/view/WheelTime;->access$100(Lcom/bigkoo/pickerview/view/WheelTime;)Lcom/contrarywind/view/WheelView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/contrarywind/view/WheelView;->getAdapter()Lcom/contrarywind/adapter/WheelAdapter;

    move-result-object v0

    invoke-interface {v0}, Lcom/contrarywind/adapter/WheelAdapter;->getItemsCount()I

    move-result v0

    sub-int/2addr v0, v3

    if-le p1, v0, :cond_5

    .line 412
    iget-object p1, p0, Lcom/bigkoo/pickerview/view/WheelTime$3;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    invoke-static {p1}, Lcom/bigkoo/pickerview/view/WheelTime;->access$100(Lcom/bigkoo/pickerview/view/WheelTime;)Lcom/contrarywind/view/WheelView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/contrarywind/view/WheelView;->getAdapter()Lcom/contrarywind/adapter/WheelAdapter;

    move-result-object p1

    invoke-interface {p1}, Lcom/contrarywind/adapter/WheelAdapter;->getItemsCount()I

    move-result p1

    sub-int/2addr p1, v3

    .line 413
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelTime$3;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    invoke-static {v0}, Lcom/bigkoo/pickerview/view/WheelTime;->access$100(Lcom/bigkoo/pickerview/view/WheelTime;)Lcom/contrarywind/view/WheelView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/contrarywind/view/WheelView;->setCurrentItem(I)V

    .line 416
    :cond_5
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelTime$3;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    invoke-static {v0}, Lcom/bigkoo/pickerview/view/WheelTime;->access$700(Lcom/bigkoo/pickerview/view/WheelTime;)I

    move-result v0

    add-int v3, p1, v0

    .line 417
    iget-object p1, p0, Lcom/bigkoo/pickerview/view/WheelTime$3;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    invoke-static {p1}, Lcom/bigkoo/pickerview/view/WheelTime;->access$700(Lcom/bigkoo/pickerview/view/WheelTime;)I

    move-result p1

    if-ne v3, p1, :cond_6

    .line 419
    iget-object v1, p0, Lcom/bigkoo/pickerview/view/WheelTime$3;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    invoke-static {v1}, Lcom/bigkoo/pickerview/view/WheelTime;->access$900(Lcom/bigkoo/pickerview/view/WheelTime;)I

    move-result v4

    const/16 v5, 0x1f

    iget-object v6, p0, Lcom/bigkoo/pickerview/view/WheelTime$3;->val$list_big:Ljava/util/List;

    iget-object v7, p0, Lcom/bigkoo/pickerview/view/WheelTime$3;->val$list_little:Ljava/util/List;

    invoke-static/range {v1 .. v7}, Lcom/bigkoo/pickerview/view/WheelTime;->access$1100(Lcom/bigkoo/pickerview/view/WheelTime;IIIILjava/util/List;Ljava/util/List;)V

    goto/16 :goto_0

    .line 422
    :cond_6
    iget-object v1, p0, Lcom/bigkoo/pickerview/view/WheelTime$3;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    const/4 v4, 0x1

    const/16 v5, 0x1f

    iget-object v6, p0, Lcom/bigkoo/pickerview/view/WheelTime$3;->val$list_big:Ljava/util/List;

    iget-object v7, p0, Lcom/bigkoo/pickerview/view/WheelTime$3;->val$list_little:Ljava/util/List;

    invoke-static/range {v1 .. v7}, Lcom/bigkoo/pickerview/view/WheelTime;->access$1100(Lcom/bigkoo/pickerview/view/WheelTime;IIIILjava/util/List;Ljava/util/List;)V

    goto/16 :goto_0

    .line 425
    :cond_7
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelTime$3;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    invoke-static {v0}, Lcom/bigkoo/pickerview/view/WheelTime;->access$600(Lcom/bigkoo/pickerview/view/WheelTime;)I

    move-result v0

    if-ne v2, v0, :cond_a

    .line 427
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelTime$3;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    invoke-static {v0}, Lcom/bigkoo/pickerview/view/WheelTime;->access$100(Lcom/bigkoo/pickerview/view/WheelTime;)Lcom/contrarywind/view/WheelView;

    move-result-object v0

    new-instance v1, Lcom/bigkoo/pickerview/adapter/NumericWheelAdapter;

    iget-object v4, p0, Lcom/bigkoo/pickerview/view/WheelTime$3;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    invoke-static {v4}, Lcom/bigkoo/pickerview/view/WheelTime;->access$800(Lcom/bigkoo/pickerview/view/WheelTime;)I

    move-result v4

    invoke-direct {v1, v3, v4}, Lcom/bigkoo/pickerview/adapter/NumericWheelAdapter;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/contrarywind/view/WheelView;->setAdapter(Lcom/contrarywind/adapter/WheelAdapter;)V

    .line 428
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelTime$3;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    invoke-static {v0}, Lcom/bigkoo/pickerview/view/WheelTime;->access$100(Lcom/bigkoo/pickerview/view/WheelTime;)Lcom/contrarywind/view/WheelView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/contrarywind/view/WheelView;->getAdapter()Lcom/contrarywind/adapter/WheelAdapter;

    move-result-object v0

    invoke-interface {v0}, Lcom/contrarywind/adapter/WheelAdapter;->getItemsCount()I

    move-result v0

    sub-int/2addr v0, v3

    if-le p1, v0, :cond_8

    .line 429
    iget-object p1, p0, Lcom/bigkoo/pickerview/view/WheelTime$3;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    invoke-static {p1}, Lcom/bigkoo/pickerview/view/WheelTime;->access$100(Lcom/bigkoo/pickerview/view/WheelTime;)Lcom/contrarywind/view/WheelView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/contrarywind/view/WheelView;->getAdapter()Lcom/contrarywind/adapter/WheelAdapter;

    move-result-object p1

    invoke-interface {p1}, Lcom/contrarywind/adapter/WheelAdapter;->getItemsCount()I

    move-result p1

    sub-int/2addr p1, v3

    .line 430
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelTime$3;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    invoke-static {v0}, Lcom/bigkoo/pickerview/view/WheelTime;->access$100(Lcom/bigkoo/pickerview/view/WheelTime;)Lcom/contrarywind/view/WheelView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/contrarywind/view/WheelView;->setCurrentItem(I)V

    :cond_8
    add-int/2addr v3, p1

    .line 434
    iget-object p1, p0, Lcom/bigkoo/pickerview/view/WheelTime$3;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    invoke-static {p1}, Lcom/bigkoo/pickerview/view/WheelTime;->access$800(Lcom/bigkoo/pickerview/view/WheelTime;)I

    move-result p1

    if-ne v3, p1, :cond_9

    .line 436
    iget-object v1, p0, Lcom/bigkoo/pickerview/view/WheelTime$3;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    const/4 v4, 0x1

    invoke-static {v1}, Lcom/bigkoo/pickerview/view/WheelTime;->access$1000(Lcom/bigkoo/pickerview/view/WheelTime;)I

    move-result v5

    iget-object v6, p0, Lcom/bigkoo/pickerview/view/WheelTime$3;->val$list_big:Ljava/util/List;

    iget-object v7, p0, Lcom/bigkoo/pickerview/view/WheelTime$3;->val$list_little:Ljava/util/List;

    invoke-static/range {v1 .. v7}, Lcom/bigkoo/pickerview/view/WheelTime;->access$1100(Lcom/bigkoo/pickerview/view/WheelTime;IIIILjava/util/List;Ljava/util/List;)V

    goto :goto_0

    .line 439
    :cond_9
    iget-object v1, p0, Lcom/bigkoo/pickerview/view/WheelTime$3;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    const/4 v4, 0x1

    const/16 v5, 0x1f

    iget-object v6, p0, Lcom/bigkoo/pickerview/view/WheelTime$3;->val$list_big:Ljava/util/List;

    iget-object v7, p0, Lcom/bigkoo/pickerview/view/WheelTime$3;->val$list_little:Ljava/util/List;

    invoke-static/range {v1 .. v7}, Lcom/bigkoo/pickerview/view/WheelTime;->access$1100(Lcom/bigkoo/pickerview/view/WheelTime;IIIILjava/util/List;Ljava/util/List;)V

    goto :goto_0

    .line 444
    :cond_a
    iget-object p1, p0, Lcom/bigkoo/pickerview/view/WheelTime$3;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    invoke-static {p1}, Lcom/bigkoo/pickerview/view/WheelTime;->access$100(Lcom/bigkoo/pickerview/view/WheelTime;)Lcom/contrarywind/view/WheelView;

    move-result-object p1

    new-instance v0, Lcom/bigkoo/pickerview/adapter/NumericWheelAdapter;

    invoke-direct {v0, v3, v1}, Lcom/bigkoo/pickerview/adapter/NumericWheelAdapter;-><init>(II)V

    invoke-virtual {p1, v0}, Lcom/contrarywind/view/WheelView;->setAdapter(Lcom/contrarywind/adapter/WheelAdapter;)V

    .line 446
    iget-object v1, p0, Lcom/bigkoo/pickerview/view/WheelTime$3;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    invoke-static {v1}, Lcom/bigkoo/pickerview/view/WheelTime;->access$100(Lcom/bigkoo/pickerview/view/WheelTime;)Lcom/contrarywind/view/WheelView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/contrarywind/view/WheelView;->getCurrentItem()I

    move-result p1

    add-int/2addr v3, p1

    const/4 v4, 0x1

    const/16 v5, 0x1f

    iget-object v6, p0, Lcom/bigkoo/pickerview/view/WheelTime$3;->val$list_big:Ljava/util/List;

    iget-object v7, p0, Lcom/bigkoo/pickerview/view/WheelTime$3;->val$list_little:Ljava/util/List;

    invoke-static/range {v1 .. v7}, Lcom/bigkoo/pickerview/view/WheelTime;->access$1100(Lcom/bigkoo/pickerview/view/WheelTime;IIIILjava/util/List;Ljava/util/List;)V

    .line 449
    :goto_0
    iget-object p1, p0, Lcom/bigkoo/pickerview/view/WheelTime$3;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    invoke-static {p1}, Lcom/bigkoo/pickerview/view/WheelTime;->access$300(Lcom/bigkoo/pickerview/view/WheelTime;)Lcom/bigkoo/pickerview/listener/ISelectTimeCallback;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 450
    iget-object p1, p0, Lcom/bigkoo/pickerview/view/WheelTime$3;->this$0:Lcom/bigkoo/pickerview/view/WheelTime;

    invoke-static {p1}, Lcom/bigkoo/pickerview/view/WheelTime;->access$300(Lcom/bigkoo/pickerview/view/WheelTime;)Lcom/bigkoo/pickerview/listener/ISelectTimeCallback;

    move-result-object p1

    invoke-interface {p1}, Lcom/bigkoo/pickerview/listener/ISelectTimeCallback;->onTimeSelectChanged()V

    :cond_b
    return-void
.end method
