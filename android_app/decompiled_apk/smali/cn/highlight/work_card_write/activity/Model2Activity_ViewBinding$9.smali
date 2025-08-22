.class Lcn/highlight/work_card_write/activity/Model2Activity_ViewBinding$9;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "Model2Activity_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/highlight/work_card_write/activity/Model2Activity_ViewBinding;-><init>(Lcn/highlight/work_card_write/activity/Model2Activity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/highlight/work_card_write/activity/Model2Activity_ViewBinding;

.field final synthetic val$target:Lcn/highlight/work_card_write/activity/Model2Activity;


# direct methods
.method constructor <init>(Lcn/highlight/work_card_write/activity/Model2Activity_ViewBinding;Lcn/highlight/work_card_write/activity/Model2Activity;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lcn/highlight/work_card_write/activity/Model2Activity_ViewBinding$9;->this$0:Lcn/highlight/work_card_write/activity/Model2Activity_ViewBinding;

    iput-object p2, p0, Lcn/highlight/work_card_write/activity/Model2Activity_ViewBinding$9;->val$target:Lcn/highlight/work_card_write/activity/Model2Activity;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 1

    .line 136
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/Model2Activity_ViewBinding$9;->val$target:Lcn/highlight/work_card_write/activity/Model2Activity;

    invoke-virtual {v0, p1}, Lcn/highlight/work_card_write/activity/Model2Activity;->onViewClicked(Landroid/view/View;)V

    return-void
.end method
