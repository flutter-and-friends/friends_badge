.class Lcom/bigkoo/pickerview/view/BasePickerView$4;
.super Ljava/lang/Object;
.source "BasePickerView.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bigkoo/pickerview/view/BasePickerView;
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

    .line 259
    iput-object p1, p0, Lcom/bigkoo/pickerview/view/BasePickerView$4;->this$0:Lcom/bigkoo/pickerview/view/BasePickerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x4

    if-ne p2, p1, :cond_0

    .line 262
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/bigkoo/pickerview/view/BasePickerView$4;->this$0:Lcom/bigkoo/pickerview/view/BasePickerView;

    invoke-virtual {p1}, Lcom/bigkoo/pickerview/view/BasePickerView;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 263
    iget-object p1, p0, Lcom/bigkoo/pickerview/view/BasePickerView$4;->this$0:Lcom/bigkoo/pickerview/view/BasePickerView;

    invoke-virtual {p1}, Lcom/bigkoo/pickerview/view/BasePickerView;->dismiss()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
