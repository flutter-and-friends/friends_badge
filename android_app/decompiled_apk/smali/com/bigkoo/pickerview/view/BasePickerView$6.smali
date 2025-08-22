.class Lcom/bigkoo/pickerview/view/BasePickerView$6;
.super Ljava/lang/Object;
.source "BasePickerView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bigkoo/pickerview/view/BasePickerView;->createDialog()V
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

    .line 324
    iput-object p1, p0, Lcom/bigkoo/pickerview/view/BasePickerView$6;->this$0:Lcom/bigkoo/pickerview/view/BasePickerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 327
    iget-object p1, p0, Lcom/bigkoo/pickerview/view/BasePickerView$6;->this$0:Lcom/bigkoo/pickerview/view/BasePickerView;

    invoke-static {p1}, Lcom/bigkoo/pickerview/view/BasePickerView;->access$300(Lcom/bigkoo/pickerview/view/BasePickerView;)Lcom/bigkoo/pickerview/listener/OnDismissListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 328
    iget-object p1, p0, Lcom/bigkoo/pickerview/view/BasePickerView$6;->this$0:Lcom/bigkoo/pickerview/view/BasePickerView;

    invoke-static {p1}, Lcom/bigkoo/pickerview/view/BasePickerView;->access$300(Lcom/bigkoo/pickerview/view/BasePickerView;)Lcom/bigkoo/pickerview/listener/OnDismissListener;

    move-result-object p1

    iget-object v0, p0, Lcom/bigkoo/pickerview/view/BasePickerView$6;->this$0:Lcom/bigkoo/pickerview/view/BasePickerView;

    invoke-interface {p1, v0}, Lcom/bigkoo/pickerview/listener/OnDismissListener;->onDismiss(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
