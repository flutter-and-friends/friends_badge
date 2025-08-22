.class Lcom/bigkoo/pickerview/view/WheelOptions$2;
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

    .line 114
    iput-object p1, p0, Lcom/bigkoo/pickerview/view/WheelOptions$2;->this$0:Lcom/bigkoo/pickerview/view/WheelOptions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(I)V
    .locals 5

    .line 118
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelOptions$2;->this$0:Lcom/bigkoo/pickerview/view/WheelOptions;

    invoke-static {v0}, Lcom/bigkoo/pickerview/view/WheelOptions;->access$500(Lcom/bigkoo/pickerview/view/WheelOptions;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 119
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelOptions$2;->this$0:Lcom/bigkoo/pickerview/view/WheelOptions;

    invoke-static {v0}, Lcom/bigkoo/pickerview/view/WheelOptions;->access$200(Lcom/bigkoo/pickerview/view/WheelOptions;)Lcom/contrarywind/view/WheelView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/contrarywind/view/WheelView;->getCurrentItem()I

    move-result v0

    .line 120
    iget-object v2, p0, Lcom/bigkoo/pickerview/view/WheelOptions$2;->this$0:Lcom/bigkoo/pickerview/view/WheelOptions;

    invoke-static {v2}, Lcom/bigkoo/pickerview/view/WheelOptions;->access$500(Lcom/bigkoo/pickerview/view/WheelOptions;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-lt v0, v2, :cond_0

    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelOptions$2;->this$0:Lcom/bigkoo/pickerview/view/WheelOptions;

    invoke-static {v0}, Lcom/bigkoo/pickerview/view/WheelOptions;->access$500(Lcom/bigkoo/pickerview/view/WheelOptions;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 121
    :cond_0
    iget-object v2, p0, Lcom/bigkoo/pickerview/view/WheelOptions$2;->this$0:Lcom/bigkoo/pickerview/view/WheelOptions;

    invoke-static {v2}, Lcom/bigkoo/pickerview/view/WheelOptions;->access$000(Lcom/bigkoo/pickerview/view/WheelOptions;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-lt p1, v2, :cond_1

    iget-object p1, p0, Lcom/bigkoo/pickerview/view/WheelOptions$2;->this$0:Lcom/bigkoo/pickerview/view/WheelOptions;

    invoke-static {p1}, Lcom/bigkoo/pickerview/view/WheelOptions;->access$000(Lcom/bigkoo/pickerview/view/WheelOptions;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    .line 123
    :cond_1
    iget-object v2, p0, Lcom/bigkoo/pickerview/view/WheelOptions$2;->this$0:Lcom/bigkoo/pickerview/view/WheelOptions;

    invoke-static {v2}, Lcom/bigkoo/pickerview/view/WheelOptions;->access$300(Lcom/bigkoo/pickerview/view/WheelOptions;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 126
    iget-object v1, p0, Lcom/bigkoo/pickerview/view/WheelOptions$2;->this$0:Lcom/bigkoo/pickerview/view/WheelOptions;

    invoke-static {v1}, Lcom/bigkoo/pickerview/view/WheelOptions;->access$700(Lcom/bigkoo/pickerview/view/WheelOptions;)Lcom/contrarywind/view/WheelView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/contrarywind/view/WheelView;->getCurrentItem()I

    move-result v1

    iget-object v2, p0, Lcom/bigkoo/pickerview/view/WheelOptions$2;->this$0:Lcom/bigkoo/pickerview/view/WheelOptions;

    invoke-static {v2}, Lcom/bigkoo/pickerview/view/WheelOptions;->access$500(Lcom/bigkoo/pickerview/view/WheelOptions;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-lt v1, v2, :cond_2

    iget-object v1, p0, Lcom/bigkoo/pickerview/view/WheelOptions$2;->this$0:Lcom/bigkoo/pickerview/view/WheelOptions;

    .line 127
    invoke-static {v1}, Lcom/bigkoo/pickerview/view/WheelOptions;->access$500(Lcom/bigkoo/pickerview/view/WheelOptions;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelOptions$2;->this$0:Lcom/bigkoo/pickerview/view/WheelOptions;

    invoke-static {v0}, Lcom/bigkoo/pickerview/view/WheelOptions;->access$700(Lcom/bigkoo/pickerview/view/WheelOptions;)Lcom/contrarywind/view/WheelView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/contrarywind/view/WheelView;->getCurrentItem()I

    move-result v0

    :goto_0
    move v1, v0

    .line 129
    :cond_3
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelOptions$2;->this$0:Lcom/bigkoo/pickerview/view/WheelOptions;

    invoke-static {v0}, Lcom/bigkoo/pickerview/view/WheelOptions;->access$700(Lcom/bigkoo/pickerview/view/WheelOptions;)Lcom/contrarywind/view/WheelView;

    move-result-object v0

    new-instance v2, Lcom/bigkoo/pickerview/adapter/ArrayWheelAdapter;

    iget-object v3, p0, Lcom/bigkoo/pickerview/view/WheelOptions$2;->this$0:Lcom/bigkoo/pickerview/view/WheelOptions;

    invoke-static {v3}, Lcom/bigkoo/pickerview/view/WheelOptions;->access$500(Lcom/bigkoo/pickerview/view/WheelOptions;)Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/bigkoo/pickerview/view/WheelOptions$2;->this$0:Lcom/bigkoo/pickerview/view/WheelOptions;

    invoke-static {v4}, Lcom/bigkoo/pickerview/view/WheelOptions;->access$200(Lcom/bigkoo/pickerview/view/WheelOptions;)Lcom/contrarywind/view/WheelView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/contrarywind/view/WheelView;->getCurrentItem()I

    move-result v4

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-direct {v2, v3}, Lcom/bigkoo/pickerview/adapter/ArrayWheelAdapter;-><init>(Ljava/util/List;)V

    invoke-virtual {v0, v2}, Lcom/contrarywind/view/WheelView;->setAdapter(Lcom/contrarywind/adapter/WheelAdapter;)V

    .line 130
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelOptions$2;->this$0:Lcom/bigkoo/pickerview/view/WheelOptions;

    invoke-static {v0}, Lcom/bigkoo/pickerview/view/WheelOptions;->access$700(Lcom/bigkoo/pickerview/view/WheelOptions;)Lcom/contrarywind/view/WheelView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/contrarywind/view/WheelView;->setCurrentItem(I)V

    .line 133
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelOptions$2;->this$0:Lcom/bigkoo/pickerview/view/WheelOptions;

    invoke-static {v0}, Lcom/bigkoo/pickerview/view/WheelOptions;->access$100(Lcom/bigkoo/pickerview/view/WheelOptions;)Lcom/bigkoo/pickerview/listener/OnOptionsSelectChangeListener;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 134
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelOptions$2;->this$0:Lcom/bigkoo/pickerview/view/WheelOptions;

    invoke-static {v0}, Lcom/bigkoo/pickerview/view/WheelOptions;->access$100(Lcom/bigkoo/pickerview/view/WheelOptions;)Lcom/bigkoo/pickerview/listener/OnOptionsSelectChangeListener;

    move-result-object v0

    iget-object v2, p0, Lcom/bigkoo/pickerview/view/WheelOptions$2;->this$0:Lcom/bigkoo/pickerview/view/WheelOptions;

    invoke-static {v2}, Lcom/bigkoo/pickerview/view/WheelOptions;->access$200(Lcom/bigkoo/pickerview/view/WheelOptions;)Lcom/contrarywind/view/WheelView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/contrarywind/view/WheelView;->getCurrentItem()I

    move-result v2

    invoke-interface {v0, v2, p1, v1}, Lcom/bigkoo/pickerview/listener/OnOptionsSelectChangeListener;->onOptionsSelectChanged(III)V

    goto :goto_1

    .line 137
    :cond_4
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelOptions$2;->this$0:Lcom/bigkoo/pickerview/view/WheelOptions;

    invoke-static {v0}, Lcom/bigkoo/pickerview/view/WheelOptions;->access$100(Lcom/bigkoo/pickerview/view/WheelOptions;)Lcom/bigkoo/pickerview/listener/OnOptionsSelectChangeListener;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 138
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelOptions$2;->this$0:Lcom/bigkoo/pickerview/view/WheelOptions;

    invoke-static {v0}, Lcom/bigkoo/pickerview/view/WheelOptions;->access$100(Lcom/bigkoo/pickerview/view/WheelOptions;)Lcom/bigkoo/pickerview/listener/OnOptionsSelectChangeListener;

    move-result-object v0

    iget-object v2, p0, Lcom/bigkoo/pickerview/view/WheelOptions$2;->this$0:Lcom/bigkoo/pickerview/view/WheelOptions;

    invoke-static {v2}, Lcom/bigkoo/pickerview/view/WheelOptions;->access$200(Lcom/bigkoo/pickerview/view/WheelOptions;)Lcom/contrarywind/view/WheelView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/contrarywind/view/WheelView;->getCurrentItem()I

    move-result v2

    invoke-interface {v0, v2, p1, v1}, Lcom/bigkoo/pickerview/listener/OnOptionsSelectChangeListener;->onOptionsSelectChanged(III)V

    :cond_5
    :goto_1
    return-void
.end method
