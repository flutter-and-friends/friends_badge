.class Lcom/bigkoo/pickerview/view/WheelOptions$1;
.super Ljava/lang/Object;
.source "WheelOptions.java"

# interfaces
.implements Lcom/contrarywind/listener/OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bigkoo/pickerview/view/WheelOptions;->setPicker(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bigkoo/pickerview/view/WheelOptions;


# direct methods
.method constructor <init>(Lcom/bigkoo/pickerview/view/WheelOptions;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/bigkoo/pickerview/view/WheelOptions$1;->this$0:Lcom/bigkoo/pickerview/view/WheelOptions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(I)V
    .locals 5

    .line 90
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelOptions$1;->this$0:Lcom/bigkoo/pickerview/view/WheelOptions;

    invoke-static {v0}, Lcom/bigkoo/pickerview/view/WheelOptions;->access$000(Lcom/bigkoo/pickerview/view/WheelOptions;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 91
    iget-object p1, p0, Lcom/bigkoo/pickerview/view/WheelOptions$1;->this$0:Lcom/bigkoo/pickerview/view/WheelOptions;

    invoke-static {p1}, Lcom/bigkoo/pickerview/view/WheelOptions;->access$100(Lcom/bigkoo/pickerview/view/WheelOptions;)Lcom/bigkoo/pickerview/listener/OnOptionsSelectChangeListener;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 92
    iget-object p1, p0, Lcom/bigkoo/pickerview/view/WheelOptions$1;->this$0:Lcom/bigkoo/pickerview/view/WheelOptions;

    invoke-static {p1}, Lcom/bigkoo/pickerview/view/WheelOptions;->access$100(Lcom/bigkoo/pickerview/view/WheelOptions;)Lcom/bigkoo/pickerview/listener/OnOptionsSelectChangeListener;

    move-result-object p1

    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelOptions$1;->this$0:Lcom/bigkoo/pickerview/view/WheelOptions;

    invoke-static {v0}, Lcom/bigkoo/pickerview/view/WheelOptions;->access$200(Lcom/bigkoo/pickerview/view/WheelOptions;)Lcom/contrarywind/view/WheelView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/contrarywind/view/WheelView;->getCurrentItem()I

    move-result v0

    invoke-interface {p1, v0, v1, v1}, Lcom/bigkoo/pickerview/listener/OnOptionsSelectChangeListener;->onOptionsSelectChanged(III)V

    goto/16 :goto_1

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelOptions$1;->this$0:Lcom/bigkoo/pickerview/view/WheelOptions;

    invoke-static {v0}, Lcom/bigkoo/pickerview/view/WheelOptions;->access$300(Lcom/bigkoo/pickerview/view/WheelOptions;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 96
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelOptions$1;->this$0:Lcom/bigkoo/pickerview/view/WheelOptions;

    invoke-static {v0}, Lcom/bigkoo/pickerview/view/WheelOptions;->access$400(Lcom/bigkoo/pickerview/view/WheelOptions;)Lcom/contrarywind/view/WheelView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/contrarywind/view/WheelView;->getCurrentItem()I

    move-result v0

    .line 98
    iget-object v2, p0, Lcom/bigkoo/pickerview/view/WheelOptions$1;->this$0:Lcom/bigkoo/pickerview/view/WheelOptions;

    invoke-static {v2}, Lcom/bigkoo/pickerview/view/WheelOptions;->access$000(Lcom/bigkoo/pickerview/view/WheelOptions;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-lt v0, v2, :cond_2

    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelOptions$1;->this$0:Lcom/bigkoo/pickerview/view/WheelOptions;

    invoke-static {v0}, Lcom/bigkoo/pickerview/view/WheelOptions;->access$000(Lcom/bigkoo/pickerview/view/WheelOptions;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 100
    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/bigkoo/pickerview/view/WheelOptions$1;->this$0:Lcom/bigkoo/pickerview/view/WheelOptions;

    invoke-static {v2}, Lcom/bigkoo/pickerview/view/WheelOptions;->access$400(Lcom/bigkoo/pickerview/view/WheelOptions;)Lcom/contrarywind/view/WheelView;

    move-result-object v2

    new-instance v3, Lcom/bigkoo/pickerview/adapter/ArrayWheelAdapter;

    iget-object v4, p0, Lcom/bigkoo/pickerview/view/WheelOptions$1;->this$0:Lcom/bigkoo/pickerview/view/WheelOptions;

    invoke-static {v4}, Lcom/bigkoo/pickerview/view/WheelOptions;->access$000(Lcom/bigkoo/pickerview/view/WheelOptions;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-direct {v3, v4}, Lcom/bigkoo/pickerview/adapter/ArrayWheelAdapter;-><init>(Ljava/util/List;)V

    invoke-virtual {v2, v3}, Lcom/contrarywind/view/WheelView;->setAdapter(Lcom/contrarywind/adapter/WheelAdapter;)V

    .line 101
    iget-object v2, p0, Lcom/bigkoo/pickerview/view/WheelOptions$1;->this$0:Lcom/bigkoo/pickerview/view/WheelOptions;

    invoke-static {v2}, Lcom/bigkoo/pickerview/view/WheelOptions;->access$400(Lcom/bigkoo/pickerview/view/WheelOptions;)Lcom/contrarywind/view/WheelView;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/contrarywind/view/WheelView;->setCurrentItem(I)V

    .line 103
    iget-object v2, p0, Lcom/bigkoo/pickerview/view/WheelOptions$1;->this$0:Lcom/bigkoo/pickerview/view/WheelOptions;

    invoke-static {v2}, Lcom/bigkoo/pickerview/view/WheelOptions;->access$500(Lcom/bigkoo/pickerview/view/WheelOptions;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 104
    iget-object p1, p0, Lcom/bigkoo/pickerview/view/WheelOptions$1;->this$0:Lcom/bigkoo/pickerview/view/WheelOptions;

    invoke-static {p1}, Lcom/bigkoo/pickerview/view/WheelOptions;->access$600(Lcom/bigkoo/pickerview/view/WheelOptions;)Lcom/contrarywind/listener/OnItemSelectedListener;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/contrarywind/listener/OnItemSelectedListener;->onItemSelected(I)V

    goto :goto_1

    .line 106
    :cond_3
    iget-object v2, p0, Lcom/bigkoo/pickerview/view/WheelOptions$1;->this$0:Lcom/bigkoo/pickerview/view/WheelOptions;

    invoke-static {v2}, Lcom/bigkoo/pickerview/view/WheelOptions;->access$100(Lcom/bigkoo/pickerview/view/WheelOptions;)Lcom/bigkoo/pickerview/listener/OnOptionsSelectChangeListener;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 107
    iget-object v2, p0, Lcom/bigkoo/pickerview/view/WheelOptions$1;->this$0:Lcom/bigkoo/pickerview/view/WheelOptions;

    invoke-static {v2}, Lcom/bigkoo/pickerview/view/WheelOptions;->access$100(Lcom/bigkoo/pickerview/view/WheelOptions;)Lcom/bigkoo/pickerview/listener/OnOptionsSelectChangeListener;

    move-result-object v2

    invoke-interface {v2, p1, v0, v1}, Lcom/bigkoo/pickerview/listener/OnOptionsSelectChangeListener;->onOptionsSelectChanged(III)V

    :cond_4
    :goto_1
    return-void
.end method
