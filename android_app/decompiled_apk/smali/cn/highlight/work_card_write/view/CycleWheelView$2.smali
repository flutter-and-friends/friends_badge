.class Lcn/highlight/work_card_write/view/CycleWheelView$2;
.super Ljava/lang/Object;
.source "CycleWheelView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/highlight/work_card_write/view/CycleWheelView;->setSelection(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/highlight/work_card_write/view/CycleWheelView;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcn/highlight/work_card_write/view/CycleWheelView;I)V
    .locals 0

    .line 276
    iput-object p1, p0, Lcn/highlight/work_card_write/view/CycleWheelView$2;->this$0:Lcn/highlight/work_card_write/view/CycleWheelView;

    iput p2, p0, Lcn/highlight/work_card_write/view/CycleWheelView$2;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 279
    iget-object v0, p0, Lcn/highlight/work_card_write/view/CycleWheelView$2;->this$0:Lcn/highlight/work_card_write/view/CycleWheelView;

    iget v1, p0, Lcn/highlight/work_card_write/view/CycleWheelView$2;->val$position:I

    invoke-static {v0, v1}, Lcn/highlight/work_card_write/view/CycleWheelView;->access$300(Lcn/highlight/work_card_write/view/CycleWheelView;I)I

    move-result v1

    invoke-static {v0, v1}, Lcn/highlight/work_card_write/view/CycleWheelView;->access$401(Lcn/highlight/work_card_write/view/CycleWheelView;I)V

    return-void
.end method
