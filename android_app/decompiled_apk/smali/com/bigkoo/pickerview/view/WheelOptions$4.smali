.class Lcom/bigkoo/pickerview/view/WheelOptions$4;
.super Ljava/lang/Object;
.source "WheelOptions.java"

# interfaces
.implements Lcom/contrarywind/listener/OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bigkoo/pickerview/view/WheelOptions;->setNPicker(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
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

    .line 183
    iput-object p1, p0, Lcom/bigkoo/pickerview/view/WheelOptions$4;->this$0:Lcom/bigkoo/pickerview/view/WheelOptions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(I)V
    .locals 3

    .line 186
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelOptions$4;->this$0:Lcom/bigkoo/pickerview/view/WheelOptions;

    invoke-static {v0}, Lcom/bigkoo/pickerview/view/WheelOptions;->access$100(Lcom/bigkoo/pickerview/view/WheelOptions;)Lcom/bigkoo/pickerview/listener/OnOptionsSelectChangeListener;

    move-result-object v0

    iget-object v1, p0, Lcom/bigkoo/pickerview/view/WheelOptions$4;->this$0:Lcom/bigkoo/pickerview/view/WheelOptions;

    invoke-static {v1}, Lcom/bigkoo/pickerview/view/WheelOptions;->access$400(Lcom/bigkoo/pickerview/view/WheelOptions;)Lcom/contrarywind/view/WheelView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/contrarywind/view/WheelView;->getCurrentItem()I

    move-result v1

    iget-object v2, p0, Lcom/bigkoo/pickerview/view/WheelOptions$4;->this$0:Lcom/bigkoo/pickerview/view/WheelOptions;

    invoke-static {v2}, Lcom/bigkoo/pickerview/view/WheelOptions;->access$700(Lcom/bigkoo/pickerview/view/WheelOptions;)Lcom/contrarywind/view/WheelView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/contrarywind/view/WheelView;->getCurrentItem()I

    move-result v2

    invoke-interface {v0, p1, v1, v2}, Lcom/bigkoo/pickerview/listener/OnOptionsSelectChangeListener;->onOptionsSelectChanged(III)V

    return-void
.end method
