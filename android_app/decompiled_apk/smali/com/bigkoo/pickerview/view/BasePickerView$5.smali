.class Lcom/bigkoo/pickerview/view/BasePickerView$5;
.super Ljava/lang/Object;
.source "BasePickerView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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

    .line 298
    iput-object p1, p0, Lcom/bigkoo/pickerview/view/BasePickerView$5;->this$0:Lcom/bigkoo/pickerview/view/BasePickerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 301
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_0

    .line 302
    iget-object p1, p0, Lcom/bigkoo/pickerview/view/BasePickerView$5;->this$0:Lcom/bigkoo/pickerview/view/BasePickerView;

    invoke-virtual {p1}, Lcom/bigkoo/pickerview/view/BasePickerView;->dismiss()V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
