.class Lcom/bigkoo/pickerview/view/BasePickerView$3;
.super Ljava/lang/Object;
.source "BasePickerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bigkoo/pickerview/view/BasePickerView;->dismissImmediately()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bigkoo/pickerview/view/BasePickerView;


# direct methods
.method constructor <init>(Lcom/bigkoo/pickerview/view/BasePickerView;)V
    .locals 0

    .line 210
    iput-object p1, p0, Lcom/bigkoo/pickerview/view/BasePickerView$3;->this$0:Lcom/bigkoo/pickerview/view/BasePickerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 214
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/BasePickerView$3;->this$0:Lcom/bigkoo/pickerview/view/BasePickerView;

    iget-object v0, v0, Lcom/bigkoo/pickerview/view/BasePickerView;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iget-object v0, v0, Lcom/bigkoo/pickerview/configure/PickerOptions;->decorView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/bigkoo/pickerview/view/BasePickerView$3;->this$0:Lcom/bigkoo/pickerview/view/BasePickerView;

    invoke-static {v1}, Lcom/bigkoo/pickerview/view/BasePickerView;->access$000(Lcom/bigkoo/pickerview/view/BasePickerView;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 215
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/BasePickerView$3;->this$0:Lcom/bigkoo/pickerview/view/BasePickerView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/bigkoo/pickerview/view/BasePickerView;->access$102(Lcom/bigkoo/pickerview/view/BasePickerView;Z)Z

    .line 216
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/BasePickerView$3;->this$0:Lcom/bigkoo/pickerview/view/BasePickerView;

    invoke-static {v0, v1}, Lcom/bigkoo/pickerview/view/BasePickerView;->access$202(Lcom/bigkoo/pickerview/view/BasePickerView;Z)Z

    .line 217
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/BasePickerView$3;->this$0:Lcom/bigkoo/pickerview/view/BasePickerView;

    invoke-static {v0}, Lcom/bigkoo/pickerview/view/BasePickerView;->access$300(Lcom/bigkoo/pickerview/view/BasePickerView;)Lcom/bigkoo/pickerview/listener/OnDismissListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/BasePickerView$3;->this$0:Lcom/bigkoo/pickerview/view/BasePickerView;

    invoke-static {v0}, Lcom/bigkoo/pickerview/view/BasePickerView;->access$300(Lcom/bigkoo/pickerview/view/BasePickerView;)Lcom/bigkoo/pickerview/listener/OnDismissListener;

    move-result-object v0

    iget-object v1, p0, Lcom/bigkoo/pickerview/view/BasePickerView$3;->this$0:Lcom/bigkoo/pickerview/view/BasePickerView;

    invoke-interface {v0, v1}, Lcom/bigkoo/pickerview/listener/OnDismissListener;->onDismiss(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
