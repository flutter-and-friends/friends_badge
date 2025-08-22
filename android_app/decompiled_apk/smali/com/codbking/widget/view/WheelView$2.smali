.class Lcom/codbking/widget/view/WheelView$2;
.super Landroid/database/DataSetObserver;
.source "WheelView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codbking/widget/view/WheelView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codbking/widget/view/WheelView;


# direct methods
.method constructor <init>(Lcom/codbking/widget/view/WheelView;)V
    .locals 0

    .line 221
    iput-object p1, p0, Lcom/codbking/widget/view/WheelView$2;->this$0:Lcom/codbking/widget/view/WheelView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .line 224
    iget-object v0, p0, Lcom/codbking/widget/view/WheelView$2;->this$0:Lcom/codbking/widget/view/WheelView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/codbking/widget/view/WheelView;->invalidateWheel(Z)V

    return-void
.end method

.method public onInvalidated()V
    .locals 2

    .line 229
    iget-object v0, p0, Lcom/codbking/widget/view/WheelView$2;->this$0:Lcom/codbking/widget/view/WheelView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/codbking/widget/view/WheelView;->invalidateWheel(Z)V

    return-void
.end method
